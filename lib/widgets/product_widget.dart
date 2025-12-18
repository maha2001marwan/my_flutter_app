import 'package:my_flutter_app/sections.dart/rating.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:my_flutter_app/data/product_model.dart';
import 'package:my_flutter_app/details_pages.dart/product_details.dart';
// lib/widgets/product_list_widget.dart

class ProductListWidget extends StatelessWidget {
  final List<ProductModel> products;

  const ProductListWidget({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: products.length,
      itemBuilder: (context, index) {
        final product = products[index];
        return Card(
          margin: EdgeInsets.all(10),
          child: ListTile(
            leading: Image.network(product.image, width: 50),
            title: Text(product.title),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Price: \$${product.price}'),
                Rating(ratingModel: product.rating),
              ],
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => ProductDetailsPage(product: product),
                ),
              );
            },
          ),
        );
      },
    );
  }
}



// lib/screens/products_page.dart

class ProductsPage extends StatefulWidget {
  const ProductsPage({super.key});

  @override
  _ProductsPageState createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  late Future<List<ProductModel>> futureProducts;

  @override
  void initState() {
    super.initState();
    futureProducts = fetchProducts();
  }

  Future<List<ProductModel>> fetchProducts() async {
    final response =
        await http.get(Uri.parse('https://fakestoreapi.com/products'));

    if (response.statusCode == 200) {
      final List<dynamic> jsonData = jsonDecode(response.body);
      return jsonData.map((json) => ProductModel.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load products');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Products')),
      body: FutureBuilder<List<ProductModel>>(
        future: futureProducts,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (snapshot.hasData) {
            return ProductListWidget(products: snapshot.data!);
          } else {
            return Center(child: Text('No products found'));
          }
        },
      ),
    );
  }
}
// {
//     "id": 1,
//     "title": "Fjallraven - Foldsack No. 1 Backpack, Fits 15 Laptops",
//     "price": 109.95,
//     "description": "Your perfect pack for everyday use and walks in the forest. Stash your laptop (up to 15 inches) in the padded sleeve, your everyday",
//     "category": "men's clothing",
//     "image": "https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_t.png",
//     "rating": {
//       "rate": 3.9,
//       "count": 120
//     }
//   },