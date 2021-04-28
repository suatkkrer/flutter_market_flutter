import 'package:flutter/material.dart';
import 'package:flutter_market/Categories.dart';

class Items extends StatefulWidget {
  @override
  _ItemsState createState() => _ItemsState();
}

class _ItemsState extends State<Items> with SingleTickerProviderStateMixin {

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          controller: _tabController,
            indicatorColor: Colors.red[400],
            labelColor: Colors.red[400],
            unselectedLabelColor: Colors.grey,
            isScrollable: true,
            labelStyle: TextStyle(fontSize: 15.0,fontWeight: FontWeight.w500),
            tabs: [
              Tab(child: Text("Foods"),),
              Tab(child: Text("Desserts"),),
              Tab(child: Text("Drinks"),),
              Tab(child: Text("Cleaning"),),
            ]
        ),
        Expanded(
          child: TabBarView(
          controller: _tabController,
            children: [
              Categories(kategori: "Foods",),
              Categories(kategori: "Desserts",),
              Categories(kategori: "Drinks",),
              Categories(kategori: "Cleaning",),
            ],
          ),
        )
      ],
    );
  }
}
