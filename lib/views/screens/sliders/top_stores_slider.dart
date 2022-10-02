import 'package:flutter/material.dart';
// import 'package:paradise/views/screens/Store%5B%20s%20%5D_screen/stores_screen.dart';
import 'package:paradise/views/screens/home_screen/post_widgte/rating_bar.dart';

class TopStoresSlider extends StatelessWidget {
  const TopStoresSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    // double height = MediaQuery.of(context).size.height;
    // double width = MediaQuery.of(context).size.width;

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 5),
            color: Colors.transparent, width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Top Stores"),
                SizedBox(
                  child: Row(
                    children: const [
                      Text("More"),
                      Icon(Icons.arrow_forward_ios_outlined)
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const [
                  TopStoresCard(),
                  TopStoresCard(),
                  TopStoresCard(),
                  TopStoresCard(),
                  TopStoresCard(),
                  TopStoresCard(),
                  TopStoresCard(),
                  TopStoresCard(),
                ],
              ),
            ),
          )
        ],
      )
    );
  }
}

class TopStoresCard extends StatelessWidget {
  const TopStoresCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140, margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 15),
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
         color: Colors.white,
         borderRadius: BorderRadius.circular(5),
         boxShadow: const [
          BoxShadow(
            color: Colors.black,
            blurRadius: 10,
            spreadRadius: -8,
            offset: Offset(0, 5)
          )
         ]
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        // Card Header Image -- Start --
          AspectRatio(
            aspectRatio: 1/1,
            child: Image.asset("assets/images/1013887912233943130.gif", fit: BoxFit.cover,),
          ),
        // Card Header Image -- End --
    
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          child: Column(
            children: [
              // Store Name -- Start --
                const Align( alignment: AlignmentDirectional.topStart,
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 3),
                    child: Text("Store Name", maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle(fontWeight: FontWeight.bold),),
                  )
                ),
              // Store Name -- End --
          
              // Followers Count -- Start --
                const Align( alignment: AlignmentDirectional.centerStart,
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: Text("89.6M Followers", maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle(fontWeight: FontWeight.normal),),
                  )
                ),
              // Followers Count -- End --
          
              // Rating Stars -- Start --
                const Padding(
                  padding: EdgeInsets.only(bottom: 5, top: 3),
                  child: RatingBar(2, 15),
                ),
              // Rating Stars -- End --
          
              // Follow Button --Start --
                Align( alignment: AlignmentDirectional.bottomCenter,
                  child: Container( width: double.infinity, height: 28,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(5)
                    ),
                    child: const Align(alignment: AlignmentDirectional.center, child: Text("Follow")),
                  ),
                )
              // Follow Button --End --
            ],
          ),
        )
        ],
      ),
    );
  }
}