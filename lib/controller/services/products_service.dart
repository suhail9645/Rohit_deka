import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';
import 'package:rohit_multivender/model/failure/failure.dart';
import 'package:rohit_multivender/model/product/product.dart';
import 'package:rohit_multivender/utills/urls.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProductService {
  String token = '';
  late Dio dio;
  ProductService._() {
    getTokenFromStorage();
    dio = Dio(
      BaseOptions(
          baseUrl: baseUrl, headers: {'Authorization': 'Bearer $token'}),
    );
  }
  static final ProductService _instance = ProductService._();

  factory ProductService() {
    return _instance;
  }
  Future<void> getTokenFromStorage() async {
    SharedPreferences shrd = await SharedPreferences.getInstance();
    token = shrd.getString('token') ?? '';
  }

  Future<Either<Failure, List<Product>>> getProducts(String url) async {
    List<Product> products = [];
    try {
      final response = await dio.get(url);
      List<dynamic> data = response.data;
      for (var element in data) {
        Product product = Product.fromJson(element);
        products.add(product);
      }
      return Right(products);
    } on DioException catch (e) {
      return Left(
          Failure(error: e.error.toString(), message: e.message.toString()));
    } catch (e) {
      return Left(
          Failure(error: 'Something wrong', message: 'Please try again'));
    }
  }
}
