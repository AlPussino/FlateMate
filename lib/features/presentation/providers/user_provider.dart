import 'dart:developer';
import 'dart:io';
import 'package:finding_apartments_yangon/features/data/models/divisions_and_townships.dart';
import 'package:finding_apartments_yangon/features/data/models/requests/add_social_contact_request.dart';
import 'package:finding_apartments_yangon/features/data/models/responses/email_response.dart';
import 'package:finding_apartments_yangon/features/data/models/social_contact.dart';
import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import '../../../configs/strings.dart';
import '../../../core/utiles.dart';
import '../../data/models/my_user.dart';
import '../../domain/usecases/token_usecase.dart';
import '../../domain/usecases/user_usecase.dart';

class UserProvider with ChangeNotifier {
  final UserUseCase _userUseCase;
  final TokenUseCase _tokenUseCase;

  UserProvider(this._userUseCase, this._tokenUseCase);

  MyUser? _myUser;
  MyUser? get user => _myUser;

  List<SocialContact>? _socialContactList = [];
  List<SocialContact>? get socialContactList => _socialContactList;

  List<MyanmarData> _myanmarData = [];
  List<MyanmarData> get myanmarData => _myanmarData;

  Future<MyUser?> getUserInfo() async {
    _myUser = await _userUseCase.getUserInfo();
    _socialContactList = user!.socialContacts;
    notifyListeners();
    return _myUser;
  }

  Future<MyUser?> changeUserName({required String userName}) async {
    final user = await _userUseCase.changeUserName(userName: userName);
    _myUser = user;
    notifyListeners();
    return user;
  }

  Future<EmailResponse?> changePassword(
      {required String currentPassword, required String newPassword}) async {
    _myUser = user;
    notifyListeners();

    return await _userUseCase.changePassword(
        currentPassword: currentPassword, newPassword: newPassword);
  }

  Future<MyUser?> changeMobileNumber({required String mobileNumber}) async {
    final user =
        await _userUseCase.changeMobileNumber(mobileNumber: mobileNumber);
    _myUser = user;
    notifyListeners();
    return user;
  }

  Future<String?> pickImageAndSaveToSever(String? oldImageUrl) async {
    final pickedImg = await ImagePicker().pickImage(source: ImageSource.camera);
    if (pickedImg != null) {
      final croppedFile = await ImageCropper().cropImage(
        sourcePath: pickedImg.path,
        compressQuality: 90,
        cropStyle: CropStyle.circle,
        aspectRatioPresets: [
          CropAspectRatioPreset.square,
          CropAspectRatioPreset.ratio3x2,
          CropAspectRatioPreset.original,
          CropAspectRatioPreset.ratio4x3,
          CropAspectRatioPreset.ratio16x9,
        ],
        uiSettings: [
          AndroidUiSettings(
            dimmedLayerColor: Colors.white,
            backgroundColor: Colors.white,
            toolbarTitle: 'Edit',
            toolbarColor: Colors.white,
            hideBottomControls: false,
            showCropGrid: true,
            statusBarColor: Colors.white,
            activeControlsWidgetColor: const Color(0xff227143),
            toolbarWidgetColor: const Color(0xff227143),
            initAspectRatio: CropAspectRatioPreset.square,
            lockAspectRatio: true,
          ),
          IOSUiSettings(
            title: 'Edit',
          ),
        ],
      );
      final finalImg = XFile(croppedFile!.path);
      final file = File(finalImg.path).readAsBytesSync();
      if (file.length > maxProfileImageSize) {
        Utils.showError(
            'Your image is greater than 20 MB, \nPlease Select another image!');
      }
      // _profileImageStr = base64Encode(File(finalImg.path).readAsBytesSync());
      // String? url = await _userUseCase.uploadProfile(File(finalImg.path),);
      String? url =
          await _userUseCase.uploadProfile(File(finalImg.path), oldImageUrl);
      user?.profileUrl = url;
      notifyListeners();
      if (url != null) {
        Utils.showSuccess("New Profile Uploaded Successfully!");

        notifyListeners();
      }
      return url;
    } else {
      Utils.showError('Please select an image to upload.');
      return Future.value(null);
    }
  }

  Future<MyUser?> addSocialContact(AddSocialContactRequest body) async {
    final user = await _userUseCase.addSocialContact(body);
    _myUser = user;
    notifyListeners();
    return user;
  }

  Future<EmailResponse?> removeSocialContact({required String id}) async {
    notifyListeners();
    return await _userUseCase.removeSocialContact(id: id);
  }

  Future<List<MyanmarData>> loadMyanmarData() async {
    final data = await _userUseCase.loadMyanmarData();
    _myanmarData = data;
    notifyListeners();
    return data;
  }
}
