import "package:flutter/material.dart";
import "package:lab_4/features/banner/data/banner_data.dart";
import "package:lab_4/features/banner/domain/banner_controller.dart";
import "package:get/get.dart";

class SBanner extends StatelessWidget {
  final BannerController bannerController = Get.put(BannerController(BannerData()));

  @override
  Widget build(BuildContext context) {
    return

      Obx((){
        return
          Container(
            margin: EdgeInsets.only(top: 10),
            height: 225,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                image: bannerController.banner.value.image != null && bannerController.banner.value.image!.isNotEmpty
                    ? NetworkImage(bannerController.banner.value.image!)
                    : AssetImage('assets/images/barbershops/barbershop_1.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                    bottom: 10,
                    left: 10,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(bannerController.banner.value.buttonTitle ?? ""),
                      style: ButtonStyle(
                          backgroundColor: WidgetStatePropertyAll(Color.fromRGBO(54, 48, 98, 1)),
                          foregroundColor: WidgetStatePropertyAll(Colors.white),
                          shape: WidgetStateProperty.all(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4)
                          ))
                      ),
                    )),
              ],
            ),
          );
      });
  }
}

