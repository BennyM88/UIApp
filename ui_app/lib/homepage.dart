// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'cards/allbrandscard.dart';
import 'cards/brandcard.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List popularBrands = [
    ['Moncler', 'lib/icons/moncler.png', 249],
    ['Gucci', 'lib/icons/gucci.png', 319],
    ['Dior', 'lib/icons/dior.png', 399],
    ['Palm Angels', 'lib/icons/palm_angels.png', 199],
  ];

  final List allBrands = [
    ['Balenciaga', 'lib/icons/balenciaga.png', 189],
    ['Chanel', 'lib/icons/chanel.png', 539],
    ['Givenchy', 'lib/icons/givenchy.png', 149],
    ['Off White', 'lib/icons/offwhite.png', 99],
    ['Ysl', 'lib/icons/ysl.png', 169],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text('UI App',
            style: GoogleFonts.comfortaa(
                textStyle: TextStyle(fontWeight: FontWeight.bold))),
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text(
              'Hi James,',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              padding: const EdgeInsets.only(left: 10.0),
              decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(6)),
              child: TextField(
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Search',
                    hintStyle: TextStyle(color: Colors.grey.shade600)),
              ),
            ),
          ),
          SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text(
              'Popular Brands',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 20),
          SizedBox(
            height: 140,
            child: ListView.builder(
                itemCount: popularBrands.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return BrandCard(
                    companyName: popularBrands[index][0],
                    logoPath: popularBrands[index][1],
                    price: popularBrands[index][2],
                  );
                }),
          ),
          SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text(
              'All Brands',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 20),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: ListView.builder(
                itemCount: allBrands.length,
                itemBuilder: (context, index) {
                  return AllBrandsCard(
                    companyName: allBrands[index][0],
                    logoPath: allBrands[index][1],
                    price: allBrands[index][2],
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
