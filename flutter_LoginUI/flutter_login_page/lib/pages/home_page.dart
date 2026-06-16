import 'package:flutter/material.dart';
import 'package:flutter_login_page/services/data_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Cool App"), centerTitle: true),
      body: SafeArea(child: _bodyUI()),
    );
  }

  Widget _bodyUI() {
    return Container(
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
            child: FilledButton(onPressed: () {}, child: const Text("Snack")),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: FilledButton(onPressed: () {}, child: const Text("Snack")),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: FilledButton(onPressed: () {}, child: const Text("Snack")),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: FilledButton(onPressed: () {}, child: const Text("Snack")),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: FilledButton(onPressed: () {}, child: const Text("Snack")),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: FilledButton(onPressed: () {}, child: const Text("Snack")),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: FilledButton(onPressed: () {}, child: const Text("Snack")),
          ),
        ],
      ),
    );
  }

  Widget _recipeList() {
    return FutureBuilder(
      future: DataService().getRecipes(),
      builder: ((context, snapshot) {
        return Container();
      }),
    );
  }
}
