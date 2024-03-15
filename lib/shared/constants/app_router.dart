import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:unizone/layout/unizone_layout.dart';
import 'package:unizone/modules/Learner/Learner.dart';
import 'package:unizone/modules/home/home.dart';
import 'package:unizone/modules/menu/Menu.dart';
import 'package:unizone/modules/notifications/notifications.dart';
import 'package:unizone/modules/tasks/tasks.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        //return const CoursesSearchScreen();
        return const UnizoneLayout();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'Home',
          builder: (BuildContext context, GoRouterState state) {
            return const HomeScreen();
          },
        ),
        GoRoute(
          path: 'Learner',
          builder: (BuildContext context, GoRouterState state) {
            return const LearnerScreen();
          },
        ),
        GoRoute(
          path: 'Tasks',
          builder: (BuildContext context, GoRouterState state) {
            return const TasksScreen();
          },
        ),
        GoRoute(
          path: 'Notifications',
          builder: (BuildContext context, GoRouterState state) {
            return const NotificationsScreen();
          },
        ),
        GoRoute(
          path: 'Menu',
          builder: (BuildContext context, GoRouterState state) {
            return const MenuScreen();
          },
        ),
      ],
    ),
  ],
);
