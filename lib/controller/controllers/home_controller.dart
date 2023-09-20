
import 'package:get/get.dart';
import 'package:rohit_multivender/controller/services/products_service.dart';
import 'package:rohit_multivender/model/product/product.dart';
import 'package:rohit_multivender/utills/urls.dart';

 class HomeController extends GetxController{

  RxList<Product>newProducts=(List<Product>.of([])).obs;
  RxBool newProductsIsLoading=false.obs;
  RxList<Product>lowPriceProducts=(List<Product>.of([])).obs;
  RxBool lowPriceIsLoading=false.obs;
  RxList<Product>brandProducts=(List<Product>.of([])).obs;
  RxBool brandProductsIsLoading=false.obs;
  RxList<Product>bakingEasyProducts=(List<Product>.of([])).obs;
  RxBool bakingEasyProductsIsLoading=false.obs;
  RxList<Product>weekendProducts=(List<Product>.of([])).obs;
  RxBool weekendProductsIsLoading=false.obs;
  RxList<Product>quickProducts=(List<Product>.of([])).obs;
  RxBool quickProductsIsLoading=false.obs;
  RxList<Product>assamProducts=(List<Product>.of([])).obs;
  RxBool assamProductsIsLoading=false.obs;
late ProductService productService;
 @override
  void onInit() {
   productService =ProductService();
   getNewProducts();
    super.onInit();   
  }
  

  Future<void>getNewProducts()async{
    newProductsIsLoading(true);
    final errorOrList=await productService.getProducts(newProductsUrl);
    if(errorOrList.isLeft){
       Get.showSnackbar(GetSnackBar(
        message: errorOrList.left.error,
        duration: const Duration(seconds: 2),
      ));
    }
    else{
      newProducts(errorOrList.right);
      newProductsIsLoading(false);
    }
  }

}

