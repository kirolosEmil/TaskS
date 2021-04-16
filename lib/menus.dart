import 'package:flutter/material.dart';
import 'package:flutter_appwwwwwwwwwwwwwwwww/Componetnts/Compo.dart';
import 'package:flutter_appwwwwwwwwwwwwwwwww/tagroba.dart';

class menus extends StatelessWidget {
  List<Widget> itemsData = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tasty Restaurant'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: InkWell(
              onTap: () {},
              child: Icon(
                Icons.shopping_cart,
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, right: 280),
                child: Text(
                  'Categories',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                height: 180,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  children: <Widget>[
                    SowrList1(('assets/images/chiken sandwiches.jpg'),
                        'chicken sandwiches', () {
                      navigateTo(context, TextTilePage());
                    }),
                    SizedBox(
                      width: 10,
                    ),
                    SowrList1(('assets/images/Family Meals.jpg'),
                        'Family Meals', () {}),
                    SizedBox(
                      width: 10,
                    ),
                    SowrList1(('assets/images/Beef Sandwiches.jpeg'),
                        'Beef Sandwiches', () {}),
                    SizedBox(
                      width: 10,
                    ),
                    SowrList1(
                        ('assets/images/desserts.jpg'), 'desserts', () {}),
                    SizedBox(
                      width: 10,
                    ),
                    SowrList1(
                        ('assets/images/kids meals.jpg'), 'kids meals', () {}),
                    SizedBox(
                      width: 10,
                    ),
                    SowrList1(
                        ('assets/images/appetizers.jpg'), 'appetizers', () {}),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 280),
                child: Text(
                  'Categories',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                height: 220,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  children: <Widget>[
                    SowrList2(
                        'https://www.justataste.com/wp-content/uploads/2013/01/beer-battered-onion-rings.jpg',
                        'appetizers',
                        'onion rings',
                        '20LE',
                        () {}),
                    SizedBox(
                      width: 10,
                    ),
                    SowrList2(
                        'https://i2.wp.com/www.burgerartist.com/wp-content/uploads/2016/09/juicy-lucy-open-2-683x1024.jpg?resize=683%2C1024',
                        'chicken sandwiches',
                        'juice lucy',
                        '80LE',
                        () {}),
                    SizedBox(
                      width: 10,
                    ),
                    SowrList2(
                        'https://www.eshopuganda.com/images/watermarked/1/thumbnails/1920/1463/detailed/2/6_pieces_of_fried_chicken.png',
                        'Family Meals',
                        '9 PCS Chicken',
                        '100LE',
                        () {}),
                    SizedBox(
                      width: 10,
                    ),
                    SowrList2(
                        'https://s3-eu-west-1.amazonaws.com/elmenusv5-stg/Normal/a3966119-39fd-44ac-99bb-901147fee5aa.jpg',
                        'Family Meals',
                        '9 PCS Chicken',
                        '120LE',
                        () {}),
                    SizedBox(
                      width: 10,
                    ),
                    SowrList2(
                        'https://images.immediate.co.uk/production/volatile/sites/2/2019/04/Choc-Fudge-Cake-b2d1909.jpg?quality=90&resize=768%2C574',
                        'Deserts',
                        'Chocolate Cake',
                        '50LE',
                        () {}),
                    SizedBox(
                      width: 10,
                    ),
                    SowrList2(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRkamvS3ikN4mZWDWTQSEwdqZEvfehmUW0SEA&usqp=CAU',
                        'Kids Meals',
                        'Chicken Fingers',
                        '660LE',
                        () {}),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 280),
                child: Text(
                    'New Dishes',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              CradTile(
                context,
                'https://www.justataste.com/wp-content/uploads/2013/01/beer-battered-onion-rings.jpg',
                'Onion Rings',
                '50LE',
                'aaaaaaaaa',
                'Add To Cart',
              ),
              SizedBox(
                height: 10,
              ),
              CradTile(
                context,
                'https://www.justataste.com/wp-content/uploads/2013/01/beer-battered-onion-rings.jpg',
                'Onion Rings',
                '50LE',
                'aaaaaaaaa',
                'Add To Cart',
              ),
              SizedBox(
                height: 10,
              ),
              CradTile(
                context,
                'https://www.justataste.com/wp-content/uploads/2013/01/beer-battered-onion-rings.jpg',
                'Onion Rings',
                '50LE',
                'aaaaaaaaa',
                'Add To Cart',
              ),
              SizedBox(
                height: 10,
              ),
              CradTile(
                context,
                'https://www.justataste.com/wp-content/uploads/2013/01/beer-battered-onion-rings.jpg',
                'Onion Rings',
                '50LE',
                'aaaaaaaaa',
                'Add To Cart',
              ),
              SizedBox(
                height: 10,
              ),
              CradTile(
                context,
                'https://www.justataste.com/wp-content/uploads/2013/01/beer-battered-onion-rings.jpg',
                'Onion Rings',
                '50LE',
                'aaaaaaaaa',
                'Add To Cart',
              ),
              SizedBox(
                height: 10,
              ),
              CradTile(
                context,
                'https://www.justataste.com/wp-content/uploads/2013/01/beer-battered-onion-rings.jpg',
                'Onion Rings',
                '50LE',
                'aaaaaaaaa',
                'Add To Cart',
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
