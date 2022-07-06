
import 'package:flutter/material.dart';
import 'package:flutter_course/Models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

import '../widgets/Home_widgets/add_to_cart.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailPage({Key? key, required this.catalog})
      // ignore: unnecessary_null_comparison
      : assert(catalog != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: context.canvasColor,
      ),
      
      bottomNavigationBar:
        Container(
          color:context.cardColor ,
          child: ButtonBar(
       
          
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "\$${catalog.price}".text.bold.xl4.red800.make(),
            addtocart(
              catalog: catalog,
            ).wh(120,50),
          ],
         ).p32(),
        ),
       
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
              
              tag: Key(catalog.id.toString()),
              child: Image.network(catalog.image)             
              ).h32(context),
              Expanded(
                child: VxArc(
                    height:30.0,
                    arcType: VxArcType.CONVEY,
                    edge: VxEdge.TOP,
                 child: Container(
                  color: context.cardColor,
                  width: context.screenWidth,
                    child: Column(
                    children: [
                      catalog.name.text.xl4
                        .color(context.accentColor)
                        .bold
                        .make(),
                    catalog.description.text
                         .xl
                        .textStyle(context.captionStyle)
                        .make(),
                    6.heightBox,
                    "Sadipscing et clita no dolores erat rebum diam. No diam at eirmod elitr ipsum lorem et. Aliquyam rebum amet rebum diam stet ipsum nonumy sanctus. Takimata sed diam no stet sit stet et ipsum sanctus, rebum sea kasd kasd sea duo. Sed at et et sed sea sed, consetetur sed."
                    .text
                    .textStyle(context.captionStyle)
                    .make()
                    .p16(),
                    ],
                  ).py64(),
                )
                ))
          ],
        ),
      ),
    );
  }
}
