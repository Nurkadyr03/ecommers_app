import 'package:ecommers_app/models/product.dart';
import 'package:flutter/material.dart';

class Shop extends ChangeNotifier {
//product for sale
  final List<Product> _shop = [
    // product 1
    Product(
      name: "Product 1",
      price: "99.99 som",
      discription: " item discription usdhcuwecwucndcscweecwececwcaecevfrv",
      imagePath: "https://images.macrumors.com/t/kcP2ASGW6jKCwW9dzDf03YpxYhA=/1600x/article-new/2023/05/icloud-photos.jpg",
    ),
    Product(
      name: "Product 2",
      price: "99.99 som",
      discription: " item discription",
      imagePath: "https://images.macrumors.com/t/kcP2ASGW6jKCwW9dzDf03YpxYhA=/1600x/article-new/2023/05/icloud-photos.jpg",
    ),
    Product(
      name: "Product 3",
      price: "99.99 som",
      discription: " item discription",
      imagePath: "https://images.macrumors.com/t/kcP2ASGW6jKCwW9dzDf03YpxYhA=/1600x/article-new/2023/05/icloud-photos.jpg",
    ),
    Product(
      name: "Product 4",
      price: "99.99 som",
      discription: " item discription",
      imagePath: "https://images.macrumors.com/t/kcP2ASGW6jKCwW9dzDf03YpxYhA=/1600x/article-new/2023/05/icloud-photos.jpg",
    ),
  ];
//user cart
final List<Product>_cart=[];


//get product list
List<Product>get shop=>_shop;

//get user cart
List<Product> get cart=>_cart;

//add item to cart
void addToCart(Product item){
  _cart.add(item);
  notifyListeners();
}

//remove item from cart
void removeFromCart(Product item){
  _cart.remove(item);
  notifyListeners();
}
}
