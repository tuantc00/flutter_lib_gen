// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Registrations _$RegistrationsFromJson(Map<String, dynamic> json) =>
    Registrations(
      activeCode: json['activeCode'] as String,
      packageCode: json['packageCode'] as String,
      name: json['name'] as String,
      duration: (json['duration'] as num).toInt(),
      promotionDuration: (json['promotionDuration'] as num?)?.toInt(),
      price: (json['price'] as num?)?.toInt(),
      channel: json['channel'] as String,
      userPhoneNumber: json['userPhoneNumber'] as String?,
      durationDisplayType: json['durationDisplayType'] as String?,
      activeDate:
          Registrations._dateTimeFromCustomString(json['activeDate'] as String),
      registrationExpiredTime: Registrations._dateTimeFromCustomString(
          json['registrationExpiredTime'] as String),
    );

Branch _$BranchFromJson(Map<String, dynamic> json) => Branch(
      id: json['id'] as String,
      name: json['name'] as String,
      address: json['address'] as String,
      phoneNumber: json['phone_numbers'] as String,
      bankAccountNumber: json['bankAccountNumber'] as String,
      bankAccountName: json['bankAccountName'] as String,
      registrationExpiredTime:
          DateTime.parse(json['registrationExpiredTime'] as String),
      registrations: (json['registrations'] as List<dynamic>?)
          ?.map((e) => Registrations.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
      id: json['id'] as String?,
      phoneNumber: json['phoneNumber'] as String,
      fullName: json['fullName'] as String?,
      avatar: json['avatar'] as String?,
      bankAccountNumber: json['bankAccountNumber'] as String?,
      bankAccountName: json['bankAccountName'] as String?,
      registrationExpiredTime: UserModel._dateTimeFromCustomString(
          json['registrationExpiredTime'] as String),
      branch: json['branch'] == null
          ? null
          : Branch.fromJson(json['branch'] as Map<String, dynamic>),
    );
