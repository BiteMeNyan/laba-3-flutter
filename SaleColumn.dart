import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:laba1/AppModel.dart';
import 'sale.dart';

class SaleColumn extends StatelessWidget {

  final Function activateDiscount;

  SaleColumn({this.activateDiscount});

  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
              decoration: BoxDecoration(
                color: Color(0xFFF0F0F0),
              ),

              child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      Sale(
                        index: 0,
                        image: 'assets/images/oktober.jpg',
                        label: "Oktoberfest в Domino`s!",
                        description: "Замовляй нове акційне меню ЛИШЕ ЗА 299 ГРН!...",
                        activateDiscount: activateDiscount,
                      ),
                      Sale(
                          index: 1,
                          image: 'assets/images/tuesday.jpg',
                          label: "Шалений вівторок в Domino`s!",
                          description: "Замовляй нове акційне меню ЛИШЕ ЗА 299 ГРН!...",
                          activateDiscount: activateDiscount,
                      ),

                      Sale(
                          index: 2,
                          image: 'assets/images/sale.jpg',
                          label: "WOWeekend в Domino`s!",
                          description: "Замовляй маленьку піцу за акційною ціною лише за 100 ГРН КОЖНА!...",
                          activateDiscount: Provider.of<AppModel>(context, listen: false).activateWoweekend,
                      )

                    ],
                  )

              )
          ),

        ],
      ),
    );
  }
}