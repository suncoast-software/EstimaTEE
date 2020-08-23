import 'package:meta/meta.dart';

class Customer {
  final String id;
  final String companyName;
  final String contactName;
  final String email;
  final String phone;

  const Customer({
    @required this.id,
    @required this.companyName,
    @required this.contactName,
    @required this.email,
    @required this.phone,
  });
}
