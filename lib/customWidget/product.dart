import 'package:flutter/material.dart';
import 'package:foodapponline/Screen/deteliPage.dart';
import 'package:google_fonts/google_fonts.dart';

class Product extends StatelessWidget {
  String? image;
  String? title;
  Product({this.image, this.title});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (_) => DeteliPage(
                  images: image,
                  name: title,
                )));
      },
      child: Container(
        height: MediaQuery.of(context).size.height * 0.29,
        width: MediaQuery.of(context).size.width * 0.4,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(width: 2, color: Color(0xffC5C5C5)),
            color: Color(0xffE7EBE7)),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 5, right: 5),
              child: Align(
                  alignment: Alignment.topRight,
                  child: Icon((Icons.heart_broken_rounded))),
            ),
            Image.asset(image!),
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 12),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    title!,
                    style: GoogleFonts.poppins(
                        fontSize: 12, fontWeight: FontWeight.w600),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 12, top: 2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "30.00",
                    style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff3FC979)),
                  ),
                  Icon(
                    Icons.add,
                    color: Color(0xff3FC979),
                    size: 30,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
