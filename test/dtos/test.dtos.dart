/* Options:
Date: 2024-10-24 03:34:40
Version: 8.41
Tip: To override a DTO option, remove "//" prefix before updating
BaseUrl: https://test.servicestack.net

//GlobalNamespace: 
//AddServiceStackTypes: True
//AddResponseStatus: False
//AddImplicitVersion: 
//AddDescriptionAsComments: True
//IncludeTypes: 
//ExcludeTypes: 
DefaultImports: ../../lib/servicestack.dart
*/

import '../../lib/servicestack.dart';
import 'dart:collection';
import 'dart:typed_data';

class Item implements IConvertible {
  String? name;
  String? description;

  Item({this.name, this.description});
  Item.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    name = json['name'];
    description = json['description'];
    return this;
  }

  Map<String, dynamic> toJson() => {'name': name, 'description': description};

  getTypeName() => "Item";
  TypeContext? context = _ctx;
}

class Poco implements IConvertible {
  String? name;

  Poco({this.name});
  Poco.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    name = json['name'];
    return this;
  }

  Map<String, dynamic> toJson() => {'name': name};

  getTypeName() => "Poco";
  TypeContext? context = _ctx;
}

class CustomType implements IConvertible {
  int? id;
  String? name;

  CustomType({this.id, this.name});
  CustomType.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    return this;
  }

  Map<String, dynamic> toJson() => {'id': id, 'name': name};

  getTypeName() => "CustomType";
  TypeContext? context = _ctx;
}

class SetterType implements IConvertible {
  int? id;
  String? name;

  SetterType({this.id, this.name});
  SetterType.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    return this;
  }

  Map<String, dynamic> toJson() => {'id': id, 'name': name};

  getTypeName() => "SetterType";
  TypeContext? context = _ctx;
}

class DeclarativeChildValidation implements IConvertible {
  String? name;
  // @Validate(Validator="MaximumLength(20)")
  String? value;

  DeclarativeChildValidation({this.name, this.value});
  DeclarativeChildValidation.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    name = json['name'];
    value = json['value'];
    return this;
  }

  Map<String, dynamic> toJson() => {'name': name, 'value': value};

  getTypeName() => "DeclarativeChildValidation";
  TypeContext? context = _ctx;
}

class FluentChildValidation implements IConvertible {
  String? name;
  String? value;

  FluentChildValidation({this.name, this.value});
  FluentChildValidation.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    name = json['name'];
    value = json['value'];
    return this;
  }

  Map<String, dynamic> toJson() => {'name': name, 'value': value};

  getTypeName() => "FluentChildValidation";
  TypeContext? context = _ctx;
}

class DeclarativeSingleValidation implements IConvertible {
  String? name;
  // @Validate(Validator="MaximumLength(20)")
  String? value;

  DeclarativeSingleValidation({this.name, this.value});
  DeclarativeSingleValidation.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    name = json['name'];
    value = json['value'];
    return this;
  }

  Map<String, dynamic> toJson() => {'name': name, 'value': value};

  getTypeName() => "DeclarativeSingleValidation";
  TypeContext? context = _ctx;
}

class FluentSingleValidation implements IConvertible {
  String? name;
  String? value;

  FluentSingleValidation({this.name, this.value});
  FluentSingleValidation.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    name = json['name'];
    value = json['value'];
    return this;
  }

  Map<String, dynamic> toJson() => {'name': name, 'value': value};

  getTypeName() => "FluentSingleValidation";
  TypeContext? context = _ctx;
}

abstract class IGeneration {
  String? refId;
  String? tag;
}

abstract class IAuthTokens {
  String? provider;
  String? userId;
  String? accessToken;
  String? accessTokenSecret;
  String? refreshToken;
  DateTime? refreshTokenExpiry;
  String? requestToken;
  String? requestTokenSecret;
  Map<String, String?>? items;
}

// @DataContract
class AuthUserSession implements IConvertible {
  // @DataMember(Order=1)
  String? referrerUrl;

  // @DataMember(Order=2)
  String? id;

  // @DataMember(Order=3)
  String? userAuthId;

  // @DataMember(Order=4)
  String? userAuthName;

  // @DataMember(Order=5)
  String? userName;

  // @DataMember(Order=6)
  String? twitterUserId;

  // @DataMember(Order=7)
  String? twitterScreenName;

  // @DataMember(Order=8)
  String? facebookUserId;

  // @DataMember(Order=9)
  String? facebookUserName;

  // @DataMember(Order=10)
  String? firstName;

  // @DataMember(Order=11)
  String? lastName;

  // @DataMember(Order=12)
  String? displayName;

  // @DataMember(Order=13)
  String? company;

  // @DataMember(Order=14)
  String? email;

  // @DataMember(Order=15)
  String? primaryEmail;

  // @DataMember(Order=16)
  String? phoneNumber;

  // @DataMember(Order=17)
  DateTime? birthDate;

  // @DataMember(Order=18)
  String? birthDateRaw;

  // @DataMember(Order=19)
  String? address;

  // @DataMember(Order=20)
  String? address2;

  // @DataMember(Order=21)
  String? city;

  // @DataMember(Order=22)
  String? state;

  // @DataMember(Order=23)
  String? country;

  // @DataMember(Order=24)
  String? culture;

  // @DataMember(Order=25)
  String? fullName;

  // @DataMember(Order=26)
  String? gender;

  // @DataMember(Order=27)
  String? language;

  // @DataMember(Order=28)
  String? mailAddress;

  // @DataMember(Order=29)
  String? nickname;

  // @DataMember(Order=30)
  String? postalCode;

  // @DataMember(Order=31)
  String? timeZone;

  // @DataMember(Order=32)
  String? requestTokenSecret;

  // @DataMember(Order=33)
  DateTime? createdAt;

  // @DataMember(Order=34)
  DateTime? lastModified;

  // @DataMember(Order=35)
  List<String>? roles;

  // @DataMember(Order=36)
  List<String>? permissions;

  // @DataMember(Order=37)
  bool? isAuthenticated;

  // @DataMember(Order=38)
  bool? fromToken;

  // @DataMember(Order=39)
  String? profileUrl;

  // @DataMember(Order=40)
  String? sequence;

  // @DataMember(Order=41)
  int? tag;

  // @DataMember(Order=42)
  String? authProvider;

  // @DataMember(Order=43)
  List<IAuthTokens>? providerOAuthAccess;

  // @DataMember(Order=44)
  Map<String, String?>? meta;

  // @DataMember(Order=45)
  List<String>? audiences;

  // @DataMember(Order=46)
  List<String>? scopes;

  // @DataMember(Order=47)
  String? dns;

  // @DataMember(Order=48)
  String? rsa;

  // @DataMember(Order=49)
  String? sid;

  // @DataMember(Order=50)
  String? hash;

  // @DataMember(Order=51)
  String? homePhone;

  // @DataMember(Order=52)
  String? mobilePhone;

  // @DataMember(Order=53)
  String? webpage;

  // @DataMember(Order=54)
  bool? emailConfirmed;

  // @DataMember(Order=55)
  bool? phoneNumberConfirmed;

  // @DataMember(Order=56)
  bool? twoFactorEnabled;

  // @DataMember(Order=57)
  String? securityStamp;

  // @DataMember(Order=58)
  String? type;

  // @DataMember(Order=59)
  String? recoveryToken;

  // @DataMember(Order=60)
  int? refId;

  // @DataMember(Order=61)
  String? refIdStr;

  AuthUserSession(
      {this.referrerUrl,
      this.id,
      this.userAuthId,
      this.userAuthName,
      this.userName,
      this.twitterUserId,
      this.twitterScreenName,
      this.facebookUserId,
      this.facebookUserName,
      this.firstName,
      this.lastName,
      this.displayName,
      this.company,
      this.email,
      this.primaryEmail,
      this.phoneNumber,
      this.birthDate,
      this.birthDateRaw,
      this.address,
      this.address2,
      this.city,
      this.state,
      this.country,
      this.culture,
      this.fullName,
      this.gender,
      this.language,
      this.mailAddress,
      this.nickname,
      this.postalCode,
      this.timeZone,
      this.requestTokenSecret,
      this.createdAt,
      this.lastModified,
      this.roles,
      this.permissions,
      this.isAuthenticated,
      this.fromToken,
      this.profileUrl,
      this.sequence,
      this.tag,
      this.authProvider,
      this.providerOAuthAccess,
      this.meta,
      this.audiences,
      this.scopes,
      this.dns,
      this.rsa,
      this.sid,
      this.hash,
      this.homePhone,
      this.mobilePhone,
      this.webpage,
      this.emailConfirmed,
      this.phoneNumberConfirmed,
      this.twoFactorEnabled,
      this.securityStamp,
      this.type,
      this.recoveryToken,
      this.refId,
      this.refIdStr});
  AuthUserSession.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    referrerUrl = json['referrerUrl'];
    id = json['id'];
    userAuthId = json['userAuthId'];
    userAuthName = json['userAuthName'];
    userName = json['userName'];
    twitterUserId = json['twitterUserId'];
    twitterScreenName = json['twitterScreenName'];
    facebookUserId = json['facebookUserId'];
    facebookUserName = json['facebookUserName'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    displayName = json['displayName'];
    company = json['company'];
    email = json['email'];
    primaryEmail = json['primaryEmail'];
    phoneNumber = json['phoneNumber'];
    birthDate =
        JsonConverters.fromJson(json['birthDate'], 'DateTime', context!);
    birthDateRaw = json['birthDateRaw'];
    address = json['address'];
    address2 = json['address2'];
    city = json['city'];
    state = json['state'];
    country = json['country'];
    culture = json['culture'];
    fullName = json['fullName'];
    gender = json['gender'];
    language = json['language'];
    mailAddress = json['mailAddress'];
    nickname = json['nickname'];
    postalCode = json['postalCode'];
    timeZone = json['timeZone'];
    requestTokenSecret = json['requestTokenSecret'];
    createdAt =
        JsonConverters.fromJson(json['createdAt'], 'DateTime', context!);
    lastModified =
        JsonConverters.fromJson(json['lastModified'], 'DateTime', context!);
    roles = JsonConverters.fromJson(json['roles'], 'List<String>', context!);
    permissions =
        JsonConverters.fromJson(json['permissions'], 'List<String>', context!);
    isAuthenticated = json['isAuthenticated'];
    fromToken = json['fromToken'];
    profileUrl = json['profileUrl'];
    sequence = json['sequence'];
    tag = json['tag'];
    authProvider = json['authProvider'];
    providerOAuthAccess = JsonConverters.fromJson(
        json['providerOAuthAccess'], 'List<IAuthTokens>', context!);
    meta = JsonConverters.toStringMap(json['meta']);
    audiences =
        JsonConverters.fromJson(json['audiences'], 'List<String>', context!);
    scopes = JsonConverters.fromJson(json['scopes'], 'List<String>', context!);
    dns = json['dns'];
    rsa = json['rsa'];
    sid = json['sid'];
    hash = json['hash'];
    homePhone = json['homePhone'];
    mobilePhone = json['mobilePhone'];
    webpage = json['webpage'];
    emailConfirmed = json['emailConfirmed'];
    phoneNumberConfirmed = json['phoneNumberConfirmed'];
    twoFactorEnabled = json['twoFactorEnabled'];
    securityStamp = json['securityStamp'];
    type = json['type'];
    recoveryToken = json['recoveryToken'];
    refId = json['refId'];
    refIdStr = json['refIdStr'];
    return this;
  }

  Map<String, dynamic> toJson() => {
        'referrerUrl': referrerUrl,
        'id': id,
        'userAuthId': userAuthId,
        'userAuthName': userAuthName,
        'userName': userName,
        'twitterUserId': twitterUserId,
        'twitterScreenName': twitterScreenName,
        'facebookUserId': facebookUserId,
        'facebookUserName': facebookUserName,
        'firstName': firstName,
        'lastName': lastName,
        'displayName': displayName,
        'company': company,
        'email': email,
        'primaryEmail': primaryEmail,
        'phoneNumber': phoneNumber,
        'birthDate': JsonConverters.toJson(birthDate, 'DateTime', context!),
        'birthDateRaw': birthDateRaw,
        'address': address,
        'address2': address2,
        'city': city,
        'state': state,
        'country': country,
        'culture': culture,
        'fullName': fullName,
        'gender': gender,
        'language': language,
        'mailAddress': mailAddress,
        'nickname': nickname,
        'postalCode': postalCode,
        'timeZone': timeZone,
        'requestTokenSecret': requestTokenSecret,
        'createdAt': JsonConverters.toJson(createdAt, 'DateTime', context!),
        'lastModified':
            JsonConverters.toJson(lastModified, 'DateTime', context!),
        'roles': JsonConverters.toJson(roles, 'List<String>', context!),
        'permissions':
            JsonConverters.toJson(permissions, 'List<String>', context!),
        'isAuthenticated': isAuthenticated,
        'fromToken': fromToken,
        'profileUrl': profileUrl,
        'sequence': sequence,
        'tag': tag,
        'authProvider': authProvider,
        'providerOAuthAccess': JsonConverters.toJson(
            providerOAuthAccess, 'List<IAuthTokens>', context!),
        'meta': meta,
        'audiences': JsonConverters.toJson(audiences, 'List<String>', context!),
        'scopes': JsonConverters.toJson(scopes, 'List<String>', context!),
        'dns': dns,
        'rsa': rsa,
        'sid': sid,
        'hash': hash,
        'homePhone': homePhone,
        'mobilePhone': mobilePhone,
        'webpage': webpage,
        'emailConfirmed': emailConfirmed,
        'phoneNumberConfirmed': phoneNumberConfirmed,
        'twoFactorEnabled': twoFactorEnabled,
        'securityStamp': securityStamp,
        'type': type,
        'recoveryToken': recoveryToken,
        'refId': refId,
        'refIdStr': refIdStr
      };

  getTypeName() => "AuthUserSession";
  TypeContext? context = _ctx;
}

class NestedClass implements IConvertible {
  String? value;

  NestedClass({this.value});
  NestedClass.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    value = json['value'];
    return this;
  }

  Map<String, dynamic> toJson() => {'value': value};

  getTypeName() => "NestedClass";
  TypeContext? context = _ctx;
}

enum EnumType {
  Value1,
  Value2,
  Value3,
}

// @flags()
class EnumTypeFlags {
  static const EnumTypeFlags Value1 = const EnumTypeFlags._(0);
  static const EnumTypeFlags Value2 = const EnumTypeFlags._(1);
  static const EnumTypeFlags Value3 = const EnumTypeFlags._(2);

  final int _value;
  const EnumTypeFlags._(this._value);
  int get value => _value;
  static List<EnumTypeFlags> get values => const [Value1, Value2, Value3];
}

enum EnumWithValues {
  None,
  Value1,
  Value2,
}

// @flags()
class EnumFlags {
  static const EnumFlags Value0 = const EnumFlags._(0);
  static const EnumFlags Value1 = const EnumFlags._(1);
  static const EnumFlags Value2 = const EnumFlags._(2);
  static const EnumFlags Value3 = const EnumFlags._(4);
  static const EnumFlags Value123 = const EnumFlags._(7);

  final int _value;
  const EnumFlags._(this._value);
  int get value => _value;
  static List<EnumFlags> get values =>
      const [Value0, Value1, Value2, Value3, Value123];
}

enum EnumAsInt {
  Value1,
  Value2,
  Value3,
}

enum EnumStyle {
  lower,
  UPPER,
  PascalCase,
  camelCase,
  camelUPPER,
  PascalUPPER,
}

enum EnumStyleMembers {
  Lower,
  Upper,
  PascalCase,
  CamelCase,
  CamelUpper,
  PascalUpper,
}

class SubType implements IConvertible {
  int? id;
  String? name;

  SubType({this.id, this.name});
  SubType.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    return this;
  }

  Map<String, dynamic> toJson() => {'id': id, 'name': name};

  getTypeName() => "SubType";
  TypeContext? context = _ctx;
}

abstract class AllTypesBase {
  int? id;
  int? nullableId;
  int? byte;
  int? short;
  int? Int;
  int? long;
  int? uShort;
  int? uInt;
  int? uLong;
  double? float;
  double? Double;
  double? decimal;
  String? string;
  DateTime? dateTime;
  Duration? timeSpan;
  DateTime? dateTimeOffset;
  String? guid;
  String? char;
  KeyValuePair<String, String>? keyValuePair;
  DateTime? nullableDateTime;
  Duration? nullableTimeSpan;
  List<String>? stringList;
  List<String>? stringArray;
  Map<String, String?>? stringMap;
  Map<int, String?>? intStringMap;
  SubType? subType;

  AllTypesBase(
      {this.id,
      this.nullableId,
      this.byte,
      this.short,
      this.Int,
      this.long,
      this.uShort,
      this.uInt,
      this.uLong,
      this.float,
      this.Double,
      this.decimal,
      this.string,
      this.dateTime,
      this.timeSpan,
      this.dateTimeOffset,
      this.guid,
      this.char,
      this.keyValuePair,
      this.nullableDateTime,
      this.nullableTimeSpan,
      this.stringList,
      this.stringArray,
      this.stringMap,
      this.intStringMap,
      this.subType});
  AllTypesBase.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    id = json['id'];
    nullableId = json['nullableId'];
    byte = json['byte'];
    short = json['short'];
    Int = json['int'];
    long = json['long'];
    uShort = json['uShort'];
    uInt = json['uInt'];
    uLong = json['uLong'];
    float = JsonConverters.toDouble(json['float']);
    Double = JsonConverters.toDouble(json['double']);
    decimal = JsonConverters.toDouble(json['decimal']);
    string = json['string'];
    dateTime = JsonConverters.fromJson(json['dateTime'], 'DateTime', context!);
    timeSpan = JsonConverters.fromJson(json['timeSpan'], 'Duration', context!);
    dateTimeOffset =
        JsonConverters.fromJson(json['dateTimeOffset'], 'DateTime', context!);
    guid = json['guid'];
    char = json['char'];
    keyValuePair = JsonConverters.fromJson(
        json['keyValuePair'], 'KeyValuePair<String,String>', context!);
    nullableDateTime =
        JsonConverters.fromJson(json['nullableDateTime'], 'DateTime', context!);
    nullableTimeSpan =
        JsonConverters.fromJson(json['nullableTimeSpan'], 'Duration', context!);
    stringList =
        JsonConverters.fromJson(json['stringList'], 'List<String>', context!);
    stringArray =
        JsonConverters.fromJson(json['stringArray'], 'List<String>', context!);
    stringMap = JsonConverters.toStringMap(json['stringMap']);
    intStringMap = JsonConverters.fromJson(
        json['intStringMap'], 'Map<int,String?>', context!);
    subType = JsonConverters.fromJson(json['subType'], 'SubType', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'nullableId': nullableId,
        'byte': byte,
        'short': short,
        'int': Int,
        'long': long,
        'uShort': uShort,
        'uInt': uInt,
        'uLong': uLong,
        'float': float,
        'double': Double,
        'decimal': decimal,
        'string': string,
        'dateTime': JsonConverters.toJson(dateTime, 'DateTime', context!),
        'timeSpan': JsonConverters.toJson(timeSpan, 'Duration', context!),
        'dateTimeOffset':
            JsonConverters.toJson(dateTimeOffset, 'DateTime', context!),
        'guid': guid,
        'char': char,
        'keyValuePair': JsonConverters.toJson(
            keyValuePair, 'KeyValuePair<String,String>', context!),
        'nullableDateTime':
            JsonConverters.toJson(nullableDateTime, 'DateTime', context!),
        'nullableTimeSpan':
            JsonConverters.toJson(nullableTimeSpan, 'Duration', context!),
        'stringList':
            JsonConverters.toJson(stringList, 'List<String>', context!),
        'stringArray':
            JsonConverters.toJson(stringArray, 'List<String>', context!),
        'stringMap': stringMap,
        'intStringMap':
            JsonConverters.toJson(intStringMap, 'Map<int,String?>', context!),
        'subType': JsonConverters.toJson(subType, 'SubType', context!)
      };

  getTypeName() => "AllTypesBase";
  TypeContext? context = _ctx;
}

abstract class HelloBase {
  int? id;

  HelloBase({this.id});
  HelloBase.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    id = json['id'];
    return this;
  }

  Map<String, dynamic> toJson() => {'id': id};

  getTypeName() => "HelloBase";
  TypeContext? context = _ctx;
}

abstract class HelloBase1<T> {
  List<T>? items;
  List<int>? counts;

  HelloBase1({this.items, this.counts});
  HelloBase1.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    items = JsonConverters.fromJson(json['items'],
        'List<${runtimeGenericTypeDefs(this, [0]).join(",")}>', context!);
    counts = JsonConverters.fromJson(json['counts'], 'List<int>', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'items': JsonConverters.toJson(items, 'List<T>', context!),
        'counts': JsonConverters.toJson(counts, 'List<int>', context!)
      };

  getTypeName() => "HelloBase<$T>";
  TypeContext? context = _ctx;
}

abstract class IPoco {
  String? name;
}

abstract class IEmptyInterface {}

class EmptyClass implements IConvertible {
  EmptyClass();
  EmptyClass.fromJson(Map<String, dynamic> json) : super();
  fromMap(Map<String, dynamic> json) {
    return this;
  }

  Map<String, dynamic> toJson() => {};
  getTypeName() => "EmptyClass";
  TypeContext? context = _ctx;
}

enum DayOfWeek {
  Sunday,
  Monday,
  Tuesday,
  Wednesday,
  Thursday,
  Friday,
  Saturday,
}

// @DataContract
enum ScopeType {
  Global,
  Sale,
}

class Channel implements IConvertible {
  String? name;
  String? value;

  Channel({this.name, this.value});
  Channel.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    name = json['name'];
    value = json['value'];
    return this;
  }

  Map<String, dynamic> toJson() => {'name': name, 'value': value};

  getTypeName() => "Channel";
  TypeContext? context = _ctx;
}

class Device implements IConvertible {
  int? id;
  String? type;
  int? timeStamp;
  List<Channel>? channels;

  Device({this.id, this.type, this.timeStamp, this.channels});
  Device.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    id = json['id'];
    type = json['type'];
    timeStamp = json['timeStamp'];
    channels =
        JsonConverters.fromJson(json['channels'], 'List<Channel>', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'type': type,
        'timeStamp': timeStamp,
        'channels': JsonConverters.toJson(channels, 'List<Channel>', context!)
      };

  getTypeName() => "Device";
  TypeContext? context = _ctx;
}

class Logger implements IConvertible {
  int? id;
  List<Device>? devices;

  Logger({this.id, this.devices});
  Logger.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    id = json['id'];
    devices =
        JsonConverters.fromJson(json['devices'], 'List<Device>', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'devices': JsonConverters.toJson(devices, 'List<Device>', context!)
      };

  getTypeName() => "Logger";
  TypeContext? context = _ctx;
}

class Rockstar implements IConvertible {
  int? id;
  String? firstName;
  String? lastName;
  int? age;

  Rockstar({this.id, this.firstName, this.lastName, this.age});
  Rockstar.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    id = json['id'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    age = json['age'];
    return this;
  }

  Map<String, dynamic> toJson() =>
      {'id': id, 'firstName': firstName, 'lastName': lastName, 'age': age};

  getTypeName() => "Rockstar";
  TypeContext? context = _ctx;
}

abstract class QueryDbTenant<From, Into> extends QueryDb2<From, Into> {
  QueryDbTenant();
  QueryDbTenant.fromJson(Map<String, dynamic> json) : super.fromJson(json);
  fromMap(Map<String, dynamic> json) {
    super.fromMap(json);
    return this;
  }

  Map<String, dynamic> toJson() => super.toJson();
  getTypeName() => "QueryDbTenant<$From,$Into>";
  TypeContext? context = _ctx;
}

enum LivingStatus {
  Alive,
  Dead,
}

class RockstarAuditTenant extends AuditBase implements IConvertible {
  int? tenantId;
  int? id;
  String? firstName;
  String? lastName;
  int? age;
  DateTime? dateOfBirth;
  DateTime? dateDied;
  LivingStatus? livingStatus;

  RockstarAuditTenant(
      {this.tenantId,
      this.id,
      this.firstName,
      this.lastName,
      this.age,
      this.dateOfBirth,
      this.dateDied,
      this.livingStatus});
  RockstarAuditTenant.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    super.fromMap(json);
    tenantId = json['tenantId'];
    id = json['id'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    age = json['age'];
    dateOfBirth =
        JsonConverters.fromJson(json['dateOfBirth'], 'DateTime', context!);
    dateDied = JsonConverters.fromJson(json['dateDied'], 'DateTime', context!);
    livingStatus =
        JsonConverters.fromJson(json['livingStatus'], 'LivingStatus', context!);
    return this;
  }

  Map<String, dynamic> toJson() => super.toJson()
    ..addAll({
      'tenantId': tenantId,
      'id': id,
      'firstName': firstName,
      'lastName': lastName,
      'age': age,
      'dateOfBirth': JsonConverters.toJson(dateOfBirth, 'DateTime', context!),
      'dateDied': JsonConverters.toJson(dateDied, 'DateTime', context!),
      'livingStatus':
          JsonConverters.toJson(livingStatus, 'LivingStatus', context!)
    });

  getTypeName() => "RockstarAuditTenant";
  TypeContext? context = _ctx;
}

abstract class RockstarBase {
  String? firstName;
  String? lastName;
  int? age;
  DateTime? dateOfBirth;
  DateTime? dateDied;
  LivingStatus? livingStatus;

