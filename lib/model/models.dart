
import 'package:intl/intl.dart';
import 'package:json_annotation/json_annotation.dart';
part 'models.g.dart';

@JsonSerializable(createToJson: false,)
class Registrations {
  final String activeCode;
  final String packageCode;
  final String name;
  final int duration;
  final int? promotionDuration;
  final int? price;
  final String channel;
  final String? userPhoneNumber;
  final String? durationDisplayType;
  @JsonKey(fromJson: _dateTimeFromCustomString)
  final DateTime activeDate;
  @JsonKey(fromJson: _dateTimeFromCustomString)
  final DateTime registrationExpiredTime;

  Registrations({
    required this.activeCode,
    required this.packageCode,
    required this.name,
    required this.duration,
    this.promotionDuration,
    this.price,
    required this.channel,
    this.userPhoneNumber,
    this.durationDisplayType,
    required this.activeDate,
    required this.registrationExpiredTime,
  });

  factory Registrations.fromJson(Map<String, dynamic> json) =>
      _$RegistrationsFromJson(json);

  static DateTime _dateTimeFromCustomString(String date) =>
      DateFormat('dd/MM/yyyy').parse(date);
  int calculateRemainingDays(
      DateTime activeDate, DateTime registrationExpiredTime) {
    final difference = registrationExpiredTime.difference(activeDate).inDays;
    return difference;
  }

  @override
  String toString() {
    return 'Registrations{activeCode: $activeCode, packageCode: $packageCode, name: $name, duration: $duration, promotionDuration: $promotionDuration, price: $price, channel: $channel, userPhoneNumber: $userPhoneNumber, durationDisplayType: $durationDisplayType, activeDate: $activeDate, registrationExpiredTime: $registrationExpiredTime}';
  }
}

@JsonSerializable(explicitToJson: true,createToJson: false)
class Branch {
  final String id;
  final String name;
  final String address;
  @JsonKey(name: 'phone_numbers')
  final String phoneNumber;
  final String bankAccountNumber;
  final String bankAccountName;
  final DateTime registrationExpiredTime;
  final List<Registrations>? registrations;

  Branch({
    required this.id,
    required this.name,
    required this.address,
    required this.phoneNumber,
    required this.bankAccountNumber,
    required this.bankAccountName,
    required this.registrationExpiredTime,
    this.registrations,
  });

  @override
  String toString() {
    return 'Branch{id: $id, name: $name, address: $address, phoneNumber: $phoneNumber, bankAccountNumber: $bankAccountNumber, bankAccountName: $bankAccountName, registrationExpiredTime: $registrationExpiredTime, registrations: $registrations}';
  }

  factory Branch.fromJson(Map<String, dynamic> json) => _$BranchFromJson(json);

}

@JsonSerializable(explicitToJson: true,createToJson: false)
class UserModel {
  final String? id;
  final String phoneNumber;
  final String? fullName;
  final String? avatar;
  final String? bankAccountNumber;
  final String? bankAccountName;
  @JsonKey(fromJson: _dateTimeFromCustomString)
  final DateTime registrationExpiredTime;
  final Branch? branch;

  UserModel(
      {this.id,
        required this.phoneNumber,
        this.fullName,
        this.avatar,
        this.bankAccountNumber,
        this.bankAccountName,
        required this.registrationExpiredTime,
        this.branch});
  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
  static DateTime _dateTimeFromCustomString(String date) =>
      DateFormat('dd/MM/yyyy').parse(date);
  @override
  String toString() {
    return 'UserModel{id: $id, phoneNumber: $phoneNumber, fullName: $fullName, avatar: $avatar, bankAccountNumber: $bankAccountNumber, bankAccountName: $bankAccountName, registrationExpiredTime: $registrationExpiredTime, branch: $branch}';
  }
}

