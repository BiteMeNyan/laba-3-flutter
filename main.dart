// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:laba1/AppModel.dart';
import 'sale.dart';
import 'call_button.dart';
import 'pizza.dart';
import 'SaleColumn.dart';
import 'PizzaColumn.dart';
import 'package:provider/provider.dart';
import 'AppModel.dart';

void main() => runApp(
    ChangeNotifierProvider(
        create: (context) => AppModel(),
        child: MyApp(),
    )
);

class MyApp extends StatefulWidget {



  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  var discount;


  @override
  void initState() {
    discount = 0.0;
    pages = <Widget>[
      SaleColumn(activateDiscount: activateDiscount),
      PizzaColumn((discount as double).toDouble()),
      Container(),
      Container(),
      Container(),
    ];
    super.initState();
  }

  activateDiscount(var newDiscount) {
    setState(() {
      discount = newDiscount;
      pages[1] = PizzaColumn((discount as double).toDouble());
    });
}


   List<Widget> pages;


  final List<Tab> tabs = <Tab>[
    Tab(text: "Акції"),
    Tab(text: "Піца"),
    Tab(text: "Напої"),
    Tab(text: "Сайди"),
    Tab(text: "Десерти"),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          floatingActionButton: CallButton(true),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            fixedColor: Colors.red,
            items: [
              BottomNavigationBarItem(

                icon: Icon(Icons.local_pizza, size: 30),
                label: "Продукти",

              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.home, size: 30),
                label: "Ресторани",

              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.border_color, size: 30),
                label: "Замовлення",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.menu, size: 30),
                label: "Меню",
              ),
            ],
          ),
        appBar: AppBar(
          backgroundColor: Colors.white,
          flexibleSpace: TabBar(
            labelPadding: const EdgeInsets.only(top: 40.0, right: 23.0, left:20.0),
            labelColor: Colors.red,
            indicatorColor: Colors.red,
            isScrollable: true,
            unselectedLabelColor:Color(0xFF686868) ,
            tabs: tabs,
          ),
        ),
        body: TabBarView(
          children: pages.map((Widget page) {
              return page;
            }).toList(),
        ),
      ),
    ),
    );
  }
}