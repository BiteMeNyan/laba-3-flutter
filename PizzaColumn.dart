import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'pizza.dart';
import 'AppModel.dart';

class PizzaColumn extends StatelessWidget {

  double discount;

  PizzaColumn(this.discount);

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
                      Pizza(
                        image: 'assets/images/pizza.jpg',
                        description: "Подвійна Моцарела, Пепероні, Помідори, Соус Барбекю",
                        label: "Піца Пепероні з томатами",
                        price: (Provider.of<AppModel>(context, listen: false).woWeekend == true) ? 100 : 119.99 - discount,
                      ),
                      Pizza(
                        image: 'assets/images/pizza2.jpg',
                        description: "Курка, Ананас, Моцарела, Соус Domino's",
                        label: "Піца Гавайська",
                        price: (Provider.of<AppModel>(context, listen: false).woWeekend == true) ? 100 : 149.99 - discount,
                      ),
                      Pizza(
                        image: 'assets/images/pizza3.jpg',
                        description: "Крем-сир Філадельфія, Лосось, Моцарела, Соус Альфредо",
                        label: "Піца Лосось Філадельфія",
                        price: (Provider.of<AppModel>(context, listen: false).woWeekend == true) ? 100 : 219.99 - discount,
                      ),
                    ],
                  )

              )
          ),

        ],
      ),
    );
  }
}