  RockstarBase(
      {this.firstName,
      this.lastName,
      this.age,
      this.dateOfBirth,
      this.dateDied,
      this.livingStatus});
  RockstarBase.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    firstName = json['firstName'];
    lastName = json['lastName'];
    age = json['age'];
    dateOfBirth =
        JsonConverters.fromJson(json['dateOfBirth'], 'DateTime', context!);
    dateDied = JsonConverters.fromJson(json['dateDied'], 'DateTime', context!);
    livingStatus =
        JsonConverters.fromJson(json['livingStatus'], 'LivingStatus', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'firstName': firstName,
        'lastName': lastName,
        'age': age,
        'dateOfBirth': JsonConverters.toJson(dateOfBirth, 'DateTime', context!),
        'dateDied': JsonConverters.toJson(dateDied, 'DateTime', context!),
        'livingStatus':
            JsonConverters.toJson(livingStatus, 'LivingStatus', context!)
      };

  getTypeName() => "RockstarBase";
  TypeContext? context = _ctx;
}

class RockstarAuto extends RockstarBase implements IConvertible {
  int? id;

  RockstarAuto({this.id});
  RockstarAuto.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    super.fromMap(json);
    id = json['id'];
    return this;
  }

  Map<String, dynamic> toJson() => super.toJson()..addAll({'id': id});

  getTypeName() => "RockstarAuto";
  TypeContext? context = _ctx;
}

class OnlyDefinedInGenericType implements IConvertible {
  int? id;
  String? name;

  OnlyDefinedInGenericType({this.id, this.name});
  OnlyDefinedInGenericType.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    return this;
  }

  Map<String, dynamic> toJson() => {'id': id, 'name': name};

  getTypeName() => "OnlyDefinedInGenericType";
  TypeContext? context = _ctx;
}

class OnlyDefinedInGenericTypeFrom implements IConvertible {
  int? id;
  String? name;

  OnlyDefinedInGenericTypeFrom({this.id, this.name});
  OnlyDefinedInGenericTypeFrom.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    return this;
  }

  Map<String, dynamic> toJson() => {'id': id, 'name': name};

  getTypeName() => "OnlyDefinedInGenericTypeFrom";
  TypeContext? context = _ctx;
}

class OnlyDefinedInGenericTypeInto implements IConvertible {
  int? id;
  String? name;

  OnlyDefinedInGenericTypeInto({this.id, this.name});
  OnlyDefinedInGenericTypeInto.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    return this;
  }

  Map<String, dynamic> toJson() => {'id': id, 'name': name};

  getTypeName() => "OnlyDefinedInGenericTypeInto";
  TypeContext? context = _ctx;
}

class RockstarAudit extends RockstarBase implements IConvertible {
  int? id;
  DateTime? createdDate;
  String? createdBy;
  String? createdInfo;
  DateTime? modifiedDate;
  String? modifiedBy;
  String? modifiedInfo;

  RockstarAudit(
      {this.id,
      this.createdDate,
      this.createdBy,
      this.createdInfo,
      this.modifiedDate,
      this.modifiedBy,
      this.modifiedInfo});
  RockstarAudit.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    super.fromMap(json);
    id = json['id'];
    createdDate =
        JsonConverters.fromJson(json['createdDate'], 'DateTime', context!);
    createdBy = json['createdBy'];
    createdInfo = json['createdInfo'];
    modifiedDate =
        JsonConverters.fromJson(json['modifiedDate'], 'DateTime', context!);
    modifiedBy = json['modifiedBy'];
    modifiedInfo = json['modifiedInfo'];
    return this;
  }

  Map<String, dynamic> toJson() => super.toJson()
    ..addAll({
      'id': id,
      'createdDate': JsonConverters.toJson(createdDate, 'DateTime', context!),
      'createdBy': createdBy,
      'createdInfo': createdInfo,
      'modifiedDate': JsonConverters.toJson(modifiedDate, 'DateTime', context!),
      'modifiedBy': modifiedBy,
      'modifiedInfo': modifiedInfo
    });

  getTypeName() => "RockstarAudit";
  TypeContext? context = _ctx;
}

abstract class CreateAuditBase<Table, TResponse> implements ICreateDb<Table> {
  CreateAuditBase();
  CreateAuditBase.fromJson(Map<String, dynamic> json) : super();
  fromMap(Map<String, dynamic> json) {
    return this;
  }

  Map<String, dynamic> toJson() => {};
  getTypeName() => "CreateAuditBase<$Table,$TResponse>";
  TypeContext? context = _ctx;
}

abstract class CreateAuditTenantBase<Table, TResponse>
    extends CreateAuditBase<Table, TResponse> {
  CreateAuditTenantBase();
  CreateAuditTenantBase.fromJson(Map<String, dynamic> json)
      : super.fromJson(json);
  fromMap(Map<String, dynamic> json) {
    super.fromMap(json);
    return this;
  }

  Map<String, dynamic> toJson() => super.toJson();
  getTypeName() => "CreateAuditTenantBase<$Table,$TResponse>";
  TypeContext? context = _ctx;
}

abstract class UpdateAuditBase<Table, TResponse> implements IUpdateDb<Table> {
  UpdateAuditBase();
  UpdateAuditBase.fromJson(Map<String, dynamic> json) : super();
  fromMap(Map<String, dynamic> json) {
    return this;
  }

  Map<String, dynamic> toJson() => {};
  getTypeName() => "UpdateAuditBase<$Table,$TResponse>";
  TypeContext? context = _ctx;
}

abstract class UpdateAuditTenantBase<Table, TResponse>
    extends UpdateAuditBase<Table, TResponse> {
  UpdateAuditTenantBase();
  UpdateAuditTenantBase.fromJson(Map<String, dynamic> json)
      : super.fromJson(json);
  fromMap(Map<String, dynamic> json) {
    super.fromMap(json);
    return this;
  }

  Map<String, dynamic> toJson() => super.toJson();
  getTypeName() => "UpdateAuditTenantBase<$Table,$TResponse>";
  TypeContext? context = _ctx;
}

abstract class PatchAuditBase<Table, TResponse> implements IPatchDb<Table> {
  PatchAuditBase();
  PatchAuditBase.fromJson(Map<String, dynamic> json) : super();
  fromMap(Map<String, dynamic> json) {
    return this;
  }

  Map<String, dynamic> toJson() => {};
  getTypeName() => "PatchAuditBase<$Table,$TResponse>";
  TypeContext? context = _ctx;
}

abstract class PatchAuditTenantBase<Table, TResponse>
    extends PatchAuditBase<Table, TResponse> {
  PatchAuditTenantBase();
  PatchAuditTenantBase.fromJson(Map<String, dynamic> json)
      : super.fromJson(json);
  fromMap(Map<String, dynamic> json) {
    super.fromMap(json);
    return this;
  }

  Map<String, dynamic> toJson() => super.toJson();
  getTypeName() => "PatchAuditTenantBase<$Table,$TResponse>";
  TypeContext? context = _ctx;
}

abstract class SoftDeleteAuditBase<Table, TResponse>
    implements IUpdateDb<Table> {
  SoftDeleteAuditBase();
  SoftDeleteAuditBase.fromJson(Map<String, dynamic> json) : super();
  fromMap(Map<String, dynamic> json) {
    return this;
  }

  Map<String, dynamic> toJson() => {};
  getTypeName() => "SoftDeleteAuditBase<$Table,$TResponse>";
  TypeContext? context = _ctx;
}

abstract class SoftDeleteAuditTenantBase<Table, TResponse>
    extends SoftDeleteAuditBase<Table, TResponse> {
  SoftDeleteAuditTenantBase();
  SoftDeleteAuditTenantBase.fromJson(Map<String, dynamic> json)
      : super.fromJson(json);
  fromMap(Map<String, dynamic> json) {
    super.fromMap(json);
    return this;
  }

  Map<String, dynamic> toJson() => super.toJson();
  getTypeName() => "SoftDeleteAuditTenantBase<$Table,$TResponse>";
  TypeContext? context = _ctx;
}

class RockstarVersion extends RockstarBase implements IConvertible {
  int? id;
  int? rowVersion;

  RockstarVersion({this.id, this.rowVersion});
  RockstarVersion.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    super.fromMap(json);
    id = json['id'];
    rowVersion = json['rowVersion'];
    return this;
  }

  Map<String, dynamic> toJson() =>
      super.toJson()..addAll({'id': id, 'rowVersion': rowVersion});

  getTypeName() => "RockstarVersion";
  TypeContext? context = _ctx;
}

// @Route("/messages/crud/{Id}", "PUT")
class MessageCrud
    implements IReturnVoid, ISaveDb<MessageCrud>, IConvertible, IPut {
  int? id;
  String? name;

  MessageCrud({this.id, this.name});
  MessageCrud.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    return this;
  }

  Map<String, dynamic> toJson() => {'id': id, 'name': name};

  createResponse() {}
  getTypeName() => "MessageCrud";
  TypeContext? context = _ctx;
}

/**
* Output object for generated artifacts
*/
class ArtifactOutput implements IConvertible {
  /**
    * URL to access the generated image
    */
  // @ApiMember(Description="URL to access the generated image")
  String? url;

  /**
    * Filename of the generated image
    */
  // @ApiMember(Description="Filename of the generated image")
  String? fileName;

  /**
    * Provider used for image generation
    */
  // @ApiMember(Description="Provider used for image generation")
  String? provider;

  ArtifactOutput({this.url, this.fileName, this.provider});
  ArtifactOutput.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    url = json['url'];
    fileName = json['fileName'];
    provider = json['provider'];
    return this;
  }

  Map<String, dynamic> toJson() =>
      {'url': url, 'fileName': fileName, 'provider': provider};

  getTypeName() => "ArtifactOutput";
  TypeContext? context = _ctx;
}

/**
* Output object for generated text
*/
class TextOutput implements IConvertible {
  /**
    * The generated text
    */
  // @ApiMember(Description="The generated text")
  String? text;

  TextOutput({this.text});
  TextOutput.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    text = json['text'];
    return this;
  }

  Map<String, dynamic> toJson() => {'text': text};

  getTypeName() => "TextOutput";
  TypeContext? context = _ctx;
}

class UploadInfo implements IConvertible {
  String? name;
  String? fileName;
  int? contentLength;
  String? contentType;

  UploadInfo({this.name, this.fileName, this.contentLength, this.contentType});
  UploadInfo.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    name = json['name'];
    fileName = json['fileName'];
    contentLength = json['contentLength'];
    contentType = json['contentType'];
    return this;
  }

  Map<String, dynamic> toJson() => {
        'name': name,
        'fileName': fileName,
        'contentLength': contentLength,
        'contentType': contentType
      };

  getTypeName() => "UploadInfo";
  TypeContext? context = _ctx;
}

class MetadataTestNestedChild implements IConvertible {
  String? name;

  MetadataTestNestedChild({this.name});
  MetadataTestNestedChild.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    name = json['name'];
    return this;
  }

  Map<String, dynamic> toJson() => {'name': name};

  getTypeName() => "MetadataTestNestedChild";
  TypeContext? context = _ctx;
}

class MetadataTestChild implements IConvertible {
  String? name;
  List<MetadataTestNestedChild>? results;

  MetadataTestChild({this.name, this.results});
  MetadataTestChild.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    name = json['name'];
    results = JsonConverters.fromJson(
        json['results'], 'List<MetadataTestNestedChild>', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'name': name,
        'results': JsonConverters.toJson(
            results, 'List<MetadataTestNestedChild>', context!)
      };

  getTypeName() => "MetadataTestChild";
  TypeContext? context = _ctx;
}

class MenuItemExampleItem implements IConvertible {
  // @DataMember(Order=1)
  // @apiMember()
  String? name1;

  MenuItemExampleItem({this.name1});
  MenuItemExampleItem.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    name1 = json['name1'];
    return this;
  }

  Map<String, dynamic> toJson() => {'name1': name1};

  getTypeName() => "MenuItemExampleItem";
  TypeContext? context = _ctx;
}

class MenuItemExample implements IConvertible {
  // @DataMember(Order=1)
  // @apiMember()
  String? name1;

  MenuItemExampleItem? menuItemExampleItem;

  MenuItemExample({this.name1, this.menuItemExampleItem});
  MenuItemExample.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    name1 = json['name1'];
    menuItemExampleItem = JsonConverters.fromJson(
        json['menuItemExampleItem'], 'MenuItemExampleItem', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'name1': name1,
        'menuItemExampleItem': JsonConverters.toJson(
            menuItemExampleItem, 'MenuItemExampleItem', context!)
      };

  getTypeName() => "MenuItemExample";
  TypeContext? context = _ctx;
}

// @DataContract
class MenuExample implements IConvertible {
  // @DataMember(Order=1)
  // @apiMember()
  MenuItemExample? menuItemExample1;

  MenuExample({this.menuItemExample1});
  MenuExample.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    menuItemExample1 = JsonConverters.fromJson(
        json['menuItemExample1'], 'MenuItemExample', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'menuItemExample1':
            JsonConverters.toJson(menuItemExample1, 'MenuItemExample', context!)
      };

  getTypeName() => "MenuExample";
  TypeContext? context = _ctx;
}

class ListResult implements IConvertible {
  String? result;

  ListResult({this.result});
  ListResult.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    result = json['result'];
    return this;
  }

  Map<String, dynamic> toJson() => {'result': result};

  getTypeName() => "ListResult";
  TypeContext? context = _ctx;
}

class ArrayResult implements IConvertible {
  String? result;

  ArrayResult({this.result});
  ArrayResult.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    result = json['result'];
    return this;
  }

  Map<String, dynamic> toJson() => {'result': result};

  getTypeName() => "ArrayResult";
  TypeContext? context = _ctx;
}

abstract class HelloResponseBase {
  int? refId;

  HelloResponseBase({this.refId});
  HelloResponseBase.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    refId = json['refId'];
    return this;
  }

  Map<String, dynamic> toJson() => {'refId': refId};

  getTypeName() => "HelloResponseBase";
  TypeContext? context = _ctx;
}

abstract class HelloWithReturnResponse {
  String? result;

  HelloWithReturnResponse({this.result});
  HelloWithReturnResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    result = json['result'];
    return this;
  }

  Map<String, dynamic> toJson() => {'result': result};

  getTypeName() => "HelloWithReturnResponse";
  TypeContext? context = _ctx;
}

class HelloType implements IConvertible {
  String? result;

  HelloType({this.result});
  HelloType.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    result = json['result'];
    return this;
  }

  Map<String, dynamic> toJson() => {'result': result};

  getTypeName() => "HelloType";
  TypeContext? context = _ctx;
}

class InnerType implements IConvertible {
  int? id;
  String? name;

  InnerType({this.id, this.name});
  InnerType.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    return this;
  }

  Map<String, dynamic> toJson() => {'id': id, 'name': name};

  getTypeName() => "InnerType";
  TypeContext? context = _ctx;
}

enum InnerEnum {
  Foo,
  Bar,
  Baz,
}

class ReturnedDto implements IConvertible {
  int? id;

  ReturnedDto({this.id});
  ReturnedDto.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    id = json['id'];
    return this;
  }

  Map<String, dynamic> toJson() => {'id': id};

  getTypeName() => "ReturnedDto";
  TypeContext? context = _ctx;
}

class CustomUserSession extends AuthUserSession implements IConvertible {
  // @DataMember
  String? customName;

  // @DataMember
  String? customInfo;

  CustomUserSession({this.customName, this.customInfo});
  CustomUserSession.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    super.fromMap(json);
    customName = json['customName'];
    customInfo = json['customInfo'];
    return this;
  }

  Map<String, dynamic> toJson() => super.toJson()
    ..addAll({'customName': customName, 'customInfo': customInfo});

  getTypeName() => "CustomUserSession";
  TypeContext? context = _ctx;
}

class UnAuthInfo implements IConvertible {
  String? customInfo;

  UnAuthInfo({this.customInfo});
  UnAuthInfo.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    customInfo = json['customInfo'];
    return this;
  }

  Map<String, dynamic> toJson() => {'customInfo': customInfo};

  getTypeName() => "UnAuthInfo";
  TypeContext? context = _ctx;
}

class TypesGroup implements IConvertible {
  TypesGroup();
  TypesGroup.fromJson(Map<String, dynamic> json) : super();
  fromMap(Map<String, dynamic> json) {
    return this;
  }

  Map<String, dynamic> toJson() => {};
  getTypeName() => "TypesGroup";
  TypeContext? context = _ctx;
}

class ChatMessage implements IConvertible {
  int? id;
  String? channel;
  String? fromUserId;
  String? fromName;
  String? displayName;
  String? message;
  String? userAuthId;
  bool? private;

  ChatMessage(
      {this.id,
      this.channel,
      this.fromUserId,
      this.fromName,
      this.displayName,
      this.message,
      this.userAuthId,
      this.private});
  ChatMessage.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    id = json['id'];
    channel = json['channel'];
    fromUserId = json['fromUserId'];
    fromName = json['fromName'];
    displayName = json['displayName'];
    message = json['message'];
    userAuthId = json['userAuthId'];
    private = json['private'];
    return this;
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'channel': channel,
        'fromUserId': fromUserId,
        'fromName': fromName,
        'displayName': displayName,
        'message': message,
        'userAuthId': userAuthId,
        'private': private
      };

  getTypeName() => "ChatMessage";
  TypeContext? context = _ctx;
}

class GetChatHistoryResponse implements IConvertible {
  List<ChatMessage>? results;
  ResponseStatus? responseStatus;

  GetChatHistoryResponse({this.results, this.responseStatus});
  GetChatHistoryResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    results =
        JsonConverters.fromJson(json['results'], 'List<ChatMessage>', context!);
    responseStatus = JsonConverters.fromJson(
        json['responseStatus'], 'ResponseStatus', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'results':
            JsonConverters.toJson(results, 'List<ChatMessage>', context!),
        'responseStatus':
            JsonConverters.toJson(responseStatus, 'ResponseStatus', context!)
      };

  getTypeName() => "GetChatHistoryResponse";
  TypeContext? context = _ctx;
}

class GetUserDetailsResponse implements IConvertible {
  String? provider;
  String? userId;
  String? userName;
  String? fullName;
  String? displayName;
  String? firstName;
  String? lastName;
  String? company;
  String? email;
  String? phoneNumber;
  DateTime? birthDate;
  String? birthDateRaw;
  String? address;
  String? address2;
  String? city;
  String? state;
  String? country;
  String? culture;
  String? gender;
  String? language;
  String? mailAddress;
  String? nickname;
  String? postalCode;
  String? timeZone;

  GetUserDetailsResponse(
      {this.provider,
      this.userId,
      this.userName,
      this.fullName,
      this.displayName,
      this.firstName,
      this.lastName,
      this.company,
      this.email,
      this.phoneNumber,
      this.birthDate,
      this.birthDateRaw,
      this.address,
      this.address2,
      this.city,
      this.state,
      this.country,
      this.culture,
      this.gender,
      this.language,
      this.mailAddress,
      this.nickname,
      this.postalCode,
      this.timeZone});
  GetUserDetailsResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    provider = json['provider'];
    userId = json['userId'];
    userName = json['userName'];
    fullName = json['fullName'];
    displayName = json['displayName'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    company = json['company'];
    email = json['email'];
    phoneNumber = json['phoneNumber'];
    birthDate =
        JsonConverters.fromJson(json['birthDate'], 'DateTime', context!);
    birthDateRaw = json['birthDateRaw'];
    address = json['address'];
    address2 = json['address2'];
    city = json['city'];
    state = json['state'];
    country = json['country'];
    culture = json['culture'];
    gender = json['gender'];
    language = json['language'];
    mailAddress = json['mailAddress'];
    nickname = json['nickname'];
    postalCode = json['postalCode'];
    timeZone = json['timeZone'];
    return this;
  }

  Map<String, dynamic> toJson() => {
        'provider': provider,
        'userId': userId,
        'userName': userName,
        'fullName': fullName,
        'displayName': displayName,
        'firstName': firstName,
        'lastName': lastName,
        'company': company,
        'email': email,
        'phoneNumber': phoneNumber,
        'birthDate': JsonConverters.toJson(birthDate, 'DateTime', context!),
        'birthDateRaw': birthDateRaw,
        'address': address,
        'address2': address2,
        'city': city,
        'state': state,
        'country': country,
        'culture': culture,
        'gender': gender,
        'language': language,
        'mailAddress': mailAddress,
        'nickname': nickname,
        'postalCode': postalCode,
        'timeZone': timeZone
      };

  getTypeName() => "GetUserDetailsResponse";
  TypeContext? context = _ctx;
}

class CustomHttpErrorResponse implements IConvertible {
  String? custom;
  ResponseStatus? responseStatus;

  CustomHttpErrorResponse({this.custom, this.responseStatus});
  CustomHttpErrorResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    custom = json['custom'];
    responseStatus = JsonConverters.fromJson(
        json['responseStatus'], 'ResponseStatus', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'custom': custom,
        'responseStatus':
            JsonConverters.toJson(responseStatus, 'ResponseStatus', context!)
      };

  getTypeName() => "CustomHttpErrorResponse";
  TypeContext? context = _ctx;
}

class QueryResponseAlt<T> implements IConvertible {
  int? offset;
  int? total;
  List<Item>? results;
  Map<String, String?>? meta;
  ResponseStatus? responseStatus;

  QueryResponseAlt(
      {this.offset, this.total, this.results, this.meta, this.responseStatus});
  QueryResponseAlt.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    offset = json['offset'];
    total = json['total'];
    results = JsonConverters.fromJson(json['results'], 'List<Item>', context!);
    meta = JsonConverters.toStringMap(json['meta']);
    responseStatus = JsonConverters.fromJson(
        json['responseStatus'], 'ResponseStatus', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'offset': offset,
        'total': total,
        'results': JsonConverters.toJson(results, 'List<Item>', context!),
        'meta': meta,
        'responseStatus':
            JsonConverters.toJson(responseStatus, 'ResponseStatus', context!)
      };

  getTypeName() => "QueryResponseAlt<$T>";
  TypeContext? context = _ctx;
}

class Items implements IConvertible {
  List<Item>? results;

  Items({this.results});
  Items.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    results = JsonConverters.fromJson(json['results'], 'List<Item>', context!);
    return this;
  }

  Map<String, dynamic> toJson() =>
      {'results': JsonConverters.toJson(results, 'List<Item>', context!)};

  getTypeName() => "Items";
  TypeContext? context = _ctx;
}

class ReturnCustom400Response implements IConvertible {
  ResponseStatus? responseStatus;

  ReturnCustom400Response({this.responseStatus});
  ReturnCustom400Response.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    responseStatus = JsonConverters.fromJson(
        json['responseStatus'], 'ResponseStatus', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'responseStatus':
            JsonConverters.toJson(responseStatus, 'ResponseStatus', context!)
      };

  getTypeName() => "ReturnCustom400Response";
  TypeContext? context = _ctx;
}

class ThrowTypeResponse implements IConvertible {
  ResponseStatus? responseStatus;

  ThrowTypeResponse({this.responseStatus});
  ThrowTypeResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    responseStatus = JsonConverters.fromJson(
        json['responseStatus'], 'ResponseStatus', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'responseStatus':
            JsonConverters.toJson(responseStatus, 'ResponseStatus', context!)
      };

  getTypeName() => "ThrowTypeResponse";
  TypeContext? context = _ctx;
}

class ThrowValidationResponse implements IConvertible {
  int? age;
  String? Required;
  String? email;
  ResponseStatus? responseStatus;

  ThrowValidationResponse(
      {this.age, this.Required, this.email, this.responseStatus});
  ThrowValidationResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    age = json['age'];
    Required = json['required'];
    email = json['email'];
    responseStatus = JsonConverters.fromJson(
        json['responseStatus'], 'ResponseStatus', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'age': age,
        'required': Required,
        'email': email,
        'responseStatus':
            JsonConverters.toJson(responseStatus, 'ResponseStatus', context!)
      };

  getTypeName() => "ThrowValidationResponse";
  TypeContext? context = _ctx;
}

class ThrowBusinessErrorResponse implements IConvertible {
  ResponseStatus? responseStatus;

  ThrowBusinessErrorResponse({this.responseStatus});
  ThrowBusinessErrorResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    responseStatus = JsonConverters.fromJson(
        json['responseStatus'], 'ResponseStatus', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'responseStatus':
            JsonConverters.toJson(responseStatus, 'ResponseStatus', context!)
      };

  getTypeName() => "ThrowBusinessErrorResponse";
  TypeContext? context = _ctx;
}

/**
* Response object for generation requests
*/
class GenerationResponse implements IConvertible {
  /**
    * List of generated outputs
    */
  // @ApiMember(Description="List of generated outputs")
  List<ArtifactOutput>? outputs;

  /**
    * List of generated text outputs
    */
  // @ApiMember(Description="List of generated text outputs")
  List<TextOutput>? textOutputs;

  /**
    * Detailed response status information
    */
  // @ApiMember(Description="Detailed response status information")
  ResponseStatus? responseStatus;

  GenerationResponse({this.outputs, this.textOutputs, this.responseStatus});
  GenerationResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    outputs = JsonConverters.fromJson(
        json['outputs'], 'List<ArtifactOutput>', context!);
    textOutputs = JsonConverters.fromJson(
        json['textOutputs'], 'List<TextOutput>', context!);
    responseStatus = JsonConverters.fromJson(
        json['responseStatus'], 'ResponseStatus', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'outputs':
            JsonConverters.toJson(outputs, 'List<ArtifactOutput>', context!),
        'textOutputs':
            JsonConverters.toJson(textOutputs, 'List<TextOutput>', context!),
        'responseStatus':
            JsonConverters.toJson(responseStatus, 'ResponseStatus', context!)
      };

