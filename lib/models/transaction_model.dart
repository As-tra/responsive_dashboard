import 'package:responsive_dashboard/enums/transaction_type.dart';

class TransactionModel {
  final String title, date, amout;
  final TransactionType type;

  const TransactionModel(
      {required this.title,
      required this.date,
      required this.amout,
      required this.type});
}
