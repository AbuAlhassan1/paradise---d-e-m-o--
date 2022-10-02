import 'package:flutter/material.dart';
import 'package:paradise/views/appbar/stores_page_appbar.dart';
import 'package:paradise/views/screens/home_screen/post_widgte/rating_bar.dart';

class StoresScreen extends StatelessWidget {
  const StoresScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return index == 0 ? const SizedBox(height: 60) : index == 9 ? const SizedBox(height: 80,) : const StoreCard("assets/images/one.jpg");
            },
          ),
          const StoresPageAppBar(),
        ],
      ),
    );
  }
}

class StoreCard extends StatelessWidget {
  final String image;
  const StoreCard(this.image, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    // double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      width: width, margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(255, 79, 79, 79),
            blurRadius: 10,
            spreadRadius: -10,
            offset: Offset(0, 10)
          )
        ]
      ),
      child: Column(
        children: [
          Container(
            color: Colors.transparent, height: 250,
            child: Stack(
              children: [
              // Card Header Main Image -- Start --
                Container(
                  color: Colors.transparent,
                  width: width, height: 180,
                  child: Image.asset(image, fit: BoxFit.cover),
                ),
              // Card Header Main Image -- End --

              // Card Header Secondery Image & Follow Button -- Start --
                Positioned( bottom: 15, left: 0, right: 0,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 100, width: 100,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(50)
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 70),
                          child: FollowButton(),
                        )
                      ],
                    ),
                  )
                )
              // Card Header Secondery Image & Follow Button -- End --
              ],
            ),
          ),
          // Store Name & Followers Number -- Start --
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("Store 2 - Iraq - Babylon Mall",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text("6.9M Followers"),
              ],
            ),
          ),
          // Store Name & Followers Number -- End --

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: const [
                RatingBar(3, 20),
                SizedBox(width: 10,),
                Text("3 (96.4M)")
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Text("Irure adipisicing nostrud cillum dolore consequat id consequat aute nostrud. Eiusmod magna consequat incididunt proident deserunt nostrud cupidatat incididunt nulla id sint eiusmod. Non deserunt proident elit incididunt do Lorem et voluptate consectetur cupidatat cupidatat. Fugiat eiusmod qui consequat cupidatat eu cupidatat Lorem.",
              maxLines: 2,
              style: TextStyle(
                overflow: TextOverflow.ellipsis
              ),
            ),
          )
        ],
      ),
    );
  }
}


class FollowButton extends StatelessWidget {
  const FollowButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border.all(
          color: Colors.blue,
          width: 1
        ),
        borderRadius: BorderRadius.circular(50)
      ),
      child: const Text("Follow"),
    );
  }
}