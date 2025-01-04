import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


class Product {
  final String? productName;
  final String? code;
  final String? brands;
  final String? categories;
  final String? labels;
  final String? countries;
  final String? purchasePlaces;
  final String? manufacturingPlaces;
  final String? ingredientsText;
  final String? imageUrl;
  final String? nutriscoreGrade;
  final String? ecoScore;

  Product({
    this.productName,
    this.code,
    this.brands,
    this.categories,
    this.labels,
    this.countries,
    this.purchasePlaces,
    this.manufacturingPlaces,
    this.ingredientsText,
    this.imageUrl,
    this.nutriscoreGrade,
    this.ecoScore,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      productName: json['product_name'] as String?,
      code: json['code'] as String?,
      brands: json['brands'] as String?,
      categories: json['categories'] as String?,
      labels: json['labels'] as String?,
      countries: json['countries'] as String?,
      purchasePlaces: json['purchase_places'] as String?,
      manufacturingPlaces: json['manufacturing_places'] as String?,
      ingredientsText: json['ingredients_text'] as String?,
      nutriscoreGrade: json['nutriscore_grade'] as String?,
     
      ecoScore: json.containsKey('ecoscore_score') ? json['ecoscore_score']?.toString() : 'Eco Score Not Found',
      imageUrl: json['image_url'],
    );
  }
}

class DetailedProduct {
  final String? productName;
  final String? code;
  final String? brands;
  final String? categories;
  final String? labels;
  final String? countries;
  final String? purchasePlaces;
  final String? manufacturingPlaces;
  final String? ingredientsText;

  DetailedProduct({
    this.productName,
    this.code,
    this.brands,
    this.categories,
    this.labels,
    this.countries,
    this.purchasePlaces,
    this.manufacturingPlaces,
    this.ingredientsText,
  });

  factory DetailedProduct.fromJson(Map<String, dynamic> json) {
    return DetailedProduct(
      productName: json['product_name'] as String?,
      code: json['code'] as String?,
      brands: json['brands'] as String?,
      categories: json['categories'] as String?,
      labels: json['labels'] as String?,
      countries: json['countries'] as String?,
      purchasePlaces: json['purchase_places'] as String?,
      manufacturingPlaces: json['manufacturing_places'] as String?,
      ingredientsText: json['ingredients_text'] as String?,
    );
  }
}

class OpenFoodPage extends StatefulWidget {
  const OpenFoodPage({super.key});

  @override
  State<OpenFoodPage> createState() => _OpenFoodPageState();
}

class _OpenFoodPageState extends State<OpenFoodPage> {
  late Future<List<Product>> _productsFuture;
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _productsFuture = Future.value([]); // Initialize with an empty list
  }

  Future<List<Product>> getProducts(String searchTerm) async {
    var apiUrl = 'https://world.openfoodfacts.org/cgi/search.pl';
    var searchTerms = searchTerm.replaceAll(' ', '+');
    var url = Uri.parse('$apiUrl?search_terms=$searchTerms&search_simple=1&json=1');

    var headers = {
      'User-Agent': 'diabeduc/1.0 (diabeduc-staging@proton.me)',
    };

    var response = await http.get(url, headers: headers);

    if (response.statusCode == 200) {
      try {
        var jsonData = json.decode(response.body);

        // Check if products data exists
        if (jsonData is Map<String, dynamic> &&
            jsonData.containsKey('products')) {
          var productsData = jsonData['products'];
          if (productsData is List && productsData.isNotEmpty) {
            // Map the product data to Product objects
            var products = productsData
                .map((productData) => Product.fromJson(productData))
                .toList();
            return products;
          }
        }
        throw Exception('Product data not found in the response');
      } catch (e) {
        throw Exception('Failed to parse product data: $e');
      }
    } else {
      throw Exception('Failed to fetch product: ${response.statusCode}');
    }
  }

  void searchProducts() {
    String searchTerm = _searchController.text.trim();
    setState(() {
      _productsFuture = getProducts(searchTerm);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //title: const Text('Open Food Facts'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Enter search term'.tr,
                suffixIcon: IconButton(
                  onPressed: searchProducts,
                  icon: const Icon(Icons.search),
                ),
              ),
            ),
          ),
          Expanded(
            child: FutureBuilder<List<Product>>(
              future: _productsFuture,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                } else if (snapshot.hasError) {
                  return Text('Error: ${snapshot.error}');
                } else {
                  final products = snapshot.data ?? [];
                  if (products.isNotEmpty) {
                    return ListView.builder(
                      itemCount: products.length,
                      itemBuilder: (context, index) {
                        final product = products[index];
                        return ListTile(
                          title: Text(product.productName ?? ''),
                          subtitle: Text(product.brands ?? ''),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ProductDetailsPage(product: product),
                              ),
                            );
                          },
                        );
                      },
                    );
                  } else {
                    return const Center(child: Text('No products found'));
                  }
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
class ProductDetailsPage extends StatelessWidget {
  final Product product;

  const ProductDetailsPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.productName ?? ''),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (product.imageUrl != null) // Check if imageUrl is not null
                Image.network(
                  product.imageUrl!,
                  width: 300,
                  height: 300,
                ),
              const SizedBox(height: 20),
              _buildDetailRow('Brands:'.tr, product.brands ?? ''),
              _buildDetailRow('Categories:'.tr, product.categories ?? ''),
              _buildDetailRow('Labels:'.tr, product.labels ?? ''),
              _buildDetailRow('Countries:'.tr, product.countries ?? ''),
              _buildDetailRow('Purchase Places:'.tr, product.purchasePlaces ?? ''),
              _buildDetailRow('Manufacturing Places:'.tr, product.manufacturingPlaces ?? ''),
              _buildDetailRow('Ingredients:'.tr, product.ingredientsText ?? ''),
              _buildDetailRow('Nutriscore Grade:'.tr, product.nutriscoreGrade ?? ''),
              _buildDetailRow('Eco Score:'.tr, product.ecoScore ?? ''),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDetailRow(String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              value,
              style:const TextStyle(
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}


void main() {
  runApp(const MaterialApp(
    home: OpenFoodPage(),
  ));
}
