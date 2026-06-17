import 'package:flutter_login_page/models/recipe.dart';
import 'package:flutter_login_page/services/http_service.dart';

class DataService {
  static final DataService _singleton = DataService._internal();

  final HTTPService _httpService = HTTPService();

  factory DataService(){
    return _singleton;
  }

  DataService._internal(){
  }

  Future<List<Recipe>?> getRecipes(String? _filter) async{
    
    String path = "/recipes/";
    if(_filter?.isNotEmpty ??false){
      path+="meal-type/$_filter";
    }
    var response = await _httpService.get(path);
    if(response?.statusCode == 200 && response?.data != null){
      // print(response!.data);
      List data = response!.data["recipes"];
      List<Recipe> recipes = data.map((e)=>Recipe.fromJson(e)).toList();
      print(recipes);
      return recipes;
    }
  }


}