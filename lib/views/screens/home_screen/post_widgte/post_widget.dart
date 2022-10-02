import 'package:flutter/material.dart';
import 'package:paradise/views/screens/home_screen/post_widgte/rating_bar.dart';
import 'package:paradise/views/screens/text/custom_text.dart';
import 'package:flutter_svg/flutter_svg.dart';

class StorePost extends StatefulWidget {

  final String image;

  const StorePost({Key? key, required this.image}) : super(key: key);

  @override
  State<StorePost> createState() => _StorePostState();
}

class _StorePostState extends State<StorePost> {
  PageController pageController = PageController();

  int sliderIndex = 0;

  CustomText customText = CustomText();

  @override
  Widget build(BuildContext context) {

    // double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      width: width, color: Colors.transparent,
      margin: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        // Post Header [ Publisher info such as store photo, store name and side menue button ] -- Start --
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Store Info -- Start --
                SizedBox( child: Row(
                    children: [
                      const CircleAvatar(
                        backgroundColor: Colors.grey,
                      ),
                    // Store Name -- Start --
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: customText.homeSmall(text: "Store", color: Colors.black, size: 16),
                      ),
                    // Store Name -- End --

                    // Sperat Dot -- Start --
                      Container(
                        height: 4, width: 4,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(50)
                        ),
                      ),
                    // Sperat Dot -- End --

                    // Follow Button -- Start --
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: InkWell(
                          // onTap: () => print("Clicked"),
                          overlayColor: MaterialStateProperty.all(Colors.transparent),
                          child: customText.homeSmall(text: "Follow", color: Colors.black, size: 16)
                        ),
                      ),
                    // Follow Button -- End --
                    ],
                  ),
                ),
                // Store Info -- End --

                const Icon(Icons.more_vert_rounded)
              ],
            ),
          ),
        // Post Header -- End --

        // Post main Image -- Start --
          AspectRatio(
            aspectRatio: 1/1, // Make The Image Always Square
            child: Stack(
              children: [
              // Load in The Images -- Start --
                AspectRatio(
                  aspectRatio: 1/1,
                  child: PageView(
                    onPageChanged: (value) {
                      setState(() => sliderIndex = value);
                      // print(value);
                    },
                    scrollDirection: Axis.horizontal,
                    controller: pageController,
                    children: [
                      Image.asset(widget.image, fit: BoxFit.cover,),
                      Image.asset(widget.image, fit: BoxFit.cover,),
                      Image.asset(widget.image, fit: BoxFit.cover,)
                    ],
                  ),
                ),
              // Load in The Images -- End --

              // Price Tag Label -- Start --
                SizedBox(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: AlignmentDirectional.topEnd,
                      child: Container(
                        constraints: const BoxConstraints(maxWidth: 90),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8)
                        ),
                        padding: const EdgeInsets.all(8),
                        child: const Text(
                          "88,131 IQD",
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ),
              // Price Tag Label -- End --
              ],
            ),
          ),
        // Post main Image -- End --
        
        // Bellow Post Content -- Start --
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                // Post Accessibility Bar -- Start --
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10,),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                    // Slider Index -- Start --
                      imageSliderIndex(sliderIndex, 3, 7),
                    // Slider Index -- End --
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        // Favorite, Add To Cart And Share -- Start --
                          SizedBox(
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.only(end: 10),
                                  child: SvgPicture.asset(
                                    "assets/icons/fi-rr-heart.svg",
                                    width: 23,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.only(end: 10),
                                  child: SvgPicture.asset(
                                    "assets/icons/fi-rs-shopping-cart-add.svg",
                                    width: 23,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.only(end: 10),
                                  child: SvgPicture.asset(
                                    "assets/icons/fi-rr-paper-plane.svg",
                                    width: 23,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        // Favorite, Add To Cart And Share -- End --

                        // Rating  And Reviews -- Start --
                          SizedBox(
                            child: Row(
                              children: [
                                SvgPicture.asset(
                                  "assets/icons/fi-rr-star.svg",
                                  width: 23,
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.only(start: 10),
                                  child: SvgPicture.asset(
                                    "assets/icons/fi-rr-comment.svg",
                                    width: 23,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        // Rating And Reviews -- End --
                        ],
                      ),
                    ],
                  )
                ),
              // Post Accessibility Bar -- End --

              // Post Info -- Start --
                Row(
                  children: [
                    const Text("Leather texture middle-aged"),
                    const SizedBox(width: 5,),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                      decoration: BoxDecoration(
                        color: Colors.red[200],
                        borderRadius: BorderRadius.circular(15)
                      ),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            "assets/icons/fi-ss-flame.svg",
                            color: Colors.red,
                            width: 15,
                          ),
                          const SizedBox(width: 5,),
                          const Text("444 left", style: TextStyle(fontSize: 12, color: Colors.white),),
                        ]
                      ),
                    )
                  ],
                ),
                const Text("Nostrud incididunt est laborum dolor ullamco occaecat velit tempor."),

                // Rating Stars -- Start --
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Row(children: const [ RatingBar(5, 20), SizedBox(width: 5,), Text("4 (45)") ],),
                )
                // Rating Stars -- End --

              // Post Info -- End --
              ],
            ),
          )
        // Bellow Post Content -- End --
        ],
      ),
    );
  }

  Widget imageSliderIndex(int index, int numOfImages, double size){

    List<Widget> dots = [];

    for( int i = 0; i < numOfImages; i++ ){
      dots.add(
        Container(
          height: size, width: size, margin: const EdgeInsets.symmetric(horizontal: 5),
          decoration: BoxDecoration(
            color: index == i ? Colors.blue: Colors.grey, borderRadius: BorderRadius.circular(50)
          ),
        )
      );
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: dots,
    );
  }
}