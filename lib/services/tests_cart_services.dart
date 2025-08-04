import 'package:get/get.dart';

import '../consts/storage.dart';

class TestCartServices extends GetxService {
  static TestCartServices get to => Get.find();
 // GetStorage box = GetStorage(StorageKeys.testCart);
  RxDouble itemsTotalPrice = 0.0.obs;
  RxDouble itemsTotalPriceAfterDiscount = 0.0.obs;
  RxDouble itemsTotalDiscount = 0.0.obs;
  RxList cart = [].obs;
  @override
  Future<void> onInit() async {
  //  await GetStorage.init(StorageKeys.testCart);
   // await GetStorage.init(StorageKeys.cheackOutStore);
    super.onInit();
    // if (box.hasData(StorageKeys.testCart)) {
    //   if (box.read(StorageKeys.testCart) != null) {
    //     cart.value = <TestCart>[];
    //     box.read(StorageKeys.testCart).forEach((v) {
    //       cart.add(TestCart.fromJson(v));
    //     });
    //     setItemsTotalPrices();
    //   }
    // }
  }

  // addItems(TestCart item) async {
  //   addItemtoCart(item);
  // }
  //
  // addItemtoCart(TestCart item) {
  //   if (cart
  //           .firstWhere(
  //               (element) => element.products!.sId == item.products!.sId,
  //               orElse: () => TestCart())
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
  // removeItem(TestCart item) {
  //   if (cart
  //           .firstWhere(
  //               (element) => element.products!.sId == item.products!.sId,
  //               orElse: () => TestCart())
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

  // int getProductCount(Test item) {
  //   if (cart
  //           .firstWhere((element) => element.products!.sId == item.sId,
  //               orElse: () => TestCart())
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

  setItemsTotalPrices() {
    itemsTotalPrice.value = 0;
    itemsTotalPriceAfterDiscount.value = 0;
    itemsTotalDiscount.value = 0;
    for (var element in cart) {
      itemsTotalPrice.value +=
          (element.count! * element.products!.price!.toDouble());
      itemsTotalPriceAfterDiscount.value += element.count! *
          (element.products.price -
              (element.products.price *
                  element.products.discountPercentage /
                  100));
      itemsTotalDiscount.value += element.count! *
          (element.products.price * element.products.discountPercentage / 100);
    }
    itemsTotalPrice.value.round();
  }

  updateCart() {
   // box.write(StorageKeys.testCart, cart);
  }

  clearCart() {
    cart.clear();

    itemsTotalPrice.value = 0;
    updateCart();
  }
}
