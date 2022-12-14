import 'package:store/helper/api.dart';
import 'package:store/models/product_model.dart';
class AddProduct {
  Future<ProductModel> addproduct({
    required String title,
    required dynamic price,
    required String desc,
    required String category,
  }) async {
    Map<String, dynamic> data =
        await Api().post(url: 'https://fakestoreapi.com/products', body: {
      'title': title,
      'price': price,
      'description': desc,
      'category': category,
    });
    print(data);
    return ProductModel.fromJson(data);
  }
}
