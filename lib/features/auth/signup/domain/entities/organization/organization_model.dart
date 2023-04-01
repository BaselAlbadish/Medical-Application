import 'package:freezed_annotation/freezed_annotation.dart';
part 'organization_model.freezed.dart';
part 'organization_model.g.dart';

@freezed
class OrganizationModel with _$OrganizationModel {
  const factory OrganizationModel.organization({
    required String organizationName,
    required String website,
    required int locationId,
    required String PrimaryBusinessName,
    required String email,
    required String phoneNumber,
    required String username,
    required String password,
    required String accountStatus,
  }) = Organization;

  const factory OrganizationModel.primaryBusiness({
    required int id,
    required String name,
  }) = PrimaryBusiness;

  factory OrganizationModel.fromJson(Map<String, dynamic> json) =>
      _$OrganizationModelFromJson(json);
}
