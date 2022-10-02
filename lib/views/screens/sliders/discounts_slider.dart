import 'package:flutter/material.dart';
// import 'package:paradise/views/screens/home_screen/post_widgte/rating_bar.dart';

class DiscountsSlider extends StatelessWidget {
  const DiscountsSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    // double height = MediaQuery.of(context).size.height;
    // double width = MediaQuery.of(context).size.width;

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 5),
            color: Colors.transparent, width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Discounts"),
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
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: const [
                DiscountsCard(),
                DiscountsCard(),
                DiscountsCard(),
                DiscountsCard(),
                DiscountsCard(),
                DiscountsCard(),
                DiscountsCard(),
                DiscountsCard(),
              ],
            ),
          )
        ],
      )
    );
  }
}



class DiscountsCard extends StatelessWidget {
  const DiscountsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150, margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 15),
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
    
        // Product Name -- Start --
          const Align( alignment: AlignmentDirectional.topStart,
            child: Text("datadatadatadatadatadatadatadata", maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle(fontWeight: FontWeight.normal),)
          ),
        // Product Name -- End --
    
        // Discounted To Price -- Start --
          const Align( alignment: AlignmentDirectional.topStart,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 3),
              child: Text("456,853,324 IQD", maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle(fontWeight: FontWeight.bold),),
            )
          ),
        // Discounted To Price -- End --

        // Old Price -- Start --
          const Align( alignment: AlignmentDirectional.topStart,
            child: Text("567,964,435 IQD", maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle(fontWeight: FontWeight.normal,
              decoration: TextDecoration.lineThrough
            ),)
          ),
        // Old Price -- End --

        ],
      ),
    );
  }
}