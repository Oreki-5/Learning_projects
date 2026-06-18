import 'package:flutter/material.dart';
import 'package:flutter_login_page/models/recipe.dart';
import 'package:flutter_login_page/pages/recipe_page.dart';
import 'package:flutter_login_page/services/data_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _mealType = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white60,
        title: Text(
          "Recipe Book",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w200),
        ),
      ),
      body: SafeArea(child: _bodyUI()),
    );
  }

  Widget _bodyUI() {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Column(children: [_filterButtons(), _recipeList()]),
    );
  }

  Widget _filterButtons() {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.05,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: FilledButton(
              onPressed: () {
                setState(() {
                  _mealType = "";
                });
              },
              child: const Text("All"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: FilledButton(
              onPressed: () {
                setState(() {
                  _mealType = "snack";
                });
              },
              child: const Text("Snack"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: FilledButton(
              onPressed: () {
                setState(() {
                  _mealType = "lunch";
                });
              },
              child: const Text("Lunch"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: FilledButton(
              onPressed: () {
                setState(() {
                  _mealType = "dinner";
                });
              },
              child: const Text("Dinner"),
            ),
          ),
        ],
      ),
    );
  }

  Widget _recipeList() {
    return Expanded(
      child: FutureBuilder(
        future: DataService().getRecipes(_mealType),
        builder: ((context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            return Center(child: Text("Unable to load data"));
          }
          return ListView.builder(
            //List view makes the list scrollable
            itemCount: snapshot.data!.length,
            itemBuilder: (context, index) {
              Recipe recipe = snapshot.data![index];
              return ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return RecipePage(recipe: recipe);
                      },
                    ),
                  );
                },
                contentPadding: EdgeInsets.only(top: 20.0),
                leading: Image.network(recipe.image),
                isThreeLine: true,
                title: Text(recipe.name),
                subtitle: Text(
                  "${recipe.cuisine} \nDifficulty: ${recipe.difficulty}",
                ),
                trailing: Text("${recipe.rating} ⭐"),
              );
            },
          );
        }),
      ),
    );
  }
}
