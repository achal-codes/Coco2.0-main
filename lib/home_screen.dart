import 'package:coco_cart/constants.dart';
import 'package:coco_cart/controllers/home_controller.dart';
import 'package:coco_cart/models/Product.dart';
import 'package:coco_cart/screens/deatils/details_screen.dart';
import 'package:coco_cart/screens/home/components/cart_detailsview_card.dart';
import 'package:flutter/material.dart';
import 'class_cocoitems.dart';

import 'screens/home/components/cart_details_view.dart';
import 'screens/home/components/cart_short_view.dart';
import 'screens/home/components/header.dart';
import 'screens/home/components/product_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown[200],
        title: Text(
          "Coco Kart",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            icon: Image.asset(
              "assets/images/profile.png",
            ),
            onPressed: () {},
          )
        ],
      ),
      body: SafeArea(
        child: ListView(
          children: (items).map((e) {
            return Container(
              //Each item in infinity width 175pixel height
              padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
              //color: Colors.lightBlue,
              width: double.infinity,
              height: 165,
              child: Card(
                elevation: 10,
                child: Row(
                  children: [
                    //1
                    Container(
                      width: 165,
                      height: 165,
                      child: FittedBox(
                        fit: BoxFit.cover,
                        child: e.img,
                      ),
                    ),

                    Container(
                      width: 190,
                      height: 165,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 13,
                            width: 190,
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                            width: 190,
                            height: 20,
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                e.item_name,
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                            width: 190,
                            height: 20,
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "₹ ${e.price}",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                            width: 190,
                          ),
                          //increment
                          Container(
                            padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                            width: 190,
                            height: 50,
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: Container(
                                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                color: Colors.brown[200],
                                width: 82,
                                height: 35,
                                child: Row(
                                  children: [
                                    Text(
                                      "ADD",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    IconButton(
                                        onPressed: () {}, icon: Icon(Icons.add))
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
        height: 55,
        color: Colors.brown[200],
        child: Align(
          alignment: Alignment.centerRight,
          child: Container(
            width: 200,
            height: 40,
            child: TextButton(
              child: Text(
                "View Cart",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
              onPressed: () {},
            ),
          ),
        ),
      ),
    );
  }
}
