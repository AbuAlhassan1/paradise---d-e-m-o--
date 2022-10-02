// import 'package:flutter_svg_provider/flutter_svg_provider.dart' as svg_rovider;
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

// class Test extends StatefulWidget {
//   const Test({Key? key}) : super(key: key);

//   @override
//   State<Test> createState() => _TestState();
// }

// class _TestState extends State<Test> {
  
//   late RiveAnimationController controller;
//   bool _isPlaying = false;
//   @override
//   void initState() {
//     super.initState();
//     controller = OneShotAnimation(
//       "one",
//       autoplay: false,
//       onStop: () => setState(() { _isPlaying = false; }),
//       onStart: () => setState(() { _isPlaying = true; }),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {

//     // double height = MediaQuery.of(context).size.height;
//     // double width = MediaQuery.of(context).size.width;

//     return Scaffold(
//       body: RiveAnimation.asset(
//         'assets/rive/app.riv',
//         animations: const ["one"],
//         controllers: [
//           controller
//         ],
//         onInit: (_)=> setState(() { }),
//         fit: BoxFit.fitWidth,
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerTop,
//       floatingActionButton: FloatingActionButton(
//         onPressed: () => _isPlaying ? null : controller.isActive = true,
//       ),
//     );
//   }
// }

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  TestState createState() => TestState();
}

class TestState extends State<Test> {

  // Rive Stuff -- Start --
  late RiveAnimationController appIconController;
  // Rive Stuff -- End --

  StateMachineController? smController;
  SMIInput<bool>? isActiv;

  @override
  void initState() {
    super.initState();
  // Rive Stuff -- Start --
    appIconController = OneShotAnimation("enable", autoplay: false);
  // Rive Stuff -- End --
  }

  void iconClicked(RiveAnimationController controller){
    if( controller.isActive == false ){
      controller.isActive = true;
    }
  }

  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    // double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text('One-Shot Example'),
      ),
      body: InkWell(
        onTap: (){
          iconClicked(appIconController);
        },
        child: SizedBox(
          width: 300,
          height: height,
          child: RiveAnimation.asset(
            'assets/rive/apps_icon.riv',
            controllers: [appIconController],
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}