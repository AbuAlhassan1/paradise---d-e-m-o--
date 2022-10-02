import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paradise/controllers/post_controller.dart';
// import 'package:paradise/views/screens/Store%5B%20s%20%5D_screen/stores_screen.dart';
// import 'package:paradise/views/screens/home_screen/home.dart';
import 'package:paradise/views/screens/home_screen/home_screen.dart';
// import 'package:paradise/views/screens/test_screen/test_one.dart';


class MyBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final PostController postController = Get.put(PostController());
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) {
        return ScrollConfiguration(behavior: MyBehavior(), child: child!);
      },
      routes: {
        '/':(context) => HomeLayout(),
      },
      initialRoute: '/',
      debugShowCheckedModeBanner: false,
      onGenerateRoute: (RouteSettings settings) {
        late Widget page;
        switch (settings.name) {
          case '/':
            page = HomeLayout();
            break;
          default:
            page = HomeLayout();
            break;
        }
        return MaterialPageRoute(builder: (context) => page, settings: settings);
      },
    );
  }
}