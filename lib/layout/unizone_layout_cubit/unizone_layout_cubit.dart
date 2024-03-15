import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:unizone/layout/unizone_layout_cubit/unizone_layout_states.dart';
import 'package:unizone/modules/Learner/Learner.dart';
import 'package:unizone/modules/home/home.dart';
import 'package:unizone/modules/menu/Menu.dart';
import 'package:unizone/modules/notifications/notifications.dart';
import 'package:unizone/modules/tasks/tasks.dart';

class UnizoneLayoutCubit extends Cubit<UnizoneLayoutStates> {
  UnizoneLayoutCubit() : super(UnizoneLayoutInitialState());
  static UnizoneLayoutCubit get(context) => BlocProvider.of(context);
  int currentIndex = 0;

  List<Widget> screens = [
    const HomeScreen(),
    const LearnerScreen(),
    const TasksScreen(),
    const NotificationsScreen(),
    const MenuScreen(),
  ];

  void changeBottom(int index) {
    currentIndex = index;
    emit(UnizoneLayoutChangeBottomNavState());
  }

  CurvedNavigationBarItem buildCurvedNavigationBarItem(
      {required IconData icon, required bool isSelected, String? label}) {
    return CurvedNavigationBarItem(
      child: Icon(
        icon,
        color: isSelected ? Colors.white : Colors.grey,
        size: 30,
      ),
      label: label,
    );
  }
}