  getTypeName() => "GenerationResponse";
  TypeContext? context = _ctx;
}

class TestFileUploadsResponse implements IConvertible {
  int? id;
  String? refId;
  List<UploadInfo>? files;
  ResponseStatus? responseStatus;

  TestFileUploadsResponse(
      {this.id, this.refId, this.files, this.responseStatus});
  TestFileUploadsResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    id = json['id'];
    refId = json['refId'];
    files =
        JsonConverters.fromJson(json['files'], 'List<UploadInfo>', context!);
    responseStatus = JsonConverters.fromJson(
        json['responseStatus'], 'ResponseStatus', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'refId': refId,
        'files': JsonConverters.toJson(files, 'List<UploadInfo>', context!),
        'responseStatus':
            JsonConverters.toJson(responseStatus, 'ResponseStatus', context!)
      };

  getTypeName() => "TestFileUploadsResponse";
  TypeContext? context = _ctx;
}

class Account implements IConvertible {
  String? name;

  Account({this.name});
  Account.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    name = json['name'];
    return this;
  }

  Map<String, dynamic> toJson() => {'name': name};

  getTypeName() => "Account";
  TypeContext? context = _ctx;
}

class Project implements IConvertible {
  String? account;
  String? name;

  Project({this.account, this.name});
  Project.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    account = json['account'];
    name = json['name'];
    return this;
  }

  Map<String, dynamic> toJson() => {'account': account, 'name': name};

  getTypeName() => "Project";
  TypeContext? context = _ctx;
}

class SecuredResponse implements IConvertible {
  String? result;
  ResponseStatus? responseStatus;

  SecuredResponse({this.result, this.responseStatus});
  SecuredResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    result = json['result'];
    responseStatus = JsonConverters.fromJson(
        json['responseStatus'], 'ResponseStatus', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'result': result,
        'responseStatus':
            JsonConverters.toJson(responseStatus, 'ResponseStatus', context!)
      };

  getTypeName() => "SecuredResponse";
  TypeContext? context = _ctx;
}

class CreateJwtResponse implements IConvertible {
  String? token;
  ResponseStatus? responseStatus;

  CreateJwtResponse({this.token, this.responseStatus});
  CreateJwtResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    token = json['token'];
    responseStatus = JsonConverters.fromJson(
        json['responseStatus'], 'ResponseStatus', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'token': token,
        'responseStatus':
            JsonConverters.toJson(responseStatus, 'ResponseStatus', context!)
      };

  getTypeName() => "CreateJwtResponse";
  TypeContext? context = _ctx;
}

class CreateRefreshJwtResponse implements IConvertible {
  String? token;
  ResponseStatus? responseStatus;

  CreateRefreshJwtResponse({this.token, this.responseStatus});
  CreateRefreshJwtResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    token = json['token'];
    responseStatus = JsonConverters.fromJson(
        json['responseStatus'], 'ResponseStatus', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'token': token,
        'responseStatus':
            JsonConverters.toJson(responseStatus, 'ResponseStatus', context!)
      };

  getTypeName() => "CreateRefreshJwtResponse";
  TypeContext? context = _ctx;
}

class MetadataTestResponse implements IConvertible {
  int? id;
  List<MetadataTestChild>? results;

  MetadataTestResponse({this.id, this.results});
  MetadataTestResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    id = json['id'];
    results = JsonConverters.fromJson(
        json['results'], 'List<MetadataTestChild>', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'results':
            JsonConverters.toJson(results, 'List<MetadataTestChild>', context!)
      };

  getTypeName() => "MetadataTestResponse";
  TypeContext? context = _ctx;
}

// @DataContract
class GetExampleResponse implements IConvertible {
  // @DataMember(Order=1)
  ResponseStatus? responseStatus;

  // @DataMember(Order=2)
  // @apiMember()
  MenuExample? menuExample1;

  GetExampleResponse({this.responseStatus, this.menuExample1});
  GetExampleResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    responseStatus = JsonConverters.fromJson(
        json['responseStatus'], 'ResponseStatus', context!);
    menuExample1 =
        JsonConverters.fromJson(json['menuExample1'], 'MenuExample', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'responseStatus':
            JsonConverters.toJson(responseStatus, 'ResponseStatus', context!),
        'menuExample1':
            JsonConverters.toJson(menuExample1, 'MenuExample', context!)
      };

  getTypeName() => "GetExampleResponse";
  TypeContext? context = _ctx;
}

// @Route("/messages/{Id}", "PUT")
class Message implements IReturn<Message>, IConvertible, IPut {
  int? id;
  String? name;

  Message({this.id, this.name});
  Message.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    return this;
  }

  Map<String, dynamic> toJson() => {'id': id, 'name': name};

  createResponse() => Message();
  getResponseTypeName() => "Message";
  getTypeName() => "Message";
  TypeContext? context = _ctx;
}

class GetRandomIdsResponse implements IConvertible {
  List<String>? results;

  GetRandomIdsResponse({this.results});
  GetRandomIdsResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    results =
        JsonConverters.fromJson(json['results'], 'List<String>', context!);
    return this;
  }

  Map<String, dynamic> toJson() =>
      {'results': JsonConverters.toJson(results, 'List<String>', context!)};

  getTypeName() => "GetRandomIdsResponse";
  TypeContext? context = _ctx;
}

class HelloResponse implements IConvertible {
  String? result;

  HelloResponse({this.result});
  HelloResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    result = json['result'];
    return this;
  }

  Map<String, dynamic> toJson() => {'result': result};

  getTypeName() => "HelloResponse";
  TypeContext? context = _ctx;
}

/**
* Description on HelloAllResponse type
*/
// @DataContract
class HelloAnnotatedResponse implements IConvertible {
  // @DataMember
  String? result;

  HelloAnnotatedResponse({this.result});
  HelloAnnotatedResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    result = json['result'];
    return this;
  }

  Map<String, dynamic> toJson() => {'result': result};

  getTypeName() => "HelloAnnotatedResponse";
  TypeContext? context = _ctx;
}

class AllTypes implements IReturn<AllTypes>, IConvertible, IPost {
  int? id;
  int? nullableId;
  int? byte;
  int? short;
  int? Int;
  int? long;
  int? uShort;
  int? uInt;
  int? uLong;
  double? float;
  double? Double;
  double? decimal;
  String? string;
  DateTime? dateTime;
  Duration? timeSpan;
  DateTime? dateTimeOffset;
  String? guid;
  String? char;
  KeyValuePair<String, String>? keyValuePair;
  DateTime? nullableDateTime;
  Duration? nullableTimeSpan;
  List<String>? stringList;
  List<String>? stringArray;
  Map<String, String?>? stringMap;
  Map<int, String?>? intStringMap;
  SubType? subType;

  AllTypes(
      {this.id,
      this.nullableId,
      this.byte,
      this.short,
      this.Int,
      this.long,
      this.uShort,
      this.uInt,
      this.uLong,
      this.float,
      this.Double,
      this.decimal,
      this.string,
      this.dateTime,
      this.timeSpan,
      this.dateTimeOffset,
      this.guid,
      this.char,
      this.keyValuePair,
      this.nullableDateTime,
      this.nullableTimeSpan,
      this.stringList,
      this.stringArray,
      this.stringMap,
      this.intStringMap,
      this.subType});
  AllTypes.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    id = json['id'];
    nullableId = json['nullableId'];
    byte = json['byte'];
    short = json['short'];
    Int = json['int'];
    long = json['long'];
    uShort = json['uShort'];
    uInt = json['uInt'];
    uLong = json['uLong'];
    float = JsonConverters.toDouble(json['float']);
    Double = JsonConverters.toDouble(json['double']);
    decimal = JsonConverters.toDouble(json['decimal']);
    string = json['string'];
    dateTime = JsonConverters.fromJson(json['dateTime'], 'DateTime', context!);
    timeSpan = JsonConverters.fromJson(json['timeSpan'], 'Duration', context!);
    dateTimeOffset =
        JsonConverters.fromJson(json['dateTimeOffset'], 'DateTime', context!);
    guid = json['guid'];
    char = json['char'];
    keyValuePair = JsonConverters.fromJson(
        json['keyValuePair'], 'KeyValuePair<String,String>', context!);
    nullableDateTime =
        JsonConverters.fromJson(json['nullableDateTime'], 'DateTime', context!);
    nullableTimeSpan =
        JsonConverters.fromJson(json['nullableTimeSpan'], 'Duration', context!);
    stringList =
        JsonConverters.fromJson(json['stringList'], 'List<String>', context!);
    stringArray =
        JsonConverters.fromJson(json['stringArray'], 'List<String>', context!);
    stringMap = JsonConverters.toStringMap(json['stringMap']);
    intStringMap = JsonConverters.fromJson(
        json['intStringMap'], 'Map<int,String?>', context!);
    subType = JsonConverters.fromJson(json['subType'], 'SubType', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'nullableId': nullableId,
        'byte': byte,
        'short': short,
        'int': Int,
        'long': long,
        'uShort': uShort,
        'uInt': uInt,
        'uLong': uLong,
        'float': float,
        'double': Double,
        'decimal': decimal,
        'string': string,
        'dateTime': JsonConverters.toJson(dateTime, 'DateTime', context!),
        'timeSpan': JsonConverters.toJson(timeSpan, 'Duration', context!),
        'dateTimeOffset':
            JsonConverters.toJson(dateTimeOffset, 'DateTime', context!),
        'guid': guid,
        'char': char,
        'keyValuePair': JsonConverters.toJson(
            keyValuePair, 'KeyValuePair<String,String>', context!),
        'nullableDateTime':
            JsonConverters.toJson(nullableDateTime, 'DateTime', context!),
        'nullableTimeSpan':
            JsonConverters.toJson(nullableTimeSpan, 'Duration', context!),
        'stringList':
            JsonConverters.toJson(stringList, 'List<String>', context!),
        'stringArray':
            JsonConverters.toJson(stringArray, 'List<String>', context!),
        'stringMap': stringMap,
        'intStringMap':
            JsonConverters.toJson(intStringMap, 'Map<int,String?>', context!),
        'subType': JsonConverters.toJson(subType, 'SubType', context!)
      };

  createResponse() => AllTypes();
  getResponseTypeName() => "AllTypes";
  getTypeName() => "AllTypes";
  TypeContext? context = _ctx;
}

class AllCollectionTypes
    implements IReturn<AllCollectionTypes>, IConvertible, IPost {
  List<int>? intArray;
  List<int>? intList;
  List<String>? stringArray;
  List<String>? stringList;
  List<double>? floatArray;
  List<double>? doubleList;
  Uint8List? byteArray;
  List<String>? charArray;
  List<double>? decimalList;
  List<Poco>? pocoArray;
  List<Poco>? pocoList;
  Map<String, List<Poco>?>? pocoLookup;
  Map<String, List<Map<String, Poco>>?>? pocoLookupMap;

  AllCollectionTypes(
      {this.intArray,
      this.intList,
      this.stringArray,
      this.stringList,
      this.floatArray,
      this.doubleList,
      this.byteArray,
      this.charArray,
      this.decimalList,
      this.pocoArray,
      this.pocoList,
      this.pocoLookup,
      this.pocoLookupMap});
  AllCollectionTypes.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    intArray = JsonConverters.fromJson(json['intArray'], 'List<int>', context!);
    intList = JsonConverters.fromJson(json['intList'], 'List<int>', context!);
    stringArray =
        JsonConverters.fromJson(json['stringArray'], 'List<String>', context!);
    stringList =
        JsonConverters.fromJson(json['stringList'], 'List<String>', context!);
    floatArray =
        JsonConverters.fromJson(json['floatArray'], 'List<double>', context!);
    doubleList =
        JsonConverters.fromJson(json['doubleList'], 'List<double>', context!);
    byteArray =
        JsonConverters.fromJson(json['byteArray'], 'Uint8List', context!);
    charArray =
        JsonConverters.fromJson(json['charArray'], 'List<String>', context!);
    decimalList =
        JsonConverters.fromJson(json['decimalList'], 'List<double>', context!);
    pocoArray =
        JsonConverters.fromJson(json['pocoArray'], 'List<Poco>', context!);
    pocoList =
        JsonConverters.fromJson(json['pocoList'], 'List<Poco>', context!);
    pocoLookup = JsonConverters.fromJson(
        json['pocoLookup'], 'Map<String,List<Poco>?>', context!);
    pocoLookupMap = JsonConverters.fromJson(
        json['pocoLookupMap'], 'Map<String,List<Map<String,Poco>>?>', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'intArray': JsonConverters.toJson(intArray, 'List<int>', context!),
        'intList': JsonConverters.toJson(intList, 'List<int>', context!),
        'stringArray':
            JsonConverters.toJson(stringArray, 'List<String>', context!),
        'stringList':
            JsonConverters.toJson(stringList, 'List<String>', context!),
        'floatArray':
            JsonConverters.toJson(floatArray, 'List<double>', context!),
        'doubleList':
            JsonConverters.toJson(doubleList, 'List<double>', context!),
        'byteArray': JsonConverters.toJson(byteArray, 'Uint8List', context!),
        'charArray': JsonConverters.toJson(charArray, 'List<String>', context!),
        'decimalList':
            JsonConverters.toJson(decimalList, 'List<double>', context!),
        'pocoArray': JsonConverters.toJson(pocoArray, 'List<Poco>', context!),
        'pocoList': JsonConverters.toJson(pocoList, 'List<Poco>', context!),
        'pocoLookup': JsonConverters.toJson(
            pocoLookup, 'Map<String,List<Poco>?>', context!),
        'pocoLookupMap': JsonConverters.toJson(
            pocoLookupMap, 'Map<String,List<Map<String,Poco>>?>', context!)
      };

  createResponse() => AllCollectionTypes();
  getResponseTypeName() => "AllCollectionTypes";
  getTypeName() => "AllCollectionTypes";
  TypeContext? context = _ctx;
}

class HelloAllTypesResponse implements IConvertible {
  String? result;
  AllTypes? allTypes;
  AllCollectionTypes? allCollectionTypes;

  HelloAllTypesResponse({this.result, this.allTypes, this.allCollectionTypes});
  HelloAllTypesResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    result = json['result'];
    allTypes = JsonConverters.fromJson(json['allTypes'], 'AllTypes', context!);
    allCollectionTypes = JsonConverters.fromJson(
        json['allCollectionTypes'], 'AllCollectionTypes', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'result': result,
        'allTypes': JsonConverters.toJson(allTypes, 'AllTypes', context!),
        'allCollectionTypes': JsonConverters.toJson(
            allCollectionTypes, 'AllCollectionTypes', context!)
      };

  getTypeName() => "HelloAllTypesResponse";
  TypeContext? context = _ctx;
}

class SubAllTypes extends AllTypesBase implements IConvertible {
  int? hierarchy;

  SubAllTypes({this.hierarchy});
  SubAllTypes.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    super.fromMap(json);
    hierarchy = json['hierarchy'];
    return this;
  }

  Map<String, dynamic> toJson() =>
      super.toJson()..addAll({'hierarchy': hierarchy});

  getTypeName() => "SubAllTypes";
  TypeContext? context = _ctx;
}

class HelloDateTime implements IReturn<HelloDateTime>, IConvertible, IPost {
  DateTime? dateTime;

  HelloDateTime({this.dateTime});
  HelloDateTime.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    dateTime = JsonConverters.fromJson(json['dateTime'], 'DateTime', context!);
    return this;
  }

  Map<String, dynamic> toJson() =>
      {'dateTime': JsonConverters.toJson(dateTime, 'DateTime', context!)};

  createResponse() => HelloDateTime();
  getResponseTypeName() => "HelloDateTime";
  getTypeName() => "HelloDateTime";
  TypeContext? context = _ctx;
}

// @DataContract
class HelloWithDataContractResponse implements IConvertible {
  // @DataMember(Name="result", Order=1, IsRequired=true, EmitDefaultValue=false)
  String? result;

  HelloWithDataContractResponse({this.result});
  HelloWithDataContractResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    result = json['result'];
    return this;
  }

  Map<String, dynamic> toJson() => {'result': result};

  getTypeName() => "HelloWithDataContractResponse";
  TypeContext? context = _ctx;
}

/**
* Description on HelloWithDescriptionResponse type
*/
class HelloWithDescriptionResponse implements IConvertible {
  String? result;

  HelloWithDescriptionResponse({this.result});
  HelloWithDescriptionResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    result = json['result'];
    return this;
  }

  Map<String, dynamic> toJson() => {'result': result};

  getTypeName() => "HelloWithDescriptionResponse";
  TypeContext? context = _ctx;
}

class HelloWithInheritanceResponse extends HelloResponseBase
    implements IConvertible {
  String? result;

  HelloWithInheritanceResponse({this.result});
  HelloWithInheritanceResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    super.fromMap(json);
    result = json['result'];
    return this;
  }

  Map<String, dynamic> toJson() => super.toJson()..addAll({'result': result});

  getTypeName() => "HelloWithInheritanceResponse";
  TypeContext? context = _ctx;
}

class HelloWithAlternateReturnResponse extends HelloWithReturnResponse
    implements IConvertible {
  String? altResult;

  HelloWithAlternateReturnResponse({this.altResult});
  HelloWithAlternateReturnResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    super.fromMap(json);
    altResult = json['altResult'];
    return this;
  }

  Map<String, dynamic> toJson() =>
      super.toJson()..addAll({'altResult': altResult});

  getTypeName() => "HelloWithAlternateReturnResponse";
  TypeContext? context = _ctx;
}

class HelloWithRouteResponse implements IConvertible {
  String? result;

  HelloWithRouteResponse({this.result});
  HelloWithRouteResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    result = json['result'];
    return this;
  }

  Map<String, dynamic> toJson() => {'result': result};

  getTypeName() => "HelloWithRouteResponse";
  TypeContext? context = _ctx;
}

class HelloWithTypeResponse implements IConvertible {
  HelloType? result;

  HelloWithTypeResponse({this.result});
  HelloWithTypeResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    result = JsonConverters.fromJson(json['result'], 'HelloType', context!);
    return this;
  }

  Map<String, dynamic> toJson() =>
      {'result': JsonConverters.toJson(result, 'HelloType', context!)};

  getTypeName() => "HelloWithTypeResponse";
  TypeContext? context = _ctx;
}

class HelloInnerTypesResponse implements IConvertible {
  InnerType? innerType;
  InnerEnum? innerEnum;

  HelloInnerTypesResponse({this.innerType, this.innerEnum});
  HelloInnerTypesResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    innerType =
        JsonConverters.fromJson(json['innerType'], 'InnerType', context!);
    innerEnum =
        JsonConverters.fromJson(json['innerEnum'], 'InnerEnum', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'innerType': JsonConverters.toJson(innerType, 'InnerType', context!),
        'innerEnum': JsonConverters.toJson(innerEnum, 'InnerEnum', context!)
      };

  getTypeName() => "HelloInnerTypesResponse";
  TypeContext? context = _ctx;
}

class HelloVerbResponse implements IConvertible {
  String? result;

  HelloVerbResponse({this.result});
  HelloVerbResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    result = json['result'];
    return this;
  }

  Map<String, dynamic> toJson() => {'result': result};

  getTypeName() => "HelloVerbResponse";
  TypeContext? context = _ctx;
}

class EnumResponse implements IConvertible {
  ScopeType? Operator;

  EnumResponse({this.Operator});
  EnumResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    Operator = JsonConverters.fromJson(json['operator'], 'ScopeType', context!);
    return this;
  }

  Map<String, dynamic> toJson() =>
      {'operator': JsonConverters.toJson(Operator, 'ScopeType', context!)};

  getTypeName() => "EnumResponse";
  TypeContext? context = _ctx;
}

// @Route("/hellotypes/{Name}")
class HelloTypes implements IReturn<HelloTypes>, IConvertible, IPost {
  String? string;
  bool? Bool;
  int? Int;

  HelloTypes({this.string, this.Bool, this.Int});
  HelloTypes.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    string = json['string'];
    Bool = json['bool'];
    Int = json['int'];
    return this;
  }

  Map<String, dynamic> toJson() => {'string': string, 'bool': Bool, 'int': Int};

  createResponse() => HelloTypes();
  getResponseTypeName() => "HelloTypes";
  getTypeName() => "HelloTypes";
  TypeContext? context = _ctx;
}

// @DataContract
class HelloZipResponse implements IConvertible {
  // @DataMember
  String? result;

  HelloZipResponse({this.result});
  HelloZipResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    result = json['result'];
    return this;
  }

  Map<String, dynamic> toJson() => {'result': result};

  getTypeName() => "HelloZipResponse";
  TypeContext? context = _ctx;
}

class PingResponse implements IConvertible {
  Map<String, ResponseStatus?>? responses;
  ResponseStatus? responseStatus;

  PingResponse({this.responses, this.responseStatus});
  PingResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    responses = JsonConverters.fromJson(
        json['responses'], 'Map<String,ResponseStatus?>', context!);
    responseStatus = JsonConverters.fromJson(
        json['responseStatus'], 'ResponseStatus', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'responses': JsonConverters.toJson(
            responses, 'Map<String,ResponseStatus?>', context!),
        'responseStatus':
            JsonConverters.toJson(responseStatus, 'ResponseStatus', context!)
      };

  getTypeName() => "PingResponse";
  TypeContext? context = _ctx;
}

class RequiresRoleResponse implements IConvertible {
  String? result;
  ResponseStatus? responseStatus;

  RequiresRoleResponse({this.result, this.responseStatus});
  RequiresRoleResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    result = json['result'];
    responseStatus = JsonConverters.fromJson(
        json['responseStatus'], 'ResponseStatus', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'result': result,
        'responseStatus':
            JsonConverters.toJson(responseStatus, 'ResponseStatus', context!)
      };

  getTypeName() => "RequiresRoleResponse";
  TypeContext? context = _ctx;
}

class SendVerbResponse implements IConvertible {
  int? id;
  String? pathInfo;
  String? requestMethod;

  SendVerbResponse({this.id, this.pathInfo, this.requestMethod});
  SendVerbResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    id = json['id'];
    pathInfo = json['pathInfo'];
    requestMethod = json['requestMethod'];
    return this;
  }

  Map<String, dynamic> toJson() =>
      {'id': id, 'pathInfo': pathInfo, 'requestMethod': requestMethod};

  getTypeName() => "SendVerbResponse";
  TypeContext? context = _ctx;
}

class GetSessionResponse implements IConvertible {
  CustomUserSession? result;
  UnAuthInfo? unAuthInfo;
  ResponseStatus? responseStatus;

  GetSessionResponse({this.result, this.unAuthInfo, this.responseStatus});
  GetSessionResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    result =
        JsonConverters.fromJson(json['result'], 'CustomUserSession', context!);
    unAuthInfo =
        JsonConverters.fromJson(json['unAuthInfo'], 'UnAuthInfo', context!);
    responseStatus = JsonConverters.fromJson(
        json['responseStatus'], 'ResponseStatus', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'result': JsonConverters.toJson(result, 'CustomUserSession', context!),
        'unAuthInfo': JsonConverters.toJson(unAuthInfo, 'UnAuthInfo', context!),
        'responseStatus':
            JsonConverters.toJson(responseStatus, 'ResponseStatus', context!)
      };

  getTypeName() => "GetSessionResponse";
  TypeContext? context = _ctx;
}

// @DataContract(Namespace="http://schemas.servicestack.net/types")
class GetStuffResponse implements IConvertible {
  // @DataMember
  DateTime? summaryDate;

  // @DataMember
  DateTime? summaryEndDate;

  // @DataMember
  String? symbol;

  // @DataMember
  String? email;

  // @DataMember
  bool? isEnabled;

  GetStuffResponse(
      {this.summaryDate,
      this.summaryEndDate,
      this.symbol,
      this.email,
      this.isEnabled});
  GetStuffResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    summaryDate =
        JsonConverters.fromJson(json['summaryDate'], 'DateTime', context!);
    summaryEndDate =
        JsonConverters.fromJson(json['summaryEndDate'], 'DateTime', context!);
    symbol = json['symbol'];
    email = json['email'];
    isEnabled = json['isEnabled'];
    return this;
  }

  Map<String, dynamic> toJson() => {
        'summaryDate': JsonConverters.toJson(summaryDate, 'DateTime', context!),
        'summaryEndDate':
            JsonConverters.toJson(summaryEndDate, 'DateTime', context!),
        'symbol': symbol,
        'email': email,
        'isEnabled': isEnabled
      };

  getTypeName() => "GetStuffResponse";
  TypeContext? context = _ctx;
}

class StoreLogsResponse implements IConvertible {
  List<Logger>? existingLogs;
  ResponseStatus? responseStatus;

  StoreLogsResponse({this.existingLogs, this.responseStatus});
  StoreLogsResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    existingLogs =
        JsonConverters.fromJson(json['existingLogs'], 'List<Logger>', context!);
    responseStatus = JsonConverters.fromJson(
        json['responseStatus'], 'ResponseStatus', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'existingLogs':
            JsonConverters.toJson(existingLogs, 'List<Logger>', context!),
        'responseStatus':
            JsonConverters.toJson(responseStatus, 'ResponseStatus', context!)
      };

  getTypeName() => "StoreLogsResponse";
  TypeContext? context = _ctx;
}

class TestAuthResponse implements IConvertible {
  String? userId;
  String? sessionId;
  String? userName;
  String? displayName;
  ResponseStatus? responseStatus;

