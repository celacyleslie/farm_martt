import 'package:farm_martt/constants.dart';
import 'package:farm_martt/models/product.dart';
import 'package:farm_martt/screens/details/components/body.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;

  static var routeName;

  const DetailsScreen({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body: Body(product: product),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0,
      leading: IconButton(
        icon: Image.asset(
          "assets/images/dback.png",
          color: Colors.white,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      actions: <Widget>[
        // IconButton(onPressed: (){},
        //   icon: Image.asset(
        //    "assets/images/search.png",
        //   color: Colors.white,
        // ),
        // ),
        IconButton(
          onPressed: () {},
          icon: Image.asset(
            "assets/images/cart.png",
            color: Colors.white,
          ),
        ),
        SizedBox(
          width: kDefaultPadding / 2,
        )
      ],
    );
  }
}
