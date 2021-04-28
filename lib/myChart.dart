import 'package:flutter/material.dart';

class MyChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Center(
        child: Text(
          "My Chart",
          style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.red[400]),
        ),
      ),
      ListTile(
        title: Text("Chocolate"),
        subtitle: Text("2 times x 3.5 PLN"),
        trailing: Text("7 PLN"),
      ),
      ListTile(
        title: Text("Milk"),
        subtitle: Text("1 times x 2 PLN"),
        trailing: Text("2 PLN"),
      ),
      ListTile(
        title: Text("Cake"),
        subtitle: Text("2 times x 5.5 PLN"),
        trailing: Text("11 PLN"),
      ),
      SizedBox(height: 20.0,),
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 25.0),
            child: Column(
              children: [
                Text(
                  "Total",
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.red[400],
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  "20 PLN",
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      SizedBox(height: 20.0,),
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          height: 45.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.red[400]
          ),
          child: Center(
            child: Text(
              "Complete Shopping",
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
              ),
            ),
          ),
        ),
      )
    ]);
  }
}
