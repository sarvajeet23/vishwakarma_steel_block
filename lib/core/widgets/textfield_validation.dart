class TextfieldValidation {
  static bool isEmail(String input) {
    return RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$')
        .hasMatch(input);
  }

  static bool isPhone(String input) =>
      RegExp(r'^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}$')
          .hasMatch(input);

  static bool isPassword(String? input) {
    return input != null && input.length >= 7;
  }

  static bool isEmpty(String? input) {
    return input == null || input.trim().isEmpty;
  }

  static bool isPincode(String input) =>
      RegExp(r'^[1-9]{1}[0-9]{5}$|^[1-9]{1}[0-9]{3}\s[0-9]{3}$')
          .hasMatch(input);
}
