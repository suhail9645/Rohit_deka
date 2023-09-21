
import 'package:get/get.dart';
import 'package:rohit_multivender/controller/services/category_service.dart';
import 'package:rohit_multivender/controller/services/products_service.dart';
import 'package:rohit_multivender/model/product/product.dart';
import 'package:rohit_multivender/utills/urls.dart';

import '../../model/category/category.dart';

class HomeController extends GetxController {
  RxList<Product> newProducts = (List<Product>.of([])).obs;
  RxBool newProductsIsLoading = true.obs;
  RxList<Product> lowPriceProducts = (List<Product>.of([])).obs;
  RxBool lowPriceIsLoading = true.obs;
  RxList<Product> brandProducts = (List<Product>.of([])).obs;
  RxBool brandProductsIsLoading = false.obs;
  RxList<Product> bakingEasyProducts = (List<Product>.of([])).obs;
  RxBool bakingEasyProductsIsLoading = true.obs;
  RxList<Product> weekendProducts = (List<Product>.of([])).obs;
  RxBool weekendProductsIsLoading = true.obs;
  RxList<Product> quickProducts = (List<Product>.of([])).obs;
  RxBool quickProductsIsLoading = true.obs;
  RxList<Product> assamProducts = (List<Product>.of([])).obs;
  RxBool assamProductsIsLoading = true.obs;
  RxList<Category> categories = (List<Category>.of([])).obs;
  RxBool categoryIsLoading = true.obs;
  late ProductService productService;
  late CategoryService categoryService;
  @override
  void onInit() {
    productService = ProductService();
    categoryService=CategoryService();
    getAllProducts();
    getAllCategories();
    super.onInit();
  }
Future<void>getAllCategories()async{
categoryIsLoading(true);
await getMainCategory();
await getSubCategory();
categoryIsLoading(false);
}
Future<void>getMainCategory()async{
  final errorOrCategories=await categoryService.getCategory(mainCategoryUrl,'categories');
  if(errorOrCategories.isLeft){
     Get.showSnackbar(GetSnackBar(
        message: errorOrCategories.left.error,
        duration: const Duration(seconds: 2),
      ));
  }else{
    categories(errorOrCategories.right);
  }
}

Future<void>getSubCategory()async{
  final errorOrCategories=await categoryService.getCategory(subCategoryUrl,'subcategories');
  if(errorOrCategories.isLeft){
     Get.showSnackbar(GetSnackBar(
        message: errorOrCategories.left.error,
        duration: const Duration(seconds: 2),
      ));
  }else{
    categories.addAll(errorOrCategories.right);
  }
}
  Future<void> getAllProducts() async {
    await getNewProducts();
    await getlowPriceProducts();
//  await getbrandProducts();
    await getbakingEasyProducts();
    await getweekendProducts();
    await getquickProducts();
    await getassamProducts();
  }

  Future<void> getNewProducts() async {
    newProductsIsLoading(true);
    final errorOrList = await productService.getProducts(newProductsUrl);
    if (errorOrList.isLeft) {
      Get.showSnackbar(GetSnackBar(
        message: errorOrList.left.error,
        duration: const Duration(seconds: 2),
      ));
    } else {
      newProducts(errorOrList.right);
      newProductsIsLoading(false);
    }
  }

  Future<void> getlowPriceProducts() async {
    lowPriceIsLoading(true);
    final errorOrList = await productService.getProducts(lowPriceProductsUrl);
    if (errorOrList.isLeft) {
      Get.showSnackbar(GetSnackBar(
        message: errorOrList.left.error,
        duration: const Duration(seconds: 2),
      ));
    } else {
      lowPriceProducts(errorOrList.right);
      lowPriceIsLoading(false);
    }
  }

  Future<void> getbrandProducts() async {
    brandProductsIsLoading(true);
    final errorOrList = await productService.getProducts(brandProductsUrl);
    if (errorOrList.isLeft) {
      Get.showSnackbar(GetSnackBar(
        message: errorOrList.left.error,
        duration: const Duration(seconds: 2),
      ));
    } else {
      brandProducts(errorOrList.right);
      brandProductsIsLoading(false);
    }
  }

  Future<void> getbakingEasyProducts() async {
    bakingEasyProductsIsLoading(true);
    final errorOrList = await productService.getProducts(bakingEasyProductsUrl);
    if (errorOrList.isLeft) {
      Get.showSnackbar(GetSnackBar(
        message: errorOrList.left.error,
        duration: const Duration(seconds: 2),
      ));
    } else {
      bakingEasyProducts(errorOrList.right);
      bakingEasyProductsIsLoading(false);
    }
  }

  Future<void> getweekendProducts() async {
    weekendProductsIsLoading(true);
    final errorOrList = await productService.getProducts(weekendProductsUrl);
    if (errorOrList.isLeft) {
      Get.showSnackbar(GetSnackBar(
        message: errorOrList.left.error,
        duration: const Duration(seconds: 2),
      ));
    } else {
      weekendProducts(errorOrList.right);
      weekendProductsIsLoading(false);
    }
  }

  Future<void> getquickProducts() async {
    quickProductsIsLoading(true);
    final errorOrList = await productService.getProducts(quickProductsUrl);
    if (errorOrList.isLeft) {
      Get.showSnackbar(GetSnackBar(
        message: errorOrList.left.error,
        duration: const Duration(seconds: 2),
      ));
    } else {
      quickProducts(errorOrList.right);
      quickProductsIsLoading(false);
    }
  }

  Future<void> getassamProducts() async {
    assamProductsIsLoading(true);
    final errorOrList = await productService.getProducts(assamProductsUrl);
    if (errorOrList.isLeft) {
      Get.showSnackbar(GetSnackBar(
        message: errorOrList.left.error,
        duration: const Duration(seconds: 2),
      ));
    } else {
      assamProducts(errorOrList.right);
      assamProductsIsLoading(false);
    }
  }
}
