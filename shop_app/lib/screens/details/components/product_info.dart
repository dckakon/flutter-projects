import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/models/product.dart';

import '../../../size_config.dart';

class ProductInfo extends StatelessWidget {
  const ProductInfo({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    double? defaultSize = SizeConfig.defaultSize;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: defaultSize! * 2),
      height: defaultSize * 37.5,
      width: defaultSize * 15,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Door Lock',
            style: TextStyle(color: textLightColor),
          ),
          SizedBox(
            height: defaultSize,
          ),
          Text(
            product.title,
            style: TextStyle(
                fontSize: defaultSize * 2.4,
                fontWeight: FontWeight.bold,
                letterSpacing: -0.8,
                height: 1.4),
          ),
          SizedBox(
            height: defaultSize * 2,
          ),
          Text(
            'Price',
            style: TextStyle(color: textLightColor),
          ),
          Text(
            '\৳${product.price}',
            style: TextStyle(
              fontSize: defaultSize * 1.6,
              fontWeight: FontWeight.bold,
              height: 1.6,
            ),
          ),
          SizedBox(
            height: defaultSize * 2,
          ),
          Text(
            'Avialable Colors',
            style: TextStyle(color: textLightColor),
          ),
          Row(
            children: [
              buildColorbox(defaultSize, color: Colors.black, isActive: true),
              buildColorbox(defaultSize, color: Colors.black54),
              buildColorbox(defaultSize,
                  color: Color.fromARGB(255, 244, 119, 144))
            ],
          ),
        ],
      ),
    );
  }

  Container buildColorbox(double defaultSize,
      {Color? color, bool isActive = false}) {
    return Container(
      margin: EdgeInsets.only(top: defaultSize, right: defaultSize),
      // padding: EdgeInsets.all(5),
      height: defaultSize * 2.4,
      width: defaultSize * 2.4,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(6),
      ),
      child: isActive
          ? Icon(
              Icons.check,
              color: Colors.white,
            )
          : SizedBox(),
    );
  }
}
