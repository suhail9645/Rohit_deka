

import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';
import 'package:rohit_multivender/controller/services/products_service.dart';
import 'package:rohit_multivender/model/category/category.dart';
import 'package:rohit_multivender/model/failure/failure.dart';

class CategoryService {
  String token = '';
  late Dio dio;
  CategoryService._(){
  ProductService productService=ProductService();
  token=productService.token;
  dio=productService.dio;
  }
  static final CategoryService _instance = CategoryService._();
  factory CategoryService(){
   return _instance;
  }
  Future<Either<Failure,List<Category>>>getCategory(String url,String mainOrSub)async{
    try{
      List<Category>allCategory=[];
     final response=await dio.get(url);
     Map<String,dynamic>data=response.data;
     for (var element in data[mainOrSub]) {
       Category category=Category.fromJson(element);
       allCategory.add(category);
     }
     return Right(allCategory);
    }
    on DioException catch(e){
      return Left(Failure(error: e.error.toString(), message: e.message.toString()));
    }    
    catch(e){
      return Left(Failure(error: 'Something wrong', message:'Please try again'));
    }
  }
}