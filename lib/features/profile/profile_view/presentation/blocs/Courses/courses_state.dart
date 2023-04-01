part of 'courses_bloc.dart';

@freezed
abstract class CoursesState with _$CoursesState {
  const factory CoursesState({
    required Course course,
    required List<Course> courses,
    required String organizationErrorMessage,
    required String courseErrorMessage,
    required String teacherErrorMessage,
    required String locationErrorMessage,
    required Option<Either<Failure, Unit>> updateCourseResponse,
    required Option<Either<Failure, int>> addCourseResponse,
    required Option<Either<Failure, Unit>> deleteCourseResponse,
  }) = _CoursesState;

  factory CoursesState.initial(List<Course> courses) => CoursesState(
        course: const Course(
          startDate: null,
          TeacherName: '',
          endDate: null,
          organization: '',
          courseName: '',
          location: null,
        ),
        organizationErrorMessage: "",
        teacherErrorMessage: "",
        courseErrorMessage: "",
        courses: courses,
        locationErrorMessage: "",
        updateCourseResponse: none(),
        addCourseResponse: none(),
        deleteCourseResponse: none(),
      );
}
