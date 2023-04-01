import 'package:dio/dio.dart';
import 'package:mdcin_ca/configure_di.dart';
import 'package:mdcin_ca/core/error/exceptions.dart';
import 'package:mdcin_ca/core/error/network_error_handeler.dart';
import 'package:mdcin_ca/core/network/network_client.dart';
import 'package:mdcin_ca/core/utility/local_datasource/local_data_source.dart';
import 'package:mdcin_ca/features/auth/signin/data/datasources/remote_datasource/constants.dart';

abstract class SignInRemoteDataSource {
  Future<Map> signIn(String email, String password);
  // Future<List<UserModel>> rememberMy();
  // Future<Map> SignInAfterRemeberMy();
}

class SignInRemoteDataSourceImpl implements SignInRemoteDataSource {
  final NetworkClient networkClient;
  var local = getIt.get<LocalDataSource>();

  SignInRemoteDataSourceImpl(this.networkClient);

  @override
  Future<Map> signIn(String email, String password) async {
    try {
      FormData formData =
          FormData.fromMap({"email": email, "password": password});
      final response = await networkClient.post(POST_SIGN_IN, formData);
      return response.data;
    } on DioError catch (e) {
      if (e.response?.statusCode == 400) {
        throw ServerException(
            e.response!.statusCode, e.response!.data["message"]);
      } else {
        handleStatusCode(e.response?.statusCode);
        return {};
      }
    }
  }

  // @override
  // Future<List<UserModel>> rememberMy() async {
  //   try {
  //     var allAccounts = List.empty();
  //     var listAccount = [];
  //     allAccounts =
  //         await getIt.get<LocalDataSource>().getList(KEY_ALL_ACCOUNTS);
  //     listAccount = allAccounts.map((e) => {"id": e}.toString()).toList();
  //     print(
  //       {"accounts": listAccount},
  //     );
  //     final response = await networkClient.get(
  //       GET_ALL_ACCOUNTS_REMEMBER_MY,
  //       queryParams: {"name": "yahea"},
  //     );
  //     return response.data;
  //   } on DioError catch (e) {
  //     if (e.response?.statusCode == 400) {
  //       throw ServerException(
  //           e.response!.statusCode, e.response!.data["message"]);
  //     } else {
  //       handleStatusCode(e.response?.statusCode);
  //       return [];
  //     }
  //   }
  // }

  // @override
  // Future<Map> SignInAfterRemeberMy() async {
  //   var password = r"$2a$10$orD/YSb6RGD9E9KRbtb97eCdjwLVSrrmvP8DrQs40iYZgtyAUNjlK";
  //   var email = "baselalbadish@gmail.com";
  //   try {
  //      FormData formData =
  //         FormData.fromMap({"email": email, "password": password,});
  //         Dio().get()
  //     final result = await networkClient.post(POST_SIGNIN_REMEMBER_MY,formData);
  //     return result.data;
  //   } on DioError catch (e) {
  //     if (e.response?.statusCode == 400) {
  //       throw ServerException(
  //           e.response!.statusCode, e.response!.data["message"]);
  //     } else {
  //       handleStatusCode(e.response?.statusCode);
  //       return {};
  //     }
  //   }
  // }
}
