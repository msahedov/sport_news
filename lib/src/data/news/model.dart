import 'dart:convert';
import 'package:collection/collection.dart';
import 'package:sport_news/src/core/enum/sport_types.dart';

class Report {
  int? id;
  String? header;
  String? body;
  SportType? category;
  String? image;
  DateTime? timestamp;
  int? viewCount;

  Report({
    this.id,
    this.header,
    this.body,
    this.image,
    this.category,
    this.timestamp,
    this.viewCount,
  });

  @override
  String toString() {
    return 'Report(id: $id, header: $header, body: $body, image: $image, category: $category, timestamp: $timestamp, viewCount: $viewCount)';
  }

  factory Report.fromMap(Map<String, dynamic> data) => Report(
        id: data['id'] as int?,
        header: data['header'] as String?,
        body: data['body'] as String?,
        image: data['image'] as String?,
        category: data['category'] as SportType?,
        timestamp: data['timestamp'] as DateTime?,
        viewCount: data['viewCount'] as int?,
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        'header': header,
        'body': body,
        'image': image,
        'category': category,
        'timestamp': timestamp,
        'viewCount': viewCount,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Report].
  factory Report.fromJson(String data) {
    return Report.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Report] to a JSON string.
  String toJson() => json.encode(toMap());

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Report) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toMap(), toMap());
  }

  @override
  int get hashCode =>
      id.hashCode ^
      header.hashCode ^
      body.hashCode ^
      image.hashCode ^
      category.hashCode ^
      timestamp.hashCode ^
      viewCount.hashCode;
}
