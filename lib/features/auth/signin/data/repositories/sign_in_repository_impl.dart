import 'dart:convert';
import 'package:mdcin_ca/configure_di.dart';
import 'package:mdcin_ca/core/data/repository.dart';
import 'package:mdcin_ca/core/network/network_info.dart';
import 'package:mdcin_ca/core/utility/local_datasource/local_data_source.dart';
import 'package:mdcin_ca/features/auth/signin/data/datasources/local_datasource/constants.dart';
import 'package:mdcin_ca/features/auth/signin/data/datasources/remote_datasource/sign_in_remote_datasource.dart';
import 'package:mdcin_ca/core/error/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:mdcin_ca/features/auth/signin/domain/entities/user_model.dart';
import 'package:mdcin_ca/features/auth/signin/domain/repositories/sign_in_repository.dart';
import 'package:mdcin_ca/features/profile/core/token/token_repository.dart';

class SignInRepositoryImpl extends BaseRepository implements SignInRepository {
  SignInRemoteDataSource signInRemoteDataSource;
  LocalDataSource localDataSource;
  var local = getIt.get<LocalDataSource>();

  SignInRepositoryImpl({
    required this.signInRemoteDataSource,
    required this.localDataSource,
    required NetworkInfo networkInfo,
  }) : super(networkInfo);

  @override
  Future<Either<Failure, Map>> signIn(
    String email,
    String password,
    bool rememberMy,
  ) {

    return safeCall(() async {
      //return response
      final returnValue = await signInRemoteDataSource.signIn(email, password);
      //save token
      await localDataSource.cacheValue(KEY_AUTH_TOKEN, returnValue["token"]);
      if (rememberMy) {
        //decode jwt
        var data =
            getIt.get<TokenRepository>().getPayload(returnValue["token"]);

        var allAccounts = List.empty();

        //if key if exists
        if (local.containsKey(KEY_ALL_ACCOUNTS)) {
          allAccounts = await local.getList(KEY_ALL_ACCOUNTS);
        }

        //move data to another list to check
        final result =
            allAccounts.map((e) => jsonDecode(e).toString()).toList();

        //if data is exists inside this list
        if (!result.contains(data["accountId"].toString()))
          result.add(data["accountId"].toString());

        //add new list to local data source
        await local.cacheList(
            KEY_ALL_ACCOUNTS, result.map((e) => jsonEncode(e)).toList());
      }
      return right(returnValue);
    });
  }

  // @override
  // Future<Either<Failure, List<UserModel>>> rememberMe() {
  //   return safeCall(() async {
  //     final result = await signInRemoteDataSource.rememberMy();
  //     // List<UserModel> listUserModel = [];
  //     // for (var item in result) {
  //     //   listUserModel.add(UserModel.fromJson(jsonDecode(item.toString())));
  //     // }
  //     return right(result);
  //   });
  // }

  // @override
  // Future<Either<Failure, Map>> signInAfterRememberMe() async {
  //   final result = await signInRemoteDataSource.SignInAfterRemeberMy();
  //   return right(result);
  // }
}
