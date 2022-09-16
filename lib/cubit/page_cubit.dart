import 'package:bloc/bloc.dart';

class PageCubit extends Cubit<int> {
  PageCubit() : super(0);

// BOTTOM NAVBAR
  void setPage(int newPage) {
    emit(newPage);
  }
}