  TestAuthResponse(
      {this.userId,
      this.sessionId,
      this.userName,
      this.displayName,
      this.responseStatus});
  TestAuthResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    userId = json['userId'];
    sessionId = json['sessionId'];
    userName = json['userName'];
    displayName = json['displayName'];
    responseStatus = JsonConverters.fromJson(
        json['responseStatus'], 'ResponseStatus', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'userId': userId,
        'sessionId': sessionId,
        'userName': userName,
        'displayName': displayName,
        'responseStatus':
            JsonConverters.toJson(responseStatus, 'ResponseStatus', context!)
      };

  getTypeName() => "TestAuthResponse";
  TypeContext? context = _ctx;
}

class RequiresAdmin implements IReturn<RequiresAdmin>, IConvertible, IPost {
  int? id;

  RequiresAdmin({this.id});
  RequiresAdmin.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    id = json['id'];
    return this;
  }

  Map<String, dynamic> toJson() => {'id': id};

  createResponse() => RequiresAdmin();
  getResponseTypeName() => "RequiresAdmin";
  getTypeName() => "RequiresAdmin";
  TypeContext? context = _ctx;
}

// @Route("/custom")
// @Route("/custom/{Data}")
class CustomRoute implements IReturn<CustomRoute>, IConvertible, IPost {
  String? data;

  CustomRoute({this.data});
  CustomRoute.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    data = json['data'];
    return this;
  }

  Map<String, dynamic> toJson() => {'data': data};

  createResponse() => CustomRoute();
  getResponseTypeName() => "CustomRoute";
  getTypeName() => "CustomRoute";
  TypeContext? context = _ctx;
}

// @Route("/wait/{ForMs}")
class Wait implements IReturn<Wait>, IConvertible, IPost {
  int? forMs;

  Wait({this.forMs});
  Wait.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    forMs = json['forMs'];
    return this;
  }

  Map<String, dynamic> toJson() => {'forMs': forMs};

  createResponse() => Wait();
  getResponseTypeName() => "Wait";
  getTypeName() => "Wait";
  TypeContext? context = _ctx;
}

// @Route("/echo/types")
class EchoTypes implements IReturn<EchoTypes>, IConvertible, IPost {
  int? byte;
  int? short;
  int? Int;
  int? long;
  int? uShort;
  int? uInt;
  int? uLong;
  double? float;
  double? Double;
  double? decimal;
  String? string;
  DateTime? dateTime;
  Duration? timeSpan;
  DateTime? dateTimeOffset;
  String? guid;
  String? char;

  EchoTypes(
      {this.byte,
      this.short,
      this.Int,
      this.long,
      this.uShort,
      this.uInt,
      this.uLong,
      this.float,
      this.Double,
      this.decimal,
      this.string,
      this.dateTime,
      this.timeSpan,
      this.dateTimeOffset,
      this.guid,
      this.char});
  EchoTypes.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    byte = json['byte'];
    short = json['short'];
    Int = json['int'];
    long = json['long'];
    uShort = json['uShort'];
    uInt = json['uInt'];
    uLong = json['uLong'];
    float = JsonConverters.toDouble(json['float']);
    Double = JsonConverters.toDouble(json['double']);
    decimal = JsonConverters.toDouble(json['decimal']);
    string = json['string'];
    dateTime = JsonConverters.fromJson(json['dateTime'], 'DateTime', context!);
    timeSpan = JsonConverters.fromJson(json['timeSpan'], 'Duration', context!);
    dateTimeOffset =
        JsonConverters.fromJson(json['dateTimeOffset'], 'DateTime', context!);
    guid = json['guid'];
    char = json['char'];
    return this;
  }

  Map<String, dynamic> toJson() => {
        'byte': byte,
        'short': short,
        'int': Int,
        'long': long,
        'uShort': uShort,
        'uInt': uInt,
        'uLong': uLong,
        'float': float,
        'double': Double,
        'decimal': decimal,
        'string': string,
        'dateTime': JsonConverters.toJson(dateTime, 'DateTime', context!),
        'timeSpan': JsonConverters.toJson(timeSpan, 'Duration', context!),
        'dateTimeOffset':
            JsonConverters.toJson(dateTimeOffset, 'DateTime', context!),
        'guid': guid,
        'char': char
      };

  createResponse() => EchoTypes();
  getResponseTypeName() => "EchoTypes";
  getTypeName() => "EchoTypes";
  TypeContext? context = _ctx;
}

// @Route("/echo/collections")
class EchoCollections implements IReturn<EchoCollections>, IConvertible, IPost {
  List<String>? stringList;
  List<String>? stringArray;
  Map<String, String?>? stringMap;
  Map<int, String?>? intStringMap;

  EchoCollections(
      {this.stringList, this.stringArray, this.stringMap, this.intStringMap});
  EchoCollections.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    stringList =
        JsonConverters.fromJson(json['stringList'], 'List<String>', context!);
    stringArray =
        JsonConverters.fromJson(json['stringArray'], 'List<String>', context!);
    stringMap = JsonConverters.toStringMap(json['stringMap']);
    intStringMap = JsonConverters.fromJson(
        json['intStringMap'], 'Map<int,String?>', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'stringList':
            JsonConverters.toJson(stringList, 'List<String>', context!),
        'stringArray':
            JsonConverters.toJson(stringArray, 'List<String>', context!),
        'stringMap': stringMap,
        'intStringMap':
            JsonConverters.toJson(intStringMap, 'Map<int,String?>', context!)
      };

  createResponse() => EchoCollections();
  getResponseTypeName() => "EchoCollections";
  getTypeName() => "EchoCollections";
  TypeContext? context = _ctx;
}

// @Route("/echo/complex")
class EchoComplexTypes
    implements IReturn<EchoComplexTypes>, IConvertible, IPost {
  SubType? subType;
  List<SubType>? subTypes;
  Map<String, SubType?>? subTypeMap;
  Map<String, String?>? stringMap;
  Map<int, String?>? intStringMap;

  EchoComplexTypes(
      {this.subType,
      this.subTypes,
      this.subTypeMap,
      this.stringMap,
      this.intStringMap});
  EchoComplexTypes.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    subType = JsonConverters.fromJson(json['subType'], 'SubType', context!);
    subTypes =
        JsonConverters.fromJson(json['subTypes'], 'List<SubType>', context!);
    subTypeMap = JsonConverters.fromJson(
        json['subTypeMap'], 'Map<String,SubType?>', context!);
    stringMap = JsonConverters.toStringMap(json['stringMap']);
    intStringMap = JsonConverters.fromJson(
        json['intStringMap'], 'Map<int,String?>', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'subType': JsonConverters.toJson(subType, 'SubType', context!),
        'subTypes': JsonConverters.toJson(subTypes, 'List<SubType>', context!),
        'subTypeMap':
            JsonConverters.toJson(subTypeMap, 'Map<String,SubType?>', context!),
        'stringMap': stringMap,
        'intStringMap':
            JsonConverters.toJson(intStringMap, 'Map<int,String?>', context!)
      };

  createResponse() => EchoComplexTypes();
  getResponseTypeName() => "EchoComplexTypes";
  getTypeName() => "EchoComplexTypes";
  TypeContext? context = _ctx;
}

// @Route("/rockstars", "POST")
class StoreRockstars extends ListBase<Rockstar>
    implements IReturn<StoreRockstars>, IConvertible, IPost {
  final List<Rockstar> l = [];
  set length(int newLength) {
    l.length = newLength;
  }

  int get length => l.length;
  Rockstar operator [](int index) => l[index];
  void operator []=(int index, Rockstar value) {
    l[index] = value;
  }

  StoreRockstars();
  StoreRockstars.fromJson(Map<String, dynamic> json) : super();
  fromMap(Map<String, dynamic> json) {
    return this;
  }

  Map<String, dynamic> toJson() => {};
  createResponse() => StoreRockstars();
  getResponseTypeName() => "StoreRockstars";
  getTypeName() => "StoreRockstars";
  TypeContext? context = _ctx;
}

class RockstarWithIdResponse implements IConvertible {
  int? id;
  ResponseStatus? responseStatus;

  RockstarWithIdResponse({this.id, this.responseStatus});
  RockstarWithIdResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    id = json['id'];
    responseStatus = JsonConverters.fromJson(
        json['responseStatus'], 'ResponseStatus', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'responseStatus':
            JsonConverters.toJson(responseStatus, 'ResponseStatus', context!)
      };

  getTypeName() => "RockstarWithIdResponse";
  TypeContext? context = _ctx;
}

class RockstarWithIdAndResultResponse implements IConvertible {
  int? id;
  RockstarAuto? result;
  ResponseStatus? responseStatus;

  RockstarWithIdAndResultResponse({this.id, this.result, this.responseStatus});
  RockstarWithIdAndResultResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    id = json['id'];
    result = JsonConverters.fromJson(json['result'], 'RockstarAuto', context!);
    responseStatus = JsonConverters.fromJson(
        json['responseStatus'], 'ResponseStatus', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'result': JsonConverters.toJson(result, 'RockstarAuto', context!),
        'responseStatus':
            JsonConverters.toJson(responseStatus, 'ResponseStatus', context!)
      };

  getTypeName() => "RockstarWithIdAndResultResponse";
  TypeContext? context = _ctx;
}

class RockstarWithIdAndCountResponse implements IConvertible {
  int? id;
  int? count;
  ResponseStatus? responseStatus;

  RockstarWithIdAndCountResponse({this.id, this.count, this.responseStatus});
  RockstarWithIdAndCountResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    id = json['id'];
    count = json['count'];
    responseStatus = JsonConverters.fromJson(
        json['responseStatus'], 'ResponseStatus', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'count': count,
        'responseStatus':
            JsonConverters.toJson(responseStatus, 'ResponseStatus', context!)
      };

  getTypeName() => "RockstarWithIdAndCountResponse";
  TypeContext? context = _ctx;
}

class RockstarWithIdAndRowVersionResponse implements IConvertible {
  int? id;
  int? rowVersion;
  ResponseStatus? responseStatus;

  RockstarWithIdAndRowVersionResponse(
      {this.id, this.rowVersion, this.responseStatus});
  RockstarWithIdAndRowVersionResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    id = json['id'];
    rowVersion = json['rowVersion'];
    responseStatus = JsonConverters.fromJson(
        json['responseStatus'], 'ResponseStatus', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'rowVersion': rowVersion,
        'responseStatus':
            JsonConverters.toJson(responseStatus, 'ResponseStatus', context!)
      };

  getTypeName() => "RockstarWithIdAndRowVersionResponse";
  TypeContext? context = _ctx;
}

class QueryItems extends QueryDb2<Item, Poco>
    implements IReturn<QueryResponse<Poco>>, IConvertible, IGet {
  QueryItems();
  QueryItems.fromJson(Map<String, dynamic> json) : super.fromJson(json);
  fromMap(Map<String, dynamic> json) {
    super.fromMap(json);
    return this;
  }

  Map<String, dynamic> toJson() => super.toJson();
  createResponse() => QueryResponse<Poco>();
  getResponseTypeName() => "QueryResponse<Poco>";
  getTypeName() => "QueryItems";
  TypeContext? context = _ctx;
}

// @Route("/channels/{Channel}/raw")
class PostRawToChannel implements IReturnVoid, IConvertible, IPost {
  String? from;
  String? toUserId;
  String? channel;
  String? message;
  String? selector;

  PostRawToChannel(
      {this.from, this.toUserId, this.channel, this.message, this.selector});
  PostRawToChannel.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    from = json['from'];
    toUserId = json['toUserId'];
    channel = json['channel'];
    message = json['message'];
    selector = json['selector'];
    return this;
  }

  Map<String, dynamic> toJson() => {
        'from': from,
        'toUserId': toUserId,
        'channel': channel,
        'message': message,
        'selector': selector
      };

  createResponse() {}
  getTypeName() => "PostRawToChannel";
  TypeContext? context = _ctx;
}

// @Route("/channels/{Channel}/chat")
class PostChatToChannel implements IReturn<ChatMessage>, IConvertible, IPost {
  String? from;
  String? toUserId;
  String? channel;
  String? message;
  String? selector;

  PostChatToChannel(
      {this.from, this.toUserId, this.channel, this.message, this.selector});
  PostChatToChannel.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    from = json['from'];
    toUserId = json['toUserId'];
    channel = json['channel'];
    message = json['message'];
    selector = json['selector'];
    return this;
  }

  Map<String, dynamic> toJson() => {
        'from': from,
        'toUserId': toUserId,
        'channel': channel,
        'message': message,
        'selector': selector
      };

  createResponse() => ChatMessage();
  getResponseTypeName() => "ChatMessage";
  getTypeName() => "PostChatToChannel";
  TypeContext? context = _ctx;
}

// @Route("/chathistory")
class GetChatHistory
    implements IReturn<GetChatHistoryResponse>, IConvertible, IPost {
  List<String>? channels;
  int? afterId;
  int? take;

  GetChatHistory({this.channels, this.afterId, this.take});
  GetChatHistory.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    channels =
        JsonConverters.fromJson(json['channels'], 'List<String>', context!);
    afterId = json['afterId'];
    take = json['take'];
    return this;
  }

  Map<String, dynamic> toJson() => {
        'channels': JsonConverters.toJson(channels, 'List<String>', context!),
        'afterId': afterId,
        'take': take
      };

  createResponse() => GetChatHistoryResponse();
  getResponseTypeName() => "GetChatHistoryResponse";
  getTypeName() => "GetChatHistory";
  TypeContext? context = _ctx;
}

// @Route("/reset")
class ClearChatHistory implements IReturnVoid, IConvertible, IPost {
  ClearChatHistory();
  ClearChatHistory.fromJson(Map<String, dynamic> json) : super();
  fromMap(Map<String, dynamic> json) {
    return this;
  }

  Map<String, dynamic> toJson() => {};
  createResponse() {}
  getTypeName() => "ClearChatHistory";
  TypeContext? context = _ctx;
}

// @Route("/reset-serverevents")
class ResetServerEvents implements IReturnVoid, IConvertible, IPost {
  ResetServerEvents();
  ResetServerEvents.fromJson(Map<String, dynamic> json) : super();
  fromMap(Map<String, dynamic> json) {
    return this;
  }

  Map<String, dynamic> toJson() => {};
  createResponse() {}
  getTypeName() => "ResetServerEvents";
  TypeContext? context = _ctx;
}

// @Route("/channels/{Channel}/object")
class PostObjectToChannel implements IReturnVoid, IConvertible, IPost {
  String? toUserId;
  String? channel;
  String? selector;
  CustomType? customType;
  SetterType? setterType;

  PostObjectToChannel(
      {this.toUserId,
      this.channel,
      this.selector,
      this.customType,
      this.setterType});
  PostObjectToChannel.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    toUserId = json['toUserId'];
    channel = json['channel'];
    selector = json['selector'];
    customType =
        JsonConverters.fromJson(json['customType'], 'CustomType', context!);
    setterType =
        JsonConverters.fromJson(json['setterType'], 'SetterType', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'toUserId': toUserId,
        'channel': channel,
        'selector': selector,
        'customType': JsonConverters.toJson(customType, 'CustomType', context!),
        'setterType': JsonConverters.toJson(setterType, 'SetterType', context!)
      };

  createResponse() {}
  getTypeName() => "PostObjectToChannel";
  TypeContext? context = _ctx;
}

// @Route("/account")
class GetUserDetails
    implements IReturn<GetUserDetailsResponse>, IConvertible, IGet {
  GetUserDetails();
  GetUserDetails.fromJson(Map<String, dynamic> json) : super();
  fromMap(Map<String, dynamic> json) {
    return this;
  }

  Map<String, dynamic> toJson() => {};
  createResponse() => GetUserDetailsResponse();
  getResponseTypeName() => "GetUserDetailsResponse";
  getTypeName() => "GetUserDetails";
  TypeContext? context = _ctx;
}

class CustomHttpError
    implements IReturn<CustomHttpErrorResponse>, IConvertible, IPost {
  int? statusCode;
  String? statusDescription;

  CustomHttpError({this.statusCode, this.statusDescription});
  CustomHttpError.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    statusCode = json['statusCode'];
    statusDescription = json['statusDescription'];
    return this;
  }

  Map<String, dynamic> toJson() =>
      {'statusCode': statusCode, 'statusDescription': statusDescription};

  createResponse() => CustomHttpErrorResponse();
  getResponseTypeName() => "CustomHttpErrorResponse";
  getTypeName() => "CustomHttpError";
  TypeContext? context = _ctx;
}

class AltQueryItems
    implements IReturn<QueryResponseAlt<Item>>, IConvertible, IPost {
  String? name;

  AltQueryItems({this.name});
  AltQueryItems.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    name = json['name'];
    return this;
  }

  Map<String, dynamic> toJson() => {'name': name};

  createResponse() => QueryResponseAlt<Item>();
  getResponseTypeName() => "QueryResponseAlt<Item>";
  getTypeName() => "AltQueryItems";
  TypeContext? context = _ctx;
}

class GetItems implements IReturn<Items>, IConvertible, IGet {
  GetItems();
  GetItems.fromJson(Map<String, dynamic> json) : super();
  fromMap(Map<String, dynamic> json) {
    return this;
  }

  Map<String, dynamic> toJson() => {};
  createResponse() => Items();
  getResponseTypeName() => "Items";
  getTypeName() => "GetItems";
  TypeContext? context = _ctx;
}

class GetNakedItems implements IReturn<List<Item>>, IConvertible, IGet {
  GetNakedItems();
  GetNakedItems.fromJson(Map<String, dynamic> json) : super();
  fromMap(Map<String, dynamic> json) {
    return this;
  }

  Map<String, dynamic> toJson() => {};
  createResponse() => <Item>[];
  getResponseTypeName() => "List<Item>";
  getTypeName() => "GetNakedItems";
  TypeContext? context = _ctx;
}

// @ValidateRequest(Validator="IsAuthenticated")
class DeclarativeValidationAuth implements IConvertible, IPost {
  String? name;

  DeclarativeValidationAuth({this.name});
  DeclarativeValidationAuth.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    name = json['name'];
    return this;
  }

  Map<String, dynamic> toJson() => {'name': name};

  getTypeName() => "DeclarativeValidationAuth";
  TypeContext? context = _ctx;
}

class DeclarativeCollectiveValidationTest
    implements IReturn<EmptyResponse>, IConvertible, IPost {
  // @Validate(Validator="NotEmpty")
  // @Validate(Validator="MaximumLength(20)")
  String? site;

  List<DeclarativeChildValidation>? declarativeValidations;
  List<FluentChildValidation>? fluentValidations;

  DeclarativeCollectiveValidationTest(
      {this.site, this.declarativeValidations, this.fluentValidations});
  DeclarativeCollectiveValidationTest.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    site = json['site'];
    declarativeValidations = JsonConverters.fromJson(
        json['declarativeValidations'],
        'List<DeclarativeChildValidation>',
        context!);
    fluentValidations = JsonConverters.fromJson(
        json['fluentValidations'], 'List<FluentChildValidation>', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'site': site,
        'declarativeValidations': JsonConverters.toJson(declarativeValidations,
            'List<DeclarativeChildValidation>', context!),
        'fluentValidations': JsonConverters.toJson(
            fluentValidations, 'List<FluentChildValidation>', context!)
      };

  createResponse() => EmptyResponse();
  getResponseTypeName() => "EmptyResponse";
  getTypeName() => "DeclarativeCollectiveValidationTest";
  TypeContext? context = _ctx;
}

class DeclarativeSingleValidationTest
    implements IReturn<EmptyResponse>, IConvertible, IPost {
  // @Validate(Validator="NotEmpty")
  // @Validate(Validator="MaximumLength(20)")
  String? site;

  DeclarativeSingleValidation? declarativeSingleValidation;
  FluentSingleValidation? fluentSingleValidation;

  DeclarativeSingleValidationTest(
      {this.site,
      this.declarativeSingleValidation,
      this.fluentSingleValidation});
  DeclarativeSingleValidationTest.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    site = json['site'];
    declarativeSingleValidation = JsonConverters.fromJson(
        json['declarativeSingleValidation'],
        'DeclarativeSingleValidation',
        context!);
    fluentSingleValidation = JsonConverters.fromJson(
        json['fluentSingleValidation'], 'FluentSingleValidation', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'site': site,
        'declarativeSingleValidation': JsonConverters.toJson(
            declarativeSingleValidation,
            'DeclarativeSingleValidation',
            context!),
        'fluentSingleValidation': JsonConverters.toJson(
            fluentSingleValidation, 'FluentSingleValidation', context!)
      };

  createResponse() => EmptyResponse();
  getResponseTypeName() => "EmptyResponse";
  getTypeName() => "DeclarativeSingleValidationTest";
  TypeContext? context = _ctx;
}

class DummyTypes implements IConvertible, IPost {
  List<HelloResponse>? helloResponses;
  List<ListResult>? listResult;
  List<ArrayResult>? arrayResult;
  CancelRequest? cancelRequest;
  CancelRequestResponse? cancelRequestResponse;
  UpdateEventSubscriber? updateEventSubscriber;
  UpdateEventSubscriberResponse? updateEventSubscriberResponse;
  GetApiKeys? getApiKeys;
  GetApiKeysResponse? getApiKeysResponse;
  RegenerateApiKeys? regenerateApiKeys;
  RegenerateApiKeysResponse? regenerateApiKeysResponse;
  UserApiKey? userApiKey;
  ConvertSessionToToken? convertSessionToToken;
  ConvertSessionToTokenResponse? convertSessionToTokenResponse;
  GetAccessToken? getAccessToken;
  GetAccessTokenResponse? getAccessTokenResponse;
  NavItem? navItem;
  GetNavItems? getNavItems;
  GetNavItemsResponse? getNavItemsResponse;
  EmptyResponse? emptyResponse;
  IdResponse? idResponse;
  StringResponse? stringResponse;
  StringsResponse? stringsResponse;
  AuditBase? auditBase;

  DummyTypes(
      {this.helloResponses,
      this.listResult,
      this.arrayResult,
      this.cancelRequest,
      this.cancelRequestResponse,
      this.updateEventSubscriber,
      this.updateEventSubscriberResponse,
      this.getApiKeys,
      this.getApiKeysResponse,
      this.regenerateApiKeys,
      this.regenerateApiKeysResponse,
      this.userApiKey,
      this.convertSessionToToken,
      this.convertSessionToTokenResponse,
      this.getAccessToken,
      this.getAccessTokenResponse,
      this.navItem,
      this.getNavItems,
      this.getNavItemsResponse,
      this.emptyResponse,
      this.idResponse,
      this.stringResponse,
      this.stringsResponse,
      this.auditBase});
  DummyTypes.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    helloResponses = JsonConverters.fromJson(
        json['helloResponses'], 'List<HelloResponse>', context!);
    listResult = JsonConverters.fromJson(
        json['listResult'], 'List<ListResult>', context!);
    arrayResult = JsonConverters.fromJson(
        json['arrayResult'], 'List<ArrayResult>', context!);
    cancelRequest = JsonConverters.fromJson(
        json['cancelRequest'], 'CancelRequest', context!);
    cancelRequestResponse = JsonConverters.fromJson(
        json['cancelRequestResponse'], 'CancelRequestResponse', context!);
    updateEventSubscriber = JsonConverters.fromJson(
        json['updateEventSubscriber'], 'UpdateEventSubscriber', context!);
    updateEventSubscriberResponse = JsonConverters.fromJson(
        json['updateEventSubscriberResponse'],
        'UpdateEventSubscriberResponse',
        context!);
    getApiKeys =
        JsonConverters.fromJson(json['getApiKeys'], 'GetApiKeys', context!);
    getApiKeysResponse = JsonConverters.fromJson(
        json['getApiKeysResponse'], 'GetApiKeysResponse', context!);
    regenerateApiKeys = JsonConverters.fromJson(
        json['regenerateApiKeys'], 'RegenerateApiKeys', context!);
    regenerateApiKeysResponse = JsonConverters.fromJson(
        json['regenerateApiKeysResponse'],
        'RegenerateApiKeysResponse',
        context!);
    userApiKey =
        JsonConverters.fromJson(json['userApiKey'], 'UserApiKey', context!);
    convertSessionToToken = JsonConverters.fromJson(
        json['convertSessionToToken'], 'ConvertSessionToToken', context!);
    convertSessionToTokenResponse = JsonConverters.fromJson(
        json['convertSessionToTokenResponse'],
        'ConvertSessionToTokenResponse',
        context!);
    getAccessToken = JsonConverters.fromJson(
        json['getAccessToken'], 'GetAccessToken', context!);
    getAccessTokenResponse = JsonConverters.fromJson(
        json['getAccessTokenResponse'], 'GetAccessTokenResponse', context!);
    navItem = JsonConverters.fromJson(json['navItem'], 'NavItem', context!);
    getNavItems =
        JsonConverters.fromJson(json['getNavItems'], 'GetNavItems', context!);
    getNavItemsResponse = JsonConverters.fromJson(
        json['getNavItemsResponse'], 'GetNavItemsResponse', context!);
    emptyResponse = JsonConverters.fromJson(
        json['emptyResponse'], 'EmptyResponse', context!);
    idResponse =
        JsonConverters.fromJson(json['idResponse'], 'IdResponse', context!);
    stringResponse = JsonConverters.fromJson(
        json['stringResponse'], 'StringResponse', context!);
    stringsResponse = JsonConverters.fromJson(
        json['stringsResponse'], 'StringsResponse', context!);
    auditBase =
        JsonConverters.fromJson(json['auditBase'], 'AuditBase', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'helloResponses': JsonConverters.toJson(
            helloResponses, 'List<HelloResponse>', context!),
        'listResult':
            JsonConverters.toJson(listResult, 'List<ListResult>', context!),
        'arrayResult':
            JsonConverters.toJson(arrayResult, 'List<ArrayResult>', context!),
        'cancelRequest':
            JsonConverters.toJson(cancelRequest, 'CancelRequest', context!),
        'cancelRequestResponse': JsonConverters.toJson(
            cancelRequestResponse, 'CancelRequestResponse', context!),
        'updateEventSubscriber': JsonConverters.toJson(
            updateEventSubscriber, 'UpdateEventSubscriber', context!),
        'updateEventSubscriberResponse': JsonConverters.toJson(
            updateEventSubscriberResponse,
            'UpdateEventSubscriberResponse',
            context!),
        'getApiKeys': JsonConverters.toJson(getApiKeys, 'GetApiKeys', context!),
        'getApiKeysResponse': JsonConverters.toJson(
            getApiKeysResponse, 'GetApiKeysResponse', context!),
        'regenerateApiKeys': JsonConverters.toJson(
            regenerateApiKeys, 'RegenerateApiKeys', context!),
        'regenerateApiKeysResponse': JsonConverters.toJson(
            regenerateApiKeysResponse, 'RegenerateApiKeysResponse', context!),
        'userApiKey': JsonConverters.toJson(userApiKey, 'UserApiKey', context!),
        'convertSessionToToken': JsonConverters.toJson(
            convertSessionToToken, 'ConvertSessionToToken', context!),
        'convertSessionToTokenResponse': JsonConverters.toJson(
            convertSessionToTokenResponse,
            'ConvertSessionToTokenResponse',
            context!),
        'getAccessToken':
            JsonConverters.toJson(getAccessToken, 'GetAccessToken', context!),
        'getAccessTokenResponse': JsonConverters.toJson(
            getAccessTokenResponse, 'GetAccessTokenResponse', context!),
        'navItem': JsonConverters.toJson(navItem, 'NavItem', context!),
        'getNavItems':
            JsonConverters.toJson(getNavItems, 'GetNavItems', context!),
        'getNavItemsResponse': JsonConverters.toJson(
            getNavItemsResponse, 'GetNavItemsResponse', context!),
        'emptyResponse':
            JsonConverters.toJson(emptyResponse, 'EmptyResponse', context!),
        'idResponse': JsonConverters.toJson(idResponse, 'IdResponse', context!),
        'stringResponse':
            JsonConverters.toJson(stringResponse, 'StringResponse', context!),
        'stringsResponse':
            JsonConverters.toJson(stringsResponse, 'StringsResponse', context!),
        'auditBase': JsonConverters.toJson(auditBase, 'AuditBase', context!)
      };

