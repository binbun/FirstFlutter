import 'package:flutter/material.dart';
import 'package:test_gf/common/widgets/bottom_bar.dart';
import 'package:test_gf/features/admin/screens/add_product_screen.dart';
import 'package:test_gf/features/admin/screens/admin_screen.dart';
import 'package:test_gf/features/auth/screens/auth_screen.dart';
import 'package:test_gf/features/home/screens/category_deals_screen.dart';
import 'package:test_gf/features/home/screens/home_screen.dart';
import 'package:test_gf/features/search/screens/search_screen.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case AuthScreen.routeName:
      return MaterialPageRoute(
          settings: routeSettings, builder: (_) => const AuthScreen());
    case HomeScreen.routeName:
      return MaterialPageRoute(
          settings: routeSettings, builder: (_) => const HomeScreen());
    case BottomBar.routeName:
      return MaterialPageRoute(
          settings: routeSettings, builder: (_) => const BottomBar());
    case AdminScreen.routeName:
      return MaterialPageRoute(
          settings: routeSettings, builder: (_) => const AdminScreen());
    case AddProductScreen.routeName:
      return MaterialPageRoute(
          settings: routeSettings, builder: (_) => const AddProductScreen());
    case SearchScreen.routeName:
      var searchQuery = routeSettings.arguments as String;
      return MaterialPageRoute(
          settings: routeSettings,
          builder: (_) => SearchScreen(searchQuery: searchQuery));
    case CategoryDealsScreen.routeName:
      var category = routeSettings.arguments as String;
      return MaterialPageRoute(
          settings: routeSettings,
          builder: (_) => CategoryDealsScreen(category: category));
    default:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const Scaffold(
          body: Center(
            child: Text("Screen does not exist"),
          ),
        ),
      );
  }
}
