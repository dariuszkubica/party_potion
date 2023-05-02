import 'package:flutter/material.dart';
import 'package:party_potion/features/account/alcohol/update_alcohol.dart';
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
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) => UpdateAlcohol(
              id: alcoholModel.id,
            ),
          ),
        );
      },
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
        height: 50,
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.symmetric(vertical: 10),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                alcoholModel.alcoholName,
                style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Text(
                '${alcoholModel.have} ml',
                style: const TextStyle(color: Colors.grey, fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
