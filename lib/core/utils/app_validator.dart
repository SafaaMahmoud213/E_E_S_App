class AppValidator {
  static String? validateEmail(String value) {
    if (value.isEmpty) {
      return 'Please enter your email address';
    }
    final emailRegex = RegExp(r"^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$");
    if (emailRegex.hasMatch(value)) {
      return null;
    }
    return 'Please enter a valid email address';
  }

  static String? validatePhone(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your phone number';
    }

    final phoneRegex = RegExp(r'^\+?01[0-9]{9}$', caseSensitive: false);
    if (phoneRegex.hasMatch(value)) {
      return null;
    }
    return 'Please enter a valid phone number';
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your password';
    }
    final passwordRegex = RegExp(r"^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{6,}$");
    if (passwordRegex.hasMatch(value)) {
      return null;
    }
    return 'Password must be at least 6 characters long';
  }

  static String? validateName(String value) {
    if (value.isEmpty) {
      return 'Please enter your name address';
    }
    final emailRegex = RegExp(r"([a-zA-Z',.-]+( [a-zA-Z',.-]+)*){2,30}");
    if (emailRegex.hasMatch(value)) {
      return null;
    }
    return 'Please enter a valid name address';
  }
}
