import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';

class Post {
  final String caption;
  final FieldValue creationDate;
  final String mediaURL;

  const Post({
    required this.caption,
    required this.creationDate,
    required this.mediaURL
  });

  Map<String, dynamic> toJson() => {
    'caption': caption,
    'creationDate' : creationDate,
    'mediaURL': mediaURL
  };

  static Post fromSnapshot(DocumentSnapshot snapshot) {
    var data = snapshot.data() as Map<String, dynamic>;
    return Post(
      caption: data['caption'],
      creationDate: data['creationDate'],
      mediaURL: data['mediaURL']
    );
  }
}