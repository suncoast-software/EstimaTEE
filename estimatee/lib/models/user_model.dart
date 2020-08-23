import 'package:meta/meta.dart';
import 'customer_model.dart';

class User {
  final String id;
  final String fName;
  final String lName;
  final String email;
  final Customer customer;

  const User({
    @required this.id,
    @required this.fName,
    @required this.lName,
    @required this.email,
    @required this.customer,
  });
}
