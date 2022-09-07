import 'package:farm_martt/constants.dart';
import 'package:farm_martt/models/product.dart';
import 'package:farm_martt/screens/details/components/add_to_cart.dart';
import 'package:farm_martt/screens/details/components/cart_counter.dart';
import 'package:farm_martt/screens/details/components/color_size.dart';
import 'package:farm_martt/screens/details/components/counter_with_fav_btn.dart';
import 'package:farm_martt/screens/details/components/description.dart';
import 'package:farm_martt/screens/details/components/product_title_with_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key? key, required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    left: kDefaultPadding,
                    right: kDefaultPadding,
                  ),
                  //height: 500,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(24),
                          topRight: Radius.circular(24))),
                  child: Column(
                    children: <Widget>[
                      ColorAndSize(product: product),
                      SizedBox(height: kDefaultPadding / 2),
                      Description(product: product),
                      SizedBox(height: kDefaultPadding / 2),
                      CounterWithFavBtn(),
                      SizedBox(height: kDefaultPadding / 2),
                      AddToCart(product: product),
                    ],
                  ),
                ),
                ProductTitlewithImage(product: product),
              ],
            ),
          )
        ],
      ),
    );
  }
}
