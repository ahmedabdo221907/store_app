import 'package:flutter/material.dart';
import 'package:store/components/custom_button.dart';
import 'package:store/components/custom_text_feild.dart';
import 'package:store/models/product_model.dart';
import 'package:store/services/update_product.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class UpdateProductPage extends StatefulWidget {
  UpdateProductPage({super.key});
  static String id = "update ";

  @override
  State<UpdateProductPage> createState() => _UpdateProductPageState();
}

class _UpdateProductPageState extends State<UpdateProductPage> {
  String? desc, productName, image;

  String? price;
  bool isLodaing = false;
  @override
  Widget build(BuildContext context) {
    ProductModel product =
        ModalRoute.of(context)!.settings.arguments as ProductModel;
    return ModalProgressHUD(
      inAsyncCall: isLodaing,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Update product ",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomTextField(
                hintText: " Product Name",
                onChanged: (data) {
                  productName = data;
                },
              ),
              const SizedBox(
                height: 15,
              ),
              CustomTextField(
                type: TextInputType.number,
                hintText: "price",
                onChanged: (data) {
                  price = data;
                },
              ),
              const SizedBox(
                height: 15,
              ),
              CustomTextField(
                hintText: "description",
                onChanged: (data) {
                  desc = data;
                },
              ),
              const SizedBox(
                height: 15,
              ),
              CustomTextField(
                hintText: "image",
                onChanged: (data) {
                  image = data;
                },
              ),
              const SizedBox(
                height: 30,
              ),
              CustomButon(
                text: 'Update',
                onTap: () async{
                  isLodaing = true;

                  setState(() {});
                  try {
                  await   updateProduct(product);
                  } catch (e) {
                   print(e.toString());
                  }
                   isLodaing = false;
                  setState(() {});
                  
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<void>updateProduct(ProductModel product)async {
    await UpdateProductService().updateProduct(
        title:productName==Null? product.title:productName!,
        category: product.category,
        price:price==Null?product.price: price!,
        description: desc==Null?product.description:desc!,
        image: image==Null?product.image:image!
        );
  }
}
