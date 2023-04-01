import 'package:mdcin_ca/features/profile/profile_view/data/data_source/remote_data_source/APIs_constants.dart';
import 'package:mdcin_ca/features/profile/profile_view/domain/entities/profile/profile_model.dart';
import '../../../../../../configure_di.dart';
import '../../../../../../core/error/network_error_handeler.dart';
import '../../../../../../core/network/network_client.dart';
import '../../../../core/token/token_repository.dart';

abstract class ProfileInformationDataSource {
  Future<IndividualProfileState> getIndividualStates();

  Future<IndividualProfile> getProfileInformation();
}

class ProfileInformationDataSourceImpl implements ProfileInformationDataSource {
  final NetworkClient networkClient;

  ProfileInformationDataSourceImpl(this.networkClient);

  @override
  Future<IndividualProfileState> getIndividualStates() async {
    String token = await getIt<TokenRepository>().getToken();
    final response = await networkClient.get(GET_PROFILE_STATES_API, headers: {"token": token});
    handleStatusCode(response.statusCode);
    return IndividualProfileState.fromJson(response.data['status']);
  }

  @override
  Future<IndividualProfile> getProfileInformation() async {
    String token = await getIt<TokenRepository>().getToken();
    final response = await networkClient.get(GET_PROFILE_INFORMATION_API, headers: {"token": token});
    handleStatusCode(response.statusCode);
    return IndividualProfile.fromJson(response.data["individual"]);
  }
}
