import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:store/components/custom_card.dart';
import 'package:store/models/product_model.dart';
import 'package:store/services/get_all_product_services.dart';
class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});
  static String id= "StoreScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: const Color.fromARGB(255, 128, 199, 246),
      appBar:  AppBar( 
        backgroundColor: const Color.fromARGB(255, 128, 199, 246), 
      elevation:0,
      centerTitle: true,
      title:  const Text (" hedmty👚 ",
      style:  TextStyle(
        color:  Colors.black ,
        fontSize: 25,
        fontWeight: FontWeight.bold,
      )),

      actions: [ 
        IconButton(onPressed: (){}, 
        icon:const Icon(FontAwesomeIcons.cartShopping,color: Colors.black) )
      ],
      ),
      body:  Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 65),
        child:FutureBuilder<List<ProductModel>>(
  future: GetAllProductServices().getAllproducts(),
  builder: (context, snapshot) {
    if (snapshot.connectionState == ConnectionState.waiting) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    } else if (snapshot.hasError) {
      return Center(
        child: Text('Error: ${snapshot.error}'),
      );
    } else if (snapshot.hasData) {
      List<ProductModel> products = snapshot.data!;
      return GridView.builder(
        itemCount: products.length,
        clipBehavior: Clip.none,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.3,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 100.0,
        ),
        itemBuilder: (context, index) {
          return CustomCard(product: products[index]);
        },
      );
    } else {
      return const Center(
          child: Text('No data available'),
      );
    }
  },
)
         ),
      );
  }
}