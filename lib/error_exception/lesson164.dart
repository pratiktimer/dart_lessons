void main() {
  try {
    print(EmailAddress('m@example.com'));
    print(EmailAddress('example.com'));
    print(EmailAddress(''));
  } on FormatException catch (e) {
    print(e);
  }
}

class EmailAddress {
  EmailAddress(this.email) {
    if (email == null || email!.isEmpty)
      throw FormatException("email address can not be empty");
    else if (!email!.contains('@'))
      throw FormatException('$email doesn\'t contain @ symbol');
  }

  final String? email;
}
