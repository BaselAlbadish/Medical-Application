import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get_it/get_it.dart';
import 'package:mdcin_ca/core/network/network_info.dart';
import 'package:mdcin_ca/features/auth/forgotPassword/data/datasources/remote_datasource/forgotPassword_datasource.dart';
import 'package:mdcin_ca/features/auth/forgotPassword/data/repositories/forgotPasswordImp_repository.dart';
import 'package:mdcin_ca/features/auth/forgotPassword/domain/repositories/forgotPassword_repository.dart';
import 'package:mdcin_ca/features/auth/forgotPassword/presentation/bloc/forgot_password_bloc.dart';
import 'package:mdcin_ca/features/auth/signin/data/datasources/local_datasource/sign_in_local_datasource.dart';
import 'package:mdcin_ca/features/auth/signin/data/datasources/remote_datasource/sign_in_remote_datasource.dart';
import 'package:mdcin_ca/features/auth/signup/data/datasources/remote_datasource/individual_remote_datasource.dart';
import 'package:mdcin_ca/features/auth/signin/data/repositories/sign_in_repository_impl.dart';
import 'package:mdcin_ca/features/auth/signin/domain/repositories/sign_in_repository.dart';
import 'package:mdcin_ca/features/auth/signup/data/datasources/remote_datasource/organization_remote_datasource.dart';
import 'package:mdcin_ca/features/auth/signup/data/datasources/remote_datasource/user_remote_data_source.dart';
import 'package:mdcin_ca/features/auth/signup/data/repositories/individual_repository_impl.dart';
import 'package:mdcin_ca/features/auth/signup/data/repositories/organization_repository_impl.dart';
import 'package:mdcin_ca/features/auth/signup/data/repositories/user_repository_impl.dart';
import 'package:mdcin_ca/features/auth/signup/domain/repositories/individual_repository.dart';
import 'package:mdcin_ca/features/auth/signup/domain/repositories/organization_repository.dart';
import 'package:mdcin_ca/features/auth/signup/domain/repositories/user_repository.dart';
import 'package:mdcin_ca/features/auth/signup/presentation/blocs/general_user_bloc/general_user_bloc.dart';
import 'package:mdcin_ca/features/auth/signup/presentation/blocs/individual/basic_info/basic_info_individual_bloc.dart';
import 'package:mdcin_ca/features/auth/signup/presentation/blocs/individual/contact_info/contact_info_individual_bloc.dart';
import 'package:mdcin_ca/features/auth/signup/presentation/blocs/individual/education_bloc/education_bloc_bloc.dart';
import 'package:mdcin_ca/features/auth/signup/presentation/blocs/individual/work_bloc/work_bloc.dart';
import 'package:mdcin_ca/features/auth/signup/presentation/blocs/organization/organization_bloc.dart';
import 'package:mdcin_ca/features/auth/signup/presentation/blocs/sign_up_bloc/sign_up_bloc.dart';
import 'package:mdcin_ca/features/profile/core/token/token_repository.dart';
import 'package:mdcin_ca/features/profile/core/utility/profile_store.dart';
import 'package:mdcin_ca/features/profile/profile_view/data/data_source/remote_data_source/profile_information_data_source.dart';
import 'package:mdcin_ca/features/profile/profile_view/data/data_source/remote_data_source/update_remote_data_source/basic_info_remote.dart';
import 'package:mdcin_ca/features/profile/profile_view/data/data_source/remote_data_source/update_remote_data_source/courses_remote.dart';
import 'package:mdcin_ca/features/profile/profile_view/data/data_source/remote_data_source/update_remote_data_source/experience_remote.dart';
import 'package:mdcin_ca/features/profile/profile_view/data/data_source/remote_data_source/update_remote_data_source/skill_remote.dart';
import 'package:mdcin_ca/features/profile/profile_view/data/data_source/remote_data_source/update_remote_data_source/summary_remote.dart';
import 'package:mdcin_ca/features/profile/profile_view/data/repositories/profile_update_impl/Image_repository_impl.dart';
import 'package:mdcin_ca/features/profile/profile_view/data/repositories/profile_update_impl/courses_repositories_impl.dart';
import 'package:mdcin_ca/features/profile/profile_view/data/repositories/profile_update_impl/skill_repositories_impl.dart';
import 'package:mdcin_ca/features/profile/profile_view/data/repositories/profile_update_impl/summary_repositories_impl.dart';
import 'package:mdcin_ca/features/profile/profile_view/domain/repositories/profile_update/Image_repository.dart';
import 'package:mdcin_ca/features/profile/profile_view/domain/repositories/profile_update/basicInfo_repositories.dart';
import 'package:mdcin_ca/features/profile/profile_view/domain/repositories/profile_update/courses_repositories.dart';
import 'package:mdcin_ca/features/profile/profile_view/domain/repositories/profile_update/experience_repositories.dart';
import 'package:mdcin_ca/features/profile/profile_view/domain/repositories/profile_update/skill_repositories.dart';
import 'package:mdcin_ca/features/profile/profile_view/domain/repositories/profile_update/summary_repositories.dart';
import 'package:mdcin_ca/features/profile/profile_view/presentation/blocs/Basic_Info/basic_info_bloc.dart';
import 'package:mdcin_ca/features/profile/profile_view/presentation/blocs/Courses/courses_bloc.dart';
import 'package:mdcin_ca/features/profile/profile_view/presentation/blocs/Experience/experience_bloc.dart';
import 'package:mdcin_ca/features/profile/profile_view/presentation/blocs/Skills/skills_bloc.dart';
import 'package:mdcin_ca/features/profile/profile_view/presentation/blocs/Summary/summary_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'core/network/network_client.dart';
import 'core/utility/local_datasource/local_data_source.dart';
import 'features/auth/signin/presentation/bloc/signin_bloc.dart';
import 'features/profile/profile_view/data/data_source/remote_data_source/update_remote_data_source/images_remote.dart';
import 'features/profile/profile_view/data/repositories/init_information_repository_impl.dart';
import 'features/profile/profile_view/data/repositories/profile_update_impl/basicInfo_repositories_impl.dart';
import 'features/profile/profile_view/data/repositories/profile_update_impl/experience_repositories_impl.dart';
import 'features/profile/profile_view/domain/repositories/init_infornation_repository.dart';
import 'features/profile/profile_view/presentation/blocs/images/images_bloc.dart';

