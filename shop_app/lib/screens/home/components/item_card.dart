import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../models/product.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({
    Key? key,
    required this.product,
    required this.press,
  }) : super(key: key);

  final Product product;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Card(
              elevation: 10,
              shadowColor: Colors.green,
              child: Container(
                padding: EdgeInsets.all(defaultPadding),
                height: 180,
                width: 160,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Image.asset(product.image),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: defaultPadding / 4),
            child: Text(
              product.title,
              style: TextStyle(color: textColor),
            ),
          ),
          Text(
            '\৳${product.price}',
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
