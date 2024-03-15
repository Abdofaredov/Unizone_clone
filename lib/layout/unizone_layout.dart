import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:unizone/layout/unizone_layout_cubit/unizone_layout_cubit.dart';
import 'package:unizone/layout/unizone_layout_cubit/unizone_layout_states.dart';
import 'package:unizone/shared/constants/app_color.dart';
import 'package:unizone/shared/constants/icon_broken.dart';

class UnizoneLayout extends StatelessWidget {
  const UnizoneLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UnizoneLayoutCubit, UnizoneLayoutStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var layoutCubit = UnizoneLayoutCubit.get(context);
        return Scaffold(
          body: layoutCubit.screens[layoutCubit.currentIndex],
          bottomNavigationBar: CurvedNavigationBar(
            index: layoutCubit.currentIndex,
            backgroundColor: Colors.transparent,
            buttonBackgroundColor: kPrimaryColor,
            color: kNavBarColor,
            animationDuration: const Duration(milliseconds: 300),
            onTap: (index) {
              layoutCubit.changeBottom(index);
            },
            items: [
              layoutCubit.buildCurvedNavigationBarItem(
                icon: IconBroken.Home,
                isSelected: layoutCubit.currentIndex == 0,
              ),
              layoutCubit.buildCurvedNavigationBarItem(
                icon: IconBroken.Document,
                isSelected: layoutCubit.currentIndex == 1,
              ),
              layoutCubit.buildCurvedNavigationBarItem(
                icon: IconBroken.Arrow___Down_Circle,
                isSelected: layoutCubit.currentIndex == 2,
              ),
              layoutCubit.buildCurvedNavigationBarItem(
                icon: IconBroken.Notification,
                isSelected: layoutCubit.currentIndex == 3,
              ),
              layoutCubit.buildCurvedNavigationBarItem(
                icon: Icons.list_outlined,
                isSelected: layoutCubit.currentIndex == 4,
              ),
            ],
          ),
        );
      },
    );
  }
}
