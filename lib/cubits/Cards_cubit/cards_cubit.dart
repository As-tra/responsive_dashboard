import 'package:flutter_bloc/flutter_bloc.dart';

class CardsCubit extends Cubit<int> {
  CardsCubit() : super(0);

  void changeCard({required int value}) {
    emit(value);
  }
}
