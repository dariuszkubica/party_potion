import 'package:flutter/material.dart';
import 'package:party_potion/models/alcohol_model.dart';

class ViewAlcohol extends StatelessWidget {
  const ViewAlcohol({
    required this.alcoholModel,
    Key? key,
  }) : super(key: key);

  final AlcoholModel alcoholModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFF250000).withOpacity(0.5),
          border: Border.all(
            width: 1,
            color: Colors.red,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(25),
          ),
        ),
        width: double.infinity,
        height: 100,
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(alcoholModel.alcoholUrl),
              radius: 40,
              backgroundColor: Colors.white30,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  alcoholModel.alcoholName,
                  style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  alcoholModel.have == true ? 'Available' : 'Unavailable',
                  style: const TextStyle(color: Colors.grey, fontSize: 16),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
