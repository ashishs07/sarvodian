import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:provider/provider.dart';
import 'package:image_picker/image_picker.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../../models/question_model.dart';
import '../../../providers/question_provider.dart';
import '../../../providers/user_provider.dart';

class StudentAddQuestion extends StatefulWidget {
  @override
  _StudentAddQuestionState createState() => _StudentAddQuestionState();
}

class _StudentAddQuestionState extends State<StudentAddQuestion> {
  final _formKey = GlobalKey<FormState>();
  String _question;
  List<File> _images = [];
  File _currentImage;

  void _pickAndCropImage() async {
    await _pickImage();
    await _cropImage();
  }

  Future<void> _pickImage() async {
    _currentImage = await ImagePicker.pickImage(source: ImageSource.camera);
    if (_currentImage != null) {
      Fluttertoast.showToast(msg: 'Image clicked');
    } else {
      Fluttertoast.showToast(msg: 'Couldn\'t click image');
    }
  }

  Future<void> _cropImage() async {
    if (_currentImage == null) {
      return;
    }
    File croppedImage = await ImageCropper.cropImage(
      sourcePath: _currentImage.path,
      androidUiSettings: AndroidUiSettings(
        showCropGrid: false,
        initAspectRatio: CropAspectRatioPreset.original,
        lockAspectRatio: false,
      ),
    );
    if (croppedImage == null) {
      _currentImage = null;
      return;
    }

    _currentImage = croppedImage;
    setState(() {
      _images.add(_currentImage);
    });
  }

  void _saveButton() {
    if (!_formKey.currentState.validate()) {
      return;
    }
    _formKey.currentState.save();
    final userData = Provider.of<UserProvider>(context, listen: false);
    final questionData = Provider.of<QuestionProvider>(context, listen: false);

    questionData.addQuestion(QuestionModel(
        question: _question, email: userData.user['email'], images: _images));

    _formKey.currentState.reset();
    FocusScope.of(context).unfocus();
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blue, width: 2),
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
      ),
      child: Form(
        key: _formKey,
        child: Wrap(
          children: <Widget>[
            _buildQuestionTTF(),
            if (_images.isNotEmpty) _buildImagesListView(),
            Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment.center,
                  child: _buildSaveButton(),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: _buildCameraButton(),
                ),
              ],
            ),
            _buildDownButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildQuestionTTF() {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Describe your question.',
      ),
      minLines: 1,
      maxLines: 5,
      validator: (value) {
        if (value.isEmpty) {
          return 'Enter Your question';
        }
        return null;
      },
      onSaved: (value) {
        _question = value;
      },
    );
  }

  Widget _buildImagesListView() {
    return Container(
      height: 100,
      child: ListView.builder(
        itemCount: _images.length,
        itemBuilder: (ctx, index) => Padding(
          padding: const EdgeInsets.all(5.0),
          child: Image.file(
            _images[index],
          ),
        ),
        scrollDirection: Axis.horizontal,
      ),
    );
  }

  Widget _buildSaveButton() {
    return RaisedButton.icon(
      icon: Icon(Icons.save),
      label: Text(
        'Save',
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
      onPressed: _saveButton,
    );
  }

  Widget _buildCameraButton() {
    return IconButton(
      icon: Icon(
        Icons.camera_alt,
        size: 40,
      ),
      onPressed: _pickAndCropImage,
    );
  }

  Widget _buildDownButton() {
    return Align(
      alignment: Alignment.centerRight,
      child: IconButton(
        icon: Icon(Icons.clear, size: 40),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
    );
  }
}
