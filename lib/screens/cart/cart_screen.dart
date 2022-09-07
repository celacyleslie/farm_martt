import 'package:farm_martt/models/cart.dart';
import 'package:farm_martt/screens/success_screen.dart';
import 'package:farm_martt/widgets/empty_card.dart';
import 'package:farm_martt/widgets/full_cart.dart';
import 'package:flutter/material.dart';


class CartScreen extends StatelessWidget {
  static String routeName = "/cart";

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    List _products = [];
    return !_products.isEmpty
        ? Scaffold(
      body: EmptyCart(),
    )
        : Scaffold(
      appBar: AppBar(
        title: Text("My Cart"),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.delete))
        ],
      ),
      body: Container(
        margin: EdgeInsets.only(bottom: 60),
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (ctx, i){
            return  FullCart();
          }
        ),
      ),
      bottomSheet: _bottomCheckoutSection(),
    );
  }
}

Widget _bottomCheckoutSection() {
  return SizedBox(
    width: double.infinity,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(child:
          Text("Total: \$ 300.00",
          style: TextStyle(fontSize: 22),
          ),
          ),
          ElevatedButton(onPressed: (){
          }
          , child: Text(
              "  C H E C K O U T  "),
          ),
        ],
      ),
    ),
  );
}