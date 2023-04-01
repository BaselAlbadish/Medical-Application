import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:mdcin_ca/features/auth/signup/domain/entities/individual/individual_model.dart';
import 'package:mdcin_ca/features/profile/profile_view/domain/entities/profile/profile_model.dart';
import '../../../../configure_di.dart';
import '../../../auth/signup/domain/repositories/individual_repository.dart';
import '../../../auth/signup/domain/repositories/user_repository.dart';

class ProfileStore {
  IndividualProfile? individualProfile;
  IndividualProfileState? individualProfileState;

  List<Location> locations = [];
  List<Profession> professions = [];
  List<Position> positions = [];
  List<Company> companyNames = [];
  List<Teacher> teachersNames = [];

  String serverProfileImage = "";
  String serverCoverImage = "";

  XFile? coverImage;
  XFile? profileImage;

  XFile? getProfileImage() => profileImage;

  XFile? getCoverImage() => coverImage;

  String? getServerProfileImage() {
    if (serverProfileImage == "") {
      return individualProfile!.profileImageName;
    } else {
      return serverProfileImage;
    }
  }

  String? getServerCoverImage() {
    if (serverCoverImage == "") {
      return individualProfile!.backgroundImageName;
    } else {
      return serverCoverImage;
    }
  }

  setProfileImage(XFile? image) {
    profileImage = image;
  }

  setCoverImage(XFile? image) {
    coverImage = image;
  }

  setServerCoverImage(String image) {
    individualProfile = individualProfile!.copyWith(backgroundImageName: image);
    serverCoverImage = image;
  }

  setServerProfileImage(String image) {
    individualProfile = individualProfile!.copyWith(profileImageName: image);
    serverProfileImage = image;
  }

  List<String> getYears() {
    DateFormat formatter = DateFormat('yyyy');
    List<String> list = List<String>.generate(
        30,
        (index) => formatter.format(
              DateTime.utc(
                DateTime.now().year - 30 + index,
              ).add(const Duration(days: 366)),
            ));
    list.add('');
    return list;
  }

  List<String> getMonths() {
    return ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', ''];
  }

  List<String> getDays() {
    List<String> days = [];
    for (int i = 1; i <= 31; i++) {
      days.add(i.toString());
    }
    days.add('');
    return days;
  }

  List<String> getSkills() {
    return [
      'Patient Assessment',
      'Clinical Research',
      'HIPAA Compliance Training',
      'Recording Patient Medical History',
      'Patient Preparation',
      'Electrocardiogram (EKG)',
      'Administering Injections',
      'Appointment Scheduling',
      'TB Test Clearance',
      'Insurance Billing',
      'Equipment Sterilization',
      'Medical Supply Inventory',
      'EHR Software',
      'ICD 10 Codes',
      'Phlebotomy',
      ''
    ];
  }

  Future<List<Location>> getLocations() async {
    final result = await getIt<UserRepository>().getLocations();
    if (result.isRight()) {
      locations = result.getOrElse(() => []);
      return locations;
    } else {
      return [];
    }
  }

  Future<List<Teacher>> getTeachers() async {
    final result = await getIt<UserRepository>().getTeachers();
    if (result.isRight()) {
      teachersNames = result.getOrElse(() => []);
      return teachersNames;
    } else {
      return [];
    }
  }

  Future<List<Profession>> getProfessions() async {
    final result = await getIt<IndividualRepository>().getAllPrimaryProfessions();
    if (result.isRight()) {
      professions = result.getOrElse(() => []);
      return professions;
    } else {
      return [];
    }
  }


  Future<List<Position>> getPositions() async {
    final result = await getIt<IndividualRepository>().getAllPositions();
    if (result.isRight()) {
      positions = result.getOrElse(() => []);
      return positions;
    } else {
      return [];
    }
  }

  Future<List<Company>> getCompanyNames() async {
    final result = await getIt<UserRepository>().getCompanies();
    if (result.isRight()) {
      companyNames = result.getOrElse(() => []);
      return companyNames;
    } else {
      return [];
    }
  }

  List<String> getEmployeeTypes() {
    return ['Full-Time', 'Part-Time', 'Temporary', 'Seasonal'];
  }

  IndividualProfile? getProfile() => individualProfile;

  setProfileInfo(IndividualProfile individualProfile) {
    individualProfile = individualProfile;
  }

  IndividualProfileState? getStates() => individualProfileState;

  setProfileStates(IndividualProfileState individualProfileState) {
    individualProfileState = individualProfileState;
  }
}
