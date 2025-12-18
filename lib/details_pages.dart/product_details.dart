// lib/screens/product_details_page.dart
import 'package:my_flutter_app/sections.dart/rating.dart';
import 'package:flutter/material.dart';
import 'package:my_flutter_app/data/product_model.dart';
class ProductDetailsPage extends StatelessWidget {
  final ProductModel product;

  const ProductDetailsPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(product.title)),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(child: Image.network(product.image, height: 200)),
              SizedBox(height: 16),
              Text('Category: ${product.category}',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
              SizedBox(height: 8),
              Text('Price: \$${product.price}',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              
              Rating(ratingModel: product.rating),
              SizedBox(height: 16),
              Text(product.description,
                  style: TextStyle(fontSize: 14, height: 1.5)),
            ],
          ),
        
      ),
    );
  }
}