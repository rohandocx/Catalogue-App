import 'package:flutter/widgets.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../Themes/Themes.dart';

class CatalogHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        "Rohan's App".text.xl5.bold.color(MyTheme.darkblueColor).make(),
        "Trending Products".text.xl2.make(),
      ],
    );
  }
}
