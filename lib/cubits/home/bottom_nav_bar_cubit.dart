import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:furniture/cubits/home/bottom_nav_state.dart';

class BottomNavBarCubit extends Cubit<BottomNavState> {
  BottomNavBarCubit() : super(BottomNavInitial());

  int selectedIndex = 0;

  void setIndex(int index) {
    selectedIndex = index;
    emit(BottomNavInitial());
  }
}
