import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../customWidget/item.dart';

class DeteliPage extends StatefulWidget {
  String? images;
  String? name;

  DeteliPage({this.images, this.name});

  @override
  State<DeteliPage> createState() => _DeteliPageState();
}

class _DeteliPageState extends State<DeteliPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE7EBE7),
      body: ListView(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.36,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50))),
            child: Image.asset(
              widget.images!,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                    padding: EdgeInsets.only(
                  top: 40,
                )),
                Text(
                  widget.name!,
                  style: GoogleFonts.poppins(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "30.00",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      color: Color(0xff3FC979)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    "Recipe",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: Color(0xff000000)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, right: 30),
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit oregroundDecoration.",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Color(0xff000000)),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(top: 20, left: 15),
              child: ListTile(
                leading: Item(
                  icon: Icons.location_on_outlined,
                  color: Color(0xffC5C5C5),
                ),
                title: Text(
                  "Location",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600, fontSize: 18),
                ),
                subtitle: Text(
                  "Lorem ipsum dolor sit",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500, fontSize: 14),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(top: 7, left: 15),
              child: ListTile(
                leading: Item(
                  icon: Icons.access_time,
                  color: Color(0xffC5C5C5),
                ),
                title: Text(
                  "Delivery Time",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600, fontSize: 18),
                ),
                subtitle: Text(
                  "30 minutes",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500, fontSize: 14),
                ),
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.06,
            width: double.infinity,
            margin: EdgeInsets.only(left: 30, right: 30, top: 45),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50)),
                color: Color(0xff3FC979)),
            child: Center(
              child: Text(
                "Check-Out",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w800),
              ),
            ),
          )
        ],
      ),
    );
  }
}
