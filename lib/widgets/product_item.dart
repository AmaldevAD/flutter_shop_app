import 'package:flutter/material.dart';
import '../screens/product_detail_screen.dart';

class ProductItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;

  ProductItem(this.id, this.imageUrl, this.title);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius:BorderRadius.circular(20),
      child: GridTile(
        child: GestureDetector(
          onTap: (){
            Navigator.of(context).pushNamed(ProductDetailScreen.routeName,arguments: id);
          },
          child: Image.network(
            imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        footer: GridTileBar(
          leading: IconButton(
            icon: Icon(Icons.favorite,),
            color: Theme.of(context).accentColor,
            onPressed: (){},
          ),
          backgroundColor: Colors.black87,
          title: Text(title, textAlign: TextAlign.center),
          trailing: IconButton(icon: Icon(Icons.shopping_cart),
            color: Theme.of(context).accentColor,
          onPressed: (){},),

        ),
      ),
    );
  }
}
