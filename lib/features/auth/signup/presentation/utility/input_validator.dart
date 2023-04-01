class InputValidator {
  static String validateName(String name) {
    if (name.length <= 1) {
      return "Name must be longer than one character";
    } else if (name.contains('.')) {
      return "Name must not contain dots";
    } else {
      return "";
    }
  }

  static String validatePassword(String password) {
    if (password.length < 8) {
      return 'Passowrd must be longer than 8 characters.';
    }
    if (!password.contains(RegExp(r'[A-Z]'))) {
      return 'Passowrd must contain an uppercase letter';
    }
    if (!password.contains(RegExp(r'[a-z]'))) {
      return 'Passowrd must contain a lowercase letter';
    }
    if (!password.contains(RegExp(r'[0-9]'))) {
      return 'Passowrd must contain a number';
    }
    return "";
  }

  static String validateConfirmedPassword(
      String password, String confirmedPassowrd) {
    return password == confirmedPassowrd
        ? ""
        : "Password confirmation does not match!";
  }

  static String validatePhoneNumber(String phoneNumber) {
    final phoneNumberRegex =
        RegExp(r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$');
    if (phoneNumber == '') return 'phone number must not be empty';

    return phoneNumberRegex.hasMatch(phoneNumber)
        ? ''
        : 'phone number must not contain letters';
  }

  static String validateCompanyName(String? companyName) {
    return companyName == null || companyName.isEmpty
        ? 'company name must not be empty'
        : '';
  }

  static String validatePosition(String? position) {
    return position == null || position.isEmpty
        ? 'position name must not be empty'
        : '';
  }

  static String validateEmail(String? position) {
    if (position == "") {
      return "Email is required";
    } else if (!RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(position!)) {
      return "Please enter a valid email address";
    } else {
      return "";
    }
  }

  static String validateCodeVerifyEmail(String position) {
    final regex = RegExp(r'^([0-9]{6})$');

    if (position.isEmpty) {
      return "Code is required";
    } else if (regex.hasMatch(position)) {
      return "";
    } else {
      return "invalid input";
    }
  }

  static String validationNameWebSite(String webSite) {
    final regex = RegExp(
        r'(https?:\/\/)?(www\.)[-a-zA-Z0-9@:%._\+~#=]{2,256}\.[a-z]{2,4}\b([-a-zA-Z0-9@:%_\+.~#?&//=]*)|(https?:\/\/)?(www\.)?(?!ww)[-a-zA-Z0-9@:%._\+~#=]{2,256}\.[a-z]{2,4}\b([-a-zA-Z0-9@:%_\+.~#?&//=]*)');
    if (webSite.isEmpty) {
      return "Please enter the website name";
    } else if (!regex.hasMatch(webSite)) {
      return "format the name not correct";
    } else {
      return "";
    }
  }
  
}