  getTypeName() => "DummyTypes";
  TypeContext? context = _ctx;
}

// @Route("/throwhttperror/{Status}")
class ThrowHttpError implements IConvertible, IPost {
  int? status;
  String? message;

  ThrowHttpError({this.status, this.message});
  ThrowHttpError.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    return this;
  }

  Map<String, dynamic> toJson() => {'status': status, 'message': message};

  getTypeName() => "ThrowHttpError";
  TypeContext? context = _ctx;
}

// @Route("/throw404")
// @Route("/throw404/{Message}")
class Throw404 implements IConvertible, IPost {
  String? message;

  Throw404({this.message});
  Throw404.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    message = json['message'];
    return this;
  }

  Map<String, dynamic> toJson() => {'message': message};

  getTypeName() => "Throw404";
  TypeContext? context = _ctx;
}

// @Route("/throwcustom400")
// @Route("/throwcustom400/{Message}")
class ThrowCustom400 implements IConvertible, IPost {
  String? message;

  ThrowCustom400({this.message});
  ThrowCustom400.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    message = json['message'];
    return this;
  }

  Map<String, dynamic> toJson() => {'message': message};

  getTypeName() => "ThrowCustom400";
  TypeContext? context = _ctx;
}

// @Route("/returncustom400")
// @Route("/returncustom400/{Message}")
class ReturnCustom400
    implements IReturn<ReturnCustom400Response>, IConvertible, IPost {
  String? message;

  ReturnCustom400({this.message});
  ReturnCustom400.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    message = json['message'];
    return this;
  }

  Map<String, dynamic> toJson() => {'message': message};

  createResponse() => ReturnCustom400Response();
  getResponseTypeName() => "ReturnCustom400Response";
  getTypeName() => "ReturnCustom400";
  TypeContext? context = _ctx;
}

// @Route("/throw/{Type}")
class ThrowType implements IReturn<ThrowTypeResponse>, IConvertible, IPost {
  String? type;
  String? message;

  ThrowType({this.type, this.message});
  ThrowType.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    type = json['type'];
    message = json['message'];
    return this;
  }

  Map<String, dynamic> toJson() => {'type': type, 'message': message};

  createResponse() => ThrowTypeResponse();
  getResponseTypeName() => "ThrowTypeResponse";
  getTypeName() => "ThrowType";
  TypeContext? context = _ctx;
}

// @Route("/throwvalidation")
class ThrowValidation
    implements IReturn<ThrowValidationResponse>, IConvertible, IPost {
  int? age;
  String? Required;
  String? email;

  ThrowValidation({this.age, this.Required, this.email});
  ThrowValidation.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    age = json['age'];
    Required = json['required'];
    email = json['email'];
    return this;
  }

  Map<String, dynamic> toJson() =>
      {'age': age, 'required': Required, 'email': email};

  createResponse() => ThrowValidationResponse();
  getResponseTypeName() => "ThrowValidationResponse";
  getTypeName() => "ThrowValidation";
  TypeContext? context = _ctx;
}

// @Route("/throwbusinesserror")
class ThrowBusinessError
    implements IReturn<ThrowBusinessErrorResponse>, IConvertible, IPost {
  ThrowBusinessError();
  ThrowBusinessError.fromJson(Map<String, dynamic> json) : super();
  fromMap(Map<String, dynamic> json) {
    return this;
  }

  Map<String, dynamic> toJson() => {};
  createResponse() => ThrowBusinessErrorResponse();
  getResponseTypeName() => "ThrowBusinessErrorResponse";
  getTypeName() => "ThrowBusinessError";
  TypeContext? context = _ctx;
}

/**
* Convert speech to text
*/
// @Api(Description="Convert speech to text")
class SpeechToText
    implements IReturn<GenerationResponse>, IGeneration, IConvertible, IPost {
  /**
    * The audio stream containing the speech to be transcribed
    */
  // @ApiMember(Description="The audio stream containing the speech to be transcribed")
  // @required()
  Uint8List? audio;

  /**
    * Optional client-provided identifier for the request
    */
  // @ApiMember(Description="Optional client-provided identifier for the request")
  String? refId;

  /**
    * Tag to identify the request
    */
  // @ApiMember(Description="Tag to identify the request")
  String? tag;

  SpeechToText({this.audio, this.refId, this.tag});
  SpeechToText.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    audio = JsonConverters.fromJson(json['audio'], 'Uint8List', context!);
    refId = json['refId'];
    tag = json['tag'];
    return this;
  }

  Map<String, dynamic> toJson() => {
        'audio': JsonConverters.toJson(audio, 'Uint8List', context!),
        'refId': refId,
        'tag': tag
      };

  createResponse() => GenerationResponse();
  getResponseTypeName() => "GenerationResponse";
  getTypeName() => "SpeechToText";
  TypeContext? context = _ctx;
}

class TestFileUploads
    implements IReturn<TestFileUploadsResponse>, IConvertible, IPost {
  int? id;
  String? refId;

  TestFileUploads({this.id, this.refId});
  TestFileUploads.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    id = json['id'];
    refId = json['refId'];
    return this;
  }

  Map<String, dynamic> toJson() => {'id': id, 'refId': refId};

  createResponse() => TestFileUploadsResponse();
  getResponseTypeName() => "TestFileUploadsResponse";
  getTypeName() => "TestFileUploads";
  TypeContext? context = _ctx;
}

class RootPathRoutes implements IConvertible, IPost {
  String? path;

  RootPathRoutes({this.path});
  RootPathRoutes.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    path = json['path'];
    return this;
  }

  Map<String, dynamic> toJson() => {'path': path};

  getTypeName() => "RootPathRoutes";
  TypeContext? context = _ctx;
}

class GetAccount implements IReturn<Account>, IConvertible, IPost {
  String? account;

  GetAccount({this.account});
  GetAccount.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    account = json['account'];
    return this;
  }

  Map<String, dynamic> toJson() => {'account': account};

  createResponse() => Account();
  getResponseTypeName() => "Account";
  getTypeName() => "GetAccount";
  TypeContext? context = _ctx;
}

class GetProject implements IReturn<Project>, IConvertible, IPost {
  String? account;
  String? project;

  GetProject({this.account, this.project});
  GetProject.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    account = json['account'];
    project = json['project'];
    return this;
  }

  Map<String, dynamic> toJson() => {'account': account, 'project': project};

  createResponse() => Project();
  getResponseTypeName() => "Project";
  getTypeName() => "GetProject";
  TypeContext? context = _ctx;
}

// @Route("/image-stream")
class ImageAsStream implements IReturn<Uint8List>, IConvertible, IPost {
  String? format;

  ImageAsStream({this.format});
  ImageAsStream.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    format = json['format'];
    return this;
  }

  Map<String, dynamic> toJson() => {'format': format};

  createResponse() => Uint8List(0);
  getResponseTypeName() => "Uint8List";
  getTypeName() => "ImageAsStream";
  TypeContext? context = _ctx;
}

// @Route("/image-bytes")
class ImageAsBytes implements IReturn<Uint8List>, IConvertible, IPost {
  String? format;

  ImageAsBytes({this.format});
  ImageAsBytes.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    format = json['format'];
    return this;
  }

  Map<String, dynamic> toJson() => {'format': format};

  createResponse() => Uint8List(0);
  getResponseTypeName() => "Uint8List";
  getTypeName() => "ImageAsBytes";
  TypeContext? context = _ctx;
}

// @Route("/image-custom")
class ImageAsCustomResult implements IReturn<Uint8List>, IConvertible, IPost {
  String? format;

  ImageAsCustomResult({this.format});
  ImageAsCustomResult.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    format = json['format'];
    return this;
  }

  Map<String, dynamic> toJson() => {'format': format};

  createResponse() => Uint8List(0);
  getResponseTypeName() => "Uint8List";
  getTypeName() => "ImageAsCustomResult";
  TypeContext? context = _ctx;
}

// @Route("/image-response")
class ImageWriteToResponse implements IReturn<Uint8List>, IConvertible, IPost {
  String? format;

  ImageWriteToResponse({this.format});
  ImageWriteToResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    format = json['format'];
    return this;
  }

  Map<String, dynamic> toJson() => {'format': format};

  createResponse() => Uint8List(0);
  getResponseTypeName() => "Uint8List";
  getTypeName() => "ImageWriteToResponse";
  TypeContext? context = _ctx;
}

// @Route("/image-file")
class ImageAsFile implements IReturn<Uint8List>, IConvertible, IPost {
  String? format;

  ImageAsFile({this.format});
  ImageAsFile.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    format = json['format'];
    return this;
  }

  Map<String, dynamic> toJson() => {'format': format};

  createResponse() => Uint8List(0);
  getResponseTypeName() => "Uint8List";
  getTypeName() => "ImageAsFile";
  TypeContext? context = _ctx;
}

// @Route("/image-redirect")
class ImageAsRedirect implements IConvertible, IPost {
  String? format;

  ImageAsRedirect({this.format});
  ImageAsRedirect.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    format = json['format'];
    return this;
  }

  Map<String, dynamic> toJson() => {'format': format};

  getTypeName() => "ImageAsRedirect";
  TypeContext? context = _ctx;
}

// @Route("/hello-image/{Name}")
class HelloImage implements IReturn<Uint8List>, IConvertible, IGet {
  String? name;
  String? format;
  int? width;
  int? height;
  int? fontSize;
  String? fontFamily;
  String? foreground;
  String? background;

  HelloImage(
      {this.name,
      this.format,
      this.width,
      this.height,
      this.fontSize,
      this.fontFamily,
      this.foreground,
      this.background});
  HelloImage.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    name = json['name'];
    format = json['format'];
    width = json['width'];
    height = json['height'];
    fontSize = json['fontSize'];
    fontFamily = json['fontFamily'];
    foreground = json['foreground'];
    background = json['background'];
    return this;
  }

  Map<String, dynamic> toJson() => {
        'name': name,
        'format': format,
        'width': width,
        'height': height,
        'fontSize': fontSize,
        'fontFamily': fontFamily,
        'foreground': foreground,
        'background': background
      };

  createResponse() => Uint8List(0);
  getResponseTypeName() => "Uint8List";
  getTypeName() => "HelloImage";
  TypeContext? context = _ctx;
}

// @Route("/secured")
// @ValidateRequest(Validator="IsAuthenticated")
class Secured implements IReturn<SecuredResponse>, IConvertible, IPost {
  String? name;

  Secured({this.name});
  Secured.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    name = json['name'];
    return this;
  }

  Map<String, dynamic> toJson() => {'name': name};

  createResponse() => SecuredResponse();
  getResponseTypeName() => "SecuredResponse";
  getTypeName() => "Secured";
  TypeContext? context = _ctx;
}

// @Route("/jwt")
class CreateJwt extends AuthUserSession
    implements IReturn<CreateJwtResponse>, IConvertible, IPost {
  DateTime? jwtExpiry;

  CreateJwt({this.jwtExpiry});
  CreateJwt.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    super.fromMap(json);
    jwtExpiry =
        JsonConverters.fromJson(json['jwtExpiry'], 'DateTime', context!);
    return this;
  }

  Map<String, dynamic> toJson() => super.toJson()
    ..addAll(
        {'jwtExpiry': JsonConverters.toJson(jwtExpiry, 'DateTime', context!)});

  createResponse() => CreateJwtResponse();
  getResponseTypeName() => "CreateJwtResponse";
  getTypeName() => "CreateJwt";
  TypeContext? context = _ctx;
}

// @Route("/jwt-refresh")
class CreateRefreshJwt
    implements IReturn<CreateRefreshJwtResponse>, IConvertible, IPost {
  String? userAuthId;
  DateTime? jwtExpiry;

  CreateRefreshJwt({this.userAuthId, this.jwtExpiry});
  CreateRefreshJwt.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    userAuthId = json['userAuthId'];
    jwtExpiry =
        JsonConverters.fromJson(json['jwtExpiry'], 'DateTime', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'userAuthId': userAuthId,
        'jwtExpiry': JsonConverters.toJson(jwtExpiry, 'DateTime', context!)
      };

  createResponse() => CreateRefreshJwtResponse();
  getResponseTypeName() => "CreateRefreshJwtResponse";
  getTypeName() => "CreateRefreshJwt";
  TypeContext? context = _ctx;
}

// @Route("/jwt-invalidate")
class InvalidateLastAccessToken
    implements IReturn<EmptyResponse>, IConvertible, IPost {
  InvalidateLastAccessToken();
  InvalidateLastAccessToken.fromJson(Map<String, dynamic> json) : super();
  fromMap(Map<String, dynamic> json) {
    return this;
  }

  Map<String, dynamic> toJson() => {};
  createResponse() => EmptyResponse();
  getResponseTypeName() => "EmptyResponse";
  getTypeName() => "InvalidateLastAccessToken";
  TypeContext? context = _ctx;
}

// @Route("/logs")
class ViewLogs implements IReturn<String>, IConvertible, IPost {
  bool? clear;

  ViewLogs({this.clear});
  ViewLogs.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    clear = json['clear'];
    return this;
  }

  Map<String, dynamic> toJson() => {'clear': clear};

  createResponse() => "";
  getResponseTypeName() => "String";
  getTypeName() => "ViewLogs";
  TypeContext? context = _ctx;
}

// @Route("/metadatatest")
class MetadataTest
    implements IReturn<MetadataTestResponse>, IConvertible, IPost {
  int? id;

  MetadataTest({this.id});
  MetadataTest.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    id = json['id'];
    return this;
  }

  Map<String, dynamic> toJson() => {'id': id};

  createResponse() => MetadataTestResponse();
  getResponseTypeName() => "MetadataTestResponse";
  getTypeName() => "MetadataTest";
  TypeContext? context = _ctx;
}

// @Route("/metadatatest-array")
class MetadataTestArray
    implements IReturn<List<MetadataTestChild>>, IConvertible, IPost {
  int? id;

  MetadataTestArray({this.id});
  MetadataTestArray.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    id = json['id'];
    return this;
  }

  Map<String, dynamic> toJson() => {'id': id};

  createResponse() => <MetadataTestChild>[];
  getResponseTypeName() => "List<MetadataTestChild>";
  getTypeName() => "MetadataTestArray";
  TypeContext? context = _ctx;
}

// @Route("/example", "GET")
// @DataContract
class GetExample implements IReturn<GetExampleResponse>, IConvertible, IGet {
  GetExample();
  GetExample.fromJson(Map<String, dynamic> json) : super();
  fromMap(Map<String, dynamic> json) {
    return this;
  }

  Map<String, dynamic> toJson() => {};
  createResponse() => GetExampleResponse();
  getResponseTypeName() => "GetExampleResponse";
  getTypeName() => "GetExample";
  TypeContext? context = _ctx;
}

// @Route("/messages/{Id}", "GET")
class RequestMessage implements IReturn<Message>, IConvertible, IGet {
  int? id;

  RequestMessage({this.id});
  RequestMessage.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    id = json['id'];
    return this;
  }

  Map<String, dynamic> toJson() => {'id': id};

  createResponse() => Message();
  getResponseTypeName() => "Message";
  getTypeName() => "RequestMessage";
  TypeContext? context = _ctx;
}

// @Route("/randomids")
class GetRandomIds
    implements IReturn<GetRandomIdsResponse>, IConvertible, IPost {
  int? take;

  GetRandomIds({this.take});
  GetRandomIds.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    take = json['take'];
    return this;
  }

  Map<String, dynamic> toJson() => {'take': take};

  createResponse() => GetRandomIdsResponse();
  getResponseTypeName() => "GetRandomIdsResponse";
  getTypeName() => "GetRandomIds";
  TypeContext? context = _ctx;
}

// @Route("/textfile-test")
class TextFileTest implements IConvertible, IPost {
  bool? asAttachment;

  TextFileTest({this.asAttachment});
  TextFileTest.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    asAttachment = json['asAttachment'];
    return this;
  }

  Map<String, dynamic> toJson() => {'asAttachment': asAttachment};

  getTypeName() => "TextFileTest";
  TypeContext? context = _ctx;
}

// @Route("/return/text")
class ReturnText implements IConvertible, IPost {
  String? text;

  ReturnText({this.text});
  ReturnText.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    text = json['text'];
    return this;
  }

  Map<String, dynamic> toJson() => {'text': text};

  getTypeName() => "ReturnText";
  TypeContext? context = _ctx;
}

// @Route("/return/html")
class ReturnHtml implements IConvertible, IPost {
  String? text;

  ReturnHtml({this.text});
  ReturnHtml.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    text = json['text'];
    return this;
  }

  Map<String, dynamic> toJson() => {'text': text};

  getTypeName() => "ReturnHtml";
  TypeContext? context = _ctx;
}

// @Route("/hello")
// @Route("/hello/{Name}")
class Hello implements IReturn<HelloResponse>, IConvertible, IPost {
  // @required()
  String? name;

  String? title;

  Hello({this.name, this.title});
  Hello.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    name = json['name'];
    title = json['title'];
    return this;
  }

  Map<String, dynamic> toJson() => {'name': name, 'title': title};

  createResponse() => HelloResponse();
  getResponseTypeName() => "HelloResponse";
  getTypeName() => "Hello";
  TypeContext? context = _ctx;
}

// @Route("/hello-secure/{Name}")
// @ValidateRequest(Validator="IsAuthenticated")
class HelloSecure implements IReturn<HelloResponse>, IConvertible, IPost {
  String? name;

  HelloSecure({this.name});
  HelloSecure.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    name = json['name'];
    return this;
  }

  Map<String, dynamic> toJson() => {'name': name};

  createResponse() => HelloResponse();
  getResponseTypeName() => "HelloResponse";
  getTypeName() => "HelloSecure";
  TypeContext? context = _ctx;
}

/**
* Description on HelloAll type
*/
// @DataContract
class HelloAnnotated
    implements IReturn<HelloAnnotatedResponse>, IConvertible, IPost {
  // @DataMember
  String? name;

  HelloAnnotated({this.name});
  HelloAnnotated.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    name = json['name'];
    return this;
  }

  Map<String, dynamic> toJson() => {'name': name};

  createResponse() => HelloAnnotatedResponse();
  getResponseTypeName() => "HelloAnnotatedResponse";
  getTypeName() => "HelloAnnotated";
  TypeContext? context = _ctx;
}

class HelloWithNestedClass
    implements IReturn<HelloResponse>, IConvertible, IGet {
  String? name;
  NestedClass? nestedClassProp;

  HelloWithNestedClass({this.name, this.nestedClassProp});
  HelloWithNestedClass.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    name = json['name'];
    nestedClassProp = JsonConverters.fromJson(
        json['nestedClassProp'], 'NestedClass', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'name': name,
        'nestedClassProp':
            JsonConverters.toJson(nestedClassProp, 'NestedClass', context!)
      };

  createResponse() => HelloResponse();
  getResponseTypeName() => "HelloResponse";
  getTypeName() => "HelloWithNestedClass";
  TypeContext? context = _ctx;
}

class HelloList implements IReturn<List<ListResult>>, IConvertible, IPost {
  List<String>? names;

  HelloList({this.names});
  HelloList.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    names = JsonConverters.fromJson(json['names'], 'List<String>', context!);
    return this;
  }

  Map<String, dynamic> toJson() =>
      {'names': JsonConverters.toJson(names, 'List<String>', context!)};

  createResponse() => <ListResult>[];
  getResponseTypeName() => "List<ListResult>";
  getTypeName() => "HelloList";
  TypeContext? context = _ctx;
}

class HelloArray implements IReturn<List<ArrayResult>>, IConvertible, IPost {
  List<String>? names;

  HelloArray({this.names});
  HelloArray.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    names = JsonConverters.fromJson(json['names'], 'List<String>', context!);
    return this;
  }

  Map<String, dynamic> toJson() =>
      {'names': JsonConverters.toJson(names, 'List<String>', context!)};

  createResponse() => <ArrayResult>[];
  getResponseTypeName() => "List<ArrayResult>";
  getTypeName() => "HelloArray";
  TypeContext? context = _ctx;
}

class HelloMap
    implements IReturn<Map<String, ArrayResult?>>, IConvertible, IPost {
  List<String>? names;

  HelloMap({this.names});
  HelloMap.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    names = JsonConverters.fromJson(json['names'], 'List<String>', context!);
    return this;
  }

  Map<String, dynamic> toJson() =>
      {'names': JsonConverters.toJson(names, 'List<String>', context!)};

  createResponse() => Map<String, ArrayResult?>();
  getResponseTypeName() => "Map<String,ArrayResult?>";
  getTypeName() => "HelloMap";
  TypeContext? context = _ctx;
}

class HelloQueryResponse
    implements IReturn<QueryResponse<String>>, IConvertible, IPost {
  List<String>? names;

  HelloQueryResponse({this.names});
  HelloQueryResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    names = JsonConverters.fromJson(json['names'], 'List<String>', context!);
    return this;
  }

  Map<String, dynamic> toJson() =>
      {'names': JsonConverters.toJson(names, 'List<String>', context!)};

  createResponse() => QueryResponse<String>();
  getResponseTypeName() => "QueryResponse<String>";
  getTypeName() => "HelloQueryResponse";
  TypeContext? context = _ctx;
}

class HelloWithEnum implements IConvertible, IPost {
  EnumType? enumProp;
  EnumTypeFlags? enumTypeFlags;
  EnumWithValues? enumWithValues;
  EnumType? nullableEnumProp;
  EnumFlags? enumFlags;
  EnumAsInt? enumAsInt;
  EnumStyle? enumStyle;
  EnumStyleMembers? enumStyleMembers;

  HelloWithEnum(
      {this.enumProp,
      this.enumTypeFlags,
      this.enumWithValues,
      this.nullableEnumProp,
      this.enumFlags,
      this.enumAsInt,
      this.enumStyle,
      this.enumStyleMembers});
  HelloWithEnum.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    enumProp = JsonConverters.fromJson(json['enumProp'], 'EnumType', context!);
    enumTypeFlags = JsonConverters.fromJson(
        json['enumTypeFlags'], 'EnumTypeFlags', context!);
    enumWithValues = JsonConverters.fromJson(
        json['enumWithValues'], 'EnumWithValues', context!);
    nullableEnumProp =
        JsonConverters.fromJson(json['nullableEnumProp'], 'EnumType', context!);
    enumFlags =
        JsonConverters.fromJson(json['enumFlags'], 'EnumFlags', context!);
    enumAsInt =
        JsonConverters.fromJson(json['enumAsInt'], 'EnumAsInt', context!);
    enumStyle =
        JsonConverters.fromJson(json['enumStyle'], 'EnumStyle', context!);
    enumStyleMembers = JsonConverters.fromJson(
        json['enumStyleMembers'], 'EnumStyleMembers', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'enumProp': JsonConverters.toJson(enumProp, 'EnumType', context!),
        'enumTypeFlags':
            JsonConverters.toJson(enumTypeFlags, 'EnumTypeFlags', context!),
        'enumWithValues':
            JsonConverters.toJson(enumWithValues, 'EnumWithValues', context!),
        'nullableEnumProp':
            JsonConverters.toJson(nullableEnumProp, 'EnumType', context!),
        'enumFlags': JsonConverters.toJson(enumFlags, 'EnumFlags', context!),
        'enumAsInt': JsonConverters.toJson(enumAsInt, 'EnumAsInt', context!),
        'enumStyle': JsonConverters.toJson(enumStyle, 'EnumStyle', context!),
        'enumStyleMembers': JsonConverters.toJson(
            enumStyleMembers, 'EnumStyleMembers', context!)
      };