final getIt = GetIt.instance;

Future<void> configureInjection() async {
  /// utilities
  final conectionChecker = Connectivity();
  getIt.registerSingleton<NetworkInfo>(NetworkInfoConnectivity(conectionChecker));
  getIt.registerSingleton<NetworkClient>(NetworkClientDio());

  /// datasources
  final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  getIt.registerSingleton<SharedPreferences>(sharedPreferences);
  getIt.registerSingleton<UserRemoteDataSource>(UserRemoteDataSourceImpl(getIt()));
  getIt.registerSingleton<LocalDataSource>(LocalDataSourceSharedPreferences(getIt()));
  getIt.registerSingleton<IndividualRemoteDataSource>(IndividualRemoteDataSourceImpl(getIt()));
  getIt.registerSingleton<SignInRemoteDataSource>(SignInRemoteDataSourceImpl(getIt()));
  getIt.registerSingleton<SignInLocalDataSource>(SignInLocalDataSourceImpl(getIt()));
  getIt.registerSingleton<ForgotPasswordRemoteDataSource>(ForgotPasswordRemoteDataSourceImp(getIt()));
  getIt.registerSingleton<OrganizationRemoteDataSource>(OrganizationRemoteDataSourceImpl(getIt(),getIt()));

  /// Profile remote
  getIt.registerSingleton<SummaryRemote>((SummaryRemoteImpl(getIt())));
  getIt.registerSingleton<BasicInfoRemote>((BasicInfoRemoteImpl(getIt())));
  getIt.registerSingleton<ProfileInformationDataSource>((ProfileInformationDataSourceImpl(getIt())));
  getIt.registerSingleton<ImageRemote>((ImageRemoteImpl(getIt())));
  getIt.registerSingleton<ExperienceRemote>((ExperienceRemoteImpl(getIt())));
  getIt.registerSingleton<SkillRemote>((SkillRemoteImpl(getIt())));
  getIt.registerSingleton<CourseRemote>((CourseRemoteImpl(getIt())));

  ///         <<<     repositories   >>>

  /// profile repository
  getIt.registerSingleton<ProfileStore>(ProfileStore());
  getIt.registerSingleton<FillDataRepository>((FillDataRepositoryImpl(getIt(), getIt(), getIt())));
  getIt.registerSingleton<BasicInfoRepository>((BasicInfoRepositoryImpl(getIt(), getIt(), getIt())));
  getIt.registerSingleton<ImageRepository>(ImageRepositoryImpl(getIt(), getIt()));
  getIt.registerSingleton<ExperienceRepository>(ExperienceRepositoryImpl(getIt(), getIt()));
  getIt.registerSingleton<SummaryRepository>(SummaryRepositoryImpl(networkInfo: getIt(), summaryRemote: getIt()));
  getIt.registerSingleton<SkillRepository>(SkillRepositoryImpl(getIt(), getIt()));
  getIt.registerSingleton<CourseRepository>(CourseRepositoryImpl(getIt(), getIt()));

  /// repository
  getIt.registerSingleton<UserRepository>(UserRepositoryImpl(
    networkInfo: getIt(),
    userRemoteDataSource: getIt(),
    userLocalDataSource: getIt(),
  ));

  getIt.registerSingleton<SignInRepository>(SignInRepositoryImpl(
    networkInfo: getIt(),
    //signInLocalDataSource: getIt(),
    localDataSource: getIt(),
    signInRemoteDataSource: getIt(),
  ));

  getIt.registerSingleton<ForgotPasswordRepository>(ForgotPasswordRepositoryImp(
    forgotPasswordRemoteDataSource: getIt(),
    localDataSource: getIt(),
    networkInfo: getIt(),
  ));

  getIt.registerSingleton<IndividualRepository>(IndividualRepositoryImpl(
    networkInfo: getIt(),
    userRemoteDataSource: getIt(),
    userLocalDataSource: getIt(),
    remoteDataSource: getIt(),
  ));

  /// Token repository
  getIt.registerSingleton<TokenRepository>(TokenRepository(
    localDataSource: getIt(),
  ));

  getIt.registerSingleton<OrganizationRepository>(
    OrganizationRepositoryImpl(
      networkInfo: getIt(),
      organizationRemoteDataSource: getIt(),
      userLocalDataSource: getIt(),
      userRemoteDataSource: getIt(),
    ),
  );

  ///                         <<<    blocs   >>>

  ///sign up //individual
  getIt.registerFactory(() => SignUpBloc(getIt())); //, getIt()));
  getIt.registerFactory(() => GeneralUserBloc());
  getIt.registerFactory(() => BasicInfoIndividualBloc(getIt()));
  getIt.registerFactory(() => ContactInfoIndividualBloc(getIt()));
  getIt.registerFactory(() => EducationBloc(getIt()));
  getIt.registerFactory(() => WorkBloc(getIt()));

  ///sign up  ( Organization )
  getIt.registerFactory(() => OrganizationBloc(getIt()));

  /// Sign in
  getIt.registerFactory(() => SignInBloc(getIt()));
  getIt.registerFactory(() => ForgotPasswordBloc(getIt()));

  /// profile blocs
  getIt.registerFactory(() => SummaryBloc(summaryRepository: getIt()));
  getIt.registerFactory(() => BasicInfoBloc(basicInfoRepository: getIt()));
  getIt.registerFactory(() => ImagesBloc(imageRepository: getIt()));
  getIt.registerFactory(() => ExperienceBloc(experienceRepository: getIt()));
  getIt.registerFactory(() => SkillsBloc(getIt()));
  getIt.registerFactory(() => CoursesBloc(getIt()));

}
