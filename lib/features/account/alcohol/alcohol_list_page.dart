import 'package:flutter/material.dart';
import 'package:party_potion/common_widgets/background_image_widget.dart';

class AlcoholsListPage extends StatefulWidget {
  const AlcoholsListPage({
    Key? key,
  }) : super(key: key);

  @override
  State<AlcoholsListPage> createState() => _AlcoholsListState();
}

class _AlcoholsListState extends State<AlcoholsListPage> {
  bool? _isWhisky = false;
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
      child: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/work_in_progress.png'),
            fit: BoxFit.fill,
            opacity: 0.3,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CheckboxListTile(
                title: const Text('Whisky',
                    style: TextStyle(fontSize: 20, color: Colors.white)),
                subtitle: const Text('Balentice / RedStag / etc',
                    style: TextStyle(fontSize: 12, color: Colors.white)),
                secondary: const Icon(
                  Icons.local_drink_sharp,
                  color: Colors.white,
                ),
                controlAffinity: ListTileControlAffinity.leading,
                value: _isWhisky,
                onChanged: (bool? newValue) {
                  setState(() {
                    _isWhisky = newValue;
                  });
                },
                activeColor: Colors.green,
                checkColor: Colors.black,
                selectedTileColor: Colors.red,
                tileColor: Colors.white10,
              ),
              CheckboxListTile(
                title: const Text('Vodka',
                    style: TextStyle(fontSize: 20, color: Colors.white)),
                subtitle: const Text('Vodka',
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
                title: const Text('Vine',
                    style: TextStyle(fontSize: 20, color: Colors.white)),
                subtitle: const Text('Vine',
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
      ),
    );
  }
}
