import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:meta_fit_app/features/services/models/product_model.dart';

class AllProductsService {
  Future<List<ProductModel>> getAllProducts() async {
    http.Response response =
        await http.get(Uri.parse('http://10.0.2.2:5173/api/Products'));
    List<dynamic> data = jsonDecode(response.body);
    List<ProductModel> productsList = [];
    for (int i = 0; i < data.length; i++) {
      productsList.add(
        ProductModel.fromJson(data[i]),
      );
    }
    return productsList;
  }
}
