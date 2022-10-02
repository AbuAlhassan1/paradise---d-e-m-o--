import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return const StoreCartCard();
        },
      ),
    );
  }
}


class StoreCartCard extends StatelessWidget {
  const StoreCartCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    // double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      width: width, margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(255, 83, 83, 83),
            blurRadius: 10,
            spreadRadius: -7
          )
        ]
      ),
      child: SizedBox(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    child: Row(
                      children: [
                        Checkbox(
                          value: true,
                          onChanged: (value) {},
                        ),
                        const Text("Store One")
                      ],
                    ),
                  ),
                  const Icon(Icons.arrow_forward_ios)
                ],
              ),
            ),
            SizedBox(
              child: Column(
                children: const [
                  ProductCartCard(),
                  ProductCartCard(),
                  ProductCartCard(),
                  ProductCartCard(),
                  ProductCartCard(),
                ],
              ),
            ),
            Container(
              width: width,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
              decoration: BoxDecoration(
                // color: Colors.red,
                border: Border.all(
                  color: const Color.fromARGB(255, 194, 194, 194),
                  width: 1
                ),
                borderRadius: BorderRadius.circular(5)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("TOTAL : 5,070,719,970 IQD", style: TextStyle(fontWeight: FontWeight.bold),),
                  Text("CHECKOUT", style: TextStyle(fontWeight: FontWeight.bold),)
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}

class ProductCartCard extends StatelessWidget {
  const ProductCartCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    // double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      width: width, height: 130,
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 1/1,
            child: Container(
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Image.asset("assets/images/1013887912233943130.gif", fit: BoxFit.cover,),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "data data data data data data data data data data data",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16
                    ),
                  ),
                  const Text(
                    "data data data data data data data data data data data data data data data data data data data data data data",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const Text(
                    "2,895,766,419 IQD",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16
                    ),
                  ),
                  const Text(
                    "3,954,358,464 IQD",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      decoration: TextDecoration.lineThrough
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        PlusAndMinusButton(Icon(Icons.remove, size: 16,)),
                        Text("1"),
                        PlusAndMinusButton(Icon(Icons.add, size: 16,)),
                        SomeButton(Icon(Icons.remove_red_eye, color: Colors.white, size: 20,), Colors.green),
                        SomeButton(Icon(Icons.delete_forever, color: Colors.white, size: 20,), Colors.red),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}


class PlusAndMinusButton extends StatelessWidget {
  final Icon icon;
  const PlusAndMinusButton(this.icon, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30, width: 30, margin: const EdgeInsets.symmetric(horizontal: 6),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 224, 224, 224),
        borderRadius: BorderRadius.circular(50)
      ),
      child: icon,
    );
  }
}
class SomeButton extends StatelessWidget {
  final Icon icon;
  final Color color;
  const SomeButton(this.icon, this.color, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30, width: 30, margin: const EdgeInsets.symmetric(horizontal: 6),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(50)
      ),
      child: icon,
    );
  }
}