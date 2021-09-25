import 'package:coco_cart/constants.dart';
import 'package:coco_cart/controllers/home_controller.dart';
import 'package:flutter/material.dart';

import 'cart_detailsview_card.dart';

//This View displays all the cart details
//internally I have called the cart_detailsview_card which fetches item data

class CartDetailsView extends StatelessWidget {
  const CartDetailsView({Key? key, required this.controller}) : super(key: key);

  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Cart", style: Theme.of(context).textTheme.headline6),
          ...List.generate(
            controller.cart.length,
            //calling cart_detailsview_card
            (index) => CartDetailsViewCard(productItem: controller.cart[index]),
          ),
          SizedBox(height: defaultPadding),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: Text("Proceed To Buy"),
            ),
          )
        ],
      ),
    );
  }
}
