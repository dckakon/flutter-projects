import 'package:flutter/material.dart';
import '../../constants.dart';
import './components/body.dart';
import '../../size_config.dart';
import '../../models/product.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key, required this.product}) : super(key: key);
  final Product product;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: secondaryColor,
      appBar: buildAppBar(context),
      body: Body(
        product: product,
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      leading: IconButton(
        onPressed: () => Navigator.pop(context),
        icon: Icon(Icons.keyboard_backspace_rounded),
        color: textColor,
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.shopping_bag_outlined),
          color: textColor,
        ),
        SizedBox(
          width: SizeConfig.defaultSize,
        ),
      ],
    );
  }
}