  getTypeName() => "HelloWithEnum";
  TypeContext? context = _ctx;
}

class HelloWithEnumList implements IConvertible, IPost {
  List<EnumType>? enumProp;
  List<EnumWithValues>? enumWithValues;
  List<EnumType>? nullableEnumProp;
  List<EnumFlags>? enumFlags;
  List<EnumStyle>? enumStyle;

  HelloWithEnumList(
      {this.enumProp,
      this.enumWithValues,
      this.nullableEnumProp,
      this.enumFlags,
      this.enumStyle});
  HelloWithEnumList.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    enumProp =
        JsonConverters.fromJson(json['enumProp'], 'List<EnumType>', context!);
    enumWithValues = JsonConverters.fromJson(
        json['enumWithValues'], 'List<EnumWithValues>', context!);
    nullableEnumProp = JsonConverters.fromJson(
        json['nullableEnumProp'], 'List<EnumType>', context!);
    enumFlags =
        JsonConverters.fromJson(json['enumFlags'], 'List<EnumFlags>', context!);
    enumStyle =
        JsonConverters.fromJson(json['enumStyle'], 'List<EnumStyle>', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'enumProp': JsonConverters.toJson(enumProp, 'List<EnumType>', context!),
        'enumWithValues': JsonConverters.toJson(
            enumWithValues, 'List<EnumWithValues>', context!),
        'nullableEnumProp':
            JsonConverters.toJson(nullableEnumProp, 'List<EnumType>', context!),
        'enumFlags':
            JsonConverters.toJson(enumFlags, 'List<EnumFlags>', context!),
        'enumStyle':
            JsonConverters.toJson(enumStyle, 'List<EnumStyle>', context!)
      };

  getTypeName() => "HelloWithEnumList";
  TypeContext? context = _ctx;
}

class HelloWithEnumMap implements IConvertible, IPost {
  Map<EnumType, EnumType?>? enumProp;
  Map<EnumWithValues, EnumWithValues?>? enumWithValues;
  Map<EnumType, EnumType?>? nullableEnumProp;
  Map<EnumFlags, EnumFlags?>? enumFlags;
  Map<EnumStyle, EnumStyle?>? enumStyle;

  HelloWithEnumMap(
      {this.enumProp,
      this.enumWithValues,
      this.nullableEnumProp,
      this.enumFlags,
      this.enumStyle});
  HelloWithEnumMap.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    enumProp = JsonConverters.fromJson(
        json['enumProp'], 'Map<EnumType,EnumType?>', context!);
    enumWithValues = JsonConverters.fromJson(json['enumWithValues'],
        'Map<EnumWithValues,EnumWithValues?>', context!);
    nullableEnumProp = JsonConverters.fromJson(
        json['nullableEnumProp'], 'Map<EnumType,EnumType?>', context!);
    enumFlags = JsonConverters.fromJson(
        json['enumFlags'], 'Map<EnumFlags,EnumFlags?>', context!);
    enumStyle = JsonConverters.fromJson(
        json['enumStyle'], 'Map<EnumStyle,EnumStyle?>', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'enumProp': JsonConverters.toJson(
            enumProp, 'Map<EnumType,EnumType?>', context!),
        'enumWithValues': JsonConverters.toJson(
            enumWithValues, 'Map<EnumWithValues,EnumWithValues?>', context!),
        'nullableEnumProp': JsonConverters.toJson(
            nullableEnumProp, 'Map<EnumType,EnumType?>', context!),
        'enumFlags': JsonConverters.toJson(
            enumFlags, 'Map<EnumFlags,EnumFlags?>', context!),
        'enumStyle': JsonConverters.toJson(
            enumStyle, 'Map<EnumStyle,EnumStyle?>', context!)
      };

  getTypeName() => "HelloWithEnumMap";
  TypeContext? context = _ctx;
}

class RestrictedAttributes implements IConvertible, IPost {
  int? id;
  String? name;
  Hello? hello;

  RestrictedAttributes({this.id, this.name, this.hello});
  RestrictedAttributes.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    hello = JsonConverters.fromJson(json['hello'], 'Hello', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'hello': JsonConverters.toJson(hello, 'Hello', context!)
      };

  getTypeName() => "RestrictedAttributes";
  TypeContext? context = _ctx;
}

/**
* AllowedAttributes Description
*/
// @Route("/allowed-attributes", "GET")
// @Api(Description="AllowedAttributes Description")
// @ApiResponse(Description="Your request was not understood", StatusCode=400)
// @DataContract
class AllowedAttributes implements IConvertible, IGet {
  /**
    * Range Description
    */
  // @DataMember(Name="Aliased")
  // @ApiMember(DataType="double", Description="Range Description", IsRequired=true, ParameterType="path")
  double? Aliased;

  AllowedAttributes({this.Aliased});
  AllowedAttributes.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    Aliased = JsonConverters.toDouble(json['range']);
    return this;
  }

  Map<String, dynamic> toJson() => {'aliased': Aliased};

  getTypeName() => "AllowedAttributes";
  TypeContext? context = _ctx;
}

// @Route("/all-types")
class HelloAllTypes
    implements IReturn<HelloAllTypesResponse>, IConvertible, IPost {
  String? name;
  AllTypes? allTypes;
  AllCollectionTypes? allCollectionTypes;

  HelloAllTypes({this.name, this.allTypes, this.allCollectionTypes});
  HelloAllTypes.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    name = json['name'];
    allTypes = JsonConverters.fromJson(json['allTypes'], 'AllTypes', context!);
    allCollectionTypes = JsonConverters.fromJson(
        json['allCollectionTypes'], 'AllCollectionTypes', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'name': name,
        'allTypes': JsonConverters.toJson(allTypes, 'AllTypes', context!),
        'allCollectionTypes': JsonConverters.toJson(
            allCollectionTypes, 'AllCollectionTypes', context!)
      };

  createResponse() => HelloAllTypesResponse();
  getResponseTypeName() => "HelloAllTypesResponse";
  getTypeName() => "HelloAllTypes";
  TypeContext? context = _ctx;
}

class HelloSubAllTypes extends AllTypesBase
    implements IReturn<SubAllTypes>, IConvertible, IPost {
  int? hierarchy;

  HelloSubAllTypes({this.hierarchy});
  HelloSubAllTypes.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    super.fromMap(json);
    hierarchy = json['hierarchy'];
    return this;
  }

  Map<String, dynamic> toJson() =>
      super.toJson()..addAll({'hierarchy': hierarchy});

  createResponse() => SubAllTypes();
  getResponseTypeName() => "SubAllTypes";
  getTypeName() => "HelloSubAllTypes";
  TypeContext? context = _ctx;
}

class HelloString implements IReturn<String>, IConvertible, IPost {
  String? name;

  HelloString({this.name});
  HelloString.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    name = json['name'];
    return this;
  }

  Map<String, dynamic> toJson() => {'name': name};

  createResponse() => "";
  getResponseTypeName() => "String";
  getTypeName() => "HelloString";
  TypeContext? context = _ctx;
}

class HelloVoid implements IConvertible, IPost {
  String? name;

  HelloVoid({this.name});
  HelloVoid.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    name = json['name'];
    return this;
  }

  Map<String, dynamic> toJson() => {'name': name};

  getTypeName() => "HelloVoid";
  TypeContext? context = _ctx;
}

// @DataContract
class HelloWithDataContract
    implements IReturn<HelloWithDataContractResponse>, IConvertible, IPost {
  // @DataMember(Name="name", Order=1, IsRequired=true, EmitDefaultValue=false)
  String? name;

  // @DataMember(Name="id", Order=2, EmitDefaultValue=false)
  int? id;

  HelloWithDataContract({this.name, this.id});
  HelloWithDataContract.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    name = json['name'];
    id = json['id'];
    return this;
  }

  Map<String, dynamic> toJson() => {'name': name, 'id': id};

  createResponse() => HelloWithDataContractResponse();
  getResponseTypeName() => "HelloWithDataContractResponse";
  getTypeName() => "HelloWithDataContract";
  TypeContext? context = _ctx;
}

/**
* Description on HelloWithDescription type
*/
class HelloWithDescription
    implements IReturn<HelloWithDescriptionResponse>, IConvertible, IPost {
  String? name;

  HelloWithDescription({this.name});
  HelloWithDescription.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    name = json['name'];
    return this;
  }

  Map<String, dynamic> toJson() => {'name': name};

  createResponse() => HelloWithDescriptionResponse();
  getResponseTypeName() => "HelloWithDescriptionResponse";
  getTypeName() => "HelloWithDescription";
  TypeContext? context = _ctx;
}

class HelloWithInheritance extends HelloBase
    implements IReturn<HelloWithInheritanceResponse>, IConvertible, IPost {
  String? name;

  HelloWithInheritance({this.name});
  HelloWithInheritance.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    super.fromMap(json);
    name = json['name'];
    return this;
  }

  Map<String, dynamic> toJson() => super.toJson()..addAll({'name': name});

  createResponse() => HelloWithInheritanceResponse();
  getResponseTypeName() => "HelloWithInheritanceResponse";
  getTypeName() => "HelloWithInheritance";
  TypeContext? context = _ctx;
}

class HelloWithGenericInheritance extends HelloBase1<Poco>
    implements IConvertible, IPost {
  String? result;

  HelloWithGenericInheritance({this.result});
  HelloWithGenericInheritance.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    super.fromMap(json);
    result = json['result'];
    return this;
  }

  Map<String, dynamic> toJson() => super.toJson()..addAll({'result': result});

  getTypeName() => "HelloWithGenericInheritance";
  TypeContext? context = _ctx;
}

class HelloWithGenericInheritance2 extends HelloBase1<Hello>
    implements IConvertible, IPost {
  String? result;

  HelloWithGenericInheritance2({this.result});
  HelloWithGenericInheritance2.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    super.fromMap(json);
    result = json['result'];
    return this;
  }

  Map<String, dynamic> toJson() => super.toJson()..addAll({'result': result});

  getTypeName() => "HelloWithGenericInheritance2";
  TypeContext? context = _ctx;
}

class HelloWithReturn
    implements IReturn<HelloWithAlternateReturnResponse>, IConvertible, IPost {
  String? name;

  HelloWithReturn({this.name});
  HelloWithReturn.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    name = json['name'];
    return this;
  }

  Map<String, dynamic> toJson() => {'name': name};

  createResponse() => HelloWithAlternateReturnResponse();
  getResponseTypeName() => "HelloWithAlternateReturnResponse";
  getTypeName() => "HelloWithReturn";
  TypeContext? context = _ctx;
}

// @Route("/helloroute")
class HelloWithRoute
    implements IReturn<HelloWithRouteResponse>, IConvertible, IPost {
  String? name;

  HelloWithRoute({this.name});
  HelloWithRoute.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    name = json['name'];
    return this;
  }

  Map<String, dynamic> toJson() => {'name': name};

  createResponse() => HelloWithRouteResponse();
  getResponseTypeName() => "HelloWithRouteResponse";
  getTypeName() => "HelloWithRoute";
  TypeContext? context = _ctx;
}

class HelloWithType
    implements IReturn<HelloWithTypeResponse>, IConvertible, IPost {
  String? name;

  HelloWithType({this.name});
  HelloWithType.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    name = json['name'];
    return this;
  }

  Map<String, dynamic> toJson() => {'name': name};

  createResponse() => HelloWithTypeResponse();
  getResponseTypeName() => "HelloWithTypeResponse";
  getTypeName() => "HelloWithType";
  TypeContext? context = _ctx;
}

class HelloInterface implements IConvertible, IPost {
  IPoco? poco;
  IEmptyInterface? emptyInterface;
  EmptyClass? emptyClass;

  HelloInterface({this.poco, this.emptyInterface, this.emptyClass});
  HelloInterface.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    poco = JsonConverters.fromJson(json['poco'], 'IPoco', context!);
    emptyInterface = JsonConverters.fromJson(
        json['emptyInterface'], 'IEmptyInterface', context!);
    emptyClass =
        JsonConverters.fromJson(json['emptyClass'], 'EmptyClass', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'poco': JsonConverters.toJson(poco, 'IPoco', context!),
        'emptyInterface':
            JsonConverters.toJson(emptyInterface, 'IEmptyInterface', context!),
        'emptyClass': JsonConverters.toJson(emptyClass, 'EmptyClass', context!)
      };

  getTypeName() => "HelloInterface";
  TypeContext? context = _ctx;
}

class HelloInnerTypes
    implements IReturn<HelloInnerTypesResponse>, IConvertible, IPost {
  HelloInnerTypes();
  HelloInnerTypes.fromJson(Map<String, dynamic> json) : super();
  fromMap(Map<String, dynamic> json) {
    return this;
  }

  Map<String, dynamic> toJson() => {};
  createResponse() => HelloInnerTypesResponse();
  getResponseTypeName() => "HelloInnerTypesResponse";
  getTypeName() => "HelloInnerTypes";
  TypeContext? context = _ctx;
}

class HelloBuiltin implements IConvertible, IPost {
  DayOfWeek? dayOfWeek;

  HelloBuiltin({this.dayOfWeek});
  HelloBuiltin.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    dayOfWeek =
        JsonConverters.fromJson(json['dayOfWeek'], 'DayOfWeek', context!);
    return this;
  }

  Map<String, dynamic> toJson() =>
      {'dayOfWeek': JsonConverters.toJson(dayOfWeek, 'DayOfWeek', context!)};

  getTypeName() => "HelloBuiltin";
  TypeContext? context = _ctx;
}

class HelloGet implements IReturn<HelloVerbResponse>, IGet, IConvertible {
  int? id;

  HelloGet({this.id});
  HelloGet.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    id = json['id'];
    return this;
  }

  Map<String, dynamic> toJson() => {'id': id};

  createResponse() => HelloVerbResponse();
  getResponseTypeName() => "HelloVerbResponse";
  getTypeName() => "HelloGet";
  TypeContext? context = _ctx;
}

class HelloPost extends HelloBase
    implements IReturn<HelloVerbResponse>, IPost, IConvertible {
  HelloPost();
  HelloPost.fromJson(Map<String, dynamic> json) : super.fromJson(json);
  fromMap(Map<String, dynamic> json) {
    super.fromMap(json);
    return this;
  }

  Map<String, dynamic> toJson() => super.toJson();
  createResponse() => HelloVerbResponse();
  getResponseTypeName() => "HelloVerbResponse";
  getTypeName() => "HelloPost";
  TypeContext? context = _ctx;
}

class HelloPut implements IReturn<HelloVerbResponse>, IPut, IConvertible {
  int? id;

  HelloPut({this.id});
  HelloPut.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    id = json['id'];
    return this;
  }

  Map<String, dynamic> toJson() => {'id': id};

  createResponse() => HelloVerbResponse();
  getResponseTypeName() => "HelloVerbResponse";
  getTypeName() => "HelloPut";
  TypeContext? context = _ctx;
}

class HelloDelete implements IReturn<HelloVerbResponse>, IDelete, IConvertible {
  int? id;

  HelloDelete({this.id});
  HelloDelete.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    id = json['id'];
    return this;
  }

  Map<String, dynamic> toJson() => {'id': id};

  createResponse() => HelloVerbResponse();
  getResponseTypeName() => "HelloVerbResponse";
  getTypeName() => "HelloDelete";
  TypeContext? context = _ctx;
}

class HelloPatch implements IReturn<HelloVerbResponse>, IPatch, IConvertible {
  int? id;

  HelloPatch({this.id});
  HelloPatch.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    id = json['id'];
    return this;
  }

  Map<String, dynamic> toJson() => {'id': id};

  createResponse() => HelloVerbResponse();
  getResponseTypeName() => "HelloVerbResponse";
  getTypeName() => "HelloPatch";
  TypeContext? context = _ctx;
}

class HelloReturnVoid implements IReturnVoid, IConvertible, IPost {
  int? id;

  HelloReturnVoid({this.id});
  HelloReturnVoid.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    id = json['id'];
    return this;
  }

  Map<String, dynamic> toJson() => {'id': id};

  createResponse() {}
  getTypeName() => "HelloReturnVoid";
  TypeContext? context = _ctx;
}

class EnumRequest implements IReturn<EnumResponse>, IPut, IConvertible {
  ScopeType? Operator;

  EnumRequest({this.Operator});
  EnumRequest.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    Operator = JsonConverters.fromJson(json['operator'], 'ScopeType', context!);
    return this;
  }

  Map<String, dynamic> toJson() =>
      {'operator': JsonConverters.toJson(Operator, 'ScopeType', context!)};

  createResponse() => EnumResponse();
  getResponseTypeName() => "EnumResponse";
  getTypeName() => "EnumRequest";
  TypeContext? context = _ctx;
}

// @Route("/hellozip")
// @DataContract
class HelloZip implements IReturn<HelloZipResponse>, IConvertible, IPost {
  // @DataMember
  String? name;

  // @DataMember
  List<String>? test;

  HelloZip({this.name, this.test});
  HelloZip.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    name = json['name'];
    test = JsonConverters.fromJson(json['test'], 'List<String>', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'name': name,
        'test': JsonConverters.toJson(test, 'List<String>', context!)
      };

  createResponse() => HelloZipResponse();
  getResponseTypeName() => "HelloZipResponse";
  getTypeName() => "HelloZip";
  TypeContext? context = _ctx;
}

// @Route("/ping")
class Ping implements IReturn<PingResponse>, IConvertible, IPost {
  Ping();
  Ping.fromJson(Map<String, dynamic> json) : super();
  fromMap(Map<String, dynamic> json) {
    return this;
  }

  Map<String, dynamic> toJson() => {};
  createResponse() => PingResponse();
  getResponseTypeName() => "PingResponse";
  getTypeName() => "Ping";
  TypeContext? context = _ctx;
}

// @Route("/reset-connections")
class ResetConnections implements IConvertible, IPost {
  ResetConnections();
  ResetConnections.fromJson(Map<String, dynamic> json) : super();
  fromMap(Map<String, dynamic> json) {
    return this;
  }

  Map<String, dynamic> toJson() => {};
  getTypeName() => "ResetConnections";
  TypeContext? context = _ctx;
}

// @Route("/requires-role")
class RequiresRole
    implements IReturn<RequiresRoleResponse>, IConvertible, IPost {
  RequiresRole();
  RequiresRole.fromJson(Map<String, dynamic> json) : super();
  fromMap(Map<String, dynamic> json) {
    return this;
  }

  Map<String, dynamic> toJson() => {};
  createResponse() => RequiresRoleResponse();
  getResponseTypeName() => "RequiresRoleResponse";
  getTypeName() => "RequiresRole";
  TypeContext? context = _ctx;
}

// @Route("/return/string")
class ReturnString implements IReturn<String>, IConvertible, IPost {
  String? data;

  ReturnString({this.data});
  ReturnString.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    data = json['data'];
    return this;
  }

  Map<String, dynamic> toJson() => {'data': data};

  createResponse() => "";
  getResponseTypeName() => "String";
  getTypeName() => "ReturnString";
  TypeContext? context = _ctx;
}

// @Route("/return/bytes")
class ReturnBytes implements IReturn<Uint8List>, IConvertible, IPost {
  Uint8List? data;

  ReturnBytes({this.data});
  ReturnBytes.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    data = JsonConverters.fromJson(json['data'], 'Uint8List', context!);
    return this;
  }

  Map<String, dynamic> toJson() =>
      {'data': JsonConverters.toJson(data, 'Uint8List', context!)};

  createResponse() => Uint8List(0);
  getResponseTypeName() => "Uint8List";
  getTypeName() => "ReturnBytes";
  TypeContext? context = _ctx;
}

// @Route("/return/stream")
class ReturnStream implements IReturn<Uint8List>, IConvertible, IPost {
  Uint8List? data;

  ReturnStream({this.data});
  ReturnStream.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    data = JsonConverters.fromJson(json['data'], 'Uint8List', context!);
    return this;
  }

  Map<String, dynamic> toJson() =>
      {'data': JsonConverters.toJson(data, 'Uint8List', context!)};

  createResponse() => Uint8List(0);
  getResponseTypeName() => "Uint8List";
  getTypeName() => "ReturnStream";
  TypeContext? context = _ctx;
}

// @Route("/return/json")
class ReturnJson implements IConvertible, IPost {
  ReturnJson();
  ReturnJson.fromJson(Map<String, dynamic> json) : super();
  fromMap(Map<String, dynamic> json) {
    return this;
  }

  Map<String, dynamic> toJson() => {};
  getTypeName() => "ReturnJson";
  TypeContext? context = _ctx;
}

// @Route("/return/json/header")
class ReturnJsonHeader implements IConvertible, IPost {
  ReturnJsonHeader();
  ReturnJsonHeader.fromJson(Map<String, dynamic> json) : super();
  fromMap(Map<String, dynamic> json) {
    return this;
  }

  Map<String, dynamic> toJson() => {};
  getTypeName() => "ReturnJsonHeader";
  TypeContext? context = _ctx;
}

// @Route("/write/json")
class WriteJson implements IConvertible, IPost {
  WriteJson();
  WriteJson.fromJson(Map<String, dynamic> json) : super();
  fromMap(Map<String, dynamic> json) {
    return this;
  }

  Map<String, dynamic> toJson() => {};
  getTypeName() => "WriteJson";
  TypeContext? context = _ctx;
}

// @Route("/Request1", "GET")
class GetRequest1 implements IReturn<List<ReturnedDto>>, IGet, IConvertible {
  GetRequest1();
  GetRequest1.fromJson(Map<String, dynamic> json) : super();
  fromMap(Map<String, dynamic> json) {
    return this;
  }

  Map<String, dynamic> toJson() => {};
  createResponse() => <ReturnedDto>[];
  getResponseTypeName() => "List<ReturnedDto>";
  getTypeName() => "GetRequest1";
  TypeContext? context = _ctx;
}

// @Route("/Request2", "GET")
class GetRequest2 implements IReturn<List<ReturnedDto>>, IGet, IConvertible {
  GetRequest2();
  GetRequest2.fromJson(Map<String, dynamic> json) : super();
  fromMap(Map<String, dynamic> json) {
    return this;
  }

  Map<String, dynamic> toJson() => {};
  createResponse() => <ReturnedDto>[];
  getResponseTypeName() => "List<ReturnedDto>";
  getTypeName() => "GetRequest2";
  TypeContext? context = _ctx;
}

// @Route("/sendjson")
class SendJson implements IReturn<String>, IConvertible, IPost {
  int? id;
  String? name;
  Uint8List? requestStream;

  SendJson({this.id, this.name, this.requestStream});
  SendJson.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    requestStream =
        JsonConverters.fromJson(json['requestStream'], 'Uint8List', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'requestStream':
            JsonConverters.toJson(requestStream, 'Uint8List', context!)
      };

  createResponse() => "";
  getResponseTypeName() => "String";
  getTypeName() => "SendJson";
  TypeContext? context = _ctx;
}

// @Route("/sendtext")
class SendText implements IReturn<String>, IConvertible, IPost {
  int? id;
  String? name;
  String? contentType;
  Uint8List? requestStream;

  SendText({this.id, this.name, this.contentType, this.requestStream});
  SendText.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    contentType = json['contentType'];
    requestStream =
        JsonConverters.fromJson(json['requestStream'], 'Uint8List', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'contentType': contentType,
        'requestStream':
            JsonConverters.toJson(requestStream, 'Uint8List', context!)
      };

  createResponse() => "";
  getResponseTypeName() => "String";
  getTypeName() => "SendText";
  TypeContext? context = _ctx;
}

// @Route("/sendraw")
class SendRaw implements IReturn<Uint8List>, IConvertible, IPost {
  int? id;
  String? name;
  String? contentType;
  Uint8List? requestStream;

  SendRaw({this.id, this.name, this.contentType, this.requestStream});
  SendRaw.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    contentType = json['contentType'];
    requestStream =
        JsonConverters.fromJson(json['requestStream'], 'Uint8List', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'contentType': contentType,
        'requestStream':
            JsonConverters.toJson(requestStream, 'Uint8List', context!)
      };

  createResponse() => Uint8List(0);
  getResponseTypeName() => "Uint8List";
  getTypeName() => "SendRaw";
  TypeContext? context = _ctx;
}

class SendDefault implements IReturn<SendVerbResponse>, IConvertible, IPost {
  int? id;

  SendDefault({this.id});
  SendDefault.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    id = json['id'];
    return this;
  }

  Map<String, dynamic> toJson() => {'id': id};

  createResponse() => SendVerbResponse();
  getResponseTypeName() => "SendVerbResponse";
  getTypeName() => "SendDefault";
  TypeContext? context = _ctx;
}

// @Route("/sendrestget/{Id}", "GET")
class SendRestGet implements IReturn<SendVerbResponse>, IGet, IConvertible {
  int? id;

  SendRestGet({this.id});
  SendRestGet.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    id = json['id'];
    return this;
  }

  Map<String, dynamic> toJson() => {'id': id};

  createResponse() => SendVerbResponse();
  getResponseTypeName() => "SendVerbResponse";
  getTypeName() => "SendRestGet";
  TypeContext? context = _ctx;
}

class SendGet implements IReturn<SendVerbResponse>, IGet, IConvertible {
  int? id;

