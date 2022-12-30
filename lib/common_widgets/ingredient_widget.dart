import 'package:flutter/material.dart';
import 'package:party_potion/models/ingredient_model.dart';

class IngredientWidget extends StatelessWidget {
  const IngredientWidget({super.key, required this.ingredientsList});

  final List<IngredientModel> ingredientsList;

  Widget createIngredientTable() {
    List<TableRow> rows = [];

    for (int i = 0; i < ingredientsList.length; i++) {
      rows.add(
        TableRow(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  ingredientsList[i].ingredientName,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  ingredientsList[i].ingredientMesure,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      );
    }
    return Table(children: rows);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        createIngredientTable(),
      ],
    );
  }
}
