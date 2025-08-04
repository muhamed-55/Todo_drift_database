// import 'package:pr/base/api_end_points.dart';
// import 'package:pr/routes/app_pages.dart';
// import 'package:get/get.dart';
// import 'package:pusher_client/pusher_client.dart';

// class PusherService {
//   PusherService();
//   int total = -1;
//   PusherClient? pusher;
//   Channel? myChannel;
//   setConnection(String orderId) async {
//     try {
//       PusherClient pusher = PusherClient(
//           "07863184c6c05d76f910", PusherOptions(cluster: "eu"),
//           autoConnect: false);
//       await pusher.connect();
//       myChannel = pusher.subscribe("${EndPoints.pusherChannel}${orderId}");
//       myChannel?.bind(EndPoints.orderStatusEvent, (event) {
//         Get.find<OrderDetailsController>().getOrderData();

//         Get.rootDelegate
//             .toNamed(Routes.trackDetails, arguments: {"id": orderId});
//       });
//     } catch (e) {
//       print("error pusher ${e.toString()}");
//     }
//   }

//   disconnect() {
//     try {
//       pusher?.disconnect();
//       myChannel?.cancelEventChannelStream();
//     } catch (e) {
//       print("error pusher ${e.toString()}");
//     }
//   }
// }
