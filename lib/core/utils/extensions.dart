extension Validation on String {
  //methods

  bool get isValidEmail {
    final RegExp emailRegExp =
        RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    return emailRegExp.hasMatch(this);
    //this -->For Any String
  }

  bool get isValidName {
    final RegExp nameRegExp =
        RegExp(r"^\s*([A-Za-z]{1,}([\.,] |[-']| ))+[A-Za-z]+\.?\s*$");
    return nameRegExp.hasMatch(this);
  }

  bool get isValidNumber {
    final RegExp numberRegExp =
        RegExp(r'^[0-9]+$');
    return numberRegExp.hasMatch(this);
  }
}
