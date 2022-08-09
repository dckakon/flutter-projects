import 'package:flutter/material.dart';
import 'package:recipe/product_detail.dart';
import 'product.dart';

void main() {
  runApp(const ProductApp());
}

class ProductApp extends StatelessWidget {
  const ProductApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();
    return MaterialApp(
      title: 'Product List App',
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
          primary: Color(0xff6E85B7),
          secondary: Colors.black,
        ),
      ),
      home: const MyHomePage(title: 'Product List App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: Product.samples.length,
          itemBuilder: (BuildContext context, int index) {
            //TODO:Update to return Recipe Card
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      //TODO: ProductDetail()
                      return ProductDetail(product: Product.samples[index]);
                    },
                  ),
                );
              },
              child: buildProductCard(Product.samples[index]),
            );
          },
        ),
      ),
    );
  }

  //TODO: build buildProductCard() here
  Widget buildProductCard(Product product) {
    return Card(
      elevation: 2.0,
      color: const Color(0xffC4D7E0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Image(
              image: AssetImage(product.imageUrl),
            ),
            const SizedBox(
              height: 14.0,
            ),
            Text(
              product.label,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.w700,
                fontFamily: 'Palatino',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
