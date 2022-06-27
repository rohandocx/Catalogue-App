import 'package:flutter/material.dart';
import 'package:flutter_course/Models/catalog.dart';
import 'package:flutter_course/Themes/Themes.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailPage({Key? key, required this.catalog})
      // ignore: unnecessary_null_comparison
      : assert(catalog != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.creamColor,
      bottomNavigationBar:
        Container(
          color:Colors.white ,
          child: ButtonBar(
       
          
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "\$${catalog.price}".text.bold.xl4.red800.make(),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                // backgroundColor: MaterialStateProperty.all(
                //   MyTheme.darkblueColor,
                // ),
                shape: MaterialStateProperty.all(StadiumBorder()),
              ),
              child: "Buy".text.xl.make(),
            ).wh(100,50),
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
                  color: Colors.white,
                  width: context.screenWidth,
                    child: Column(
                    children: [
                      catalog.name.text.xl4
                        .color(MyTheme.darkblueColor)
                        .bold
                        .make(),
                    catalog.description.text
                         .xl
                        .textStyle(context.captionStyle)
                        .make(),
                    10.heightBox,
                    ],
                  ).py64(),
                ).expand(),
                ))
          ],
        ),
      ),
    );
  }
}
