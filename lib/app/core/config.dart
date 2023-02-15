import 'package:party_potion/key/cocktailapi.dart';

enum Flavor {
  development,
  staging,
  production,
}

class Config {
  static Flavor appFlavor = Flavor.production;

  static String get helloMessage {
    switch (appFlavor) {
      case Flavor.development:
        return 'Developers version';
      case Flavor.staging:
        return 'Test version';
      case Flavor.production:
        return '';
    }
  }

  static String get cocktailIngredientRemoteDataSource {
    switch (appFlavor) {
      case Flavor.development:
        return 'https://www.thecocktaildb.com/api/json/v1/1/filter.php?i='; //This is free test API key
      case Flavor.staging:
        return ingredientAPI;
      case Flavor.production:
        return ingredientAPI;
    }
  }

  static String get cocktailSearchRemoteDataSource {
    switch (appFlavor) {
      case Flavor.development:
        return 'https://www.thecocktaildb.com/api/json/v1/1/search.php?s='; //This is free test API key
      case Flavor.staging:
        return searchAPI;
      case Flavor.production:
        return searchAPI;
    }
  }

  static bool get debugShowCheckedModeBanner {
    switch (appFlavor) {
      case Flavor.development:
        return true;
      case Flavor.staging:
        return true;
      case Flavor.production:
        return false;
    }
  }
}
