import 'package:servixass/features/home/data/models/subcategory_model.dart';

class CategoryModel {
  String name;
  String image;
  SubcategoryModel? subCategory;

  CategoryModel({
    required this.name,
     required this.image,
     this.subCategory
    });
}
