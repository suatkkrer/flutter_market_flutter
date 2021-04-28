import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget {
  final String name;
  final String price;
  final String picPath;
  final bool available;

  const ProductDetail(
      {Key key, this.name, this.price, this.picPath, this.available})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Stack(
          children: [
            Hero(tag: picPath, child: Image.network(picPath)),
            IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.red[400],
                  size: 40.0,
                ),
                onPressed: () {
                  Navigator.pop(context);
                })
          ],
        ),
        Column(
          children: [
            SizedBox(
              height: 20.0,
            ),
            Text(
              name,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              price,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.red[400],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0),
              child: Text(
                "",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              width: MediaQuery.of(context).size.width - 50.0,
              height: 50.0,
              decoration: BoxDecoration(
                color: available ? Colors.red[400] : Colors.black,
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Center(
                child: Text(
                  available ? "Add to Chart" : "Not available",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        )
      ],
    ));
  }
}
