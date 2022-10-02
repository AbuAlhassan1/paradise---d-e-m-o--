import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    // double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(backgroundColor: const Color(0xFFF2F4F3),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 15),
            child: Column(
              children: [
                // Header [ Profile Picture & Notification ] -- Start --
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        child: Row(
                          children: [
                            // Prifile Picture -- Start --
                            const CircleAvatar(radius: 30, backgroundColor: Colors.grey,),
                            // Prifile Picture -- End --

                            const SizedBox(width: 10,),

                            // Name & Welcome message -- Start --
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text("Sign In"),
                                Text("Welcome to Paradise"),
                              ],
                            )
                            // Name & Welcome message -- End --
                          ],
                        ),
                      ),

                      // Notification Icon -- Start --
                      const Icon(Icons.notifications)
                      // Notification Icon -- End --
                    ],
                  ),
                ),
                // Header [ Profile Picture & Notification ] -- End --

                // ---------------------------------------------------------------------------

                

                // Orders Tab -- Start --
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5)
                  ),
                  child: Column(
                    children: [
                      // Header [ "Order" Lable & "View All" Button ] -- Start --
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text("Orders"),
                            SizedBox(
                              child: Row(
                                children: const [Text("View All"), Icon(Icons.arrow_forward_ios_rounded)],
                              ),
                            )
                          ],
                        ),
                      ),
                      // Header [ "Order" Lable & "View All" Button ] -- End --

                      // Orders Categories -- Start --
                      SizedBox(
                        height: 80, width: width,
                        child: Row(
                          children: const [
                            OrdersCategoriesCard(),
                            OrdersCategoriesCard(),
                            OrdersCategoriesCard(),
                            OrdersCategoriesCard(),
                            OrdersCategoriesCard(),
                          ],
                        ),
                      )
                      // Orders Categories -- End --
                    ],
                  ),
                ),
                // Orders Tab -- End --

                // Account Activities -- Start --
                Container(
                  height: 300, width: width,
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 150,
                      crossAxisSpacing: 1,
                      mainAxisSpacing: 1,
                      mainAxisExtent: 90
                    ),
                    itemCount: 9,
                    itemBuilder: (context, index){
                      return AspectRatio(
                        aspectRatio: 1,
                        child: Container(
                          color: Colors.grey,
                        ),
                      );
                    },
                  ),
                ),
                // Account Activities -- End --

                // Register Your Store -- Start --
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          child: Row(
                            children: const [Icon(Icons.store), Text("Register Your Store")],
                          ),
                        ),
                        const Icon(Icons.arrow_forward_ios_outlined)
                      ],
                    ),
                  ),
                ),
                // Register Your Store -- End --
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class OrdersCategoriesCard extends StatelessWidget {
  const OrdersCategoriesCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(10)
        ),
      ),
    );
  }
}