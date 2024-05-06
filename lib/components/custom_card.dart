import 'package:flutter/material.dart';
import 'package:store/models/product_model.dart';
import 'package:store/screens/update_producr_page.dart';

class CustomCard extends StatelessWidget {
   CustomCard({
    super.key,
    required this.product
  });
  ProductModel product ;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()
       {
         Navigator.pushNamed(context, UpdateProductPage.id,arguments: product);
      },
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            decoration:  BoxDecoration(
              boxShadow:[
                BoxShadow(
                    blurRadius: 50,
                  color: Colors.black.withOpacity(0.1),
                  spreadRadius: 20,
                  offset: Offset(10, 10),
                  ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.only(top:20.0),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                elevation: 10,
                borderOnForeground: true,
                color:Colors.white,
                child:  Padding(
                  padding: const EdgeInsets.symmetric(horizontal:16.0,vertical: 16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [ 
                       Text("${product.title.substring(0,11)}",
                      style: const TextStyle(
                        color: Color.fromARGB(255, 9, 8, 8),
                        fontSize: 15,
                        fontWeight: FontWeight.bold
                      ),),
                      Row(
                        children: [ 
                         Text(r'$''${product.price.toString()}',style: 
                         const TextStyle(
                          color: Color.fromARGB(255, 8, 7, 7),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),),
                        const Spacer(flex: 1,),
                        IconButton(onPressed:(){},
                         //icon:const  Icon(FontAwesomeIcons.heart,color: Colors.black,))
                         icon:const  Icon(Icons.favorite,color:Colors.red 
                         ,),
                       ) ],)
                    ],
                  ),
                ),
              ),
            ),
          ),
        Positioned
        (
           right: 32,
             top: -50,
              child: Image.network(
                product.image,
                height: 105.0,
                width: 100.0,
          ),
        )
        ],
      ),
    );
  }
}