// ignore_for_file: constant_identifier_names
import '../../../../../core/network/general_constants.dart';

const GET_LOCATIONS_API = '$SERVER_MAIN_URI/signUp/location';
const GET_PRIMARY_PROFESSION_API = "$SERVER_MAIN_URI/primary-professions";
const GET_MINORS_API = '$SERVER_MAIN_URI/education/miners';
const GET_MAJORS_API = '$SERVER_MAIN_URI/education/majors';
const GET_POSITION_API = '$SERVER_MAIN_URI/experience/position';
const GET_UNIVERSITY_API = '$SERVER_MAIN_URI/education/universities';
const GET_DEGREE_API = '$SERVER_MAIN_URI/education/university/degree/specific-university';
const GET_GENERATE_EMAIL_API = '$SERVER_MAIN_URI/signup/createEmail';
const GET_PRIMARY_BUSINESS = '$SERVER_MAIN_URI/primaryBusiness';
const GET_COMPANY_NAMES = '$SERVER_MAIN_URI/experience/company';
const GET_TEACHER_NAMES = '$SERVER_MAIN_URI/courseOrTraining/teacher';

const GET_VERIFY_PHONE_NUMBER = '${SERVER_MAIN_URI}signUp/verify/phone-number';
const GET_VERIFY_PHONE_CODE = '$SERVER_MAIN_URI/signUp/verify/verify-phone-number-code';

const GET_VERIFY_EMAIL = '${SERVER_MAIN_URI}/signUp/verify/mobile-email';
const GET_VERIFY_EMAIL_CODE =
    '${SERVER_MAIN_URI}/signUp/verify/verify-mobile-email-code';

const POST_SIGN_UP = '${SERVER_MAIN_URI}signUp/signup/individual-mobile';
const POST_SIGN_UP_ORGANIZATION =
    '${SERVER_MAIN_URI}/signUp/signup/organization-mobile';
const POST_UPDATE_PROFILE_IMAGE =
    '${SERVER_MAIN_URI}/individual/individualUpdates/updateProfileImage/handleProfileImageMobile';
