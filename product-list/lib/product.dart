class Product {
  final String label;
  final String imageUrl;
  List<Specification> specification;

  Product(this.label, this.imageUrl, this.specification);

  static List<Product> samples = [
    Product(
      'One Gang Switch',
      'assets/one-gang.jpg',
      [
        Specification('86*86*39 MM', 'WIFI 2.4G', '110V-240V'),
      ],
    ),
    Product(
      'Two Gang Switch',
      'assets/two-gang.jpg',
      [
        Specification('86*86*39 MM', 'WIFI 2.4G', '110V-240V'),
      ],
    ),
    Product(
      'Smart Door Lock',
      'assets/lock.jpg',
      [
        Specification('250*60*21 MM', 'WIFI 2.4G', '110V-240V'),
      ],
    ),
    Product(
      'Smart Boiler Switch',
      'assets/boiler.jpg',
      [
        Specification('86*86*39 MM', 'WIFI 2.4G', '110V-240V'),
      ],
    ),
    Product(
      'Smart Door Sensor',
      'assets/door-sensor.jpg',
      [
        Specification('120*90*50 MM', 'WIFI 2.4G', '110V-240V'),
      ],
    ),
  ];
}
//Todo: add Ingredient() here

class Specification {
  final String dimension;
  final String frequency;
  final String operatingVoltage;

  Specification(this.dimension, this.frequency, this.operatingVoltage);
}
