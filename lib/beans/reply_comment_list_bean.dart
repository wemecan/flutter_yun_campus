import 'package:finerit_app_flutter/beans/reply_comment_data.dart';

class ReplyCommentList {
  List<ReplyCommentData> data;

  ReplyCommentList({this.data});

  ReplyCommentList.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = new List<ReplyCommentData>();
      json['data'].forEach((v) {
        data.add(new ReplyCommentData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    return data;
  }
}