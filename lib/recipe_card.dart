import 'package:firfood/model/recipe.dart';
import 'package:flutter/material.dart';

class RecipeCard extends StatelessWidget {
  final Recipe recipe;
  final bool inFavorites;
  final Function onFavoriteButtonPressed;

  const RecipeCard(
      {Key? key,
      required this.recipe,
      required this.inFavorites,
      required this.onFavoriteButtonPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    RawMaterialButton _buildFavoriteButton() {
      return RawMaterialButton(
        constraints: const BoxConstraints(minWidth: 40.0, minHeight: 40.0),
        onPressed: () => onFavoriteButtonPressed(recipe.id),
        child: Icon(
          // Conditional expression:
          // show "favorite" icon or "favorite border" icon depending on widget.inFavorites:
          inFavorites == true ? Icons.favorite : Icons.favorite_border,
          color: Theme.of(context).iconTheme.color,
        ),
        elevation: 2.0,
        fillColor: Theme.of(context).buttonColor,
        shape: const CircleBorder(),
      );
    }

    Padding _buildTitleSection() {
      return Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          // Default value for crossAxisAlignment is CrossAxisAlignment.center.
          // We want to align title and description of recipes left:
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              recipe.name,
              style: Theme.of(context).textTheme.headline6,
            ),
            // Empty space:
            const SizedBox(height: 10.0),
            Row(
              children: [
                const Icon(Icons.timer, size: 20.0),
                const SizedBox(width: 5.0),
                Text(
                  recipe.getDurationString,
                  style: Theme.of(context).textTheme.caption,
                ),
                Text(
                  recipe.country,
                  style: Theme.of(context).textTheme.caption,
                ),
              ],
            ),
          ],
        ),
      );
    }

    return GestureDetector(
      // ignore: avoid_print
      onTap: () => print("Tapped!"),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
        child: Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // We overlap the image and the button by
              // creating a Stack object:
              Stack(
                children: <Widget>[
                  AspectRatio(
                    aspectRatio: 16.0 / 9.0,
                    child: Image.network(
                      recipe.imageURL,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    child: _buildFavoriteButton(),
                    top: 2.0,
                    right: 2.0,
                  ),
                ],
              ),
              _buildTitleSection(),
            ],
          ),
        ),
      ),
    );
  }
}
