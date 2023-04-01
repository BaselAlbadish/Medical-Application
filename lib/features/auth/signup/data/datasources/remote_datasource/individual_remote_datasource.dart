import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:mdcin_ca/features/auth/signup/domain/entities/individual/individual_model.dart';
import '../../../../../../core/error/network_error_handeler.dart';
import '../../../../../../core/network/network_client.dart';
import '../constants.dart';

abstract class IndividualRemoteDataSource{
  Future<List<Profession>> getAllPrimaryProfessions();
  Future<GeneratedEmail> createEmail(String firstName, String lastName);

  //get all
  Future<List<Minor>> getAllMinors();
  Future<List<Major>> getAllMajors();
  Future<List<Position>> getAllPositions();
  Future<List<University>> getAllUniversities();
  Future<List<Degree>> getDegreeForSpecificUniversity(int universityId);

  //verification phone
  Future<String> sendCodeVerificationToMobile(String phoneNumber);
  Future<Unit> verifyPhoneNumberByCode(String phoneNumber, String code);

  //verification email
  Future<Map> sendCodeVerificationToEmail(String email);
  Future<String> verifyEmailByCode(String hash, String code);

  //Individual
  Future<String> signUpIndividual(IndividualModel individual);
}

class IndividualRemoteDataSourceImpl implements IndividualRemoteDataSource{
  final NetworkClient networkClient;

  IndividualRemoteDataSourceImpl(this.networkClient);

  @override
  Future<List<Profession>> getAllPrimaryProfessions() async {
    final response = await networkClient.get(GET_PRIMARY_PROFESSION_API);
    handleStatusCode(response.statusCode);
    return _getModelsList<Profession>(
        response.data['primaryProfessions'], Profession.fromJson);
  }

  @override
  Future<List<Major>> getAllMajors() async {
    final response = await networkClient.get(GET_MAJORS_API);
    handleStatusCode(response.statusCode);
    return _getModelsList<Major>(response.data['majors'], Major.fromJson);
  }

  @override
  Future<List<Minor>> getAllMinors() async {
    final response = await networkClient.get(GET_MINORS_API);
    handleStatusCode(response.statusCode);
    return _getModelsList<Minor>(response.data['miners'], Minor.fromJson);
  }

  @override
  Future<List<Position>> getAllPositions() async {
    final response = await networkClient.get(GET_POSITION_API);
    handleStatusCode(response.statusCode);
    return _getModelsList<Position>(response.data["positions"], Position.fromJson);
  }

  @override
  Future<List<University>> getAllUniversities() async {
    final response = await networkClient.get(GET_UNIVERSITY_API);
    handleStatusCode(response.statusCode);
    return _getModelsList<University>(
        response.data['universities'], University.fromJson);
  }

  @override
  Future<List<Degree>> getDegreeForSpecificUniversity(int universityId) async {
    final response = await networkClient.get(GET_DEGREE_API + '/$universityId');

    handleStatusCode(response.statusCode);
    return _getModelsList<Degree>(response.data['degrees'], Degree.fromJson);
  }

  @override
  Future<GeneratedEmail> createEmail(String firstName, String lastName) async {
    final response = await networkClient.get(GET_GENERATE_EMAIL_API, queryParams: {
      "firstName": firstName,
      "lastName": lastName,
    });
    handleStatusCode(response.statusCode);
    GeneratedEmail generatedEmail = GeneratedEmail.fromJson(response.data);
    return generatedEmail;
  }

  @override
  Future<String> sendCodeVerificationToMobile(String phoneNumber) async {
    final response =
        await networkClient.get(GET_VERIFY_PHONE_NUMBER, queryParams: {
      "phoneNumber": phoneNumber,
    });
    handleStatusCode(response.statusCode);
    return response.data["accountStatus"];
  }

  @override
  Future<Unit> verifyPhoneNumberByCode(String phoneNumber, String code) async {
    final response =
        await networkClient.get(GET_VERIFY_PHONE_CODE, queryParams: {
      "phoneNumber": phoneNumber,
      "code": code,
    });
    handleStatusCode(response.statusCode);
    return unit;
  }

  @override
  Future<Map> sendCodeVerificationToEmail(String email) async {
    final response = await networkClient
        .get(GET_VERIFY_EMAIL, queryParams: {"email": email});
    handleStatusCode(response.statusCode);
    return response.data;
  }

  @override
  Future<String> verifyEmailByCode(String hash, String code) async {
    final response = await networkClient.get(GET_VERIFY_EMAIL_CODE,
        queryParams: {"code": code, "hashCode": hash});
    handleStatusCode(response.statusCode);
    return response.data['message'];
  }

  @override
  Future<String> signUpIndividual(IndividualModel individual) async {
    FormData formData = FormData.fromMap(individual.toJson());
    final response = await networkClient.post(POST_SIGN_UP, formData);
    handleStatusCode(response.statusCode);
    return response.data["token"];
  }

  List<T> _getModelsList<T>(
      List indModel, T Function(Map<String, dynamic>) callBack) {
    List<T> modelsList = [];
    for (Map<String, dynamic> element in indModel) {
      final item = callBack(element);
      modelsList.add(item);
    }
    return modelsList;
  }
}
