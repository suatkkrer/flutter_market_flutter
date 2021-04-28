import 'package:flutter/material.dart';
import 'package:flutter_market/product_detail.dart';

class Categories extends StatefulWidget {
  final String kategori;

  const Categories({Key key, this.kategori}) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<Widget> productList;

  @override
  void initState() {
    super.initState();

    if (widget.kategori == "Foods") {
      productList = [
        productCard(
          "Olive oil",
          "20 PLN",
          "https://cdn.pixabay.com/photo/2016/04/24/15/28/olive-oil-1349810_1280.jpg",
          available: true,
        ),
        productCard(
          "Milk",
          "2 PLN",
          "https://cdn.pixabay.com/photo/2017/07/05/15/41/milk-2474993_1280.jpg",
        ),
        productCard(
          "Et 1 Kg",
          "30 TL",
          "https://cdn.pixabay.com/photo/2019/10/05/09/38/meal-4527484_960_720.jpg",
        ),
        productCard(
          "Yumurta 8'li",
          "12.50 TL",
          "https://cdn.pixabay.com/photo/2020/04/08/13/49/egg-5017474_960_720.jpg",
         // mevcut: true,
        ),
        productCard(
          "Makarna",
          "15.50 TL",
          "https://cdn.pixabay.com/photo/2014/12/08/09/45/pasta-560657_1280.jpg",
        ),
        productCard(
          "Çay",
          "30 TL",
          "https://cdn.pixabay.com/photo/2016/03/12/13/25/tee-1252000_960_720.jpg",
        ),
        productCard(
          "Ketçap",
          "10.50 TL",
          "https://cdn.pixabay.com/photo/2016/06/10/15/16/tomatoes-1448267_960_720.jpg",
        ),
        productCard(
          "Un 5 Kg",
          "25 TL",
          "https://cdn.pixabay.com/photo/2016/09/30/18/39/bake-1706050_960_720.jpg",
        ),
      ];
    } else if (widget.kategori == "Desserts") {
      productList = [
        productCard(
          "Çikolata Hediyelik",
          "22.50 TL",
          "https://cdn.pixabay.com/photo/2017/02/11/14/19/valentines-day-2057745_960_720.jpg",
        ),
        productCard(
          "Karışık Kurabiye",
          "20 TL",
          "https://cdn.pixabay.com/photo/2016/11/17/17/37/cookie-1832169_960_720.jpg",
        ),
        productCard(
          "Çilekli Kek",
          "15 TL",
          "https://cdn.pixabay.com/photo/2014/05/23/23/17/dessert-352475_960_720.jpg",
        ),
        productCard(
          "Pasta",
          "16 TL",
          "https://cdn.pixabay.com/photo/2016/03/27/22/38/cake-1284548_960_720.jpg",
        ),
      ];
    } else if (widget.kategori == "Drinks") {
      productList = [
        productCard(
          "Portakal Suyu",
          "6.50 TL",
          "https://cdn.pixabay.com/photo/2017/05/21/16/52/juice-2331722_960_720.jpg",
        ),
        productCard(
          "Şişe Su",
          "2 TL",
          "https://cdn.pixabay.com/photo/2017/02/02/15/15/bottle-2032980_960_720.jpg",
        ),
        productCard(
          "Maden Suyu 6'lı",
          "5 TL",
          "https://cdn.pixabay.com/photo/2017/08/27/17/43/water-glass-2686973_960_720.jpg",
        ),
        productCard(
          "Gazoz",
          "1.50 TL",
          "https://cdn.pixabay.com/photo/2018/09/06/21/22/soda-3659387_960_720.jpg",
        ),
      ];
    } else if (widget.kategori == "Cleaning") {
      productList = [
        productCard(
          "Bulaşık Deterjanı",
          "12 TL",
          "https://cdn.pixabay.com/photo/2020/05/08/15/31/detergent-5146192_960_720.jpg",
        ),
        productCard(
          "Sıvı Sabun",
          "9 TL",
          "https://cdn.pixabay.com/photo/2015/02/28/15/42/soap-653683_960_720.jpg",
        ),
      ];
    }
  }

  Widget productCard(String name, String price, String picPath, {bool available = false}) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => ProductDetail(
          name: name,
          price: price,
          picPath: picPath,
          available: available,
        )));
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                blurRadius: 4.0,
                spreadRadius: 2.0,
              )
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: picPath,
              child: Container(
                width: 120.0,
                height: 80.0,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(picPath),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(20.0)),
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(name,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[600],
                )),
            SizedBox(
              height: 8.0,
            ),
            Text(price,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.red[400],
                )),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 12.0,
        crossAxisSpacing: 12.0,
        padding: EdgeInsets.all(10.0),
        childAspectRatio: 1.0,
        children: productList);
  }
}
