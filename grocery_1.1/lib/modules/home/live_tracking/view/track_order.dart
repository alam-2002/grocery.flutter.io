import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:grocery_new/common/text_widget.dart';
import '../../../../theme/colors_class.dart';
import '../../../../utilities/constants/images_constants.dart';
import '../controller/track_order_controller.dart';

class TrackOrderScreen extends StatelessWidget {
  final TrackOrderController locationController =
      Get.put(TrackOrderController());

  TrackOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Container(
            margin: const EdgeInsets.only(left: 10),
            child: const CircleAvatar(
              backgroundColor: ColorsClass.catskillWhite,
              child: Icon(
                Icons.arrow_back_ios_new,
                color: Colors.black,
                size: 25,
              ),
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          Obx(() {
            return GoogleMap(
              initialCameraPosition: CameraPosition(
                target: locationController.currentLocation.value,
                zoom: 14.0,
              ),
              markers: {
                Marker(
                  markerId: MarkerId('currentLocation'),
                  position: locationController.currentLocation.value,
                  icon: BitmapDescriptor.defaultMarker,
                ),
                Marker(
                  markerId: MarkerId('targetLocation'),
                  position: locationController.targetLocation.value,
                  icon: BitmapDescriptor.defaultMarker,
                ),
              },
              polylines: {
                const Polyline(
                  polylineId: PolylineId('route'),
                  points: <LatLng>[
                    LatLng(18.634244, 73.822846),
                    LatLng(18.631015, 73.822568),
                  ],
                  color: ColorsClass.basicBlack,
                  width: 5,
                ),
              },
            );
          }),
          DraggableScrollableSheet(
            initialChildSize: 0.3,
            minChildSize: 0.3,
            maxChildSize: 0.6,
            builder: (context, scrollController) {
              return Container(
                decoration: BoxDecoration(
                  color: ColorsClass.basicWhite,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: SingleChildScrollView(
                  controller: scrollController,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              alignment: Alignment.center,
                              height: 8,
                              width: 100,
                              decoration: BoxDecoration(
                                color: ColorsClass.altoColor,
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Label(
                              label: 'On the Way',
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                            ),
                            Container(
                              height: 35,
                              padding: EdgeInsets.symmetric(horizontal: 8),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                  color: ColorsClass.basicGrey,
                                  width: 0.2,
                                ),
                              ),
                              child: Row(
                                children: [
                                  const Icon(
                                    Icons.watch_later,
                                    color: ColorsClass.primaryGreen,
                                  ),
                                  SizedBox(width: 5),
                                  Label(
                                    label: '10 Mins',
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Label(label: 'Order Placed', fontSize: 15),
                                Container(
                                  alignment: Alignment.center,
                                  height: 8,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    color: ColorsClass.primaryGreen,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Label(label: 'On the Way', fontSize: 15),
                                Container(
                                  alignment: Alignment.center,
                                  height: 8,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        Color(0xff23AA49),
                                        Color(0xff28AB4D),
                                        Color(0xff31AE54),
                                        Color(0xff34A754),
                                        Color(0xff3DAA5C),
                                        Color(0xff46AD62),
                                        Color(0xff4CAF68),
                                        Color(0xff55B168),
                                        Color(0xff60BB74),
                                        Color(0xff68BE80),
                                        Color(0xff70C087),
                                        Color(0xff78C28D),
                                        Color(0xff81C594),
                                        Color(0xff89C79A),
                                        Color(0xff8BC29B),
                                        Color(0xff93C4A1),
                                        Color(0xffA1CEAE),
                                        Color(0xffA9DDB4),
                                        Color(0xffB2D3BB),
                                        Color(0xffBAD5C1),
                                        Color(0xffC4D8CA),
                                        Color(0xffCDDBD1),
                                        Color(0xffD6DDD8),
                                        Color(0xffD8DDD9),
                                        Color(0xffE0E0E0),
                                        Color(0xffE0E0E0),
                                        Color(0xffE0E0E0),
                                        Color(0xffE0E0E0),
                                        Color(0xffE0E0E0),
                                        Color(0xffE0E0E0),
                                        Color(0xffE0E0E0),
                                        Color(0xffE0E0E0),
                                      ],
                                    ),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Label(label: 'Delivered', fontSize: 15),
                                Container(
                                  alignment: Alignment.center,
                                  height: 8,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    color: ColorsClass.altoColor,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              backgroundColor: Color(0xffe6e8ea),
                              child: Image.asset(profilePicture),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Label(
                                  label: 'Your delivery hero',
                                  color: ColorsClass.greyShade600,
                                ),
                                Label(
                                  label: 'Prashant Tupe is on their way!',
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                ),
                              ],
                            ),
                            CircleAvatar(
                              backgroundColor: Color(0xffe6e8ea),
                              child: Image.asset(phoneIcon),
                            ),
                          ],
                        ),
                        SizedBox(height: 15),
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              backgroundColor: Color(0xffe6e8ea),
                              child: Image.asset(storeIcon),
                            ),
                            SizedBox(width: 20),
                            Column(
                              // mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Label(
                                  label: 'Store',
                                  color: ColorsClass.greyShade600,
                                ),
                                Label(
                                  label: 'Insta Grocery Store',
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                ),
                              ],
                            ),
                            Spacer(),
                            CircleAvatar(
                              backgroundColor: Color(0xffe6e8ea),
                              child: Image.asset(messageIcon),
                            ),
                          ],
                        ),
                        SizedBox(height: 15),
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.location_on_rounded,
                              color: ColorsClass.primaryGreen,
                            ),
                            SizedBox(width: 20),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Label(
                                  label: 'Your Place',
                                  color: ColorsClass.greyShade600,
                                ),
                                Label(
                                  label: 'Home',
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
