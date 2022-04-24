// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';

class BrandCard extends StatelessWidget {
  final String companyName;
  final String logoPath;
  final int price;

  const BrandCard({
    required this.companyName,
    required this.logoPath,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(6),
        child: Container(
          width: 160,
          padding: EdgeInsets.all(10),
          color: Colors.grey.shade700,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 60,
                    child: Image.asset(logoPath),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(6.0),
                    child: Container(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Check'),
                      color: Colors.deepPurple.shade300,
                    ),
                  ),
                ],
              ),
              Text(
                companyName,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                'Starts with ' + price.toString() + '\$',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
