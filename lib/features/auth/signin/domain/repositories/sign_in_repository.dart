import 'package:dartz/dartz.dart';
import 'package:mdcin_ca/core/error/failures.dart';

abstract class SignInRepository{
  Future<Either<Failure, Map>> signIn(String email,String password,bool rememberMy);
}
