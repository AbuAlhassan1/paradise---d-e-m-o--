import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:paradise/controllers/post_controller.dart';
import 'package:paradise/views/screens/Store%5B%20s%20%5D_screen/stores_screen.dart';
import 'package:paradise/views/appbar/home_appbar.dart';
import 'package:paradise/views/screens/button_navbar_paint/button_navbar_paint.dart';
import 'package:paradise/views/screens/cart_screen/cart_screen.dart';
import 'package:paradise/views/screens/home_screen/post_widgte/post_widget.dart';
import 'package:paradise/views/screens/profile_screen/profile_screen.dart';
import 'package:paradise/views/screens/sliders/advertisement_slider.dart';
import 'package:paradise/views/screens/sliders/categories_slider.dart';
import 'package:paradise/views/screens/sliders/discounts_slider.dart';
import 'package:paradise/views/screens/sliders/top_stores_slider.dart';
import 'package:paradise/views/screens/test_screen/test_one.dart';
import 'package:rive/rive.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  ScrollController scrollController = ScrollController();

  List<Widget> homeContent = [
    const SizedBox(height: 60,),
    const AdvertisementSlider(),
    const CategoriesSlider(),
    const TopStoresSlider(),
    const DiscountsSlider(),
    const DiscountsSlider(),
    const StorePost(image: "assets/images/1013887912233943130.gif"),
    const StorePost(image: "assets/images/1013887912233943130.gif"),
  ];

  @override
  void initState() {
    super.initState();
    // postController.posts();

    scrollController.addListener(() {
      // print(scrollController.position);
      if( scrollController.position.atEdge ){
        print(scrollController.position.pixels);
        if( scrollController.position.pixels != 0 ){
          List<Widget> newList = [ const StorePost(image: "assets/images/1013887912233943130.gif"), const StorePost(image: "assets/images/1013887912233943130.gif"), const StorePost(image: "assets/images/1013887912233943130.gif"), const StorePost(image: "assets/images/1013887912233943130.gif"), ];
          setState( () => homeContent.addAll(newList) );
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        RefreshIndicator(
          backgroundColor: Colors.white,
          color: Colors.black,
          // displacement: 120,
          edgeOffset: 80,
          onRefresh: ()async{},
          child: ListView.builder(
            controller: scrollController,
            itemCount: homeContent.length,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              return index==homeContent.length-1 ? const SizedBox(height: 50,) : homeContent[index];
            },
          ),
        ),
        const HomeAppBar(),
      ],
    );
  }
}


// Home Screen Widget -- Start --
class HomeLayout extends StatefulWidget {
  const HomeLayout({Key? key}) : super(key: key);

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  final PostController postController = Get.find();

  final PageController pageController = PageController(
    initialPage: 2
  );

  // Rive Stuff -- Start --
  late RiveAnimationController appIconController;
  // Rive Stuff -- End --

  @override
  void initState() {
    super.initState();
  // Rive Stuff -- Start --
    appIconController = OneShotAnimation("disable", autoplay: false);
  // Rive Stuff -- End --
  }

  void iconClicked(RiveAnimationController controller){
    if( controller.isActive == false ){
      controller.isActive = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    // double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          PageView(
            physics: const NeverScrollableScrollPhysics(),
            controller: pageController,
            allowImplicitScrolling: true,
            children: const [
              StoresScreen(),
              Test(),
              Home(),
              CartScreen(),
              ProfileScreen(),
            ],
            // onPageChanged: (value) {
              
            // },
          ),
          Positioned(bottom: 0,
            child: ClipRRect(
              child: Container(
                color: Colors.transparent,
                height: 100, width: width,
                child: Stack(
                  children: [
                    Positioned(
                      bottom: 5,
                      child: SizedBox( height: 100, width: width,
                        child: CustomPaint(
                          painter: ButtonNavBarShadowPainter(),
                        ),
                      ),
                    ),
                    SizedBox( height: 100, width: width,
                      child: CustomPaint(
                        painter: ButtonNavBarPainter(),
                      ),
                    ),
                    Positioned(bottom: 0,
                      child: Container(
                        height: 50, width: width, padding: EdgeInsets.symmetric(horizontal: width*0.1),
                        color: Colors.transparent,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              child: Row(
                                children: [
                                  InkWell(
                                    onTap: () => pageController.animateToPage(0, duration: const Duration(milliseconds: 800), curve: Curves.easeInOut),
                                    child: SvgPicture.asset("assets/icons/fi-rr-shop.svg")
                                  ),
                                  SizedBox(width: width*0.08,),
                                  InkWell(
                                    onTap: () {
                                      iconClicked(appIconController);
                                      pageController.animateToPage(1, duration: const Duration(milliseconds: 800), curve: Curves.easeInOut);
                                    },
                                    child: SizedBox(
                                      height: 30, width: 30,
                                      child: RiveAnimation.asset(
                                        "assets/rive/apps_icon.riv",
                                        controllers: [
                                          appIconController
                                        ],
                                      ),
                                    )
                                  ),
                                ],
                              ),
                            ),
                    
                            SizedBox(
                              child: Row(
                                children: [
                                  InkWell(
                                    onTap: () => pageController.animateToPage(3, duration: const Duration(milliseconds: 800), curve: Curves.easeInOut),
                                    child: SvgPicture.asset("assets/icons/fi-rr-shopping-cart.svg"),
                                  ),
                                  SizedBox(width: width*0.08,),
                                  InkWell(
                                    onTap: () => pageController.animateToPage(4, duration: const Duration(milliseconds: 800), curve: Curves.easeInOut),
                                    child: SvgPicture.asset("assets/icons/fi-rr-user.svg"),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Center(
                      child: InkWell(
                        onTap: () => pageController.animateToPage(2, duration: const Duration(milliseconds: 800), curve: Curves.easeInOut),
                        child: Container(
                          height: 60, width: 60,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 0, 31, 56),
                            borderRadius: BorderRadius.circular(50)
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ),
            ),
          )
        ],
      )
    );
  }
}

// Home Screen Widget -- End --

