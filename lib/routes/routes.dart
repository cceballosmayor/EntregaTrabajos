import 'package:flutter/material.dart';
import '../screens/error.dart';
import '../screens/screens.dart';

class AppRoutes {
	static const initialRoute = 'home';

	static Map<String, Widget Function(BuildContext)> routes = {
		'home': (BuildContext context) => const HomeScreen(),
    'noticia': (BuildContext context) => const NoticiaScreen(),
	};

	static Route<dynamic> onGenerateRoute(RouteSettings settings) {
		return MaterialPageRoute(
			builder: (context) => const ErrorScreen()
		);
	}
}