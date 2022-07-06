import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../Models/catalog.dart';
import '../../Pages/cart.dart';

class addtocart extends StatefulWidget {
  final Item catalog;
  const addtocart({
    Key? key,
    required this.catalog,
  }) : super(key: key);

  @override
_addtocartState createState() => _addtocartState();
}

class _addtocartState extends State<addtocart> {
  final _cart = CartModel();

  @override
  Widget build(BuildContext context) {
    
    bool isInCart = _cart.items.contains(widget.catalog);
    return ElevatedButton(
      onPressed: () {
        if (!isInCart) {
          isInCart = isInCart.toggle();
          final _catalog = CatalogModel();
         
          _cart.catalog = _catalog;
          _cart.add(widget.catalog);
           setState(() {});
        }
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
          context.theme.buttonColor,
        ),
        shape: MaterialStateProperty.all(StadiumBorder()),
      ),
      child: isInCart ?  Icon(Icons.done) :  Icon(CupertinoIcons.cart_badge_plus),
    );
  }
}
