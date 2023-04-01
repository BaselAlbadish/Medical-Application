// import 'package:dartz/dartz.dart';
// import 'package:mdcin_ca/core/error/failures.dart';
// import 'package:mdcin_ca/core/errors_handle_function/errors_handle.dart';
// import 'package:mdcin_ca/features/auth/signin/domain/repositories/sign_in_repository.dart';

// class SignInUseCase extends UseCase<String, Params> {
//   final SignInRepository signInRepository;

//   SignInUseCase({
//     required this.signInRepository,
//   });

//   @override
//   Future<Either<Failure, String>> call(Params params) async {
//     return await signInRepository.signIn(params.email,params.password);
//   }
// }

// class Params {
//   final String email;
//   final String password;
//   Params(this.email,this.password);
// }
