import 'package:flutter/material.dart';
import 'package:flutter_ui_practice/widgets/filter_button.dart';
import 'package:google_fonts/google_fonts.dart';

class YtHomePage extends StatelessWidget {
  const YtHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 5,
        leadingWidth: 50,
        title: Text(
          "MyTube",
          style: GoogleFonts.carlito(
            textStyle: Theme.of(context).textTheme.headlineMedium,
            fontSize: 30,
            fontWeight: FontWeight.w500,
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Image.asset(
            "assets/images/ytlogo.png",
            alignment: AlignmentGeometry.center,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications_outlined, size: 30),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search_outlined, size: 30),
          ),
        ],
      ),
      body: _bodyUI(context),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color.fromARGB(255, 0, 0, 0),
        unselectedItemColor: const Color.fromARGB(102, 75, 24, 24),
        unselectedLabelStyle: TextStyle(color: Colors.black12),
        currentIndex: 2,
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.play_circle_filled_sharp),
            label: "history",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline),
            label: "Create",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.slideshow_outlined),
            label: "Subscriptions",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline_rounded),
            label: "Account",
          ),
        ],
      ),
    );
  }

  Widget _bodyUI(BuildContext context) {
    return Column(children: [_filterBar(context), _videoList(context)]);
  }

  Widget _filterBar(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).height * 0.05,
      child: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.explore_outlined),
              iconSize: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: FilterButton(buttonText: "All"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: FilterButton(buttonText: "Gaming"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: FilterButton(buttonText: "Podcast"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: FilterButton(buttonText: "Songs"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: FilterButton(buttonText: "Podcast"),
            ),

            
          ],
        ),
        )
      ),
    );
  }

  Widget _videoList(BuildContext context) {
    return Row();
  }
}
