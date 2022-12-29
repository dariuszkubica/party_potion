import 'package:flutter/material.dart';
import 'package:party_potion/features/cocktail/alcohol_pages/brandy.dart';
import 'package:party_potion/features/cocktail/alcohol_pages/gin.dart';
import 'package:party_potion/features/cocktail/alcohol_pages/rum.dart';
import 'package:party_potion/features/cocktail/alcohol_pages/teguila.dart';
import 'package:party_potion/features/cocktail/alcohol_pages/vine.dart';
import 'package:party_potion/features/cocktail/alcohol_pages/vodka.dart';
import 'package:party_potion/features/cocktail/alcohol_pages/whisky.dart';
import 'package:party_potion/common_widgets/background_image_widget.dart';

class CocktailsPage extends StatefulWidget {
  const CocktailsPage({
    Key? key,
  }) : super(key: key);

  @override
  State<CocktailsPage> createState() => _CocktailsState();
}

class _CocktailsState extends State<CocktailsPage> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Vodka(),
    Gin(),
    Rum(),
    Tequila(),
    Whisky(),
    Brandy(),
    Vine(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  var bgcolor = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF202020),
      body: BackgroundImageWidget(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.check_box),
                  label: const Text('Wyświetl liste z dostępnych składników')),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white10,
                    border: Border.all(
                      width: 1,
                      color: Colors.black38,
                    ),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(50),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white.withOpacity(0.2),
                        spreadRadius: 0,
                        blurRadius: 50,
                        offset: const Offset(0, 0),
                      ),
                    ],
                  ),
                  child: Center(
                    child: _widgetOptions.elementAt(_selectedIndex),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.liquor),
            label: 'Wódka',
            backgroundColor: Color(0xFF202020),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.liquor),
            label: 'Gin',
            backgroundColor: Color(0xFF202020),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.liquor),
            label: 'Rum',
            backgroundColor: Color(0xFF202020),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.liquor),
            label: 'Tequila',
            backgroundColor: Color(0xFF202020),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.liquor),
            label: 'Whisky',
            backgroundColor: Color(0xFF202020),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.liquor),
            label: 'Brandy',
            backgroundColor: Color(0xFF202020),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.liquor),
            label: 'Wino',
            backgroundColor: Color(0xFF202020),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.red,
        onTap: _onItemTapped,
      ),
    );
  }
}
