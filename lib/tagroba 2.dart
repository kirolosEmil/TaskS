import 'package:flutter/material.dart';

class tagroba extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Container(
                child: ExpansionTile(
                  title: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 200),
                        child: Image.network('https://s3-eu-west-1.amazonaws.com/elmenusv5-stg/Normal/a3966119-39fd-44ac-99bb-901147fee5aa.jpg',
                        width: 100,
                          height: 100,
                        ),
                      ),
                    ],
                  ),
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Text(
                        'hello',
                        style:
                            TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.network(
                        'https://s3-eu-west-1.amazonaws.com/elmenusv5-stg/Normal/a3966119-39fd-44ac-99bb-901147fee5aa.jpg',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
