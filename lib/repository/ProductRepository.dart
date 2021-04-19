import 'package:flutter_sample_app/model/product.dart';

class ProductRepository {
  static const _allProducts = <Product>[
    Product(
      category: Category.accessories,
      id: 0,
      isFeatured: true,
      name: 'Vagabond sack',
      price: 120,
    ),
    Product(
      category: Category.home,
      id: 9,
      isFeatured: true,
      name: 'Gilt desk trio',
      price: 58,
    ),
    Product(
      category: Category.clothing,
      id: 33,
      isFeatured: true,
      name: 'Cerise scallop tee',
      price: 42,
    ),
  ];

  static List<Product> find({Category? category}) {
    if (category == Category.all || category == null) {
      return _allProducts;
    } else {
      return _allProducts
          .where((product) => product.category == category)
          .toList();
    }
  }
}
