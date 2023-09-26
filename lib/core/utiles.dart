import 'dart:io';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:finding_apartments_yangon/features/data/models/picture.dart';
import 'package:finding_apartments_yangon/features/presentation/widgets/home_pages/image_viewer.dart';
import 'package:finding_apartments_yangon/features/presentation/widgets/setting/view_profile_image_page.dart';
import 'package:flutter/material.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:page_transition/page_transition.dart';

const Map<String, String> headers = {
  HttpHeaders.contentTypeHeader: 'application/json'
};

Map<String, String> authHeaders({required String token}) {
  return {
    HttpHeaders.contentTypeHeader: 'application/json',
    HttpHeaders.authorizationHeader: 'Bearer $token'
  };
}

class Utils {
  static headerImagesSlide(
      List<Picture> imageList, String img, BuildContext context) {
    List<String> imgStrList = [];
    imageList.map((e) => imgStrList.add(e.url!)).toList();

    List<Map<int, String>> myList = [];

    for (int i = 0; i < imgStrList.length; i++) {
      myList.add({i: imgStrList[i]});
    }

    return InkWell(
      onTap: () {
        int? foundId;
        for (final entry in myList) {
          if (entry.values.first == img) {
            print(entry.values.first);
            foundId = entry.keys.first;
            break;
          }
        }
        if (foundId != -1) {
          print('Found ID: $foundId');
        } else {
          print('String not found in the list.');
        }
        Navigator.push(
          context,
          PageTransition(
            type: PageTransitionType.fade,
            // child: ViewProfileImagePage(
            //   imgUrl: img,
            //   imgTag: "FlatImages",
            // ),
            child: ImageViewer(
              id: foundId!,
              images: imageList,
            ),
          ),
        );
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Hero(
          tag: "FlatImages",
          child: CachedNetworkImage(
            imageUrl: img,
            placeholder: (context, url) => const Center(
              child: SizedBox(
                height: 30,
                width: 30,
                child: CircularProgressIndicator(
                  color: Color(0xffF2AE00),
                  backgroundColor: Colors.white,
                ),
              ),
            ),
            errorWidget: (context, url, error) => const Icon(Icons.error),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  static showError(String errorMessage) {
    showSimpleNotification(
        Container(
          height: 40,
          width: double.infinity,
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.circular(7)),
          margin: const EdgeInsets.all(16),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 17),
              child: Text(
                errorMessage,
                style: TextStyle(
                  color: Color.fromARGB(255, 252, 49, 49),
                  fontFamily: 'Dosis',
                  fontSize: 14,
                ),
              ),
            ),
          ),
        ),
        autoDismiss: true,
        contentPadding: const EdgeInsets.all(16),
        background: Colors.transparent,
        elevation: 0,
        position: NotificationPosition.bottom);
  }

  static showSuccess(String errorMessage) {
    showSimpleNotification(
        Container(
          height: 40,
          width: double.infinity,
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.circular(7)),
          margin: const EdgeInsets.all(16),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 17),
              child: Text(
                errorMessage,
                style: TextStyle(
                  color: Color.fromARGB(255, 6, 136, 62),
                  fontFamily: 'Dosis',
                  fontSize: 14,
                ),
              ),
            ),
          ),
        ),
        autoDismiss: true,
        contentPadding: const EdgeInsets.all(16),
        background: Colors.transparent,
        elevation: 0,
        position: NotificationPosition.bottom);
  }
}
