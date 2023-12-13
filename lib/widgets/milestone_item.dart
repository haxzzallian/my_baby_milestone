import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/milestone.dart';

class MilestoneItem extends StatelessWidget {
  // final String id;
  // final String title;
  // final String imageUrl;

  // ProductItem(this.id, this.title, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    final milestone = Provider.of<Milestone>(context, listen: false);
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: ListTile(
        leading: Text(
          milestone.type,
          textAlign: TextAlign.center,
        ),
        title: Text(
          milestone.type,
          textAlign: TextAlign.center,
        ),

        /*GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(
              MilestoneDetailScreen.routeName,
              arguments: milestone.id,
            );
          },
          child: Image.network(
            product.imageUrl,
            fit: BoxFit.cover,
          ),
        ),*/
        /*footer: GridTileBar(
          backgroundColor: Colors.black87,
          leading: Consumer<Product>(
            builder: (ctx, product, _) => IconButton(
              icon: Icon(
                product.isFavorite ? Icons.favorite : Icons.favorite_border,
              ),
              color: Theme.of(context).accentColor,
              onPressed: () {
                product.toggleFavoriteStatus();
              },
            ),
          ),*/
        //title:
      ),
    );
  }
}
