import 'package:flutter/material.dart';

class ItemsWidgets extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: 0.68,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      children: [
        for(int i=1; i<8; i++)
        Container(
          padding: const EdgeInsets.only(left: 15, right: 15,top: 10),
          margin: const EdgeInsets.symmetric(vertical: 8,horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20)
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Color(0xFF4A53A5),
                      borderRadius: BorderRadius.circular(20)
                    ),
                    // ignore: prefer_const_constructors
                    child: Text(
                      "-50%",
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  const Icon(
                    Icons.favorite_border,
                    color: Colors.red,
                  )
                ],
              ),

              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, "itemPage");
                },
                child:Container(
                  margin: const EdgeInsets.all(5),
                  child: Image.asset(
                    "images/$i.png",
                    width: 120,
                    height: 120,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(bottom: 5),
                alignment: Alignment.centerLeft,
                child: const Text(
                  "Product tilte",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF4A53A5),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: const Text(
                  "Write description of Product",
                  style: TextStyle(
                    fontSize: 15,
                    color: Color(0xFF4A53A5),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // ignore: prefer_const_literals_to_create_immutables
                  children:[
                     const Text(
                    "\$55",
                      style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF4A53A5),
                      ),
                    ),
                    const Icon(
                    Icons.shopping_cart_checkout,
                    color:Color(0xFF4A53A5),
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }

}