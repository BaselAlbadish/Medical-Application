import 'package:mdcin_ca/core/network/network_client.dart';
import 'package:mdcin_ca/features/auth/signup/data/datasources/constants.dart';
import 'package:mdcin_ca/features/auth/signup/domain/entities/individual/individual_model.dart';

import '../../../../../../core/error/network_error_handeler.dart';

// single responsibility principle.

abstract class UserRemoteDataSource {
  Future<List<Location>> getLocations();

  Future<List<Company>> getCompanyNames();

  Future<List<Teacher>> getTeachersNames();
}

class UserRemoteDataSourceImpl implements UserRemoteDataSource {
  final NetworkClient networkClient;

  UserRemoteDataSourceImpl(this.networkClient);

  @override
  Future<List<Location>> getLocations() async {
    final response = await networkClient.get(GET_LOCATIONS_API);
    handleStatusCode(response.statusCode);

    List<Location> locationModels = [];
    final List<dynamic> listOfLocationModels = response.data;

    for (var element in listOfLocationModels) {
      final locationModel = Location.fromJson(element);
      locationModels.add(locationModel);
    }

    return locationModels;
  }

  @override
  Future<List<Company>> getCompanyNames() async {
    final response = await networkClient.get(GET_COMPANY_NAMES);
    handleStatusCode(response.statusCode);

    List<Company> companyModels = [];
    final List<dynamic> listOfCompanyModels = response.data["companies"];
    for (var element in listOfCompanyModels) {
      final locationModel = Company.fromJson(element);
      companyModels.add(locationModel);
    }
    return companyModels;
  }

  @override
  Future<List<Teacher>> getTeachersNames() async {
    final response = await networkClient.get(GET_TEACHER_NAMES);
    handleStatusCode(response.statusCode);

    List<Teacher> models = [];
    final List<dynamic> list = response.data["teachers"];
    for (var element in list) {
      final teacherModel = Teacher.fromJson(element);
      models.add(teacherModel);
    }
    return models;
  }
}