  SendGet({this.id});
  SendGet.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    id = json['id'];
    return this;
  }

  Map<String, dynamic> toJson() => {'id': id};

  createResponse() => SendVerbResponse();
  getResponseTypeName() => "SendVerbResponse";
  getTypeName() => "SendGet";
  TypeContext? context = _ctx;
}

class SendPost implements IReturn<SendVerbResponse>, IPost, IConvertible {
  int? id;

  SendPost({this.id});
  SendPost.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    id = json['id'];
    return this;
  }

  Map<String, dynamic> toJson() => {'id': id};

  createResponse() => SendVerbResponse();
  getResponseTypeName() => "SendVerbResponse";
  getTypeName() => "SendPost";
  TypeContext? context = _ctx;
}

class SendPut implements IReturn<SendVerbResponse>, IPut, IConvertible {
  int? id;

  SendPut({this.id});
  SendPut.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    id = json['id'];
    return this;
  }

  Map<String, dynamic> toJson() => {'id': id};

  createResponse() => SendVerbResponse();
  getResponseTypeName() => "SendVerbResponse";
  getTypeName() => "SendPut";
  TypeContext? context = _ctx;
}

class SendReturnVoid implements IReturnVoid, IConvertible, IPost {
  int? id;

  SendReturnVoid({this.id});
  SendReturnVoid.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    id = json['id'];
    return this;
  }

  Map<String, dynamic> toJson() => {'id': id};

  createResponse() {}
  getTypeName() => "SendReturnVoid";
  TypeContext? context = _ctx;
}

// @Route("/session")
class GetSession implements IReturn<GetSessionResponse>, IConvertible, IPost {
  GetSession();
  GetSession.fromJson(Map<String, dynamic> json) : super();
  fromMap(Map<String, dynamic> json) {
    return this;
  }

  Map<String, dynamic> toJson() => {};
  createResponse() => GetSessionResponse();
  getResponseTypeName() => "GetSessionResponse";
  getTypeName() => "GetSession";
  TypeContext? context = _ctx;
}

// @Route("/session/edit/{CustomName}")
class UpdateSession
    implements IReturn<GetSessionResponse>, IConvertible, IPost {
  String? customName;

  UpdateSession({this.customName});
  UpdateSession.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    customName = json['customName'];
    return this;
  }

  Map<String, dynamic> toJson() => {'customName': customName};

  createResponse() => GetSessionResponse();
  getResponseTypeName() => "GetSessionResponse";
  getTypeName() => "UpdateSession";
  TypeContext? context = _ctx;
}

// @Route("/Stuff")
// @DataContract(Namespace="http://schemas.servicestack.net/types")
class GetStuff implements IReturn<GetStuffResponse>, IConvertible, IPost {
  // @DataMember
  // @ApiMember(DataType="DateTime", Name="Summary Date")
  DateTime? summaryDate;

  // @DataMember
  // @ApiMember(DataType="DateTime", Name="Summary End Date")
  DateTime? summaryEndDate;

  // @DataMember
  // @ApiMember(DataType="string", Name="Symbol")
  String? symbol;

  // @DataMember
  // @ApiMember(DataType="string", Name="Email")
  String? email;

  // @DataMember
  // @ApiMember(DataType="bool", Name="Is Enabled")
  bool? isEnabled;

  GetStuff(
      {this.summaryDate,
      this.summaryEndDate,
      this.symbol,
      this.email,
      this.isEnabled});
  GetStuff.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    summaryDate =
        JsonConverters.fromJson(json['summaryDate'], 'DateTime', context!);
    summaryEndDate =
        JsonConverters.fromJson(json['summaryEndDate'], 'DateTime', context!);
    symbol = json['symbol'];
    email = json['email'];
    isEnabled = json['isEnabled'];
    return this;
  }

  Map<String, dynamic> toJson() => {
        'summaryDate': JsonConverters.toJson(summaryDate, 'DateTime', context!),
        'summaryEndDate':
            JsonConverters.toJson(summaryEndDate, 'DateTime', context!),
        'symbol': symbol,
        'email': email,
        'isEnabled': isEnabled
      };

  createResponse() => GetStuffResponse();
  getResponseTypeName() => "GetStuffResponse";
  getTypeName() => "GetStuff";
  TypeContext? context = _ctx;
}

class StoreLogs implements IReturn<StoreLogsResponse>, IConvertible, IPost {
  List<Logger>? loggers;

  StoreLogs({this.loggers});
  StoreLogs.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    loggers =
        JsonConverters.fromJson(json['loggers'], 'List<Logger>', context!);
    return this;
  }

  Map<String, dynamic> toJson() =>
      {'loggers': JsonConverters.toJson(loggers, 'List<Logger>', context!)};

  createResponse() => StoreLogsResponse();
  getResponseTypeName() => "StoreLogsResponse";
  getTypeName() => "StoreLogs";
  TypeContext? context = _ctx;
}

class HelloAuth implements IReturn<HelloResponse>, IConvertible, IPost {
  String? name;

  HelloAuth({this.name});
  HelloAuth.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    name = json['name'];
    return this;
  }

  Map<String, dynamic> toJson() => {'name': name};

  createResponse() => HelloResponse();
  getResponseTypeName() => "HelloResponse";
  getTypeName() => "HelloAuth";
  TypeContext? context = _ctx;
}

// @Route("/testauth")
class TestAuth implements IReturn<TestAuthResponse>, IConvertible, IPost {
  TestAuth();
  TestAuth.fromJson(Map<String, dynamic> json) : super();
  fromMap(Map<String, dynamic> json) {
    return this;
  }

  Map<String, dynamic> toJson() => {};
  createResponse() => TestAuthResponse();
  getResponseTypeName() => "TestAuthResponse";
  getTypeName() => "TestAuth";
  TypeContext? context = _ctx;
}

// @Route("/testdata/AllTypes")
class TestDataAllTypes implements IReturn<AllTypes>, IConvertible, IPost {
  TestDataAllTypes();
  TestDataAllTypes.fromJson(Map<String, dynamic> json) : super();
  fromMap(Map<String, dynamic> json) {
    return this;
  }

  Map<String, dynamic> toJson() => {};
  createResponse() => AllTypes();
  getResponseTypeName() => "AllTypes";
  getTypeName() => "TestDataAllTypes";
  TypeContext? context = _ctx;
}

// @Route("/testdata/AllCollectionTypes")
class TestDataAllCollectionTypes
    implements IReturn<AllCollectionTypes>, IConvertible, IPost {
  TestDataAllCollectionTypes();
  TestDataAllCollectionTypes.fromJson(Map<String, dynamic> json) : super();
  fromMap(Map<String, dynamic> json) {
    return this;
  }

  Map<String, dynamic> toJson() => {};
  createResponse() => AllCollectionTypes();
  getResponseTypeName() => "AllCollectionTypes";
  getTypeName() => "TestDataAllCollectionTypes";
  TypeContext? context = _ctx;
}

// @Route("/void-response")
class TestVoidResponse implements IConvertible, IPost {
  TestVoidResponse();
  TestVoidResponse.fromJson(Map<String, dynamic> json) : super();
  fromMap(Map<String, dynamic> json) {
    return this;
  }

  Map<String, dynamic> toJson() => {};
  getTypeName() => "TestVoidResponse";
  TypeContext? context = _ctx;
}

// @Route("/null-response")
class TestNullResponse implements IConvertible, IPost {
  TestNullResponse();
  TestNullResponse.fromJson(Map<String, dynamic> json) : super();
  fromMap(Map<String, dynamic> json) {
    return this;
  }

  Map<String, dynamic> toJson() => {};
  getTypeName() => "TestNullResponse";
  TypeContext? context = _ctx;
}

class QueryRockstarAudit
    extends QueryDbTenant<RockstarAuditTenant, RockstarAuto>
    implements IReturn<QueryResponse<RockstarAuto>>, IConvertible, IGet {
  int? id;

  QueryRockstarAudit({this.id});
  QueryRockstarAudit.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    super.fromMap(json);
    id = json['id'];
    return this;
  }

  Map<String, dynamic> toJson() => super.toJson()..addAll({'id': id});

  createResponse() => QueryResponse<RockstarAuto>();
  getResponseTypeName() => "QueryResponse<RockstarAuto>";
  getTypeName() => "QueryRockstarAudit";
  TypeContext? context = _ctx;
}

class QueryRockstarAuditSubOr
    extends QueryDb2<RockstarAuditTenant, RockstarAuto>
    implements IReturn<QueryResponse<RockstarAuto>>, IConvertible, IGet {
  String? firstNameStartsWith;
  int? ageOlderThan;

  QueryRockstarAuditSubOr({this.firstNameStartsWith, this.ageOlderThan});
  QueryRockstarAuditSubOr.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    super.fromMap(json);
    firstNameStartsWith = json['firstNameStartsWith'];
    ageOlderThan = json['ageOlderThan'];
    return this;
  }

  Map<String, dynamic> toJson() => super.toJson()
    ..addAll({
      'firstNameStartsWith': firstNameStartsWith,
      'ageOlderThan': ageOlderThan
    });

  createResponse() => QueryResponse<RockstarAuto>();
  getResponseTypeName() => "QueryResponse<RockstarAuto>";
  getTypeName() => "QueryRockstarAuditSubOr";
  TypeContext? context = _ctx;
}

class QueryPocoBase extends QueryDb<OnlyDefinedInGenericType>
    implements
        IReturn<QueryResponse<OnlyDefinedInGenericType>>,
        IConvertible,
        IGet {
  int? id;

  QueryPocoBase({this.id});
  QueryPocoBase.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    super.fromMap(json);
    id = json['id'];
    return this;
  }

  Map<String, dynamic> toJson() => super.toJson()..addAll({'id': id});

  createResponse() => QueryResponse<OnlyDefinedInGenericType>();
  getResponseTypeName() => "QueryResponse<OnlyDefinedInGenericType>";
  getTypeName() => "QueryPocoBase";
  TypeContext? context = _ctx;
}

class QueryPocoIntoBase
    extends QueryDb2<OnlyDefinedInGenericTypeFrom, OnlyDefinedInGenericTypeInto>
    implements
        IReturn<QueryResponse<OnlyDefinedInGenericTypeInto>>,
        IConvertible,
        IGet {
  int? id;

  QueryPocoIntoBase({this.id});
  QueryPocoIntoBase.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    super.fromMap(json);
    id = json['id'];
    return this;
  }

  Map<String, dynamic> toJson() => super.toJson()..addAll({'id': id});

  createResponse() => QueryResponse<OnlyDefinedInGenericTypeInto>();
  getResponseTypeName() => "QueryResponse<OnlyDefinedInGenericTypeInto>";
  getTypeName() => "QueryPocoIntoBase";
  TypeContext? context = _ctx;
}

// @Route("/message/query/{Id}", "GET")
class MessageQuery extends QueryDb<MessageQuery>
    implements IReturn<QueryResponse<MessageQuery>>, IConvertible, IGet {
  int? id;

  MessageQuery({this.id});
  MessageQuery.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    super.fromMap(json);
    id = json['id'];
    return this;
  }

  Map<String, dynamic> toJson() => super.toJson()..addAll({'id': id});

  createResponse() => QueryResponse<MessageQuery>();
  getResponseTypeName() => "QueryResponse<MessageQuery>";
  getTypeName() => "MessageQuery";
  TypeContext? context = _ctx;
}

// @Route("/rockstars", "GET")
class QueryRockstars extends QueryDb<Rockstar>
    implements IReturn<QueryResponse<Rockstar>>, IConvertible, IGet {
  QueryRockstars();
  QueryRockstars.fromJson(Map<String, dynamic> json) : super.fromJson(json);
  fromMap(Map<String, dynamic> json) {
    super.fromMap(json);
    return this;
  }

  Map<String, dynamic> toJson() => super.toJson();
  createResponse() => QueryResponse<Rockstar>();
  getResponseTypeName() => "QueryResponse<Rockstar>";
  getTypeName() => "QueryRockstars";
  TypeContext? context = _ctx;
}

class CreateRockstarAudit extends RockstarBase
    implements
        IReturn<RockstarWithIdResponse>,
        ICreateDb<RockstarAudit>,
        IConvertible,
        IPost {
  CreateRockstarAudit();
  CreateRockstarAudit.fromJson(Map<String, dynamic> json)
      : super.fromJson(json);
  fromMap(Map<String, dynamic> json) {
    super.fromMap(json);
    return this;
  }

  Map<String, dynamic> toJson() => super.toJson();
  createResponse() => RockstarWithIdResponse();
  getResponseTypeName() => "RockstarWithIdResponse";
  getTypeName() => "CreateRockstarAudit";
  TypeContext? context = _ctx;
}

class CreateRockstarAuditTenant extends CreateAuditTenantBase<
        RockstarAuditTenant, RockstarWithIdAndResultResponse>
    implements
        IReturn<RockstarWithIdAndResultResponse>,
        IHasSessionId,
        IConvertible,
        IPost {
  String? sessionId;
  String? firstName;
  String? lastName;
  int? age;
  DateTime? dateOfBirth;
  DateTime? dateDied;
  LivingStatus? livingStatus;

  CreateRockstarAuditTenant(
      {this.sessionId,
      this.firstName,
      this.lastName,
      this.age,
      this.dateOfBirth,
      this.dateDied,
      this.livingStatus});
  CreateRockstarAuditTenant.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    super.fromMap(json);
    sessionId = json['sessionId'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    age = json['age'];
    dateOfBirth =
        JsonConverters.fromJson(json['dateOfBirth'], 'DateTime', context!);
    dateDied = JsonConverters.fromJson(json['dateDied'], 'DateTime', context!);
    livingStatus =
        JsonConverters.fromJson(json['livingStatus'], 'LivingStatus', context!);
    return this;
  }

  Map<String, dynamic> toJson() => super.toJson()
    ..addAll({
      'sessionId': sessionId,
      'firstName': firstName,
      'lastName': lastName,
      'age': age,
      'dateOfBirth': JsonConverters.toJson(dateOfBirth, 'DateTime', context!),
      'dateDied': JsonConverters.toJson(dateDied, 'DateTime', context!),
      'livingStatus':
          JsonConverters.toJson(livingStatus, 'LivingStatus', context!)
    });

  createResponse() => RockstarWithIdAndResultResponse();
  getResponseTypeName() => "RockstarWithIdAndResultResponse";
  getTypeName() => "CreateRockstarAuditTenant";
  TypeContext? context = _ctx;
}

class UpdateRockstarAuditTenant extends UpdateAuditTenantBase<
        RockstarAuditTenant, RockstarWithIdAndResultResponse>
    implements
        IReturn<RockstarWithIdAndResultResponse>,
        IHasSessionId,
        IConvertible,
        IPut {
  String? sessionId;
  int? id;
  String? firstName;
  LivingStatus? livingStatus;

  UpdateRockstarAuditTenant(
      {this.sessionId, this.id, this.firstName, this.livingStatus});
  UpdateRockstarAuditTenant.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    super.fromMap(json);
    sessionId = json['sessionId'];
    id = json['id'];
    firstName = json['firstName'];
    livingStatus =
        JsonConverters.fromJson(json['livingStatus'], 'LivingStatus', context!);
    return this;
  }

  Map<String, dynamic> toJson() => super.toJson()
    ..addAll({
      'sessionId': sessionId,
      'id': id,
      'firstName': firstName,
      'livingStatus':
          JsonConverters.toJson(livingStatus, 'LivingStatus', context!)
    });

  createResponse() => RockstarWithIdAndResultResponse();
  getResponseTypeName() => "RockstarWithIdAndResultResponse";
  getTypeName() => "UpdateRockstarAuditTenant";
  TypeContext? context = _ctx;
}

class PatchRockstarAuditTenant extends PatchAuditTenantBase<RockstarAuditTenant,
        RockstarWithIdAndResultResponse>
    implements
        IReturn<RockstarWithIdAndResultResponse>,
        IHasSessionId,
        IConvertible,
        IPatch {
  String? sessionId;
  int? id;
  String? firstName;
  LivingStatus? livingStatus;

  PatchRockstarAuditTenant(
      {this.sessionId, this.id, this.firstName, this.livingStatus});
  PatchRockstarAuditTenant.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    super.fromMap(json);
    sessionId = json['sessionId'];
    id = json['id'];
    firstName = json['firstName'];
    livingStatus =
        JsonConverters.fromJson(json['livingStatus'], 'LivingStatus', context!);
    return this;
  }

  Map<String, dynamic> toJson() => super.toJson()
    ..addAll({
      'sessionId': sessionId,
      'id': id,
      'firstName': firstName,
      'livingStatus':
          JsonConverters.toJson(livingStatus, 'LivingStatus', context!)
    });

  createResponse() => RockstarWithIdAndResultResponse();
  getResponseTypeName() => "RockstarWithIdAndResultResponse";
  getTypeName() => "PatchRockstarAuditTenant";
  TypeContext? context = _ctx;
}

class SoftDeleteAuditTenant extends SoftDeleteAuditTenantBase<
        RockstarAuditTenant, RockstarWithIdAndResultResponse>
    implements IReturn<RockstarWithIdAndResultResponse>, IConvertible, IPut {
  int? id;

  SoftDeleteAuditTenant({this.id});
  SoftDeleteAuditTenant.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    super.fromMap(json);
    id = json['id'];
    return this;
  }

  Map<String, dynamic> toJson() => super.toJson()..addAll({'id': id});

  createResponse() => RockstarWithIdAndResultResponse();
  getResponseTypeName() => "RockstarWithIdAndResultResponse";
  getTypeName() => "SoftDeleteAuditTenant";
  TypeContext? context = _ctx;
}

class CreateRockstarAuditMqToken extends RockstarBase
    implements
        IReturn<RockstarWithIdResponse>,
        ICreateDb<RockstarAudit>,
        IHasBearerToken,
        IConvertible,
        IPost {
  String? bearerToken;

  CreateRockstarAuditMqToken({this.bearerToken});
  CreateRockstarAuditMqToken.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    super.fromMap(json);
    bearerToken = json['bearerToken'];
    return this;
  }

  Map<String, dynamic> toJson() =>
      super.toJson()..addAll({'bearerToken': bearerToken});

  createResponse() => RockstarWithIdResponse();
  getResponseTypeName() => "RockstarWithIdResponse";
  getTypeName() => "CreateRockstarAuditMqToken";
  TypeContext? context = _ctx;
}

class RealDeleteAuditTenant
    implements
        IReturn<RockstarWithIdAndCountResponse>,
        IDeleteDb<RockstarAuditTenant>,
        IHasSessionId,
        IConvertible,
        IDelete {
  String? sessionId;
  int? id;
  int? age;

  RealDeleteAuditTenant({this.sessionId, this.id, this.age});
  RealDeleteAuditTenant.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    sessionId = json['sessionId'];
    id = json['id'];
    age = json['age'];
    return this;
  }

  Map<String, dynamic> toJson() =>
      {'sessionId': sessionId, 'id': id, 'age': age};

  createResponse() => RockstarWithIdAndCountResponse();
  getResponseTypeName() => "RockstarWithIdAndCountResponse";
  getTypeName() => "RealDeleteAuditTenant";
  TypeContext? context = _ctx;
}

class CreateRockstarVersion extends RockstarBase
    implements
        IReturn<RockstarWithIdAndRowVersionResponse>,
        ICreateDb<RockstarVersion>,
        IConvertible,
        IPost {
  CreateRockstarVersion();
  CreateRockstarVersion.fromJson(Map<String, dynamic> json)
      : super.fromJson(json);
  fromMap(Map<String, dynamic> json) {
    super.fromMap(json);
    return this;
  }

  Map<String, dynamic> toJson() => super.toJson();
  createResponse() => RockstarWithIdAndRowVersionResponse();
  getResponseTypeName() => "RockstarWithIdAndRowVersionResponse";
  getTypeName() => "CreateRockstarVersion";
  TypeContext? context = _ctx;
}

