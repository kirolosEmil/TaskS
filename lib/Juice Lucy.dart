import 'package:flutter/material.dart';
import 'package:flutter_appwwwwwwwwwwwwwwwww/menus.dart';
import 'Componetnts/Compo.dart';

class Sandwich extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chicken Sandwich'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: InkWell(
              onTap: () {
                navigateTo(
                  context,
                  menus(),
                );
              },
              child: Icon(
                Icons.home,
              ),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 5,
          ),
          CradTile2(
            context,
            'https://i2.wp.com/www.burgerartist.com/wp-content/uploads/2016/09/juicy-lucy-open-2-683x1024.jpg?resize=683%2C1024',
            'JUICE LUCY',
            '80 LE',
            'Fried ChiCken Pieces stuffed American Cheddar Cheese , Friend Cream Cheese Bites',
            'cdscdscsd',
          )
        ],
      ),
    );
  }
}
