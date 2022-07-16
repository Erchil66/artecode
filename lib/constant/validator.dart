class Validator {
  static String? validateEmail(String? val) {
    RegExp? regExp = RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9-]+\.[a-zA-Z]+");
    if (!regExp.hasMatch(val!)) {
      return "Invalid Email";
    } else if (val.isEmpty) {
      return 'Please put email';
    } else {
      return null;
    }
  }

  static String? emptyString(String? val) {
    if (val!.isEmpty) {
      return "Please don't leave blank";
    } else {
      return null;
    }
  }

  static String? confirmPass({String? pass, String? conpass}) {
    if (conpass!.isEmpty) {
      return "Please confirm the password";
    } else if (conpass != pass!) {
      return "password not match";
    } else {
      return null;
    }
  }
}
