import 'package:flutter/material.dart';
import 'package:party_potion/models/background_image_widget.dart';

class AlcoholsList extends StatefulWidget {
  const AlcoholsList({
    Key? key,
  }) : super(key: key);

  @override
  State<AlcoholsList> createState() => _AlcoholsListState();
}

class _AlcoholsListState extends State<AlcoholsList> {
  bool? _isWhyski = false;
  bool? _isVodka = false;
  bool? _isTequila = false;
  bool? _isRum = false;
  bool? _isVine = false;
  bool? _isGin = false;
  bool? _isBrandy = false;
  bool? _isLikier = false;

  @override
  Widget build(BuildContext context) {
    return BackgroundImageWidget(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CheckboxListTile(
              title: const Text('Whyski',
                  style: TextStyle(fontSize: 20, color: Colors.white)),
              subtitle: const Text('Balentice / RedStag / etc',
                  style: TextStyle(fontSize: 12, color: Colors.white)),
              secondary: const Icon(
                Icons.local_drink_sharp,
                color: Colors.white,
              ),
              controlAffinity: ListTileControlAffinity.leading,
              value: _isWhyski,
              onChanged: (bool? newValue) {
                setState(() {
                  _isWhyski = newValue;
                });
              },
              activeColor: Colors.green,
              checkColor: Colors.black,
              selectedTileColor: Colors.red,
              tileColor: Colors.white10,
            ),
            CheckboxListTile(
              title: const Text('Wódka',
                  style: TextStyle(fontSize: 20, color: Colors.white)),
              subtitle: const Text('Wódka',
                  style: TextStyle(fontSize: 12, color: Colors.white)),
              secondary: const Icon(
                Icons.local_drink_sharp,
                color: Colors.white,
              ),
              controlAffinity: ListTileControlAffinity.leading,
              value: _isVodka,
              onChanged: (bool? newValue) {
                setState(() {
                  _isVodka = newValue;
                });
              },
              activeColor: Colors.green,
              checkColor: Colors.black,
              selectedTileColor: Colors.red,
              tileColor: Colors.white10,
            ),
            CheckboxListTile(
              title: const Text('Rum',
                  style: TextStyle(fontSize: 20, color: Colors.white)),
              subtitle: const Text('Rum',
                  style: TextStyle(fontSize: 12, color: Colors.white)),
              secondary: const Icon(
                Icons.local_drink_sharp,
                color: Colors.white,
              ),
              controlAffinity: ListTileControlAffinity.leading,
              value: _isRum,
              onChanged: (bool? newValue) {
                setState(() {
                  _isRum = newValue;
                });
              },
              activeColor: Colors.green,
              checkColor: Colors.black,
              selectedTileColor: Colors.red,
              tileColor: Colors.white10,
            ),
            CheckboxListTile(
              title: const Text('Tequila',
                  style: TextStyle(fontSize: 20, color: Colors.white)),
              subtitle: const Text('Tequila',
                  style: TextStyle(fontSize: 12, color: Colors.white)),
              secondary: const Icon(
                Icons.local_drink_sharp,
                color: Colors.white,
              ),
              controlAffinity: ListTileControlAffinity.leading,
              value: _isTequila,
              onChanged: (bool? newValue) {
                setState(() {
                  _isTequila = newValue;
                });
              },
              activeColor: Colors.green,
              checkColor: Colors.black,
              selectedTileColor: Colors.red,
              tileColor: Colors.white10,
            ),
            CheckboxListTile(
              title: const Text('Brandy',
                  style: TextStyle(fontSize: 20, color: Colors.white)),
              subtitle: const Text('Brandy',
                  style: TextStyle(fontSize: 12, color: Colors.white)),
              secondary: const Icon(
                Icons.local_drink_sharp,
                color: Colors.white,
              ),
              controlAffinity: ListTileControlAffinity.leading,
              value: _isBrandy,
              onChanged: (bool? newValue) {
                setState(() {
                  _isBrandy = newValue;
                });
              },
              activeColor: Colors.green,
              checkColor: Colors.black,
              selectedTileColor: Colors.red,
              tileColor: Colors.white10,
            ),
            CheckboxListTile(
              title: const Text('Wino',
                  style: TextStyle(fontSize: 20, color: Colors.white)),
              subtitle: const Text('Wino',
                  style: TextStyle(fontSize: 12, color: Colors.white)),
              secondary: const Icon(
                Icons.local_drink_sharp,
                color: Colors.white,
              ),
              controlAffinity: ListTileControlAffinity.leading,
              value: _isVine,
              onChanged: (bool? newValue) {
                setState(() {
                  _isVine = newValue;
                });
              },
              activeColor: Colors.green,
              checkColor: Colors.black,
              selectedTileColor: Colors.red,
              tileColor: Colors.white10,
            ),
            CheckboxListTile(
              title: const Text('Likier',
                  style: TextStyle(fontSize: 20, color: Colors.white)),
              subtitle: const Text('Likier',
                  style: TextStyle(fontSize: 12, color: Colors.white)),
              secondary: const Icon(
                Icons.local_drink_sharp,
                color: Colors.white,
              ),
              controlAffinity: ListTileControlAffinity.leading,
              value: _isLikier,
              onChanged: (bool? newValue) {
                setState(() {
                  _isLikier = newValue;
                });
              },
              activeColor: Colors.green,
              checkColor: Colors.black,
              selectedTileColor: Colors.red,
              tileColor: Colors.white10,
            ),
            CheckboxListTile(
              title: const Text('Gin',
                  style: TextStyle(fontSize: 20, color: Colors.white)),
              subtitle: const Text('Gin',
                  style: TextStyle(fontSize: 12, color: Colors.white)),
              secondary: const Icon(
                Icons.local_drink_sharp,
                color: Colors.white,
              ),
              controlAffinity: ListTileControlAffinity.leading,
              value: _isGin,
              onChanged: (bool? newValue) {
                setState(() {
                  _isGin = newValue;
                });
              },
              activeColor: Colors.green,
              checkColor: Colors.black,
              selectedTileColor: Colors.red,
              tileColor: Colors.white10,
            ),
          ],
        ),
      ),
    );
  }
}
