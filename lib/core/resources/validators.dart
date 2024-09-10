class validators {

  static String? validateEmail(String? val) {
    RegExp emailRegex = RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    if (val == null) {
      return 'this field is requird';
    } else if (val.trim().isEmpty) {
      return 'this feild is requird';
    } else if (emailRegex.hasMatch(val) == false) {
      return 'enter valid email';
    } else {
      return null;
    }
  }

  static String? NotEmptyValidate(text) {
    if (text == null || text.trim().isEmpty) {
      return "this field is required";
    } else {
      return null;
    }
  }

  static String? validatePassword(text) {
    if (text == null || text.trim().isEmpty) {
      return "this field is required";
    }
    if (text.length < 6) {
      return "password should be at least 6 letters";
    }

    return null;
  }

  static String? validateConfirmPassword(text, PasswordController) {
    if (text == null || text.trim().isEmpty) {
      return "this field is required";
    }
    if (text != PasswordController.text) {
      return "password doesn't match";
    }
    return null;
  }

}
