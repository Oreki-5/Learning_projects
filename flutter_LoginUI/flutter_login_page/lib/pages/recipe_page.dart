import 'package:flutter/material.dart';
import 'package:flutter_login_page/models/recipe.dart';

class RecipePage extends StatelessWidget {
  final Recipe recipe;
  RecipePage({required this.recipe}) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white60,
        title: Text(
          "RecipBook",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w200),
        ),
      ),
      body: _bodyUI(context),
    );
  }

  Widget _bodyUI(BuildContext context) {
    return Column(children: [_recipeImage(context), _recipeDetails(context)]);
  }

  Widget _recipeImage(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * 0.40,
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(recipe.image),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _recipeDetails(BuildContext context) {
    return Container(
      color: Colors.white,
      width: MediaQuery.sizeOf(context).width,
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "${recipe.cuisine}, ${recipe.difficulty}",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
          ),
          Text(
            recipe.name,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Text(
            "Prep Time: ${recipe.prepTimeMinutes} Minutes | Cook Time: ${recipe.cookTimeMinutes} Minutes",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
          ),
          Text(
            "Rating: ${recipe.rating} ⭐ | ${recipe.reviewCount} Reviews",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
          ),
        ],
      ),
    );
  }
}
