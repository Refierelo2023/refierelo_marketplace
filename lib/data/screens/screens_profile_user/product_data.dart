import 'package:flutter/material.dart';

class ProductData extends ChangeNotifier {
  List<String> _selectedCategories = [];
  IconData Function(String)? _getIconForCategory;

  List<String> get selectedCategories => _selectedCategories;

  IconData Function(String)? get getIconForCategory => _getIconForCategory;

  void updateSelectedCategories(List<String> categories) {
    _selectedCategories = categories;
    notifyListeners();
  }

  void updateGetIconForCategory(IconData Function(String)? function) {
    _getIconForCategory = function;
    notifyListeners();
  }
}
