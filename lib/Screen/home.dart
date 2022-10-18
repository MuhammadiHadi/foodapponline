import 'package:flutter/material.dart';
import 'package:foodapponline/customWidget/item.dart';
import 'package:foodapponline/customWidget/product.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE7EBE7),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 75, left: 30, right: 31),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.menu),
                    Icon(Icons.search),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 23, left: 30),
                child: Text(
                  "Work Place",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500, fontSize: 24),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 30),
                child: Text(
                  "choose your delicious meal",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400, fontSize: 14),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 18, left: 30, right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Item(
                      icon: Icons.home,
                      color: Color(0xff3FC979),
                    ),
                    Item(
                      color: Color(0xffC5C5C5),
                      icon: Icons.heart_broken,
                    ),
                    Item(
                      color: Color(0xffC5C5C5),
                      icon: Icons.wallet,
                    ),
                    Item(
                      color: Color(0xffC5C5C5),
                      icon: Icons.shopping_bag,
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 30, top: 24, right: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Product(
                          image: "assets/images/image1.png",
                          title: "Veg Salad",
                        ),
                        Product(
                          image: "assets/images/image2.png",
                          title: "Roasted chicken",
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 30, top: 24, right: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Product(
                          image: "assets/images/image3.png",
                          title: "Rice & Stew",
                        ),
                        Product(
                          image: "assets/images/image4.png",
                          title: "Steak",
                        ),
                      ],
                    ),
                  )
                ],
              ),
              // Column(
              //   children: [
              //     Padding(
              //       padding:
              //           const EdgeInsets.only(left: 30, top: 24, right: 30),
              //       child: Row(
              //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //         children: [
              //           Product(
              //             image: "assets/images/image3.png",
              //           ),
              //           Product(
              //             image: "assets/images/image4.png",
              //           ),
              //         ],
              //       ),
              //     )
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
