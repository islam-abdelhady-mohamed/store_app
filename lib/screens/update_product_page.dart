import 'package:flutter/material.dart';
import 'package:store/models/product_model.dart';
import 'package:store/services/update_product.dart';
import 'package:store/widgets/custom_button.dart';
import 'package:store/widgets/custom_text_field.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class UpdateProductPage extends StatefulWidget {
  UpdateProductPage({super.key});
  static String id = 'updateproduct';

  @override
  State<UpdateProductPage> createState() => _UpdateProductPageState();
}

class _UpdateProductPageState extends State<UpdateProductPage> {
  String? ProductName, desc, image;

  String? price;
  bool isloading = false;
  @override
  Widget build(BuildContext context) {
    ProductModel product =
        ModalRoute.of(context)!.settings.arguments as ProductModel;
    return ModalProgressHUD(
      inAsyncCall: isloading,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            'Update Product',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 100,
                ),
                CustomTextField(
                  hinttext: 'Product Name',
                  onchanged: (data) {
                    ProductName = data;
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                CustomTextField(
                  hinttext: 'description',
                  onchanged: (data) {
                    desc = data;
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                CustomTextField(
                  inputtype: TextInputType.number,
                  hinttext: 'price',
                  onchanged: (data) {
                    price = data;
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                CustomTextField(
                  hinttext: 'image',
                  onchanged: (data) {
                    image = data;
                  },
                ),
                SizedBox(
                  height: 50,
                ),
                CustomButton(
                  text: 'Update',
                  ontap: () async{
                    isloading = true;
                    setState(() {});
                    await updateproduct(product);
                    try {
                     
                      print('success');
                    } catch (e) {
                      isloading = false;
                      print(e.toString());
                      setState(() {});
                    }
                    isloading = false;
                    setState(() {
                      Navigator.pop(context);
                    });

                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> updateproduct(ProductModel product)async{
   await UpdateproductService().updateproduct(
      id: product.id,
      category: product.category,
      title: ProductName == null ? product.title : ProductName!,
      price: price == null ? product.price.toString() : price!,
      desc: desc == null ? product.description : desc!,
      image: image == null ? product.image : image!,
    );
  }
}
