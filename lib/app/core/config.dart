enum Flavor {
  development,
  staging,
  production,
}

class Config {
  static Flavor appFlavor = Flavor.development;

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
        return 'https://www.thecocktaildb.com/api/json/v1/1/filter.php?i=';
      case Flavor.staging:
        return 'https://www.thecocktaildb.com/api/json/v1/1/filter.php?i=';
      case Flavor.production:
        return 'https://www.thecocktaildb.com/api/json/v1/1/filter.php?i=';
    }
  }

  static String get cocktailSearchRemoteDataSource {
    switch (appFlavor) {
      case Flavor.development:
        return 'https://www.thecocktaildb.com/api/json/v1/1/search.php?s=';
      case Flavor.staging:
        return 'https://www.thecocktaildb.com/api/json/v1/1/search.php?s=';
      case Flavor.production:
        return 'https://www.thecocktaildb.com/api/json/v1/1/search.php?s=';
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
