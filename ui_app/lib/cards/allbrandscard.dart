// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';

class AllBrandsCard extends StatelessWidget {
  final String companyName;
  final String logoPath;
  final int price;

  const AllBrandsCard({
    required this.companyName,
    required this.logoPath,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Container(
        padding: EdgeInsets.only(right: 12.0),
        decoration: BoxDecoration(
          color: Colors.grey.shade700,
          borderRadius: BorderRadius.circular(6),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SizedBox(
                  height: 60,
                  child: Image.asset(logoPath),
                ),
                SizedBox(width: 20),
                Text(
                  companyName,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Text('Starts with ' + price.toString() + '\$'),
          ],
        ),
      ),
    );
  }
}
