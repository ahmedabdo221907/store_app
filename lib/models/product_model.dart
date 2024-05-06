class ProductModel {

  final dynamic id ;
  final String title ;
  final dynamic price ;
  final String description ;
  final String image ;
  final RatingModel rating;
  final String category;
 ProductModel(
  {
  required this.description,
  required this.id,
  required this.image,
  required this.price,
  required this.title,
  required this.rating ,
  required this.category
  });
factory ProductModel.fromJson(jsonData)
{
  return ProductModel
  (description: jsonData["description"],
   id: jsonData["id"], 
   image: jsonData["image"],
    price: jsonData["price"],
     title: jsonData["title"],
     rating: RatingModel.formJson(jsonData["rating"]),
     category:  jsonData["category"]
     );
}

}
class RatingModel 
{
  final dynamic  rate;
  final dynamic  count ;
    
    RatingModel({required this.rate,required this.count});
 

 factory RatingModel.formJson(jsonData)
 {
  return RatingModel(
    rate:jsonData["rate"],
    count:jsonData["count"]
    );
 }
}