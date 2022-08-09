import 'package:flutter/material.dart';
import 'product.dart';

class ProductDetail extends StatefulWidget {
  ProductDetail({Key? key, required this.product}) : super(key: key);
  final Product product;
  @override
  State<ProductDetail> createState() => _ProductDetailState();
}
//TODO:  Add _ProductDetailState here

class _ProductDetailState extends State<ProductDetail> {
  //TODO:Add _sliderVal Here

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.product.label),
      ),
      body: SafeArea(
          child: Column(
        children: [
          SizedBox(
            height: 300,
            width: double.infinity,
            child: Image(
              image: AssetImage(widget.product.imageUrl),
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            widget.product.label,
            style: const TextStyle(
              fontSize: 18,
            ),
          ),
          //TODO:add expanded
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(7.0),
              itemCount: widget.product.specification.length,
              itemBuilder: (BuildContext context, int index) {
                final specification = widget.product.specification[index];
                return Text(
                  '${specification.dimension} \n${specification.frequency} \n${specification.operatingVoltage}',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                  ),
                );
              },
            ),
          )
          //TODO:add Slider() here
        ],
      )),
    );
  }
}
