
import 'package:store/helper/api.dart';
import 'package:store/models/product_model.dart';

class AllProductsServices {
  Future<List<ProductModel>> gettAllProduct() async {
    List<dynamic> data =
        await Api().get(url: 'https://fakestoreapi.com/products');
    List<ProductModel> productslist = [];
    for (var i = 0; i < data.length; i++) {
      productslist.add(
        ProductModel.fromJson(data[i]),
      );
    }

    return productslist;
  }
}