TypeContext _ctx =
    TypeContext(library: 'test.servicestack.net', types: <String, TypeInfo>{
  'Item': TypeInfo(TypeOf.Class, create: () => Item()),
  'Poco': TypeInfo(TypeOf.Class, create: () => Poco()),
  'CustomType': TypeInfo(TypeOf.Class, create: () => CustomType()),
  'SetterType': TypeInfo(TypeOf.Class, create: () => SetterType()),
  'DeclarativeChildValidation':
      TypeInfo(TypeOf.Class, create: () => DeclarativeChildValidation()),
  'FluentChildValidation':
      TypeInfo(TypeOf.Class, create: () => FluentChildValidation()),
  'DeclarativeSingleValidation':
      TypeInfo(TypeOf.Class, create: () => DeclarativeSingleValidation()),
  'FluentSingleValidation':
      TypeInfo(TypeOf.Class, create: () => FluentSingleValidation()),
  'IGeneration': TypeInfo(TypeOf.Interface),
  'IAuthTokens': TypeInfo(TypeOf.Interface),
  'AuthUserSession': TypeInfo(TypeOf.Class, create: () => AuthUserSession()),
  'List<IAuthTokens>': TypeInfo(TypeOf.Class, create: () => <IAuthTokens>[]),
  'NestedClass': TypeInfo(TypeOf.Class, create: () => NestedClass()),
  'EnumType': TypeInfo(TypeOf.Enum, enumValues: EnumType.values),
  'EnumTypeFlags': TypeInfo(TypeOf.Enum, enumValues: EnumTypeFlags.values),
  'EnumWithValues': TypeInfo(TypeOf.Enum, enumValues: EnumWithValues.values),
  'EnumFlags': TypeInfo(TypeOf.Enum, enumValues: EnumFlags.values),
  'EnumAsInt': TypeInfo(TypeOf.Enum, enumValues: EnumAsInt.values),
  'EnumStyle': TypeInfo(TypeOf.Enum, enumValues: EnumStyle.values),
  'EnumStyleMembers':
      TypeInfo(TypeOf.Enum, enumValues: EnumStyleMembers.values),
  'SubType': TypeInfo(TypeOf.Class, create: () => SubType()),
  'AllTypesBase': TypeInfo(TypeOf.AbstractClass),
  'Map<int,String?>': TypeInfo(TypeOf.Class, create: () => Map<int, String?>()),
  'HelloBase': TypeInfo(TypeOf.AbstractClass),
  'HelloBase1<T>': TypeInfo(TypeOf.AbstractClass),
  'IPoco': TypeInfo(TypeOf.Interface),
  'IEmptyInterface': TypeInfo(TypeOf.Interface),
  'EmptyClass': TypeInfo(TypeOf.Class, create: () => EmptyClass()),
  'DayOfWeek': TypeInfo(TypeOf.Enum, enumValues: DayOfWeek.values),
  'ScopeType': TypeInfo(TypeOf.Enum, enumValues: ScopeType.values),
  'Channel': TypeInfo(TypeOf.Class, create: () => Channel()),
  'Device': TypeInfo(TypeOf.Class, create: () => Device()),
  'List<Channel>': TypeInfo(TypeOf.Class, create: () => <Channel>[]),
  'Logger': TypeInfo(TypeOf.Class, create: () => Logger()),
  'List<Device>': TypeInfo(TypeOf.Class, create: () => <Device>[]),
  'Rockstar': TypeInfo(TypeOf.Class, create: () => Rockstar()),
  'QueryDbTenant<From,Into>': TypeInfo(TypeOf.AbstractClass),
  'LivingStatus': TypeInfo(TypeOf.Enum, enumValues: LivingStatus.values),
  'RockstarAuditTenant':
      TypeInfo(TypeOf.Class, create: () => RockstarAuditTenant()),
  'RockstarBase': TypeInfo(TypeOf.AbstractClass),
  'RockstarAuto': TypeInfo(TypeOf.Class, create: () => RockstarAuto()),
  'OnlyDefinedInGenericType':
      TypeInfo(TypeOf.Class, create: () => OnlyDefinedInGenericType()),
  'OnlyDefinedInGenericTypeFrom':
      TypeInfo(TypeOf.Class, create: () => OnlyDefinedInGenericTypeFrom()),
  'OnlyDefinedInGenericTypeInto':
      TypeInfo(TypeOf.Class, create: () => OnlyDefinedInGenericTypeInto()),
  'RockstarAudit': TypeInfo(TypeOf.Class, create: () => RockstarAudit()),
  'CreateAuditBase<Table,TResponse>': TypeInfo(TypeOf.AbstractClass),
  'CreateAuditTenantBase<Table,TResponse>': TypeInfo(TypeOf.AbstractClass),
  'UpdateAuditBase<Table,TResponse>': TypeInfo(TypeOf.AbstractClass),
  'UpdateAuditTenantBase<Table,TResponse>': TypeInfo(TypeOf.AbstractClass),
  'PatchAuditBase<Table,TResponse>': TypeInfo(TypeOf.AbstractClass),
  'PatchAuditTenantBase<Table,TResponse>': TypeInfo(TypeOf.AbstractClass),
  'SoftDeleteAuditBase<Table,TResponse>': TypeInfo(TypeOf.AbstractClass),
  'SoftDeleteAuditTenantBase<Table,TResponse>': TypeInfo(TypeOf.AbstractClass),
  'RockstarVersion': TypeInfo(TypeOf.Class, create: () => RockstarVersion()),
  'MessageCrud': TypeInfo(TypeOf.Class, create: () => MessageCrud()),
  'ArtifactOutput': TypeInfo(TypeOf.Class, create: () => ArtifactOutput()),
  'TextOutput': TypeInfo(TypeOf.Class, create: () => TextOutput()),
  'UploadInfo': TypeInfo(TypeOf.Class, create: () => UploadInfo()),
  'MetadataTestNestedChild':
      TypeInfo(TypeOf.Class, create: () => MetadataTestNestedChild()),
  'MetadataTestChild':
      TypeInfo(TypeOf.Class, create: () => MetadataTestChild()),
  'List<MetadataTestNestedChild>':
      TypeInfo(TypeOf.Class, create: () => <MetadataTestNestedChild>[]),
  'MenuItemExampleItem':
      TypeInfo(TypeOf.Class, create: () => MenuItemExampleItem()),
  'MenuItemExample': TypeInfo(TypeOf.Class, create: () => MenuItemExample()),
  'MenuExample': TypeInfo(TypeOf.Class, create: () => MenuExample()),
  'ListResult': TypeInfo(TypeOf.Class, create: () => ListResult()),
  'ArrayResult': TypeInfo(TypeOf.Class, create: () => ArrayResult()),
  'HelloResponseBase': TypeInfo(TypeOf.AbstractClass),
  'HelloWithReturnResponse': TypeInfo(TypeOf.AbstractClass),
  'HelloType': TypeInfo(TypeOf.Class, create: () => HelloType()),
  'InnerType': TypeInfo(TypeOf.Class, create: () => InnerType()),
  'InnerEnum': TypeInfo(TypeOf.Enum, enumValues: InnerEnum.values),
  'ReturnedDto': TypeInfo(TypeOf.Class, create: () => ReturnedDto()),
  'CustomUserSession':
      TypeInfo(TypeOf.Class, create: () => CustomUserSession()),
  'UnAuthInfo': TypeInfo(TypeOf.Class, create: () => UnAuthInfo()),
  'TypesGroup': TypeInfo(TypeOf.Class, create: () => TypesGroup()),
  'ChatMessage': TypeInfo(TypeOf.Class, create: () => ChatMessage()),
  'GetChatHistoryResponse':
      TypeInfo(TypeOf.Class, create: () => GetChatHistoryResponse()),
  'List<ChatMessage>': TypeInfo(TypeOf.Class, create: () => <ChatMessage>[]),
  'GetUserDetailsResponse':
      TypeInfo(TypeOf.Class, create: () => GetUserDetailsResponse()),
  'CustomHttpErrorResponse':
      TypeInfo(TypeOf.Class, create: () => CustomHttpErrorResponse()),
  //'QueryResponseAlt<T>': TypeInfo(TypeOf.Class, create:() => QueryResponseAlt<T>()),
  'List<Item>': TypeInfo(TypeOf.Class, create: () => <Item>[]),
  'Items': TypeInfo(TypeOf.Class, create: () => Items()),
  'ReturnCustom400Response':
      TypeInfo(TypeOf.Class, create: () => ReturnCustom400Response()),
  'ThrowTypeResponse':
      TypeInfo(TypeOf.Class, create: () => ThrowTypeResponse()),
  'ThrowValidationResponse':
      TypeInfo(TypeOf.Class, create: () => ThrowValidationResponse()),
  'ThrowBusinessErrorResponse':
      TypeInfo(TypeOf.Class, create: () => ThrowBusinessErrorResponse()),
  'GenerationResponse':
      TypeInfo(TypeOf.Class, create: () => GenerationResponse()),
  'List<ArtifactOutput>':
      TypeInfo(TypeOf.Class, create: () => <ArtifactOutput>[]),
  'List<TextOutput>': TypeInfo(TypeOf.Class, create: () => <TextOutput>[]),
  'TestFileUploadsResponse':
      TypeInfo(TypeOf.Class, create: () => TestFileUploadsResponse()),
  'List<UploadInfo>': TypeInfo(TypeOf.Class, create: () => <UploadInfo>[]),
  'Account': TypeInfo(TypeOf.Class, create: () => Account()),
  'Project': TypeInfo(TypeOf.Class, create: () => Project()),
  'SecuredResponse': TypeInfo(TypeOf.Class, create: () => SecuredResponse()),
  'CreateJwtResponse':
      TypeInfo(TypeOf.Class, create: () => CreateJwtResponse()),
  'CreateRefreshJwtResponse':
      TypeInfo(TypeOf.Class, create: () => CreateRefreshJwtResponse()),
  'MetadataTestResponse':
      TypeInfo(TypeOf.Class, create: () => MetadataTestResponse()),
  'List<MetadataTestChild>':
      TypeInfo(TypeOf.Class, create: () => <MetadataTestChild>[]),
  'GetExampleResponse':
      TypeInfo(TypeOf.Class, create: () => GetExampleResponse()),
  'Message': TypeInfo(TypeOf.Class, create: () => Message()),
  'GetRandomIdsResponse':
      TypeInfo(TypeOf.Class, create: () => GetRandomIdsResponse()),
  'HelloResponse': TypeInfo(TypeOf.Class, create: () => HelloResponse()),
  'HelloAnnotatedResponse':
      TypeInfo(TypeOf.Class, create: () => HelloAnnotatedResponse()),
  'AllTypes': TypeInfo(TypeOf.Class, create: () => AllTypes()),
  'AllCollectionTypes':
      TypeInfo(TypeOf.Class, create: () => AllCollectionTypes()),
  'Uint8List': TypeInfo(TypeOf.Class, create: () => Uint8List(0)),
  'List<Poco>': TypeInfo(TypeOf.Class, create: () => <Poco>[]),
  'Map<String,List<Poco>?>':
      TypeInfo(TypeOf.Class, create: () => Map<String, List<Poco>?>()),
  'Map<String,List<Map<String,Poco>>?>': TypeInfo(TypeOf.Class,
      create: () => Map<String, List<Map<String, Poco>>?>()),
  'List<Map<String,Poco>>':
      TypeInfo(TypeOf.Class, create: () => <Map<String, Poco>>[]),
  'Map<String,Poco>': TypeInfo(TypeOf.Class, create: () => Map<String, Poco>()),
  'HelloAllTypesResponse':
      TypeInfo(TypeOf.Class, create: () => HelloAllTypesResponse()),
  'SubAllTypes': TypeInfo(TypeOf.Class, create: () => SubAllTypes()),
  'HelloDateTime': TypeInfo(TypeOf.Class, create: () => HelloDateTime()),
  'HelloWithDataContractResponse':
      TypeInfo(TypeOf.Class, create: () => HelloWithDataContractResponse()),
  'HelloWithDescriptionResponse':
      TypeInfo(TypeOf.Class, create: () => HelloWithDescriptionResponse()),
  'HelloWithInheritanceResponse':
      TypeInfo(TypeOf.Class, create: () => HelloWithInheritanceResponse()),
  'HelloWithAlternateReturnResponse':
      TypeInfo(TypeOf.Class, create: () => HelloWithAlternateReturnResponse()),
  'HelloWithRouteResponse':
      TypeInfo(TypeOf.Class, create: () => HelloWithRouteResponse()),
  'HelloWithTypeResponse':
      TypeInfo(TypeOf.Class, create: () => HelloWithTypeResponse()),
  'HelloInnerTypesResponse':
      TypeInfo(TypeOf.Class, create: () => HelloInnerTypesResponse()),
  'HelloVerbResponse':
      TypeInfo(TypeOf.Class, create: () => HelloVerbResponse()),
  'EnumResponse': TypeInfo(TypeOf.Class, create: () => EnumResponse()),
  'HelloTypes': TypeInfo(TypeOf.Class, create: () => HelloTypes()),
  'HelloZipResponse': TypeInfo(TypeOf.Class, create: () => HelloZipResponse()),
  'PingResponse': TypeInfo(TypeOf.Class, create: () => PingResponse()),
  'Map<String,ResponseStatus?>':
      TypeInfo(TypeOf.Class, create: () => Map<String, ResponseStatus?>()),
  'RequiresRoleResponse':
      TypeInfo(TypeOf.Class, create: () => RequiresRoleResponse()),
  'SendVerbResponse': TypeInfo(TypeOf.Class, create: () => SendVerbResponse()),
  'GetSessionResponse':
      TypeInfo(TypeOf.Class, create: () => GetSessionResponse()),
  'GetStuffResponse': TypeInfo(TypeOf.Class, create: () => GetStuffResponse()),
  'StoreLogsResponse':
      TypeInfo(TypeOf.Class, create: () => StoreLogsResponse()),
  'List<Logger>': TypeInfo(TypeOf.Class, create: () => <Logger>[]),
  'TestAuthResponse': TypeInfo(TypeOf.Class, create: () => TestAuthResponse()),
  'RequiresAdmin': TypeInfo(TypeOf.Class, create: () => RequiresAdmin()),
  'CustomRoute': TypeInfo(TypeOf.Class, create: () => CustomRoute()),
  'Wait': TypeInfo(TypeOf.Class, create: () => Wait()),
  'EchoTypes': TypeInfo(TypeOf.Class, create: () => EchoTypes()),
  'EchoCollections': TypeInfo(TypeOf.Class, create: () => EchoCollections()),
  'EchoComplexTypes': TypeInfo(TypeOf.Class, create: () => EchoComplexTypes()),
  'List<SubType>': TypeInfo(TypeOf.Class, create: () => <SubType>[]),
  'Map<String,SubType?>':
      TypeInfo(TypeOf.Class, create: () => Map<String, SubType?>()),
  'StoreRockstars': TypeInfo(TypeOf.Class, create: () => StoreRockstars()),
  'RockstarWithIdResponse':
      TypeInfo(TypeOf.Class, create: () => RockstarWithIdResponse()),
  'RockstarWithIdAndResultResponse':
      TypeInfo(TypeOf.Class, create: () => RockstarWithIdAndResultResponse()),
  'RockstarWithIdAndCountResponse':
      TypeInfo(TypeOf.Class, create: () => RockstarWithIdAndCountResponse()),
  'RockstarWithIdAndRowVersionResponse': TypeInfo(TypeOf.Class,
      create: () => RockstarWithIdAndRowVersionResponse()),
  'QueryResponse<Poco>':
      TypeInfo(TypeOf.Class, create: () => QueryResponse<Poco>()),
  'QueryItems': TypeInfo(TypeOf.Class, create: () => QueryItems()),
  'PostRawToChannel': TypeInfo(TypeOf.Class, create: () => PostRawToChannel()),
  'PostChatToChannel':
      TypeInfo(TypeOf.Class, create: () => PostChatToChannel()),
  'GetChatHistory': TypeInfo(TypeOf.Class, create: () => GetChatHistory()),
  'ClearChatHistory': TypeInfo(TypeOf.Class, create: () => ClearChatHistory()),
  'ResetServerEvents':
      TypeInfo(TypeOf.Class, create: () => ResetServerEvents()),
  'PostObjectToChannel':
      TypeInfo(TypeOf.Class, create: () => PostObjectToChannel()),
  'GetUserDetails': TypeInfo(TypeOf.Class, create: () => GetUserDetails()),
  'CustomHttpError': TypeInfo(TypeOf.Class, create: () => CustomHttpError()),
  'AltQueryItems': TypeInfo(TypeOf.Class, create: () => AltQueryItems()),
  'GetItems': TypeInfo(TypeOf.Class, create: () => GetItems()),
  'GetNakedItems': TypeInfo(TypeOf.Class, create: () => GetNakedItems()),
  'DeclarativeValidationAuth':
      TypeInfo(TypeOf.Class, create: () => DeclarativeValidationAuth()),
  'DeclarativeCollectiveValidationTest': TypeInfo(TypeOf.Class,
      create: () => DeclarativeCollectiveValidationTest()),
  'List<DeclarativeChildValidation>':
      TypeInfo(TypeOf.Class, create: () => <DeclarativeChildValidation>[]),
  'List<FluentChildValidation>':
      TypeInfo(TypeOf.Class, create: () => <FluentChildValidation>[]),
  'DeclarativeSingleValidationTest':
      TypeInfo(TypeOf.Class, create: () => DeclarativeSingleValidationTest()),
  'DummyTypes': TypeInfo(TypeOf.Class, create: () => DummyTypes()),
  'List<HelloResponse>':
      TypeInfo(TypeOf.Class, create: () => <HelloResponse>[]),
  'List<ListResult>': TypeInfo(TypeOf.Class, create: () => <ListResult>[]),
  'List<ArrayResult>': TypeInfo(TypeOf.Class, create: () => <ArrayResult>[]),
  'ThrowHttpError': TypeInfo(TypeOf.Class, create: () => ThrowHttpError()),
  'Throw404': TypeInfo(TypeOf.Class, create: () => Throw404()),
  'ThrowCustom400': TypeInfo(TypeOf.Class, create: () => ThrowCustom400()),
  'ReturnCustom400': TypeInfo(TypeOf.Class, create: () => ReturnCustom400()),
  'ThrowType': TypeInfo(TypeOf.Class, create: () => ThrowType()),
  'ThrowValidation': TypeInfo(TypeOf.Class, create: () => ThrowValidation()),
  'ThrowBusinessError':
      TypeInfo(TypeOf.Class, create: () => ThrowBusinessError()),
  'SpeechToText': TypeInfo(TypeOf.Class, create: () => SpeechToText()),
  'TestFileUploads': TypeInfo(TypeOf.Class, create: () => TestFileUploads()),
  'RootPathRoutes': TypeInfo(TypeOf.Class, create: () => RootPathRoutes()),
  'GetAccount': TypeInfo(TypeOf.Class, create: () => GetAccount()),
  'GetProject': TypeInfo(TypeOf.Class, create: () => GetProject()),
  'ImageAsStream': TypeInfo(TypeOf.Class, create: () => ImageAsStream()),
  'ImageAsBytes': TypeInfo(TypeOf.Class, create: () => ImageAsBytes()),
  'ImageAsCustomResult':
      TypeInfo(TypeOf.Class, create: () => ImageAsCustomResult()),
  'ImageWriteToResponse':
      TypeInfo(TypeOf.Class, create: () => ImageWriteToResponse()),
  'ImageAsFile': TypeInfo(TypeOf.Class, create: () => ImageAsFile()),
  'ImageAsRedirect': TypeInfo(TypeOf.Class, create: () => ImageAsRedirect()),
  'HelloImage': TypeInfo(TypeOf.Class, create: () => HelloImage()),
  'Secured': TypeInfo(TypeOf.Class, create: () => Secured()),
  'CreateJwt': TypeInfo(TypeOf.Class, create: () => CreateJwt()),
  'CreateRefreshJwt': TypeInfo(TypeOf.Class, create: () => CreateRefreshJwt()),
  'InvalidateLastAccessToken':
      TypeInfo(TypeOf.Class, create: () => InvalidateLastAccessToken()),
  'ViewLogs': TypeInfo(TypeOf.Class, create: () => ViewLogs()),
  'MetadataTest': TypeInfo(TypeOf.Class, create: () => MetadataTest()),
  'MetadataTestArray':
      TypeInfo(TypeOf.Class, create: () => MetadataTestArray()),
  'GetExample': TypeInfo(TypeOf.Class, create: () => GetExample()),
  'RequestMessage': TypeInfo(TypeOf.Class, create: () => RequestMessage()),
  'GetRandomIds': TypeInfo(TypeOf.Class, create: () => GetRandomIds()),
  'TextFileTest': TypeInfo(TypeOf.Class, create: () => TextFileTest()),
  'ReturnText': TypeInfo(TypeOf.Class, create: () => ReturnText()),
  'ReturnHtml': TypeInfo(TypeOf.Class, create: () => ReturnHtml()),
  'Hello': TypeInfo(TypeOf.Class, create: () => Hello()),
  'HelloSecure': TypeInfo(TypeOf.Class, create: () => HelloSecure()),
  'HelloAnnotated': TypeInfo(TypeOf.Class, create: () => HelloAnnotated()),
  'HelloWithNestedClass':
      TypeInfo(TypeOf.Class, create: () => HelloWithNestedClass()),
  'HelloList': TypeInfo(TypeOf.Class, create: () => HelloList()),
  'HelloArray': TypeInfo(TypeOf.Class, create: () => HelloArray()),
  'HelloMap': TypeInfo(TypeOf.Class, create: () => HelloMap()),
  'HelloQueryResponse':
      TypeInfo(TypeOf.Class, create: () => HelloQueryResponse()),
  'HelloWithEnum': TypeInfo(TypeOf.Class, create: () => HelloWithEnum()),
  'HelloWithEnumList':
      TypeInfo(TypeOf.Class, create: () => HelloWithEnumList()),
  'List<EnumType>': TypeInfo(TypeOf.Class, create: () => <EnumType>[]),
  'List<EnumWithValues>':
      TypeInfo(TypeOf.Class, create: () => <EnumWithValues>[]),
  'List<EnumFlags>': TypeInfo(TypeOf.Class, create: () => <EnumFlags>[]),
  'List<EnumStyle>': TypeInfo(TypeOf.Class, create: () => <EnumStyle>[]),
  'HelloWithEnumMap': TypeInfo(TypeOf.Class, create: () => HelloWithEnumMap()),
  'Map<EnumType,EnumType?>':
      TypeInfo(TypeOf.Class, create: () => Map<EnumType, EnumType?>()),
  'Map<EnumWithValues,EnumWithValues?>': TypeInfo(TypeOf.Class,
      create: () => Map<EnumWithValues, EnumWithValues?>()),
  'Map<EnumFlags,EnumFlags?>':
      TypeInfo(TypeOf.Class, create: () => Map<EnumFlags, EnumFlags?>()),
  'Map<EnumStyle,EnumStyle?>':
      TypeInfo(TypeOf.Class, create: () => Map<EnumStyle, EnumStyle?>()),
  'RestrictedAttributes':
      TypeInfo(TypeOf.Class, create: () => RestrictedAttributes()),
  'AllowedAttributes':
      TypeInfo(TypeOf.Class, create: () => AllowedAttributes()),
  'HelloAllTypes': TypeInfo(TypeOf.Class, create: () => HelloAllTypes()),
  'HelloSubAllTypes': TypeInfo(TypeOf.Class, create: () => HelloSubAllTypes()),
  'HelloString': TypeInfo(TypeOf.Class, create: () => HelloString()),
  'HelloVoid': TypeInfo(TypeOf.Class, create: () => HelloVoid()),
  'HelloWithDataContract':
      TypeInfo(TypeOf.Class, create: () => HelloWithDataContract()),
  'HelloWithDescription':
      TypeInfo(TypeOf.Class, create: () => HelloWithDescription()),
  'HelloWithInheritance':
      TypeInfo(TypeOf.Class, create: () => HelloWithInheritance()),
  'HelloWithGenericInheritance':
      TypeInfo(TypeOf.Class, create: () => HelloWithGenericInheritance()),
  'HelloWithGenericInheritance2':
      TypeInfo(TypeOf.Class, create: () => HelloWithGenericInheritance2()),
  'HelloWithReturn': TypeInfo(TypeOf.Class, create: () => HelloWithReturn()),
  'HelloWithRoute': TypeInfo(TypeOf.Class, create: () => HelloWithRoute()),
  'HelloWithType': TypeInfo(TypeOf.Class, create: () => HelloWithType()),
  'HelloInterface': TypeInfo(TypeOf.Class, create: () => HelloInterface()),
  'HelloInnerTypes': TypeInfo(TypeOf.Class, create: () => HelloInnerTypes()),
  'HelloBuiltin': TypeInfo(TypeOf.Class, create: () => HelloBuiltin()),
  'HelloGet': TypeInfo(TypeOf.Class, create: () => HelloGet()),
  'HelloPost': TypeInfo(TypeOf.Class, create: () => HelloPost()),
  'HelloPut': TypeInfo(TypeOf.Class, create: () => HelloPut()),
  'HelloDelete': TypeInfo(TypeOf.Class, create: () => HelloDelete()),
  'HelloPatch': TypeInfo(TypeOf.Class, create: () => HelloPatch()),
  'HelloReturnVoid': TypeInfo(TypeOf.Class, create: () => HelloReturnVoid()),
  'EnumRequest': TypeInfo(TypeOf.Class, create: () => EnumRequest()),
  'HelloZip': TypeInfo(TypeOf.Class, create: () => HelloZip()),
  'Ping': TypeInfo(TypeOf.Class, create: () => Ping()),
  'ResetConnections': TypeInfo(TypeOf.Class, create: () => ResetConnections()),
  'RequiresRole': TypeInfo(TypeOf.Class, create: () => RequiresRole()),
  'ReturnString': TypeInfo(TypeOf.Class, create: () => ReturnString()),
  'ReturnBytes': TypeInfo(TypeOf.Class, create: () => ReturnBytes()),
  'ReturnStream': TypeInfo(TypeOf.Class, create: () => ReturnStream()),
  'ReturnJson': TypeInfo(TypeOf.Class, create: () => ReturnJson()),
  'ReturnJsonHeader': TypeInfo(TypeOf.Class, create: () => ReturnJsonHeader()),
  'WriteJson': TypeInfo(TypeOf.Class, create: () => WriteJson()),
  'GetRequest1': TypeInfo(TypeOf.Class, create: () => GetRequest1()),
  'GetRequest2': TypeInfo(TypeOf.Class, create: () => GetRequest2()),
  'SendJson': TypeInfo(TypeOf.Class, create: () => SendJson()),
  'SendText': TypeInfo(TypeOf.Class, create: () => SendText()),
  'SendRaw': TypeInfo(TypeOf.Class, create: () => SendRaw()),
  'SendDefault': TypeInfo(TypeOf.Class, create: () => SendDefault()),
  'SendRestGet': TypeInfo(TypeOf.Class, create: () => SendRestGet()),
  'SendGet': TypeInfo(TypeOf.Class, create: () => SendGet()),
  'SendPost': TypeInfo(TypeOf.Class, create: () => SendPost()),
  'SendPut': TypeInfo(TypeOf.Class, create: () => SendPut()),
  'SendReturnVoid': TypeInfo(TypeOf.Class, create: () => SendReturnVoid()),
  'GetSession': TypeInfo(TypeOf.Class, create: () => GetSession()),
  'UpdateSession': TypeInfo(TypeOf.Class, create: () => UpdateSession()),
  'GetStuff': TypeInfo(TypeOf.Class, create: () => GetStuff()),
  'StoreLogs': TypeInfo(TypeOf.Class, create: () => StoreLogs()),
  'HelloAuth': TypeInfo(TypeOf.Class, create: () => HelloAuth()),
  'TestAuth': TypeInfo(TypeOf.Class, create: () => TestAuth()),
  'TestDataAllTypes': TypeInfo(TypeOf.Class, create: () => TestDataAllTypes()),
  'TestDataAllCollectionTypes':
      TypeInfo(TypeOf.Class, create: () => TestDataAllCollectionTypes()),
  'TestVoidResponse': TypeInfo(TypeOf.Class, create: () => TestVoidResponse()),
  'TestNullResponse': TypeInfo(TypeOf.Class, create: () => TestNullResponse()),
  'QueryResponse<RockstarAuto>':
      TypeInfo(TypeOf.Class, create: () => QueryResponse<RockstarAuto>()),
  'QueryRockstarAudit':
      TypeInfo(TypeOf.Class, create: () => QueryRockstarAudit()),
  'QueryRockstarAuditSubOr':
      TypeInfo(TypeOf.Class, create: () => QueryRockstarAuditSubOr()),
  'List<RockstarAuto>': TypeInfo(TypeOf.Class, create: () => <RockstarAuto>[]),
  'QueryResponse<OnlyDefinedInGenericType>': TypeInfo(TypeOf.Class,
      create: () => QueryResponse<OnlyDefinedInGenericType>()),
  'QueryPocoBase': TypeInfo(TypeOf.Class, create: () => QueryPocoBase()),
  'List<OnlyDefinedInGenericType>':
      TypeInfo(TypeOf.Class, create: () => <OnlyDefinedInGenericType>[]),
  'QueryResponse<OnlyDefinedInGenericTypeInto>': TypeInfo(TypeOf.Class,
      create: () => QueryResponse<OnlyDefinedInGenericTypeInto>()),
  'QueryPocoIntoBase':
      TypeInfo(TypeOf.Class, create: () => QueryPocoIntoBase()),
  'List<OnlyDefinedInGenericTypeInto>':
      TypeInfo(TypeOf.Class, create: () => <OnlyDefinedInGenericTypeInto>[]),
  'QueryResponse<MessageQuery>':
      TypeInfo(TypeOf.Class, create: () => QueryResponse<MessageQuery>()),
  'MessageQuery': TypeInfo(TypeOf.Class, create: () => MessageQuery()),
  'QueryResponse<Rockstar>':
      TypeInfo(TypeOf.Class, create: () => QueryResponse<Rockstar>()),
  'QueryRockstars': TypeInfo(TypeOf.Class, create: () => QueryRockstars()),
  'List<Rockstar>': TypeInfo(TypeOf.Class, create: () => <Rockstar>[]),
  'CreateRockstarAudit':
      TypeInfo(TypeOf.Class, create: () => CreateRockstarAudit()),
  'CreateRockstarAuditTenant':
      TypeInfo(TypeOf.Class, create: () => CreateRockstarAuditTenant()),
  'UpdateRockstarAuditTenant':
      TypeInfo(TypeOf.Class, create: () => UpdateRockstarAuditTenant()),
  'PatchRockstarAuditTenant':
      TypeInfo(TypeOf.Class, create: () => PatchRockstarAuditTenant()),
  'SoftDeleteAuditTenant':
      TypeInfo(TypeOf.Class, create: () => SoftDeleteAuditTenant()),
  'CreateRockstarAuditMqToken':
      TypeInfo(TypeOf.Class, create: () => CreateRockstarAuditMqToken()),
  'RealDeleteAuditTenant':
      TypeInfo(TypeOf.Class, create: () => RealDeleteAuditTenant()),
  'CreateRockstarVersion':
      TypeInfo(TypeOf.Class, create: () => CreateRockstarVersion()),
});
