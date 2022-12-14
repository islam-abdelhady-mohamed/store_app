import 'package:store/helper/api.dart';
import 'package:store/models/product_model.dart';

class UpdateproductService {
  Future<ProductModel> updateproduct({
    required String title,
    required dynamic price,
    required String desc,
    required String image,
    required dynamic id,
    String? category,
  }) async {
    Map<String, dynamic> data =
        await Api().put(url: 'https://fakestoreapi.com/products/$id', body: {
      'title': title,
      'price': price,
      'description': desc,
      'category': category,
    });
    return ProductModel.fromJson(data);
  }
}
