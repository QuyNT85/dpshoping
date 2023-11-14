import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import '../widgets/CategoriesWidgets.dart';
import '../widgets/HomeAppBar.dart';
import '../widgets/ItemsWidgets.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        HomeAppBar(),
        Container(
          // height: 500,
          padding: const EdgeInsets.all(15),
          decoration: const BoxDecoration(
            color: Color(0xFFEDECF2),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(35),
              topRight:  Radius.circular(35),
            )
          ),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                padding: const EdgeInsets.symmetric(horizontal: 15),
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30)
                ),
                child: Row(
                  children: [

                    //SearchWidget
                    Container(
                      margin: const EdgeInsets.only(left: 5),
                      height: 60,
                      width: 280,
                      child: TextFormField(
                        // ignore: prefer_const_constructors
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search here...",
                        ),
                      ),
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.camera_alt,
                      size: 25,
                      color: Color(0xFF4A53A5),
                    ),
                  ],
                ),
              ),

              //CategoriesWidget
              Container(
                alignment: Alignment.centerLeft,
                // ignore: prefer_const_constructors
                margin: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
                child:const Text(
                  "Categories",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF4A53A5),
                  ),
                ),
              ),

              //Categories
              CategoriesWidgets(),

              //Item
              Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.symmetric(vertical: 20,horizontal: 10),
                // ignore: prefer_const_constructors
                child: Text(
                  "Best Selling",
                 style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF4A53A5),
                  ),
                ),
              ),

              //ItemsWidget
              ItemsWidgets(),

            ],
          ),
        ),
      ]),
      bottomNavigationBar: CurvedNavigationBar(
        color: const Color(0xFF4A53A5),
        backgroundColor: Colors.transparent,
        height: 60,
        onTap: (index){},
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          const Icon(
            Icons.home,
            size: 30,
            color: Colors.white,
          ),
          const Icon(
            Icons.shopping_cart,
            size: 30,
            color: Colors.white,
          ),
          const Icon(
            Icons.list_alt_sharp,
            size: 30,
            color: Colors.white,
          ),
          const Icon(
            Icons.account_balance,
            size: 30,
            color: Colors.white,
          ),
        ],
      ),
    );
  }

}