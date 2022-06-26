// ignore_for_file: file_names
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_course/Models/catalog.dart';
import '../widgets/drawer.dart';
import '../widgets/item.dart';

class Homepage extends StatefulWidget {
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    final catalogjson =
        await rootBundle.loadString("assets/files/catalog.json");
    final decodeData = jsonDecode(catalogjson);
    var productsData = decodeData["products"];
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" MY App", style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        // ignore: deprecated_member_use
        textTheme: Theme.of(context).textTheme,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: (CatalogModel.items != null)
            ? GridView.builder(
                // ignore: prefer_const_constructors
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 16,
                ),
                itemBuilder: (context, index) {
                  final item = CatalogModel.items![index];
                  return Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: GridTile(
                        header: Container(
                          child: Text(item.name,
                              style: TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0))),
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 146, 243, 178)),
                        ),
                        child: Image.network(item.image, 
                        
                        fit: BoxFit.cover
                        ),
                        footer: Container(
                          child: Text(item.price.toString(),
                              style: TextStyle(
                                  color: Color.fromARGB(255, 255, 251, 251))),
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 0, 0, 0)),
                        ),
                      ));
                },
                itemCount: CatalogModel.items?.length,
              )
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),
      drawer: MyDrawer(),
    );
  }
}
