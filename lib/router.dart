import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:training/GridScreen.dart';
import 'package:training/ListScreen.dart';
import 'package:training/main.dart';

final GoRouter  router = GoRouter(
  initialLocation: '/',
  routes: <RouteBase>[
    // GoRoute(path: '/gridView',
    // builder: (BuildContext context, GoRouterState state){
    //   return const
    // })

    ShellRoute(navigatorKey: GlobalKey<NavigatorState>(),
    builder: (context,state,child) {
      return TryHome(child: child);
    },
    routes:[
      GoRoute(path: "/",
      builder: (context,state)=> const GridScreen(),
      ),
      GoRoute(path: "/listScreen",
      builder: (context,state)=> const ListScreen(),
      ),
    ],
    ),
  ],
);