// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resolution.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Resolution _$ResolutionFromJson(Map<String, dynamic> json) => Resolution(
      width:
          OnvifUtil.nullableMappedToInt(json['Width'] as Map<String, dynamic>?),
      height: OnvifUtil.nullableMappedToInt(
          json['Height'] as Map<String, dynamic>?),
    );

Map<String, dynamic> _$ResolutionToJson(Resolution instance) =>
    <String, dynamic>{
      'Width': instance.width,
      'Height': instance.height,
    };
