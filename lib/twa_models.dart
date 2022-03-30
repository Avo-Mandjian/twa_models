library twa_models;

import 'package:twa_models/models/added_value_model.dart';
import 'package:twa_models/models/ecom/collections_models/collections_model.dart';
import 'package:twa_models/models/ecom/products_models/product_model.dart';

/// A Calculator.
class TwaModels {
  /// Returns [value] plus 1.
  get addedValueModel => AddedValueModel();
}

class TwaEcom {
  get collectionsModel => CollectionsModel();
  get productModel => Product();
}
