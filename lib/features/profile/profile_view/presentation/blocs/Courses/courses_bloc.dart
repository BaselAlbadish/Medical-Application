import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mdcin_ca/features/profile/profile_view/domain/repositories/profile_update/courses_repositories.dart';
import '../../../../../../configure_di.dart';
import '../../../../../../core/error/failures.dart';
import '../../../../../auth/signup/domain/entities/individual/individual_model.dart';
import '../../../../core/token/token_repository.dart';
import '../../../../core/utility/profile_store.dart';
import '../../../domain/entities/profile/profile_model.dart';

part 'courses_event.dart';

part 'courses_state.dart';

part 'courses_bloc.freezed.dart';

class CoursesBloc extends Bloc<CoursesEvent, CoursesState> {
  CourseRepository courseRepository;

  CoursesBloc(this.courseRepository)
      : super(CoursesState.initial(getIt<ProfileStore>().getProfile()!.courseOrTrainingInfo)) {
    on<EditEvent>((event, emit) {
      emit(state.copyWith(course: event.course));
    });

    on<AddEvent>((event, emit) async {
      if (isValid(state)) {
        String token = await getIt<TokenRepository>().getToken();
        final response = await courseRepository.addCourses(token.toString(), state.course);
        if (response.isRight()) {
          List<Course> list = state.courses;
          Course course = state.course.copyWith(id: response.getOrElse(() => 0));
          list.add(course);
          emit(state.copyWith(addCourseResponse: some(response), courses: list));
        } else {
          emit(state.copyWith(addCourseResponse: some(response)));
        }
      }
    });

    on<UpdateEvent>((event, emit) async {
      if (isValid(state)) {
        String token = await getIt<TokenRepository>().getToken();
        final response = await courseRepository.updateCourses(token.toString(), state.course);
        if (response.isRight()) {
          List<Course> list = state.courses;
          int index = getIndexById(state.course.id!);
          list.insert(index, state.course);
          emit(state.copyWith(updateCourseResponse: some(response), courses: list));
        } else {
          emit(state.copyWith(updateCourseResponse: some(response)));
        }
      }
    });

    on<DeleteEvent>((event, emit) async {
      String token = await getIt<TokenRepository>().getToken();
      final response = await courseRepository.deleteCourses(token.toString(), event.course.id!);
      if (response.isRight()) {
        List<Course> list = state.courses;
        list.remove(event.course);
        emit(state.copyWith(deleteCourseResponse: some(response), courses: list));
      } else {
        emit(state.copyWith(deleteCourseResponse: some(response)));
      }
    });

    on<EditTeacherName>((event, emit) {
      if (event.name.isEmpty) {
        emit(state.copyWith(teacherErrorMessage: "please enter your teacher name"));
      } else {
        emit(state.copyWith(teacherErrorMessage: "", course: state.course.copyWith(TeacherName: event.name)));
      }
    });

    on<EditCourseName>((event, emit) {
      if (event.courseName.isEmpty) {
        emit(state.copyWith(courseErrorMessage: "please enter your course name"));
      } else {
        emit(state.copyWith(courseErrorMessage: "", course: state.course.copyWith(courseName: event.courseName)));
      }
    });

    on<EditOrganizationName>((event, emit) {
      if (event.name.isEmpty) {
        emit(state.copyWith(organizationErrorMessage: "please enter your course organization"));
      } else {
        emit(state.copyWith(organizationErrorMessage: "", course: state.course.copyWith(organization: event.name)));
      }
    });

    on<EditLocation>((event, emit) {
      if (event.location.country.name.isEmpty) {
        emit(state.copyWith(locationErrorMessage: "please enter your course location"));
      } else {
        emit(state.copyWith(locationErrorMessage: "", course: state.course.copyWith(location: event.location)));
      }
    });

    on<EditStartDate>((event, emit) {
      emit(state.copyWith(course: state.course.copyWith(startDate: event.startDate)));
    });

    on<EditEndDate>((event, emit) {
      emit(state.copyWith(course: state.course.copyWith(endDate: event.endDate)));
    });
  }

  Future<List<Location>> getLocationSuggestions(String pattern) async {
    List<Location> items = await getIt<ProfileStore>().getLocations();
    if (pattern.isNotEmpty) {
      List<Location> suggestions = [];
      for (int i = 0; i < items.length; i++) {
        if (items[i].country.name.toLowerCase().contains(pattern.toString().toLowerCase())) {
          suggestions.add(items[i]);
        }
      }
      return suggestions;
    } else {
      return items;
    }
  }

  Future<List<Company>> getOrganizationSuggestions(String pattern) async {
    List<Company> items = await getIt<ProfileStore>().getCompanyNames();
    if (pattern.isNotEmpty) {
      List<Company> suggestions = [];
      for (int i = 0; i < items.length; i++) {
        if (items[i].name.toLowerCase().contains(pattern.toString().toLowerCase())) {
          suggestions.add(items[i]);
        }
      }
      return suggestions;
    } else {
      return items;
    }
  }

  Future<List<Teacher>> getTeachersSuggestions(String pattern) async {
    List<Teacher> items = await getIt<ProfileStore>().getTeachers();
    if (pattern.isNotEmpty) {
      List<Teacher> suggestions = [];
      for (int i = 0; i < items.length; i++) {
        if (items[i].name.toLowerCase().contains(pattern.toString().toLowerCase())) {
          suggestions.add(items[i]);
        }
      }
      return suggestions;
    } else {
      return items;
    }
  }

  int getIndexById(int id) {
    List<Course> list = state.courses;
    for (int i = 0; i < list.length; i++) {
      if (list[i].id == id) {
        return i;
      }
    }
    return 00;
  }

  bool isValid(CoursesState state) {
    if (state.course.location != null &&
        state.course.courseName != null &&
        state.course.TeacherName != null &&
        state.course.organization != null) {
      return true;
    } else {
      return false;
    }
  }
}
