import 'package:get/get.dart';
// import 'package:get_storage/get_storage.dart';

import '../consts/storage.dart';

class CartServices extends GetxService {
  static CartServices get to => Get.find();
  // GetStorage box = GetStorage(StorageKeys.cart);
  // GetStorage box2 = GetStorage(StorageKeys.cheackOutStore);
  RxDouble itemsTotalPrice = 0.0.obs;
  RxDouble itemsTotalPriceAfterDiscount = 0.0.obs;
  RxDouble itemsTotalDiscount = 0.0.obs;
  RxList cart = [].obs;
  @override
  Future<void> onInit() async {
    // await GetStorage.init(StorageKeys.cart);
    // await GetStorage.init(StorageKeys.cheackOutStore);
    // super.onInit();
    // if (box.hasData(StorageKeys.cart)) {
      // if (box.read(StorageKeys.cart) != null) {
      //   cart.value = <Cart>[];
      //   box.read(StorageKeys.cart).forEach((v) {
      //     cart.add(Cart.fromJson(v));
      //   });
      //   setItemsTotalPrices();
      // }
    }
  }

  // addItems(Cart item) async {
  //   addItemtoCart(item);
  // }

  // addItemtoCart(Cart item) {
  //   if (cart
  //           .firstWhere(
  //               (element) => element.products!.sId == item.products!.sId,
  //               orElse: () => Cart())
  //           .products
  //           ?.sId ==
  //       null) {
  //     cart.add(item);
  //   } else {
  //     cart[cart.indexWhere(
  //       (element) => element.products!.sId == item.products!.sId,
  //     )] = item;
  //   }
  //   setItemsTotalPrices();
  //   updateCart();
  // }
  //
  // removeItem(Cart item) {
  //   if (cart
  //           .firstWhere(
  //               (element) => element.products!.sId == item.products!.sId,
  //               orElse: () => Cart())
  //           .products
  //           ?.sId ==
  //       null) {
  //   } else if (item.count == 0) {
  //     cart.removeWhere(
  //         (element) => element.products!.sId == item.products!.sId);
  //     setItemsTotalPrices();
  //     updateCart();
  //   } else {
  //     cart[cart.indexWhere(
  //       (element) => element.products!.sId == item.products!.sId,
  //     )] = item;
  //     setItemsTotalPrices();
  //     if (cart.isEmpty) {
  //       clearCart();
  //     } else {
  //       updateCart();
  //     }
  //   }
  // }
  //
  // int getProductCount(Product item) {
  //   if (cart
  //           .firstWhere((element) => element.products!.sId == item.sId,
  //               orElse: () => Cart())
  //           .products
  //           ?.sId ==
  //       null) {
  //     return 0;
  //   } else {
  //     return cart[cart.indexWhere(
  //       (element) => element.products!.sId == item.sId,
  //     )]
  //         .count;
  //   }
  // }

  // setItemsTotalPrices() {
  //   itemsTotalPrice.value = 0;
  //   itemsTotalPriceAfterDiscount.value = 0;
  //   itemsTotalDiscount.value = 0;
  //   for (var element in cart) {
  //     itemsTotalPrice.value +=
  //         (element.count! * element.products!.price!.toDouble());
  //     itemsTotalPriceAfterDiscount.value += element.count! *
  //         (element.products.price -
  //             (element.products.price *
  //                 element.products.discount_percentage /
  //                 100));
  //     itemsTotalDiscount.value += element.count! *
  //         (element.products.price * element.products.discount_percentage / 100);
  //   }
  //   itemsTotalPrice.value.round();
  // }

  updateCart() {
  //  box.write(StorageKeys.cart, cart);
  }

  clearCart() {
   // cart.clear();

   // itemsTotalPrice.value = 0;
    updateCart();
  }

