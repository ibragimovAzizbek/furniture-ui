import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:furniture/cubits/home/bottom_nav_state.dart';

class BottomNavBarCubit extends Cubit<BottomNavState> {
  BottomNavBarCubit() : super(BottomNavInitial());

  int _selectedIndex = 0;

  int get getIndex => _selectedIndex;

  void setIndex(int index) {
    _selectedIndex = index;
    emit(BottomNavInitial());
  }
}
