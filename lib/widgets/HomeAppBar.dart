
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

 class HomeAppBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(25),
      child: Row(
        // ignore: prefer_const_literals_to_create_immutables
        children:[
          const Icon(
            Icons.sort,
            size: 40,
            color: Color(0xFF4C53A5),
          ),
           const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "DP Shop",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Color(0xFF4C53A5),
                ),
              ),
          ),
           const Spacer(),
           Badge(
           badgeStyle: BadgeStyle(
            padding: EdgeInsets.all(7),
            badgeColor: Colors.red,
           ),
            badgeContent: Text("0",style: TextStyle(color: Colors.white)),
            child: InkWell(
              onTap:() => {
                pushcartPage(context)
              },
              child: Icon(
                Icons.shopping_bag_outlined,
                size: 30,
                color: Color(0xFF4C53A5),
              ),
            ),
          )
        ],
      ),
    );
  }
  void pushcartPage(BuildContext context){
    Navigator.of(context).pushNamed("cartPage");
  }
}