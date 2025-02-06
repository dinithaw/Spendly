import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

List<Map<String, dynamic>> transactionsData = [
  {
    'icon': const FaIcon(FontAwesomeIcons.burger,color: Colors.white,),
    'color': Colors.yellow[700],
    'name': 'Food',
    'totalAmount': '-Rs 500.00',
    'date': 'Today',
  },
  {
    'icon': const FaIcon(FontAwesomeIcons.bagShopping,color: Colors.white,),
    'color': Colors.purple,
    'name': 'Shopping',
    'totalAmount': '-Rs 5000.00',
    'date': 'Today',
  },
  {
    'icon': const FaIcon(FontAwesomeIcons.heartCircleCheck,color: Colors.white,),
    'color': Colors.green,
    'name': 'Health',
    'totalAmount': '-Rs 3000.00',
    'date': 'Yesterday',
  },
  {
    'icon': const FaIcon(FontAwesomeIcons.plane,color: Colors.white,),
    'color': Colors.blue,
    'name': 'Travel',
    'totalAmount': '-Rs 10000.00',
    'date': 'Yesterday',
  }
];