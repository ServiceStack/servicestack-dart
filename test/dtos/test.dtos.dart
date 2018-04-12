/* Options:
Date: 2018-04-12 19:51:18
Version: 5.00
Tip: To override a DTO option, remove "//" prefix before updating
BaseUrl: http://test.servicestack.net

//GlobalNamespace: 
//AddServiceStackTypes: True
//AddResponseStatus: False
//AddImplicitVersion: 
//AddDescriptionAsComments: True
//IncludeTypes: 
//ExcludeTypes: 
DefaultImports: ../../lib/client.dart,dart:collection,dart:typed_data
*/

import '../../lib/client.dart';
import 'dart:collection';
import 'dart:typed_data';

// @DataContract
class ResponseError
{
    // @DataMember(Order=1, EmitDefaultValue=false)
    String errorCode;

    // @DataMember(Order=2, EmitDefaultValue=false)
    String fieldName;

    // @DataMember(Order=3, EmitDefaultValue=false)
    String message;

    // @DataMember(Order=4, EmitDefaultValue=false)
    Map<String,String> meta;

    ResponseError({this.errorCode,this.fieldName,this.message,this.meta});

    ResponseError fromMap(Map<String, dynamic> map) => new ResponseError.fromJson(map);
    ResponseError.fromJson(Map<String, dynamic> json) {
        errorCode = json['errorCode'];
        fieldName = json['fieldName'];
        message = json['message'];
        meta = JsonConverters.toStringMap(json['meta']);
    }

    Map<String, dynamic> toJson() => {
        'errorCode': errorCode,
        'fieldName': fieldName,
        'message': message,
        'meta': meta
    };

}

// @DataContract
class ResponseStatus
{
    // @DataMember(Order=1)
    String errorCode;

    // @DataMember(Order=2)
    String message;

    // @DataMember(Order=3)
    String stackTrace;

    // @DataMember(Order=4)
    List<ResponseError> errors;

    // @DataMember(Order=5)
    Map<String,String> meta;

    ResponseStatus({this.errorCode,this.message,this.stackTrace,this.errors,this.meta});

    ResponseStatus fromMap(Map<String, dynamic> map) => new ResponseStatus.fromJson(map);
    ResponseStatus.fromJson(Map<String, dynamic> json) {
        errorCode = json['errorCode'];
        message = json['message'];
        stackTrace = json['stackTrace'];
        errors = JsonConverters.fromJson(json['errors'],'List<ResponseError>',_types);
        meta = JsonConverters.toStringMap(json['meta']);
    }

    Map<String, dynamic> toJson() => {
        'errorCode': errorCode,
        'message': message,
        'stackTrace': stackTrace,
        'errors': JsonConverters.toJson(errors,'List<ResponseError>',_types),
        'meta': meta
    };

}

enum ExternalEnum
{
    Foo,
    Bar,
    Baz,
}

enum ExternalEnum2
{
    Uno,
    Due,
    Tre,
}

class ExternalType
{
    ExternalEnum2 externalEnum2;

    ExternalType({this.externalEnum2});

    ExternalType fromMap(Map<String, dynamic> map) => new ExternalType.fromJson(map);
    ExternalType.fromJson(Map<String, dynamic> json) {
        externalEnum2 = JsonConverters.fromJson(json['externalEnum2'],'ExternalEnum2',_types);
    }

    Map<String, dynamic> toJson() => {
        'externalEnum2': JsonConverters.toJson(externalEnum2,'ExternalEnum2',_types)
    };

}

enum ExternalEnum3
{
    Un,
    Deux,
    Trois,
}

abstract class IAuthTokens
{
    String provider;
    String userId;
    String accessToken;
    String accessTokenSecret;
    String refreshToken;
    DateTime refreshTokenExpiry;
    String requestToken;
    String requestTokenSecret;
    Map<String,String> items;
}

// @DataContract
class AuthUserSession
{
    // @DataMember(Order=1)
    String referrerUrl;

    // @DataMember(Order=2)
    String id;

    // @DataMember(Order=3)
    String userAuthId;

    // @DataMember(Order=4)
    String userAuthName;

    // @DataMember(Order=5)
    String userName;

    // @DataMember(Order=6)
    String twitterUserId;

    // @DataMember(Order=7)
    String twitterScreenName;

    // @DataMember(Order=8)
    String facebookUserId;

    // @DataMember(Order=9)
    String facebookUserName;

    // @DataMember(Order=10)
    String firstName;

    // @DataMember(Order=11)
    String lastName;

    // @DataMember(Order=12)
    String displayName;

    // @DataMember(Order=13)
    String company;

    // @DataMember(Order=14)
    String email;

    // @DataMember(Order=15)
    String primaryEmail;

    // @DataMember(Order=16)
    String phoneNumber;

    // @DataMember(Order=17)
    DateTime birthDate;

    // @DataMember(Order=18)
    String birthDateRaw;

    // @DataMember(Order=19)
    String address;

    // @DataMember(Order=20)
    String address2;

    // @DataMember(Order=21)
    String city;

    // @DataMember(Order=22)
    String state;

    // @DataMember(Order=23)
    String country;

    // @DataMember(Order=24)
    String culture;

    // @DataMember(Order=25)
    String fullName;

    // @DataMember(Order=26)
    String gender;

    // @DataMember(Order=27)
    String language;

    // @DataMember(Order=28)
    String mailAddress;

    // @DataMember(Order=29)
    String nickname;

    // @DataMember(Order=30)
    String postalCode;

    // @DataMember(Order=31)
    String timeZone;

    // @DataMember(Order=32)
    String requestTokenSecret;

    // @DataMember(Order=33)
    DateTime createdAt;

    // @DataMember(Order=34)
    DateTime lastModified;

    // @DataMember(Order=35)
    List<String> roles;

    // @DataMember(Order=36)
    List<String> permissions;

    // @DataMember(Order=37)
    bool isAuthenticated;

    // @DataMember(Order=38)
    bool fromToken;

    // @DataMember(Order=39)
    String profileUrl;

    // @DataMember(Order=40)
    String sequence;

    // @DataMember(Order=41)
    int tag;

    // @DataMember(Order=42)
    String authProvider;

    // @DataMember(Order=43)
    List<IAuthTokens> providerOAuthAccess;

    // @DataMember(Order=44)
    Map<String,String> meta;

    AuthUserSession({this.referrerUrl,this.id,this.userAuthId,this.userAuthName,this.userName,this.twitterUserId,this.twitterScreenName,this.facebookUserId,this.facebookUserName,this.firstName,this.lastName,this.displayName,this.company,this.email,this.primaryEmail,this.phoneNumber,this.birthDate,this.birthDateRaw,this.address,this.address2,this.city,this.state,this.country,this.culture,this.fullName,this.gender,this.language,this.mailAddress,this.nickname,this.postalCode,this.timeZone,this.requestTokenSecret,this.createdAt,this.lastModified,this.roles,this.permissions,this.isAuthenticated,this.fromToken,this.profileUrl,this.sequence,this.tag,this.authProvider,this.providerOAuthAccess,this.meta});

    AuthUserSession fromMap(Map<String, dynamic> map) => new AuthUserSession.fromJson(map);
    AuthUserSession.fromJson(Map<String, dynamic> json) {
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
        birthDate = JsonConverters.fromJson(json['birthDate'],'DateTime',_types);
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
        createdAt = JsonConverters.fromJson(json['createdAt'],'DateTime',_types);
        lastModified = JsonConverters.fromJson(json['lastModified'],'DateTime',_types);
        roles = JsonConverters.fromJson(json['roles'],'List<String>',_types);
        permissions = JsonConverters.fromJson(json['permissions'],'List<String>',_types);
        isAuthenticated = json['isAuthenticated'];
        fromToken = json['fromToken'];
        profileUrl = json['profileUrl'];
        sequence = json['sequence'];
        tag = json['tag'];
        authProvider = json['authProvider'];
        providerOAuthAccess = JsonConverters.fromJson(json['providerOAuthAccess'],'List<IAuthTokens>',_types);
        meta = JsonConverters.toStringMap(json['meta']);
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
        'birthDate': JsonConverters.toJson(birthDate,'DateTime',_types),
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
        'createdAt': JsonConverters.toJson(createdAt,'DateTime',_types),
        'lastModified': JsonConverters.toJson(lastModified,'DateTime',_types),
        'roles': JsonConverters.toJson(roles,'List<String>',_types),
        'permissions': JsonConverters.toJson(permissions,'List<String>',_types),
        'isAuthenticated': isAuthenticated,
        'fromToken': fromToken,
        'profileUrl': profileUrl,
        'sequence': sequence,
        'tag': tag,
        'authProvider': authProvider,
        'providerOAuthAccess': JsonConverters.toJson(providerOAuthAccess,'List<IAuthTokens>',_types),
        'meta': meta
    };

}

class MetadataTestNestedChild
{
    String name;

    MetadataTestNestedChild({this.name});

    MetadataTestNestedChild fromMap(Map<String, dynamic> map) => new MetadataTestNestedChild.fromJson(map);
    MetadataTestNestedChild.fromJson(Map<String, dynamic> json) {
        name = json['name'];
    }

    Map<String, dynamic> toJson() => {
        'name': name
    };

}

class MetadataTestChild
{
    String name;
    List<MetadataTestNestedChild> results;

    MetadataTestChild({this.name,this.results});

    MetadataTestChild fromMap(Map<String, dynamic> map) => new MetadataTestChild.fromJson(map);
    MetadataTestChild.fromJson(Map<String, dynamic> json) {
        name = json['name'];
        results = JsonConverters.fromJson(json['results'],'List<MetadataTestNestedChild>',_types);
    }

    Map<String, dynamic> toJson() => {
        'name': name,
        'results': JsonConverters.toJson(results,'List<MetadataTestNestedChild>',_types)
    };

}

class MenuItemExampleItem
{
    // @DataMember(Order=1)
    // @ApiMember()
    String name1;

    MenuItemExampleItem({this.name1});

    MenuItemExampleItem fromMap(Map<String, dynamic> map) => new MenuItemExampleItem.fromJson(map);
    MenuItemExampleItem.fromJson(Map<String, dynamic> json) {
        name1 = json['name1'];
    }

    Map<String, dynamic> toJson() => {
        'name1': name1
    };

}

class MenuItemExample
{
    // @DataMember(Order=1)
    // @ApiMember()
    String name1;

    MenuItemExampleItem menuItemExampleItem;

    MenuItemExample({this.name1,this.menuItemExampleItem});

    MenuItemExample fromMap(Map<String, dynamic> map) => new MenuItemExample.fromJson(map);
    MenuItemExample.fromJson(Map<String, dynamic> json) {
        name1 = json['name1'];
        menuItemExampleItem = JsonConverters.fromJson(json['menuItemExampleItem'],'MenuItemExampleItem',_types);
    }

    Map<String, dynamic> toJson() => {
        'name1': name1,
        'menuItemExampleItem': JsonConverters.toJson(menuItemExampleItem,'MenuItemExampleItem',_types)
    };

}

// @DataContract
class MenuExample
{
    // @DataMember(Order=1)
    // @ApiMember()
    MenuItemExample menuItemExample1;

    MenuExample({this.menuItemExample1});

    MenuExample fromMap(Map<String, dynamic> map) => new MenuExample.fromJson(map);
    MenuExample.fromJson(Map<String, dynamic> json) {
        menuItemExample1 = JsonConverters.fromJson(json['menuItemExample1'],'MenuItemExample',_types);
    }

    Map<String, dynamic> toJson() => {
        'menuItemExample1': JsonConverters.toJson(menuItemExample1,'MenuItemExample',_types)
    };

}

class NestedClass
{
    String value;

    NestedClass({this.value});

    NestedClass fromMap(Map<String, dynamic> map) => new NestedClass.fromJson(map);
    NestedClass.fromJson(Map<String, dynamic> json) {
        value = json['value'];
    }

    Map<String, dynamic> toJson() => {
        'value': value
    };

}

class ListResult
{
    String result;

    ListResult({this.result});

    ListResult fromMap(Map<String, dynamic> map) => new ListResult.fromJson(map);
    ListResult.fromJson(Map<String, dynamic> json) {
        result = json['result'];
    }

    Map<String, dynamic> toJson() => {
        'result': result
    };

}

class ArrayResult
{
    String result;

    ArrayResult({this.result});

    ArrayResult fromMap(Map<String, dynamic> map) => new ArrayResult.fromJson(map);
    ArrayResult.fromJson(Map<String, dynamic> json) {
        result = json['result'];
    }

    Map<String, dynamic> toJson() => {
        'result': result
    };

}

enum EnumType
{
    Value1,
    Value2,
}

// @Flags()
class EnumFlags
{
    static const EnumFlags Value1 = const EnumFlags._(1);
    static const EnumFlags Value2 = const EnumFlags._(2);
    static const EnumFlags Value3 = const EnumFlags._(4);

    final int _value;
    const EnumFlags._(this._value);
    int get value => _value;
    static List<EnumFlags> get values => const [Value1,Value2,Value3];
}

class SubType
{
    int id;
    String name;

    SubType({this.id,this.name});

    SubType fromMap(Map<String, dynamic> map) => new SubType.fromJson(map);
    SubType.fromJson(Map<String, dynamic> json) {
        id = json['id'];
        name = json['name'];
    }

    Map<String, dynamic> toJson() => {
        'id': id,
        'name': name
    };

}

abstract class HelloBase
{
    int id;

    HelloBase({this.id});

    HelloBase.fromJson(Map<String, dynamic> json) {
        id = json['id'];
    }

    Map<String, dynamic> toJson() => {
        'id': id
    };

}

abstract class HelloResponseBase
{
    int refId;

    HelloResponseBase({this.refId});

    HelloResponseBase.fromJson(Map<String, dynamic> json) {
        refId = json['refId'];
    }

    Map<String, dynamic> toJson() => {
        'refId': refId
    };

}

class Poco
{
    String name;

    Poco({this.name});

    Poco fromMap(Map<String, dynamic> map) => new Poco.fromJson(map);
    Poco.fromJson(Map<String, dynamic> json) {
        name = json['name'];
    }

    Map<String, dynamic> toJson() => {
        'name': name
    };

}

abstract class HelloBase1<T>
{
    List<T> items;
    List<int> counts;

    HelloBase1({this.items,this.counts});

    HelloBase1.fromJson(Map<String, dynamic> json) {
        items = JsonConverters.fromJson(json['items'],'List<${runtimeGenericTypeDefs(this,[0]).join(",")}>',_types);
        counts = JsonConverters.fromJson(json['counts'],'List<int>',_types);
    }

    Map<String, dynamic> toJson() => {
        'items': JsonConverters.toJson(items,'List<T>',_types),
        'counts': JsonConverters.toJson(counts,'List<int>',_types)
    };

}

class Item
{
    String value;

    Item({this.value});

    Item fromMap(Map<String, dynamic> map) => new Item.fromJson(map);
    Item.fromJson(Map<String, dynamic> json) {
        value = json['value'];
    }

    Map<String, dynamic> toJson() => {
        'value': value
    };

}

abstract class HelloWithReturnResponse
{
    String result;

    HelloWithReturnResponse({this.result});

    HelloWithReturnResponse.fromJson(Map<String, dynamic> json) {
        result = json['result'];
    }

    Map<String, dynamic> toJson() => {
        'result': result
    };

}

class HelloType
{
    String result;

    HelloType({this.result});

    HelloType fromMap(Map<String, dynamic> map) => new HelloType.fromJson(map);
    HelloType.fromJson(Map<String, dynamic> json) {
        result = json['result'];
    }

    Map<String, dynamic> toJson() => {
        'result': result
    };

}

abstract class IPoco
{
    String name;
}

abstract class IEmptyInterface
{
}

class EmptyClass
{
    EmptyClass();
    EmptyClass fromMap(Map<String, dynamic> map) => new EmptyClass.fromJson(map);
    EmptyClass.fromJson(Map<String, dynamic> json) : super();
    Map<String, dynamic> toJson() => {};
}

class InnerType
{
    int id;
    String name;

    InnerType({this.id,this.name});

    InnerType fromMap(Map<String, dynamic> map) => new InnerType.fromJson(map);
    InnerType.fromJson(Map<String, dynamic> json) {
        id = json['id'];
        name = json['name'];
    }

    Map<String, dynamic> toJson() => {
        'id': id,
        'name': name
    };

}

enum InnerEnum
{
    Foo,
    Bar,
    Baz,
}

enum DayOfWeek
{
    Sunday,
    Monday,
    Tuesday,
    Wednesday,
    Thursday,
    Friday,
    Saturday,
}

// @DataContract
enum ScopeType
{
    Global,
    Sale,
}

class PingService
{
    PingService();
    PingService fromMap(Map<String, dynamic> map) => new PingService.fromJson(map);
    PingService.fromJson(Map<String, dynamic> json) : super();
    Map<String, dynamic> toJson() => {};
}

class ReturnedDto
{
    int id;

    ReturnedDto({this.id});

    ReturnedDto fromMap(Map<String, dynamic> map) => new ReturnedDto.fromJson(map);
    ReturnedDto.fromJson(Map<String, dynamic> json) {
        id = json['id'];
    }

    Map<String, dynamic> toJson() => {
        'id': id
    };

}

class CustomUserSession extends AuthUserSession
{
    // @DataMember
    String customName;

    // @DataMember
    String customInfo;

    CustomUserSession({this.customName,this.customInfo});

    CustomUserSession fromMap(Map<String, dynamic> map) => new CustomUserSession.fromJson(map);
    CustomUserSession.fromJson(Map<String, dynamic> json): super.fromJson(json) {
        customName = json['customName'];
        customInfo = json['customInfo'];
    }

    Map<String, dynamic> toJson() => super.toJson()..addAll({
        'customName': customName,
        'customInfo': customInfo
    });

}

class UnAuthInfo
{
    String customInfo;

    UnAuthInfo({this.customInfo});

    UnAuthInfo fromMap(Map<String, dynamic> map) => new UnAuthInfo.fromJson(map);
    UnAuthInfo.fromJson(Map<String, dynamic> json) {
        customInfo = json['customInfo'];
    }

    Map<String, dynamic> toJson() => {
        'customInfo': customInfo
    };

}

class Channel
{
    String name;
    String value;

    Channel({this.name,this.value});

    Channel fromMap(Map<String, dynamic> map) => new Channel.fromJson(map);
    Channel.fromJson(Map<String, dynamic> json) {
        name = json['name'];
        value = json['value'];
    }

    Map<String, dynamic> toJson() => {
        'name': name,
        'value': value
    };

}

class Device
{
    int id;
    String type;
    int timeStamp;
    List<Channel> channels;

    Device({this.id,this.type,this.timeStamp,this.channels});

    Device fromMap(Map<String, dynamic> map) => new Device.fromJson(map);
    Device.fromJson(Map<String, dynamic> json) {
        id = json['id'];
        type = json['type'];
        timeStamp = json['timeStamp'];
        channels = JsonConverters.fromJson(json['channels'],'List<Channel>',_types);
    }

    Map<String, dynamic> toJson() => {
        'id': id,
        'type': type,
        'timeStamp': timeStamp,
        'channels': JsonConverters.toJson(channels,'List<Channel>',_types)
    };

}

class Logger
{
    int id;
    List<Device> devices;

    Logger({this.id,this.devices});

    Logger fromMap(Map<String, dynamic> map) => new Logger.fromJson(map);
    Logger.fromJson(Map<String, dynamic> json) {
        id = json['id'];
        devices = JsonConverters.fromJson(json['devices'],'List<Device>',_types);
    }

    Map<String, dynamic> toJson() => {
        'id': id,
        'devices': JsonConverters.toJson(devices,'List<Device>',_types)
    };

}

class Rockstar
{
    int id;
    String firstName;
    String lastName;
    int age;

    Rockstar({this.id,this.firstName,this.lastName,this.age});

    Rockstar fromMap(Map<String, dynamic> map) => new Rockstar.fromJson(map);
    Rockstar.fromJson(Map<String, dynamic> json) {
        id = json['id'];
        firstName = json['firstName'];
        lastName = json['lastName'];
        age = json['age'];
    }

    Map<String, dynamic> toJson() => {
        'id': id,
        'firstName': firstName,
        'lastName': lastName,
        'age': age
    };

}

class OnlyDefinedInGenericType
{
    int id;
    String name;

    OnlyDefinedInGenericType({this.id,this.name});

    OnlyDefinedInGenericType fromMap(Map<String, dynamic> map) => new OnlyDefinedInGenericType.fromJson(map);
    OnlyDefinedInGenericType.fromJson(Map<String, dynamic> json) {
        id = json['id'];
        name = json['name'];
    }

    Map<String, dynamic> toJson() => {
        'id': id,
        'name': name
    };

}

class OnlyDefinedInGenericTypeFrom
{
    int id;
    String name;

    OnlyDefinedInGenericTypeFrom({this.id,this.name});

    OnlyDefinedInGenericTypeFrom fromMap(Map<String, dynamic> map) => new OnlyDefinedInGenericTypeFrom.fromJson(map);
    OnlyDefinedInGenericTypeFrom.fromJson(Map<String, dynamic> json) {
        id = json['id'];
        name = json['name'];
    }

    Map<String, dynamic> toJson() => {
        'id': id,
        'name': name
    };

}

class OnlyDefinedInGenericTypeInto
{
    int id;
    String name;

    OnlyDefinedInGenericTypeInto({this.id,this.name});

    OnlyDefinedInGenericTypeInto fromMap(Map<String, dynamic> map) => new OnlyDefinedInGenericTypeInto.fromJson(map);
    OnlyDefinedInGenericTypeInto.fromJson(Map<String, dynamic> json) {
        id = json['id'];
        name = json['name'];
    }

    Map<String, dynamic> toJson() => {
        'id': id,
        'name': name
    };

}

class TypesGroup
{
    TypesGroup();
    TypesGroup fromMap(Map<String, dynamic> map) => new TypesGroup.fromJson(map);
    TypesGroup.fromJson(Map<String, dynamic> json) : super();
    Map<String, dynamic> toJson() => {};
}

class CustomHttpErrorResponse
{
    String custom;
    ResponseStatus responseStatus;

    CustomHttpErrorResponse({this.custom,this.responseStatus});

    CustomHttpErrorResponse fromMap(Map<String, dynamic> map) => new CustomHttpErrorResponse.fromJson(map);
    CustomHttpErrorResponse.fromJson(Map<String, dynamic> json) {
        custom = json['custom'];
        responseStatus = JsonConverters.fromJson(json['responseStatus'],'ResponseStatus',_types);
    }

    Map<String, dynamic> toJson() => {
        'custom': custom,
        'responseStatus': JsonConverters.toJson(responseStatus,'ResponseStatus',_types)
    };

}

class ThrowTypeResponse
{
    ResponseStatus responseStatus;

    ThrowTypeResponse({this.responseStatus});

    ThrowTypeResponse fromMap(Map<String, dynamic> map) => new ThrowTypeResponse.fromJson(map);
    ThrowTypeResponse.fromJson(Map<String, dynamic> json) {
        responseStatus = JsonConverters.fromJson(json['responseStatus'],'ResponseStatus',_types);
    }

    Map<String, dynamic> toJson() => {
        'responseStatus': JsonConverters.toJson(responseStatus,'ResponseStatus',_types)
    };

}

class ThrowValidationResponse
{
    int age;
    String required;
    String email;
    ResponseStatus responseStatus;

    ThrowValidationResponse({this.age,this.required,this.email,this.responseStatus});

    ThrowValidationResponse fromMap(Map<String, dynamic> map) => new ThrowValidationResponse.fromJson(map);
    ThrowValidationResponse.fromJson(Map<String, dynamic> json) {
        age = json['age'];
        required = json['required'];
        email = json['email'];
        responseStatus = JsonConverters.fromJson(json['responseStatus'],'ResponseStatus',_types);
    }

    Map<String, dynamic> toJson() => {
        'age': age,
        'required': required,
        'email': email,
        'responseStatus': JsonConverters.toJson(responseStatus,'ResponseStatus',_types)
    };

}

class ThrowBusinessErrorResponse
{
    ResponseStatus responseStatus;

    ThrowBusinessErrorResponse({this.responseStatus});

    ThrowBusinessErrorResponse fromMap(Map<String, dynamic> map) => new ThrowBusinessErrorResponse.fromJson(map);
    ThrowBusinessErrorResponse.fromJson(Map<String, dynamic> json) {
        responseStatus = JsonConverters.fromJson(json['responseStatus'],'ResponseStatus',_types);
    }

    Map<String, dynamic> toJson() => {
        'responseStatus': JsonConverters.toJson(responseStatus,'ResponseStatus',_types)
    };

}

class ExternalOperationResponse
{
    String result;

    ExternalOperationResponse({this.result});

    ExternalOperationResponse fromMap(Map<String, dynamic> map) => new ExternalOperationResponse.fromJson(map);
    ExternalOperationResponse.fromJson(Map<String, dynamic> json) {
        result = json['result'];
    }

    Map<String, dynamic> toJson() => {
        'result': result
    };

}

class ExternalOperation2Response
{
    ExternalType externalType;

    ExternalOperation2Response({this.externalType});

    ExternalOperation2Response fromMap(Map<String, dynamic> map) => new ExternalOperation2Response.fromJson(map);
    ExternalOperation2Response.fromJson(Map<String, dynamic> json) {
        externalType = JsonConverters.fromJson(json['externalType'],'ExternalType',_types);
    }

    Map<String, dynamic> toJson() => {
        'externalType': JsonConverters.toJson(externalType,'ExternalType',_types)
    };

}

class ExternalReturnTypeResponse
{
    ExternalEnum3 externalEnum3;

    ExternalReturnTypeResponse({this.externalEnum3});

    ExternalReturnTypeResponse fromMap(Map<String, dynamic> map) => new ExternalReturnTypeResponse.fromJson(map);
    ExternalReturnTypeResponse.fromJson(Map<String, dynamic> json) {
        externalEnum3 = JsonConverters.fromJson(json['externalEnum3'],'ExternalEnum3',_types);
    }

    Map<String, dynamic> toJson() => {
        'externalEnum3': JsonConverters.toJson(externalEnum3,'ExternalEnum3',_types)
    };

}

class Account
{
    String name;

    Account({this.name});

    Account fromMap(Map<String, dynamic> map) => new Account.fromJson(map);
    Account.fromJson(Map<String, dynamic> json) {
        name = json['name'];
    }

    Map<String, dynamic> toJson() => {
        'name': name
    };

}

class Project
{
    String account;
    String name;

    Project({this.account,this.name});

    Project fromMap(Map<String, dynamic> map) => new Project.fromJson(map);
    Project.fromJson(Map<String, dynamic> json) {
        account = json['account'];
        name = json['name'];
    }

    Map<String, dynamic> toJson() => {
        'account': account,
        'name': name
    };

}

class CreateJwtResponse
{
    String token;
    ResponseStatus responseStatus;

    CreateJwtResponse({this.token,this.responseStatus});

    CreateJwtResponse fromMap(Map<String, dynamic> map) => new CreateJwtResponse.fromJson(map);
    CreateJwtResponse.fromJson(Map<String, dynamic> json) {
        token = json['token'];
        responseStatus = JsonConverters.fromJson(json['responseStatus'],'ResponseStatus',_types);
    }

    Map<String, dynamic> toJson() => {
        'token': token,
        'responseStatus': JsonConverters.toJson(responseStatus,'ResponseStatus',_types)
    };

}

class CreateRefreshJwtResponse
{
    String token;
    ResponseStatus responseStatus;

    CreateRefreshJwtResponse({this.token,this.responseStatus});

    CreateRefreshJwtResponse fromMap(Map<String, dynamic> map) => new CreateRefreshJwtResponse.fromJson(map);
    CreateRefreshJwtResponse.fromJson(Map<String, dynamic> json) {
        token = json['token'];
        responseStatus = JsonConverters.fromJson(json['responseStatus'],'ResponseStatus',_types);
    }

    Map<String, dynamic> toJson() => {
        'token': token,
        'responseStatus': JsonConverters.toJson(responseStatus,'ResponseStatus',_types)
    };

}

class MetadataTestResponse
{
    int id;
    List<MetadataTestChild> results;

    MetadataTestResponse({this.id,this.results});

    MetadataTestResponse fromMap(Map<String, dynamic> map) => new MetadataTestResponse.fromJson(map);
    MetadataTestResponse.fromJson(Map<String, dynamic> json) {
        id = json['id'];
        results = JsonConverters.fromJson(json['results'],'List<MetadataTestChild>',_types);
    }

    Map<String, dynamic> toJson() => {
        'id': id,
        'results': JsonConverters.toJson(results,'List<MetadataTestChild>',_types)
    };

}

// @DataContract
class GetExampleResponse
{
    // @DataMember(Order=1)
    ResponseStatus responseStatus;

    // @DataMember(Order=2)
    // @ApiMember()
    MenuExample menuExample1;

    GetExampleResponse({this.responseStatus,this.menuExample1});

    GetExampleResponse fromMap(Map<String, dynamic> map) => new GetExampleResponse.fromJson(map);
    GetExampleResponse.fromJson(Map<String, dynamic> json) {
        responseStatus = JsonConverters.fromJson(json['responseStatus'],'ResponseStatus',_types);
        menuExample1 = JsonConverters.fromJson(json['menuExample1'],'MenuExample',_types);
    }

    Map<String, dynamic> toJson() => {
        'responseStatus': JsonConverters.toJson(responseStatus,'ResponseStatus',_types),
        'menuExample1': JsonConverters.toJson(menuExample1,'MenuExample',_types)
    };

}

class GetRandomIdsResponse
{
    List<String> results;

    GetRandomIdsResponse({this.results});

    GetRandomIdsResponse fromMap(Map<String, dynamic> map) => new GetRandomIdsResponse.fromJson(map);
    GetRandomIdsResponse.fromJson(Map<String, dynamic> json) {
        results = JsonConverters.fromJson(json['results'],'List<String>',_types);
    }

    Map<String, dynamic> toJson() => {
        'results': JsonConverters.toJson(results,'List<String>',_types)
    };

}

class HelloResponse
{
    String result;

    HelloResponse({this.result});

    HelloResponse fromMap(Map<String, dynamic> map) => new HelloResponse.fromJson(map);
    HelloResponse.fromJson(Map<String, dynamic> json) {
        result = json['result'];
    }

    Map<String, dynamic> toJson() => {
        'result': result
    };

}

class AllTypes
{
    int id;
    int nullableId;
    int byte;
    int short;
    int Int;
    int long;
    int uShort;
    int uInt;
    int uLong;
    double float;
    double Double;
    double decimal;
    String string;
    DateTime dateTime;
    Duration timeSpan;
    DateTime dateTimeOffset;
    String guid;
    String char;
    KeyValuePair<String, String> keyValuePair;
    DateTime nullableDateTime;
    Duration nullableTimeSpan;
    List<String> stringList;
    List<String> stringArray;
    Map<String,String> stringMap;
    Map<int,String> intStringMap;
    SubType subType;

    AllTypes({this.id,this.nullableId,this.byte,this.short,this.Int,this.long,this.uShort,this.uInt,this.uLong,this.float,this.Double,this.decimal,this.string,this.dateTime,this.timeSpan,this.dateTimeOffset,this.guid,this.char,this.keyValuePair,this.nullableDateTime,this.nullableTimeSpan,this.stringList,this.stringArray,this.stringMap,this.intStringMap,this.subType});

    AllTypes fromMap(Map<String, dynamic> map) => new AllTypes.fromJson(map);
    AllTypes.fromJson(Map<String, dynamic> json) {
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
        dateTime = JsonConverters.fromJson(json['dateTime'],'DateTime',_types);
        timeSpan = JsonConverters.fromJson(json['timeSpan'],'Duration',_types);
        dateTimeOffset = JsonConverters.fromJson(json['dateTimeOffset'],'DateTime',_types);
        guid = json['guid'];
        char = json['char'];
        keyValuePair = JsonConverters.fromJson(json['keyValuePair'],'KeyValuePair<String, String>',_types);
        nullableDateTime = JsonConverters.fromJson(json['nullableDateTime'],'DateTime',_types);
        nullableTimeSpan = JsonConverters.fromJson(json['nullableTimeSpan'],'Duration',_types);
        stringList = JsonConverters.fromJson(json['stringList'],'List<String>',_types);
        stringArray = JsonConverters.fromJson(json['stringArray'],'List<String>',_types);
        stringMap = JsonConverters.toStringMap(json['stringMap']);
        intStringMap = JsonConverters.fromJson(json['intStringMap'],'Map<int,String>',_types);
        subType = JsonConverters.fromJson(json['subType'],'SubType',_types);
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
        'dateTime': JsonConverters.toJson(dateTime,'DateTime',_types),
        'timeSpan': JsonConverters.toJson(timeSpan,'Duration',_types),
        'dateTimeOffset': JsonConverters.toJson(dateTimeOffset,'DateTime',_types),
        'guid': guid,
        'char': char,
        'keyValuePair': JsonConverters.toJson(keyValuePair,'KeyValuePair<String, String>',_types),
        'nullableDateTime': JsonConverters.toJson(nullableDateTime,'DateTime',_types),
        'nullableTimeSpan': JsonConverters.toJson(nullableTimeSpan,'Duration',_types),
        'stringList': JsonConverters.toJson(stringList,'List<String>',_types),
        'stringArray': JsonConverters.toJson(stringArray,'List<String>',_types),
        'stringMap': stringMap,
        'intStringMap': JsonConverters.toJson(intStringMap,'Map<int,String>',_types),
        'subType': JsonConverters.toJson(subType,'SubType',_types)
    };

}

class AllCollectionTypes
{
    List<int> intArray;
    List<int> intList;
    List<String> stringArray;
    List<String> stringList;
    List<Poco> pocoArray;
    List<Poco> pocoList;
    Map<String,List<Poco>> pocoLookup;
    Map<String,List<Map<String,Poco>>> pocoLookupMap;

    AllCollectionTypes({this.intArray,this.intList,this.stringArray,this.stringList,this.pocoArray,this.pocoList,this.pocoLookup,this.pocoLookupMap});

    AllCollectionTypes fromMap(Map<String, dynamic> map) => new AllCollectionTypes.fromJson(map);
    AllCollectionTypes.fromJson(Map<String, dynamic> json) {
        intArray = JsonConverters.fromJson(json['intArray'],'List<int>',_types);
        intList = JsonConverters.fromJson(json['intList'],'List<int>',_types);
        stringArray = JsonConverters.fromJson(json['stringArray'],'List<String>',_types);
        stringList = JsonConverters.fromJson(json['stringList'],'List<String>',_types);
        pocoArray = JsonConverters.fromJson(json['pocoArray'],'List<Poco>',_types);
        pocoList = JsonConverters.fromJson(json['pocoList'],'List<Poco>',_types);
        pocoLookup = JsonConverters.fromJson(json['pocoLookup'],'Map<String,List<Poco>>',_types);
        pocoLookupMap = JsonConverters.fromJson(json['pocoLookupMap'],'Map<String,List<Map<String,Poco>>>',_types);
    }

    Map<String, dynamic> toJson() => {
        'intArray': JsonConverters.toJson(intArray,'List<int>',_types),
        'intList': JsonConverters.toJson(intList,'List<int>',_types),
        'stringArray': JsonConverters.toJson(stringArray,'List<String>',_types),
        'stringList': JsonConverters.toJson(stringList,'List<String>',_types),
        'pocoArray': JsonConverters.toJson(pocoArray,'List<Poco>',_types),
        'pocoList': JsonConverters.toJson(pocoList,'List<Poco>',_types),
        'pocoLookup': JsonConverters.toJson(pocoLookup,'Map<String,List<Poco>>',_types),
        'pocoLookupMap': JsonConverters.toJson(pocoLookupMap,'Map<String,List<Map<String,Poco>>>',_types)
    };

}

class HelloAllTypesResponse
{
    String result;
    AllTypes allTypes;
    AllCollectionTypes allCollectionTypes;

    HelloAllTypesResponse({this.result,this.allTypes,this.allCollectionTypes});

    HelloAllTypesResponse fromMap(Map<String, dynamic> map) => new HelloAllTypesResponse.fromJson(map);
    HelloAllTypesResponse.fromJson(Map<String, dynamic> json) {
        result = json['result'];
        allTypes = JsonConverters.fromJson(json['allTypes'],'AllTypes',_types);
        allCollectionTypes = JsonConverters.fromJson(json['allCollectionTypes'],'AllCollectionTypes',_types);
    }

    Map<String, dynamic> toJson() => {
        'result': result,
        'allTypes': JsonConverters.toJson(allTypes,'AllTypes',_types),
        'allCollectionTypes': JsonConverters.toJson(allCollectionTypes,'AllCollectionTypes',_types)
    };

}

class HelloDateTime implements IReturn<HelloDateTime>
{
    DateTime dateTime;

    HelloDateTime({this.dateTime});

    HelloDateTime fromMap(Map<String, dynamic> map) => new HelloDateTime.fromJson(map);
    HelloDateTime.fromJson(Map<String, dynamic> json) {
        dateTime = JsonConverters.fromJson(json['dateTime'],'DateTime',_types);
    }

    Map<String, dynamic> toJson() => {
        'dateTime': JsonConverters.toJson(dateTime,'DateTime',_types)
    };

    createResponse() { return new HelloDateTime(); }
    String getTypeName() { return "HelloDateTime"; }
}

// @DataContract
class HelloWithDataContractResponse
{
    // @DataMember(Name="result", Order=1, IsRequired=true, EmitDefaultValue=false)
    String result;

    HelloWithDataContractResponse({this.result});

    HelloWithDataContractResponse fromMap(Map<String, dynamic> map) => new HelloWithDataContractResponse.fromJson(map);
    HelloWithDataContractResponse.fromJson(Map<String, dynamic> json) {
        result = json['result'];
    }

    Map<String, dynamic> toJson() => {
        'result': result
    };

}

/**
* Description on HelloWithDescriptionResponse type
*/
class HelloWithDescriptionResponse
{
    String result;

    HelloWithDescriptionResponse({this.result});

    HelloWithDescriptionResponse fromMap(Map<String, dynamic> map) => new HelloWithDescriptionResponse.fromJson(map);
    HelloWithDescriptionResponse.fromJson(Map<String, dynamic> json) {
        result = json['result'];
    }

    Map<String, dynamic> toJson() => {
        'result': result
    };

}

class HelloWithInheritanceResponse extends HelloResponseBase
{
    String result;

    HelloWithInheritanceResponse({this.result});

    HelloWithInheritanceResponse fromMap(Map<String, dynamic> map) => new HelloWithInheritanceResponse.fromJson(map);
    HelloWithInheritanceResponse.fromJson(Map<String, dynamic> json): super.fromJson(json) {
        result = json['result'];
    }

    Map<String, dynamic> toJson() => super.toJson()..addAll({
        'result': result
    });

}

class HelloWithAlternateReturnResponse extends HelloWithReturnResponse
{
    String altResult;

    HelloWithAlternateReturnResponse({this.altResult});

    HelloWithAlternateReturnResponse fromMap(Map<String, dynamic> map) => new HelloWithAlternateReturnResponse.fromJson(map);
    HelloWithAlternateReturnResponse.fromJson(Map<String, dynamic> json): super.fromJson(json) {
        altResult = json['altResult'];
    }

    Map<String, dynamic> toJson() => super.toJson()..addAll({
        'altResult': altResult
    });

}

class HelloWithRouteResponse
{
    String result;

    HelloWithRouteResponse({this.result});

    HelloWithRouteResponse fromMap(Map<String, dynamic> map) => new HelloWithRouteResponse.fromJson(map);
    HelloWithRouteResponse.fromJson(Map<String, dynamic> json) {
        result = json['result'];
    }

    Map<String, dynamic> toJson() => {
        'result': result
    };

}

class HelloWithTypeResponse
{
    HelloType result;

    HelloWithTypeResponse({this.result});

    HelloWithTypeResponse fromMap(Map<String, dynamic> map) => new HelloWithTypeResponse.fromJson(map);
    HelloWithTypeResponse.fromJson(Map<String, dynamic> json) {
        result = JsonConverters.fromJson(json['result'],'HelloType',_types);
    }

    Map<String, dynamic> toJson() => {
        'result': JsonConverters.toJson(result,'HelloType',_types)
    };

}

class HelloInnerTypesResponse
{
    InnerType innerType;
    InnerEnum innerEnum;

    HelloInnerTypesResponse({this.innerType,this.innerEnum});

    HelloInnerTypesResponse fromMap(Map<String, dynamic> map) => new HelloInnerTypesResponse.fromJson(map);
    HelloInnerTypesResponse.fromJson(Map<String, dynamic> json) {
        innerType = JsonConverters.fromJson(json['innerType'],'InnerType',_types);
        innerEnum = JsonConverters.fromJson(json['innerEnum'],'InnerEnum',_types);
    }

    Map<String, dynamic> toJson() => {
        'innerType': JsonConverters.toJson(innerType,'InnerType',_types),
        'innerEnum': JsonConverters.toJson(innerEnum,'InnerEnum',_types)
    };

}

class HelloVerbResponse
{
    String result;

    HelloVerbResponse({this.result});

    HelloVerbResponse fromMap(Map<String, dynamic> map) => new HelloVerbResponse.fromJson(map);
    HelloVerbResponse.fromJson(Map<String, dynamic> json) {
        result = json['result'];
    }

    Map<String, dynamic> toJson() => {
        'result': result
    };

}

class EnumResponse
{
    ScopeType Operator;

    EnumResponse({this.Operator});

    EnumResponse fromMap(Map<String, dynamic> map) => new EnumResponse.fromJson(map);
    EnumResponse.fromJson(Map<String, dynamic> json) {
        Operator = JsonConverters.fromJson(json['operator'],'ScopeType',_types);
    }

    Map<String, dynamic> toJson() => {
        'operator': JsonConverters.toJson(Operator,'ScopeType',_types)
    };

}

// @Route("/hellotypes/{Name}")
class HelloTypes implements IReturn<HelloTypes>
{
    String string;
    bool Bool;
    int Int;

    HelloTypes({this.string,this.Bool,this.Int});

    HelloTypes fromMap(Map<String, dynamic> map) => new HelloTypes.fromJson(map);
    HelloTypes.fromJson(Map<String, dynamic> json) {
        string = json['string'];
        Bool = json['bool'];
        Int = json['int'];
    }

    Map<String, dynamic> toJson() => {
        'string': string,
        'bool': Bool,
        'int': Int
    };

    createResponse() { return new HelloTypes(); }
    String getTypeName() { return "HelloTypes"; }
}

// @DataContract
class HelloZipResponse
{
    // @DataMember
    String result;

    HelloZipResponse({this.result});

    HelloZipResponse fromMap(Map<String, dynamic> map) => new HelloZipResponse.fromJson(map);
    HelloZipResponse.fromJson(Map<String, dynamic> json) {
        result = json['result'];
    }

    Map<String, dynamic> toJson() => {
        'result': result
    };

}

class PingResponse
{
    Map<String,ResponseStatus> responses;
    ResponseStatus responseStatus;

    PingResponse({this.responses,this.responseStatus});

    PingResponse fromMap(Map<String, dynamic> map) => new PingResponse.fromJson(map);
    PingResponse.fromJson(Map<String, dynamic> json) {
        responses = JsonConverters.fromJson(json['responses'],'Map<String,ResponseStatus>',_types);
        responseStatus = JsonConverters.fromJson(json['responseStatus'],'ResponseStatus',_types);
    }

    Map<String, dynamic> toJson() => {
        'responses': JsonConverters.toJson(responses,'Map<String,ResponseStatus>',_types),
        'responseStatus': JsonConverters.toJson(responseStatus,'ResponseStatus',_types)
    };

}

class RequiresRoleResponse
{
    String result;
    ResponseStatus responseStatus;

    RequiresRoleResponse({this.result,this.responseStatus});

    RequiresRoleResponse fromMap(Map<String, dynamic> map) => new RequiresRoleResponse.fromJson(map);
    RequiresRoleResponse.fromJson(Map<String, dynamic> json) {
        result = json['result'];
        responseStatus = JsonConverters.fromJson(json['responseStatus'],'ResponseStatus',_types);
    }

    Map<String, dynamic> toJson() => {
        'result': result,
        'responseStatus': JsonConverters.toJson(responseStatus,'ResponseStatus',_types)
    };

}

class SendVerbResponse
{
    int id;
    String pathInfo;
    String requestMethod;

    SendVerbResponse({this.id,this.pathInfo,this.requestMethod});

    SendVerbResponse fromMap(Map<String, dynamic> map) => new SendVerbResponse.fromJson(map);
    SendVerbResponse.fromJson(Map<String, dynamic> json) {
        id = json['id'];
        pathInfo = json['pathInfo'];
        requestMethod = json['requestMethod'];
    }

    Map<String, dynamic> toJson() => {
        'id': id,
        'pathInfo': pathInfo,
        'requestMethod': requestMethod
    };

}

class GetSessionResponse
{
    CustomUserSession result;
    UnAuthInfo unAuthInfo;
    ResponseStatus responseStatus;

    GetSessionResponse({this.result,this.unAuthInfo,this.responseStatus});

    GetSessionResponse fromMap(Map<String, dynamic> map) => new GetSessionResponse.fromJson(map);
    GetSessionResponse.fromJson(Map<String, dynamic> json) {
        result = JsonConverters.fromJson(json['result'],'CustomUserSession',_types);
        unAuthInfo = JsonConverters.fromJson(json['unAuthInfo'],'UnAuthInfo',_types);
        responseStatus = JsonConverters.fromJson(json['responseStatus'],'ResponseStatus',_types);
    }

    Map<String, dynamic> toJson() => {
        'result': JsonConverters.toJson(result,'CustomUserSession',_types),
        'unAuthInfo': JsonConverters.toJson(unAuthInfo,'UnAuthInfo',_types),
        'responseStatus': JsonConverters.toJson(responseStatus,'ResponseStatus',_types)
    };

}

class StoreLogsResponse
{
    List<Logger> existingLogs;
    ResponseStatus responseStatus;

    StoreLogsResponse({this.existingLogs,this.responseStatus});

    StoreLogsResponse fromMap(Map<String, dynamic> map) => new StoreLogsResponse.fromJson(map);
    StoreLogsResponse.fromJson(Map<String, dynamic> json) {
        existingLogs = JsonConverters.fromJson(json['existingLogs'],'List<Logger>',_types);
        responseStatus = JsonConverters.fromJson(json['responseStatus'],'ResponseStatus',_types);
    }

    Map<String, dynamic> toJson() => {
        'existingLogs': JsonConverters.toJson(existingLogs,'List<Logger>',_types),
        'responseStatus': JsonConverters.toJson(responseStatus,'ResponseStatus',_types)
    };

}

class TestAuthResponse
{
    String userId;
    String sessionId;
    String userName;
    String displayName;
    ResponseStatus responseStatus;

    TestAuthResponse({this.userId,this.sessionId,this.userName,this.displayName,this.responseStatus});

    TestAuthResponse fromMap(Map<String, dynamic> map) => new TestAuthResponse.fromJson(map);
    TestAuthResponse.fromJson(Map<String, dynamic> json) {
        userId = json['userId'];
        sessionId = json['sessionId'];
        userName = json['userName'];
        displayName = json['displayName'];
        responseStatus = JsonConverters.fromJson(json['responseStatus'],'ResponseStatus',_types);
    }

    Map<String, dynamic> toJson() => {
        'userId': userId,
        'sessionId': sessionId,
        'userName': userName,
        'displayName': displayName,
        'responseStatus': JsonConverters.toJson(responseStatus,'ResponseStatus',_types)
    };

}

class RequiresAdmin implements IReturn<RequiresAdmin>
{
    int id;

    RequiresAdmin({this.id});

    RequiresAdmin fromMap(Map<String, dynamic> map) => new RequiresAdmin.fromJson(map);
    RequiresAdmin.fromJson(Map<String, dynamic> json) {
        id = json['id'];
    }

    Map<String, dynamic> toJson() => {
        'id': id
    };

    createResponse() { return new RequiresAdmin(); }
    String getTypeName() { return "RequiresAdmin"; }
}

// @Route("/wait/{ForMs}")
class Wait implements IReturn<Wait>
{
    int forMs;

    Wait({this.forMs});

    Wait fromMap(Map<String, dynamic> map) => new Wait.fromJson(map);
    Wait.fromJson(Map<String, dynamic> json) {
        forMs = json['forMs'];
    }

    Map<String, dynamic> toJson() => {
        'forMs': forMs
    };

    createResponse() { return new Wait(); }
    String getTypeName() { return "Wait"; }
}

// @Route("/echo/types")
class EchoTypes implements IReturn<EchoTypes>
{
    int byte;
    int short;
    int Int;
    int long;
    int uShort;
    int uInt;
    int uLong;
    double float;
    double Double;
    double decimal;
    String string;
    DateTime dateTime;
    Duration timeSpan;
    DateTime dateTimeOffset;
    String guid;
    String char;

    EchoTypes({this.byte,this.short,this.Int,this.long,this.uShort,this.uInt,this.uLong,this.float,this.Double,this.decimal,this.string,this.dateTime,this.timeSpan,this.dateTimeOffset,this.guid,this.char});

    EchoTypes fromMap(Map<String, dynamic> map) => new EchoTypes.fromJson(map);
    EchoTypes.fromJson(Map<String, dynamic> json) {
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
        dateTime = JsonConverters.fromJson(json['dateTime'],'DateTime',_types);
        timeSpan = JsonConverters.fromJson(json['timeSpan'],'Duration',_types);
        dateTimeOffset = JsonConverters.fromJson(json['dateTimeOffset'],'DateTime',_types);
        guid = json['guid'];
        char = json['char'];
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
        'dateTime': JsonConverters.toJson(dateTime,'DateTime',_types),
        'timeSpan': JsonConverters.toJson(timeSpan,'Duration',_types),
        'dateTimeOffset': JsonConverters.toJson(dateTimeOffset,'DateTime',_types),
        'guid': guid,
        'char': char
    };

    createResponse() { return new EchoTypes(); }
    String getTypeName() { return "EchoTypes"; }
}

// @Route("/echo/collections")
class EchoCollections implements IReturn<EchoCollections>
{
    List<String> stringList;
    List<String> stringArray;
    Map<String,String> stringMap;
    Map<int,String> intStringMap;

    EchoCollections({this.stringList,this.stringArray,this.stringMap,this.intStringMap});

    EchoCollections fromMap(Map<String, dynamic> map) => new EchoCollections.fromJson(map);
    EchoCollections.fromJson(Map<String, dynamic> json) {
        stringList = JsonConverters.fromJson(json['stringList'],'List<String>',_types);
        stringArray = JsonConverters.fromJson(json['stringArray'],'List<String>',_types);
        stringMap = JsonConverters.toStringMap(json['stringMap']);
        intStringMap = JsonConverters.fromJson(json['intStringMap'],'Map<int,String>',_types);
    }

    Map<String, dynamic> toJson() => {
        'stringList': JsonConverters.toJson(stringList,'List<String>',_types),
        'stringArray': JsonConverters.toJson(stringArray,'List<String>',_types),
        'stringMap': stringMap,
        'intStringMap': JsonConverters.toJson(intStringMap,'Map<int,String>',_types)
    };

    createResponse() { return new EchoCollections(); }
    String getTypeName() { return "EchoCollections"; }
}

class EchoComplexTypes implements IReturn<EchoComplexTypes>
{
    SubType subType;

    EchoComplexTypes({this.subType});

    EchoComplexTypes fromMap(Map<String, dynamic> map) => new EchoComplexTypes.fromJson(map);
    EchoComplexTypes.fromJson(Map<String, dynamic> json) {
        subType = JsonConverters.fromJson(json['subType'],'SubType',_types);
    }

    Map<String, dynamic> toJson() => {
        'subType': JsonConverters.toJson(subType,'SubType',_types)
    };

    createResponse() { return new EchoComplexTypes(); }
    String getTypeName() { return "EchoComplexTypes"; }
}

// @Route("/rockstars", "POST")
class StoreRockstars extends ListBase<Rockstar> implements IReturn<StoreRockstars>
{
    final List<Rockstar> l = [];
    void set length(int newLength) { l.length = newLength; }
    int get length => l.length;
    Rockstar operator [](int index) => l[index];
    void operator []=(int index, Rockstar value) { l[index] = value; }
    StoreRockstars();
    StoreRockstars fromMap(Map<String, dynamic> map) => new StoreRockstars.fromJson(map);
    StoreRockstars.fromJson(Map<String, dynamic> json) : super();
    Map<String, dynamic> toJson() => {};
    createResponse() { return new StoreRockstars(); }
    String getTypeName() { return "StoreRockstars"; }
}

// @DataContract
class AuthenticateResponse
{
    // @DataMember(Order=1)
    String userId;

    // @DataMember(Order=2)
    String sessionId;

    // @DataMember(Order=3)
    String userName;

    // @DataMember(Order=4)
    String displayName;

    // @DataMember(Order=5)
    String referrerUrl;

    // @DataMember(Order=6)
    String bearerToken;

    // @DataMember(Order=7)
    String refreshToken;

    // @DataMember(Order=8)
    ResponseStatus responseStatus;

    // @DataMember(Order=9)
    Map<String,String> meta;

    AuthenticateResponse({this.userId,this.sessionId,this.userName,this.displayName,this.referrerUrl,this.bearerToken,this.refreshToken,this.responseStatus,this.meta});

    AuthenticateResponse fromMap(Map<String, dynamic> map) => new AuthenticateResponse.fromJson(map);
    AuthenticateResponse.fromJson(Map<String, dynamic> json) {
        userId = json['userId'];
        sessionId = json['sessionId'];
        userName = json['userName'];
        displayName = json['displayName'];
        referrerUrl = json['referrerUrl'];
        bearerToken = json['bearerToken'];
        refreshToken = json['refreshToken'];
        responseStatus = JsonConverters.fromJson(json['responseStatus'],'ResponseStatus',_types);
        meta = JsonConverters.toStringMap(json['meta']);
    }

    Map<String, dynamic> toJson() => {
        'userId': userId,
        'sessionId': sessionId,
        'userName': userName,
        'displayName': displayName,
        'referrerUrl': referrerUrl,
        'bearerToken': bearerToken,
        'refreshToken': refreshToken,
        'responseStatus': JsonConverters.toJson(responseStatus,'ResponseStatus',_types),
        'meta': meta
    };

}

// @DataContract
class AssignRolesResponse
{
    // @DataMember(Order=1)
    List<String> allRoles;

    // @DataMember(Order=2)
    List<String> allPermissions;

    // @DataMember(Order=3)
    ResponseStatus responseStatus;

    AssignRolesResponse({this.allRoles,this.allPermissions,this.responseStatus});

    AssignRolesResponse fromMap(Map<String, dynamic> map) => new AssignRolesResponse.fromJson(map);
    AssignRolesResponse.fromJson(Map<String, dynamic> json) {
        allRoles = JsonConverters.fromJson(json['allRoles'],'List<String>',_types);
        allPermissions = JsonConverters.fromJson(json['allPermissions'],'List<String>',_types);
        responseStatus = JsonConverters.fromJson(json['responseStatus'],'ResponseStatus',_types);
    }

    Map<String, dynamic> toJson() => {
        'allRoles': JsonConverters.toJson(allRoles,'List<String>',_types),
        'allPermissions': JsonConverters.toJson(allPermissions,'List<String>',_types),
        'responseStatus': JsonConverters.toJson(responseStatus,'ResponseStatus',_types)
    };

}

// @DataContract
class UnAssignRolesResponse
{
    // @DataMember(Order=1)
    List<String> allRoles;

    // @DataMember(Order=2)
    List<String> allPermissions;

    // @DataMember(Order=3)
    ResponseStatus responseStatus;

    UnAssignRolesResponse({this.allRoles,this.allPermissions,this.responseStatus});

    UnAssignRolesResponse fromMap(Map<String, dynamic> map) => new UnAssignRolesResponse.fromJson(map);
    UnAssignRolesResponse.fromJson(Map<String, dynamic> json) {
        allRoles = JsonConverters.fromJson(json['allRoles'],'List<String>',_types);
        allPermissions = JsonConverters.fromJson(json['allPermissions'],'List<String>',_types);
        responseStatus = JsonConverters.fromJson(json['responseStatus'],'ResponseStatus',_types);
    }

    Map<String, dynamic> toJson() => {
        'allRoles': JsonConverters.toJson(allRoles,'List<String>',_types),
        'allPermissions': JsonConverters.toJson(allPermissions,'List<String>',_types),
        'responseStatus': JsonConverters.toJson(responseStatus,'ResponseStatus',_types)
    };

}

// @DataContract
class ConvertSessionToTokenResponse
{
    // @DataMember(Order=1)
    Map<String,String> meta;

    // @DataMember(Order=2)
    String accessToken;

    // @DataMember(Order=3)
    ResponseStatus responseStatus;

    ConvertSessionToTokenResponse({this.meta,this.accessToken,this.responseStatus});

    ConvertSessionToTokenResponse fromMap(Map<String, dynamic> map) => new ConvertSessionToTokenResponse.fromJson(map);
    ConvertSessionToTokenResponse.fromJson(Map<String, dynamic> json) {
        meta = JsonConverters.toStringMap(json['meta']);
        accessToken = json['accessToken'];
        responseStatus = JsonConverters.fromJson(json['responseStatus'],'ResponseStatus',_types);
    }

    Map<String, dynamic> toJson() => {
        'meta': meta,
        'accessToken': accessToken,
        'responseStatus': JsonConverters.toJson(responseStatus,'ResponseStatus',_types)
    };

}

// @DataContract
class GetAccessTokenResponse
{
    // @DataMember(Order=1)
    String accessToken;

    // @DataMember(Order=2)
    ResponseStatus responseStatus;

    GetAccessTokenResponse({this.accessToken,this.responseStatus});

    GetAccessTokenResponse fromMap(Map<String, dynamic> map) => new GetAccessTokenResponse.fromJson(map);
    GetAccessTokenResponse.fromJson(Map<String, dynamic> json) {
        accessToken = json['accessToken'];
        responseStatus = JsonConverters.fromJson(json['responseStatus'],'ResponseStatus',_types);
    }

    Map<String, dynamic> toJson() => {
        'accessToken': accessToken,
        'responseStatus': JsonConverters.toJson(responseStatus,'ResponseStatus',_types)
    };

}

// @DataContract
class QueryResponse<T>
{
    // @DataMember(Order=1)
    int offset;

    // @DataMember(Order=2)
    int total;

    // @DataMember(Order=3)
    List<T> results;

    // @DataMember(Order=4)
    Map<String,String> meta;

    // @DataMember(Order=5)
    ResponseStatus responseStatus;

    QueryResponse({this.offset,this.total,this.results,this.meta,this.responseStatus});

    QueryResponse fromMap(Map<String, dynamic> map) => new QueryResponse.fromJson(map);
    QueryResponse.fromJson(Map<String, dynamic> json) {
        offset = json['offset'];
        total = json['total'];
        results = JsonConverters.fromJson(json['results'],'List<${runtimeGenericTypeDefs(this,[0]).join(",")}>',_types);
        meta = JsonConverters.toStringMap(json['meta']);
        responseStatus = JsonConverters.fromJson(json['responseStatus'],'ResponseStatus',_types);
    }

    Map<String, dynamic> toJson() => {
        'offset': offset,
        'total': total,
        'results': JsonConverters.toJson(results,'List<T>',_types),
        'meta': meta,
        'responseStatus': JsonConverters.toJson(responseStatus,'ResponseStatus',_types)
    };

}

class CustomHttpError implements IReturn<CustomHttpErrorResponse>
{
    int statusCode;
    String statusDescription;

    CustomHttpError({this.statusCode,this.statusDescription});

    CustomHttpError fromMap(Map<String, dynamic> map) => new CustomHttpError.fromJson(map);
    CustomHttpError.fromJson(Map<String, dynamic> json) {
        statusCode = json['statusCode'];
        statusDescription = json['statusDescription'];
    }

    Map<String, dynamic> toJson() => {
        'statusCode': statusCode,
        'statusDescription': statusDescription
    };

    createResponse() { return new CustomHttpErrorResponse(); }
    String getTypeName() { return "CustomHttpError"; }
}

// @Route("/throwhttperror/{Status}")
class ThrowHttpError
{
    int status;
    String message;

    ThrowHttpError({this.status,this.message});

    ThrowHttpError fromMap(Map<String, dynamic> map) => new ThrowHttpError.fromJson(map);
    ThrowHttpError.fromJson(Map<String, dynamic> json) {
        status = json['status'];
        message = json['message'];
    }

    Map<String, dynamic> toJson() => {
        'status': status,
        'message': message
    };

}

// @Route("/throw404")
// @Route("/throw404/{Message}")
class Throw404
{
    String message;

    Throw404({this.message});

    Throw404 fromMap(Map<String, dynamic> map) => new Throw404.fromJson(map);
    Throw404.fromJson(Map<String, dynamic> json) {
        message = json['message'];
    }

    Map<String, dynamic> toJson() => {
        'message': message
    };

}

// @Route("/throwcustom400")
// @Route("/throwcustom400/{Message}")
class ThrowCustom400
{
    String message;

    ThrowCustom400({this.message});

    ThrowCustom400 fromMap(Map<String, dynamic> map) => new ThrowCustom400.fromJson(map);
    ThrowCustom400.fromJson(Map<String, dynamic> json) {
        message = json['message'];
    }

    Map<String, dynamic> toJson() => {
        'message': message
    };

}

// @Route("/throw/{Type}")
class ThrowType implements IReturn<ThrowTypeResponse>
{
    String type;
    String message;

    ThrowType({this.type,this.message});

    ThrowType fromMap(Map<String, dynamic> map) => new ThrowType.fromJson(map);
    ThrowType.fromJson(Map<String, dynamic> json) {
        type = json['type'];
        message = json['message'];
    }

    Map<String, dynamic> toJson() => {
        'type': type,
        'message': message
    };

    createResponse() { return new ThrowTypeResponse(); }
    String getTypeName() { return "ThrowType"; }
}

// @Route("/throwvalidation")
class ThrowValidation implements IReturn<ThrowValidationResponse>
{
    int age;
    String required;
    String email;

    ThrowValidation({this.age,this.required,this.email});

    ThrowValidation fromMap(Map<String, dynamic> map) => new ThrowValidation.fromJson(map);
    ThrowValidation.fromJson(Map<String, dynamic> json) {
        age = json['age'];
        required = json['required'];
        email = json['email'];
    }

    Map<String, dynamic> toJson() => {
        'age': age,
        'required': required,
        'email': email
    };

    createResponse() { return new ThrowValidationResponse(); }
    String getTypeName() { return "ThrowValidation"; }
}

// @Route("/throwbusinesserror")
class ThrowBusinessError implements IReturn<ThrowBusinessErrorResponse>
{
    ThrowBusinessError();
    ThrowBusinessError fromMap(Map<String, dynamic> map) => new ThrowBusinessError.fromJson(map);
    ThrowBusinessError.fromJson(Map<String, dynamic> json) : super();
    Map<String, dynamic> toJson() => {};
    createResponse() { return new ThrowBusinessErrorResponse(); }
    String getTypeName() { return "ThrowBusinessError"; }
}

class ExternalOperation implements IReturn<ExternalOperationResponse>
{
    int id;
    String name;
    ExternalEnum externalEnum;

    ExternalOperation({this.id,this.name,this.externalEnum});

    ExternalOperation fromMap(Map<String, dynamic> map) => new ExternalOperation.fromJson(map);
    ExternalOperation.fromJson(Map<String, dynamic> json) {
        id = json['id'];
        name = json['name'];
        externalEnum = JsonConverters.fromJson(json['externalEnum'],'ExternalEnum',_types);
    }

    Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'externalEnum': JsonConverters.toJson(externalEnum,'ExternalEnum',_types)
    };

    createResponse() { return new ExternalOperationResponse(); }
    String getTypeName() { return "ExternalOperation"; }
}

class ExternalOperation2 implements IReturn<ExternalOperation2Response>
{
    int id;

    ExternalOperation2({this.id});

    ExternalOperation2 fromMap(Map<String, dynamic> map) => new ExternalOperation2.fromJson(map);
    ExternalOperation2.fromJson(Map<String, dynamic> json) {
        id = json['id'];
    }

    Map<String, dynamic> toJson() => {
        'id': id
    };

    createResponse() { return new ExternalOperation2Response(); }
    String getTypeName() { return "ExternalOperation2"; }
}

class ExternalOperation3 implements IReturn<ExternalReturnTypeResponse>
{
    int id;

    ExternalOperation3({this.id});

    ExternalOperation3 fromMap(Map<String, dynamic> map) => new ExternalOperation3.fromJson(map);
    ExternalOperation3.fromJson(Map<String, dynamic> json) {
        id = json['id'];
    }

    Map<String, dynamic> toJson() => {
        'id': id
    };

    createResponse() { return new ExternalReturnTypeResponse(); }
    String getTypeName() { return "ExternalOperation3"; }
}

class ExternalOperation4
{
    int id;

    ExternalOperation4({this.id});

    ExternalOperation4 fromMap(Map<String, dynamic> map) => new ExternalOperation4.fromJson(map);
    ExternalOperation4.fromJson(Map<String, dynamic> json) {
        id = json['id'];
    }

    Map<String, dynamic> toJson() => {
        'id': id
    };

}

class RootPathRoutes
{
    String path;

    RootPathRoutes({this.path});

    RootPathRoutes fromMap(Map<String, dynamic> map) => new RootPathRoutes.fromJson(map);
    RootPathRoutes.fromJson(Map<String, dynamic> json) {
        path = json['path'];
    }

    Map<String, dynamic> toJson() => {
        'path': path
    };

}

class GetAccount implements IReturn<Account>
{
    String account;

    GetAccount({this.account});

    GetAccount fromMap(Map<String, dynamic> map) => new GetAccount.fromJson(map);
    GetAccount.fromJson(Map<String, dynamic> json) {
        account = json['account'];
    }

    Map<String, dynamic> toJson() => {
        'account': account
    };

    createResponse() { return new Account(); }
    String getTypeName() { return "GetAccount"; }
}

class GetProject implements IReturn<Project>
{
    String account;
    String project;

    GetProject({this.account,this.project});

    GetProject fromMap(Map<String, dynamic> map) => new GetProject.fromJson(map);
    GetProject.fromJson(Map<String, dynamic> json) {
        account = json['account'];
        project = json['project'];
    }

    Map<String, dynamic> toJson() => {
        'account': account,
        'project': project
    };

    createResponse() { return new Project(); }
    String getTypeName() { return "GetProject"; }
}

// @Route("/image-stream")
class ImageAsStream
{
    String format;

    ImageAsStream({this.format});

    ImageAsStream fromMap(Map<String, dynamic> map) => new ImageAsStream.fromJson(map);
    ImageAsStream.fromJson(Map<String, dynamic> json) {
        format = json['format'];
    }

    Map<String, dynamic> toJson() => {
        'format': format
    };

}

// @Route("/image-bytes")
class ImageAsBytes
{
    String format;

    ImageAsBytes({this.format});

    ImageAsBytes fromMap(Map<String, dynamic> map) => new ImageAsBytes.fromJson(map);
    ImageAsBytes.fromJson(Map<String, dynamic> json) {
        format = json['format'];
    }

    Map<String, dynamic> toJson() => {
        'format': format
    };

}

// @Route("/image-custom")
class ImageAsCustomResult
{
    String format;

    ImageAsCustomResult({this.format});

    ImageAsCustomResult fromMap(Map<String, dynamic> map) => new ImageAsCustomResult.fromJson(map);
    ImageAsCustomResult.fromJson(Map<String, dynamic> json) {
        format = json['format'];
    }

    Map<String, dynamic> toJson() => {
        'format': format
    };

}

// @Route("/image-response")
class ImageWriteToResponse
{
    String format;

    ImageWriteToResponse({this.format});

    ImageWriteToResponse fromMap(Map<String, dynamic> map) => new ImageWriteToResponse.fromJson(map);
    ImageWriteToResponse.fromJson(Map<String, dynamic> json) {
        format = json['format'];
    }

    Map<String, dynamic> toJson() => {
        'format': format
    };

}

// @Route("/image-file")
class ImageAsFile
{
    String format;

    ImageAsFile({this.format});

    ImageAsFile fromMap(Map<String, dynamic> map) => new ImageAsFile.fromJson(map);
    ImageAsFile.fromJson(Map<String, dynamic> json) {
        format = json['format'];
    }

    Map<String, dynamic> toJson() => {
        'format': format
    };

}

// @Route("/image-redirect")
class ImageAsRedirect
{
    String format;

    ImageAsRedirect({this.format});

    ImageAsRedirect fromMap(Map<String, dynamic> map) => new ImageAsRedirect.fromJson(map);
    ImageAsRedirect.fromJson(Map<String, dynamic> json) {
        format = json['format'];
    }

    Map<String, dynamic> toJson() => {
        'format': format
    };

}

// @Route("/image-draw/{Name}")
class DrawImage
{
    String name;
    String format;
    int width;
    int height;
    int fontSize;
    String foreground;
    String background;

    DrawImage({this.name,this.format,this.width,this.height,this.fontSize,this.foreground,this.background});

    DrawImage fromMap(Map<String, dynamic> map) => new DrawImage.fromJson(map);
    DrawImage.fromJson(Map<String, dynamic> json) {
        name = json['name'];
        format = json['format'];
        width = json['width'];
        height = json['height'];
        fontSize = json['fontSize'];
        foreground = json['foreground'];
        background = json['background'];
    }

    Map<String, dynamic> toJson() => {
        'name': name,
        'format': format,
        'width': width,
        'height': height,
        'fontSize': fontSize,
        'foreground': foreground,
        'background': background
    };

}

// @Route("/jwt")
class CreateJwt extends AuthUserSession implements IReturn<CreateJwtResponse>, IMeta
{
    DateTime jwtExpiry;

    CreateJwt({this.jwtExpiry});

    CreateJwt fromMap(Map<String, dynamic> map) => new CreateJwt.fromJson(map);
    CreateJwt.fromJson(Map<String, dynamic> json): super.fromJson(json) {
        jwtExpiry = JsonConverters.fromJson(json['jwtExpiry'],'DateTime',_types);
    }

    Map<String, dynamic> toJson() => super.toJson()..addAll({
        'jwtExpiry': JsonConverters.toJson(jwtExpiry,'DateTime',_types)
    });

    createResponse() { return new CreateJwtResponse(); }
    String getTypeName() { return "CreateJwt"; }
}

// @Route("/jwt-refresh")
class CreateRefreshJwt implements IReturn<CreateRefreshJwtResponse>
{
    String userAuthId;
    DateTime jwtExpiry;

    CreateRefreshJwt({this.userAuthId,this.jwtExpiry});

    CreateRefreshJwt fromMap(Map<String, dynamic> map) => new CreateRefreshJwt.fromJson(map);
    CreateRefreshJwt.fromJson(Map<String, dynamic> json) {
        userAuthId = json['userAuthId'];
        jwtExpiry = JsonConverters.fromJson(json['jwtExpiry'],'DateTime',_types);
    }

    Map<String, dynamic> toJson() => {
        'userAuthId': userAuthId,
        'jwtExpiry': JsonConverters.toJson(jwtExpiry,'DateTime',_types)
    };

    createResponse() { return new CreateRefreshJwtResponse(); }
    String getTypeName() { return "CreateRefreshJwt"; }
}

// @Route("/logs")
class ViewLogs implements IReturn<String>
{
    bool clear;

    ViewLogs({this.clear});

    ViewLogs fromMap(Map<String, dynamic> map) => new ViewLogs.fromJson(map);
    ViewLogs.fromJson(Map<String, dynamic> json) {
        clear = json['clear'];
    }

    Map<String, dynamic> toJson() => {
        'clear': clear
    };

    createResponse() { return ""; }
    String getTypeName() { return "ViewLogs"; }
}

// @Route("/metadatatest")
class MetadataTest implements IReturn<MetadataTestResponse>
{
    int id;

    MetadataTest({this.id});

    MetadataTest fromMap(Map<String, dynamic> map) => new MetadataTest.fromJson(map);
    MetadataTest.fromJson(Map<String, dynamic> json) {
        id = json['id'];
    }

    Map<String, dynamic> toJson() => {
        'id': id
    };

    createResponse() { return new MetadataTestResponse(); }
    String getTypeName() { return "MetadataTest"; }
}

// @Route("/metadatatest-array")
class MetadataTestArray implements IReturn<List<MetadataTestChild>>
{
    int id;

    MetadataTestArray({this.id});

    MetadataTestArray fromMap(Map<String, dynamic> map) => new MetadataTestArray.fromJson(map);
    MetadataTestArray.fromJson(Map<String, dynamic> json) {
        id = json['id'];
    }

    Map<String, dynamic> toJson() => {
        'id': id
    };

    createResponse() { return new List<MetadataTestChild>(); }
    String getTypeName() { return "MetadataTestArray"; }
}

// @Route("/example", "GET")
// @DataContract
class GetExample implements IReturn<GetExampleResponse>
{
    GetExample();
    GetExample fromMap(Map<String, dynamic> map) => new GetExample.fromJson(map);
    GetExample.fromJson(Map<String, dynamic> json) : super();
    Map<String, dynamic> toJson() => {};
    createResponse() { return new GetExampleResponse(); }
    String getTypeName() { return "GetExample"; }
}

// @Route("/randomids")
class GetRandomIds implements IReturn<GetRandomIdsResponse>
{
    int take;

    GetRandomIds({this.take});

    GetRandomIds fromMap(Map<String, dynamic> map) => new GetRandomIds.fromJson(map);
    GetRandomIds.fromJson(Map<String, dynamic> json) {
        take = json['take'];
    }

    Map<String, dynamic> toJson() => {
        'take': take
    };

    createResponse() { return new GetRandomIdsResponse(); }
    String getTypeName() { return "GetRandomIds"; }
}

// @Route("/textfile-test")
class TextFileTest
{
    bool asAttachment;

    TextFileTest({this.asAttachment});

    TextFileTest fromMap(Map<String, dynamic> map) => new TextFileTest.fromJson(map);
    TextFileTest.fromJson(Map<String, dynamic> json) {
        asAttachment = json['asAttachment'];
    }

    Map<String, dynamic> toJson() => {
        'asAttachment': asAttachment
    };

}

// @Route("/return/text")
class ReturnText
{
    String text;

    ReturnText({this.text});

    ReturnText fromMap(Map<String, dynamic> map) => new ReturnText.fromJson(map);
    ReturnText.fromJson(Map<String, dynamic> json) {
        text = json['text'];
    }

    Map<String, dynamic> toJson() => {
        'text': text
    };

}

// @Route("/return/html")
class ReturnHtml
{
    String text;

    ReturnHtml({this.text});

    ReturnHtml fromMap(Map<String, dynamic> map) => new ReturnHtml.fromJson(map);
    ReturnHtml.fromJson(Map<String, dynamic> json) {
        text = json['text'];
    }

    Map<String, dynamic> toJson() => {
        'text': text
    };

}

// @Route("/hello")
// @Route("/hello/{Name}")
class Hello implements IReturn<HelloResponse>
{
    // @Required()
    String name;

    String title;

    Hello({this.name,this.title});

    Hello fromMap(Map<String, dynamic> map) => new Hello.fromJson(map);
    Hello.fromJson(Map<String, dynamic> json) {
        name = json['name'];
        title = json['title'];
    }

    Map<String, dynamic> toJson() => {
        'name': name,
        'title': title
    };

    createResponse() { return new HelloResponse(); }
    String getTypeName() { return "Hello"; }
}

class HelloWithNestedClass implements IReturn<HelloResponse>
{
    String name;
    NestedClass nestedClassProp;

    HelloWithNestedClass({this.name,this.nestedClassProp});

    HelloWithNestedClass fromMap(Map<String, dynamic> map) => new HelloWithNestedClass.fromJson(map);
    HelloWithNestedClass.fromJson(Map<String, dynamic> json) {
        name = json['name'];
        nestedClassProp = JsonConverters.fromJson(json['nestedClassProp'],'NestedClass',_types);
    }

    Map<String, dynamic> toJson() => {
        'name': name,
        'nestedClassProp': JsonConverters.toJson(nestedClassProp,'NestedClass',_types)
    };

    createResponse() { return new HelloResponse(); }
    String getTypeName() { return "HelloWithNestedClass"; }
}

class HelloList implements IReturn<List<ListResult>>
{
    List<String> names;

    HelloList({this.names});

    HelloList fromMap(Map<String, dynamic> map) => new HelloList.fromJson(map);
    HelloList.fromJson(Map<String, dynamic> json) {
        names = JsonConverters.fromJson(json['names'],'List<String>',_types);
    }

    Map<String, dynamic> toJson() => {
        'names': JsonConverters.toJson(names,'List<String>',_types)
    };

    createResponse() { return new List<ListResult>(); }
    String getTypeName() { return "HelloList"; }
}

class HelloArray implements IReturn<List<ArrayResult>>
{
    List<String> names;

    HelloArray({this.names});

    HelloArray fromMap(Map<String, dynamic> map) => new HelloArray.fromJson(map);
    HelloArray.fromJson(Map<String, dynamic> json) {
        names = JsonConverters.fromJson(json['names'],'List<String>',_types);
    }

    Map<String, dynamic> toJson() => {
        'names': JsonConverters.toJson(names,'List<String>',_types)
    };

    createResponse() { return new List<ArrayResult>(); }
    String getTypeName() { return "HelloArray"; }
}

class HelloWithEnum
{
    EnumType enumProp;
    EnumType nullableEnumProp;
    EnumFlags enumFlags;

    HelloWithEnum({this.enumProp,this.nullableEnumProp,this.enumFlags});

    HelloWithEnum fromMap(Map<String, dynamic> map) => new HelloWithEnum.fromJson(map);
    HelloWithEnum.fromJson(Map<String, dynamic> json) {
        enumProp = JsonConverters.fromJson(json['enumProp'],'EnumType',_types);
        nullableEnumProp = JsonConverters.fromJson(json['nullableEnumProp'],'EnumType',_types);
        enumFlags = JsonConverters.fromJson(json['enumFlags'],'EnumFlags',_types);
    }

    Map<String, dynamic> toJson() => {
        'enumProp': JsonConverters.toJson(enumProp,'EnumType',_types),
        'nullableEnumProp': JsonConverters.toJson(nullableEnumProp,'EnumType',_types),
        'enumFlags': JsonConverters.toJson(enumFlags,'EnumFlags',_types)
    };

}

class HelloExternal
{
    String name;

    HelloExternal({this.name});

    HelloExternal fromMap(Map<String, dynamic> map) => new HelloExternal.fromJson(map);
    HelloExternal.fromJson(Map<String, dynamic> json) {
        name = json['name'];
    }

    Map<String, dynamic> toJson() => {
        'name': name
    };

}

/**
* AllowedAttributes Description
*/
// @Route("/allowed-attributes", "GET")
// @Api(Description="AllowedAttributes Description")
// @ApiResponse(Description="Your request was not understood", StatusCode=400)
// @DataContract
class AllowedAttributes
{
    /**
    * Range Description
    */
    // @DataMember(Name="Aliased")
    // @ApiMember(DataType="double", Description="Range Description", IsRequired=true, ParameterType="path")
    double range;

    AllowedAttributes({this.range});

    AllowedAttributes fromMap(Map<String, dynamic> map) => new AllowedAttributes.fromJson(map);
    AllowedAttributes.fromJson(Map<String, dynamic> json) {
        range = JsonConverters.toDouble(json['range']);
    }

    Map<String, dynamic> toJson() => {
        'range': range
    };

}

// @Route("/all-types")
class HelloAllTypes implements IReturn<HelloAllTypesResponse>
{
    String name;
    AllTypes allTypes;
    AllCollectionTypes allCollectionTypes;

    HelloAllTypes({this.name,this.allTypes,this.allCollectionTypes});

    HelloAllTypes fromMap(Map<String, dynamic> map) => new HelloAllTypes.fromJson(map);
    HelloAllTypes.fromJson(Map<String, dynamic> json) {
        name = json['name'];
        allTypes = JsonConverters.fromJson(json['allTypes'],'AllTypes',_types);
        allCollectionTypes = JsonConverters.fromJson(json['allCollectionTypes'],'AllCollectionTypes',_types);
    }

    Map<String, dynamic> toJson() => {
        'name': name,
        'allTypes': JsonConverters.toJson(allTypes,'AllTypes',_types),
        'allCollectionTypes': JsonConverters.toJson(allCollectionTypes,'AllCollectionTypes',_types)
    };

    createResponse() { return new HelloAllTypesResponse(); }
    String getTypeName() { return "HelloAllTypes"; }
}

class HelloString implements IReturn<String>
{
    String name;

    HelloString({this.name});

    HelloString fromMap(Map<String, dynamic> map) => new HelloString.fromJson(map);
    HelloString.fromJson(Map<String, dynamic> json) {
        name = json['name'];
    }

    Map<String, dynamic> toJson() => {
        'name': name
    };

    createResponse() { return ""; }
    String getTypeName() { return "HelloString"; }
}

class HelloVoid
{
    String name;

    HelloVoid({this.name});

    HelloVoid fromMap(Map<String, dynamic> map) => new HelloVoid.fromJson(map);
    HelloVoid.fromJson(Map<String, dynamic> json) {
        name = json['name'];
    }

    Map<String, dynamic> toJson() => {
        'name': name
    };

}

// @DataContract
class HelloWithDataContract implements IReturn<HelloWithDataContractResponse>
{
    // @DataMember(Name="name", Order=1, IsRequired=true, EmitDefaultValue=false)
    String name;

    // @DataMember(Name="id", Order=2, EmitDefaultValue=false)
    int id;

    HelloWithDataContract({this.name,this.id});

    HelloWithDataContract fromMap(Map<String, dynamic> map) => new HelloWithDataContract.fromJson(map);
    HelloWithDataContract.fromJson(Map<String, dynamic> json) {
        name = json['name'];
        id = json['id'];
    }

    Map<String, dynamic> toJson() => {
        'name': name,
        'id': id
    };

    createResponse() { return new HelloWithDataContractResponse(); }
    String getTypeName() { return "HelloWithDataContract"; }
}

/**
* Description on HelloWithDescription type
*/
class HelloWithDescription implements IReturn<HelloWithDescriptionResponse>
{
    String name;

    HelloWithDescription({this.name});

    HelloWithDescription fromMap(Map<String, dynamic> map) => new HelloWithDescription.fromJson(map);
    HelloWithDescription.fromJson(Map<String, dynamic> json) {
        name = json['name'];
    }

    Map<String, dynamic> toJson() => {
        'name': name
    };

    createResponse() { return new HelloWithDescriptionResponse(); }
    String getTypeName() { return "HelloWithDescription"; }
}

class HelloWithInheritance extends HelloBase implements IReturn<HelloWithInheritanceResponse>
{
    String name;

    HelloWithInheritance({this.name});

    HelloWithInheritance fromMap(Map<String, dynamic> map) => new HelloWithInheritance.fromJson(map);
    HelloWithInheritance.fromJson(Map<String, dynamic> json): super.fromJson(json) {
        name = json['name'];
    }

    Map<String, dynamic> toJson() => super.toJson()..addAll({
        'name': name
    });

    createResponse() { return new HelloWithInheritanceResponse(); }
    String getTypeName() { return "HelloWithInheritance"; }
}

class HelloWithGenericInheritance extends HelloBase1<Poco>
{
    String result;

    HelloWithGenericInheritance({this.result});

    HelloWithGenericInheritance fromMap(Map<String, dynamic> map) => new HelloWithGenericInheritance.fromJson(map);
    HelloWithGenericInheritance.fromJson(Map<String, dynamic> json): super.fromJson(json) {
        result = json['result'];
    }

    Map<String, dynamic> toJson() => super.toJson()..addAll({
        'result': result
    });

}

class HelloWithGenericInheritance2 extends HelloBase1<Hello>
{
    String result;

    HelloWithGenericInheritance2({this.result});

    HelloWithGenericInheritance2 fromMap(Map<String, dynamic> map) => new HelloWithGenericInheritance2.fromJson(map);
    HelloWithGenericInheritance2.fromJson(Map<String, dynamic> json): super.fromJson(json) {
        result = json['result'];
    }

    Map<String, dynamic> toJson() => super.toJson()..addAll({
        'result': result
    });

}

class HelloWithNestedInheritance extends HelloBase1<Item>
{
    HelloWithNestedInheritance();
    HelloWithNestedInheritance fromMap(Map<String, dynamic> map) => new HelloWithNestedInheritance.fromJson(map);
    HelloWithNestedInheritance.fromJson(Map<String, dynamic> json) : super.fromJson(json);
    Map<String, dynamic> toJson() => super.toJson();
}

class HelloWithReturn implements IReturn<HelloWithAlternateReturnResponse>
{
    String name;

    HelloWithReturn({this.name});

    HelloWithReturn fromMap(Map<String, dynamic> map) => new HelloWithReturn.fromJson(map);
    HelloWithReturn.fromJson(Map<String, dynamic> json) {
        name = json['name'];
    }

    Map<String, dynamic> toJson() => {
        'name': name
    };

    createResponse() { return new HelloWithAlternateReturnResponse(); }
    String getTypeName() { return "HelloWithReturn"; }
}

// @Route("/helloroute")
class HelloWithRoute implements IReturn<HelloWithRouteResponse>
{
    String name;

    HelloWithRoute({this.name});

    HelloWithRoute fromMap(Map<String, dynamic> map) => new HelloWithRoute.fromJson(map);
    HelloWithRoute.fromJson(Map<String, dynamic> json) {
        name = json['name'];
    }

    Map<String, dynamic> toJson() => {
        'name': name
    };

    createResponse() { return new HelloWithRouteResponse(); }
    String getTypeName() { return "HelloWithRoute"; }
}

class HelloWithType implements IReturn<HelloWithTypeResponse>
{
    String name;

    HelloWithType({this.name});

    HelloWithType fromMap(Map<String, dynamic> map) => new HelloWithType.fromJson(map);
    HelloWithType.fromJson(Map<String, dynamic> json) {
        name = json['name'];
    }

    Map<String, dynamic> toJson() => {
        'name': name
    };

    createResponse() { return new HelloWithTypeResponse(); }
    String getTypeName() { return "HelloWithType"; }
}

class HelloInterface
{
    IPoco poco;
    IEmptyInterface emptyInterface;
    EmptyClass emptyClass;

    HelloInterface({this.poco,this.emptyInterface,this.emptyClass});

    HelloInterface fromMap(Map<String, dynamic> map) => new HelloInterface.fromJson(map);
    HelloInterface.fromJson(Map<String, dynamic> json) {
        poco = JsonConverters.fromJson(json['poco'],'IPoco',_types);
        emptyInterface = JsonConverters.fromJson(json['emptyInterface'],'IEmptyInterface',_types);
        emptyClass = JsonConverters.fromJson(json['emptyClass'],'EmptyClass',_types);
    }

    Map<String, dynamic> toJson() => {
        'poco': JsonConverters.toJson(poco,'IPoco',_types),
        'emptyInterface': JsonConverters.toJson(emptyInterface,'IEmptyInterface',_types),
        'emptyClass': JsonConverters.toJson(emptyClass,'EmptyClass',_types)
    };

}

class HelloInnerTypes implements IReturn<HelloInnerTypesResponse>
{
    HelloInnerTypes();
    HelloInnerTypes fromMap(Map<String, dynamic> map) => new HelloInnerTypes.fromJson(map);
    HelloInnerTypes.fromJson(Map<String, dynamic> json) : super();
    Map<String, dynamic> toJson() => {};
    createResponse() { return new HelloInnerTypesResponse(); }
    String getTypeName() { return "HelloInnerTypes"; }
}

class HelloBuiltin
{
    DayOfWeek dayOfWeek;

    HelloBuiltin({this.dayOfWeek});

    HelloBuiltin fromMap(Map<String, dynamic> map) => new HelloBuiltin.fromJson(map);
    HelloBuiltin.fromJson(Map<String, dynamic> json) {
        dayOfWeek = JsonConverters.fromJson(json['dayOfWeek'],'DayOfWeek',_types);
    }

    Map<String, dynamic> toJson() => {
        'dayOfWeek': JsonConverters.toJson(dayOfWeek,'DayOfWeek',_types)
    };

}

class HelloGet implements IReturn<HelloVerbResponse>, IGet
{
    int id;

    HelloGet({this.id});

    HelloGet fromMap(Map<String, dynamic> map) => new HelloGet.fromJson(map);
    HelloGet.fromJson(Map<String, dynamic> json) {
        id = json['id'];
    }

    Map<String, dynamic> toJson() => {
        'id': id
    };

    createResponse() { return new HelloVerbResponse(); }
    String getTypeName() { return "HelloGet"; }
}

class HelloPost extends HelloBase implements IReturn<HelloVerbResponse>, IPost
{
    HelloPost();
    HelloPost fromMap(Map<String, dynamic> map) => new HelloPost.fromJson(map);
    HelloPost.fromJson(Map<String, dynamic> json) : super.fromJson(json);
    Map<String, dynamic> toJson() => super.toJson();
    createResponse() { return new HelloVerbResponse(); }
    String getTypeName() { return "HelloPost"; }
}

class HelloPut implements IReturn<HelloVerbResponse>, IPut
{
    int id;

    HelloPut({this.id});

    HelloPut fromMap(Map<String, dynamic> map) => new HelloPut.fromJson(map);
    HelloPut.fromJson(Map<String, dynamic> json) {
        id = json['id'];
    }

    Map<String, dynamic> toJson() => {
        'id': id
    };

    createResponse() { return new HelloVerbResponse(); }
    String getTypeName() { return "HelloPut"; }
}

class HelloDelete implements IReturn<HelloVerbResponse>, IDelete
{
    int id;

    HelloDelete({this.id});

    HelloDelete fromMap(Map<String, dynamic> map) => new HelloDelete.fromJson(map);
    HelloDelete.fromJson(Map<String, dynamic> json) {
        id = json['id'];
    }

    Map<String, dynamic> toJson() => {
        'id': id
    };

    createResponse() { return new HelloVerbResponse(); }
    String getTypeName() { return "HelloDelete"; }
}

class HelloPatch implements IReturn<HelloVerbResponse>, IPatch
{
    int id;

    HelloPatch({this.id});

    HelloPatch fromMap(Map<String, dynamic> map) => new HelloPatch.fromJson(map);
    HelloPatch.fromJson(Map<String, dynamic> json) {
        id = json['id'];
    }

    Map<String, dynamic> toJson() => {
        'id': id
    };

    createResponse() { return new HelloVerbResponse(); }
    String getTypeName() { return "HelloPatch"; }
}

class HelloReturnVoid implements IReturnVoid
{
    int id;

    HelloReturnVoid({this.id});

    HelloReturnVoid fromMap(Map<String, dynamic> map) => new HelloReturnVoid.fromJson(map);
    HelloReturnVoid.fromJson(Map<String, dynamic> json) {
        id = json['id'];
    }

    Map<String, dynamic> toJson() => {
        'id': id
    };

    createResponse() {}
    String getTypeName() { return "HelloReturnVoid"; }
}

class EnumRequest implements IReturn<EnumResponse>, IPut
{
    ScopeType Operator;

    EnumRequest({this.Operator});

    EnumRequest fromMap(Map<String, dynamic> map) => new EnumRequest.fromJson(map);
    EnumRequest.fromJson(Map<String, dynamic> json) {
        Operator = JsonConverters.fromJson(json['operator'],'ScopeType',_types);
    }

    Map<String, dynamic> toJson() => {
        'operator': JsonConverters.toJson(Operator,'ScopeType',_types)
    };

    createResponse() { return new EnumResponse(); }
    String getTypeName() { return "EnumRequest"; }
}

// @Route("/hellozip")
// @DataContract
class HelloZip implements IReturn<HelloZipResponse>
{
    // @DataMember
    String name;

    // @DataMember
    List<String> test;

    HelloZip({this.name,this.test});

    HelloZip fromMap(Map<String, dynamic> map) => new HelloZip.fromJson(map);
    HelloZip.fromJson(Map<String, dynamic> json) {
        name = json['name'];
        test = JsonConverters.fromJson(json['test'],'List<String>',_types);
    }

    Map<String, dynamic> toJson() => {
        'name': name,
        'test': JsonConverters.toJson(test,'List<String>',_types)
    };

    createResponse() { return new HelloZipResponse(); }
    String getTypeName() { return "HelloZip"; }
}

// @Route("/ping")
class Ping implements IReturn<PingResponse>
{
    Ping();
    Ping fromMap(Map<String, dynamic> map) => new Ping.fromJson(map);
    Ping.fromJson(Map<String, dynamic> json) : super();
    Map<String, dynamic> toJson() => {};
    createResponse() { return new PingResponse(); }
    String getTypeName() { return "Ping"; }
}

// @Route("/reset-connections")
class ResetConnections
{
    ResetConnections();
    ResetConnections fromMap(Map<String, dynamic> map) => new ResetConnections.fromJson(map);
    ResetConnections.fromJson(Map<String, dynamic> json) : super();
    Map<String, dynamic> toJson() => {};
}

// @Route("/requires-role")
class RequiresRole implements IReturn<RequiresRoleResponse>
{
    RequiresRole();
    RequiresRole fromMap(Map<String, dynamic> map) => new RequiresRole.fromJson(map);
    RequiresRole.fromJson(Map<String, dynamic> json) : super();
    Map<String, dynamic> toJson() => {};
    createResponse() { return new RequiresRoleResponse(); }
    String getTypeName() { return "RequiresRole"; }
}

// @Route("/return/string")
class ReturnString implements IReturn<String>
{
    String data;

    ReturnString({this.data});

    ReturnString fromMap(Map<String, dynamic> map) => new ReturnString.fromJson(map);
    ReturnString.fromJson(Map<String, dynamic> json) {
        data = json['data'];
    }

    Map<String, dynamic> toJson() => {
        'data': data
    };

    createResponse() { return ""; }
    String getTypeName() { return "ReturnString"; }
}

// @Route("/return/bytes")
class ReturnBytes implements IReturn<Uint8List>
{
    Uint8List data;

    ReturnBytes({this.data});

    ReturnBytes fromMap(Map<String, dynamic> map) => new ReturnBytes.fromJson(map);
    ReturnBytes.fromJson(Map<String, dynamic> json) {
        data = JsonConverters.fromJson(json['data'],'Uint8List',_types);
    }

    Map<String, dynamic> toJson() => {
        'data': JsonConverters.toJson(data,'Uint8List',_types)
    };

    createResponse() { return new Uint8List(0); }
    String getTypeName() { return "ReturnBytes"; }
}

// @Route("/return/stream")
class ReturnStream implements IReturn<Uint8List>
{
    Uint8List data;

    ReturnStream({this.data});

    ReturnStream fromMap(Map<String, dynamic> map) => new ReturnStream.fromJson(map);
    ReturnStream.fromJson(Map<String, dynamic> json) {
        data = JsonConverters.fromJson(json['data'],'Uint8List',_types);
    }

    Map<String, dynamic> toJson() => {
        'data': JsonConverters.toJson(data,'Uint8List',_types)
    };

    createResponse() { return new Uint8List(0); }
    String getTypeName() { return "ReturnStream"; }
}

// @Route("/Request1", "GET")
class GetRequest1 implements IReturn<List<ReturnedDto>>, IGet
{
    GetRequest1();
    GetRequest1 fromMap(Map<String, dynamic> map) => new GetRequest1.fromJson(map);
    GetRequest1.fromJson(Map<String, dynamic> json) : super();
    Map<String, dynamic> toJson() => {};
    createResponse() { return new List<ReturnedDto>(); }
    String getTypeName() { return "GetRequest1"; }
}

// @Route("/Request2", "GET")
class GetRequest2 implements IReturn<List<ReturnedDto>>, IGet
{
    GetRequest2();
    GetRequest2 fromMap(Map<String, dynamic> map) => new GetRequest2.fromJson(map);
    GetRequest2.fromJson(Map<String, dynamic> json) : super();
    Map<String, dynamic> toJson() => {};
    createResponse() { return new List<ReturnedDto>(); }
    String getTypeName() { return "GetRequest2"; }
}

// @Route("/sendjson")
class SendJson implements IReturn<String>
{
    int id;
    String name;

    SendJson({this.id,this.name});

    SendJson fromMap(Map<String, dynamic> map) => new SendJson.fromJson(map);
    SendJson.fromJson(Map<String, dynamic> json) {
        id = json['id'];
        name = json['name'];
    }

    Map<String, dynamic> toJson() => {
        'id': id,
        'name': name
    };

    createResponse() { return ""; }
    String getTypeName() { return "SendJson"; }
}

// @Route("/sendtext")
class SendText implements IReturn<String>
{
    int id;
    String name;
    String contentType;

    SendText({this.id,this.name,this.contentType});

    SendText fromMap(Map<String, dynamic> map) => new SendText.fromJson(map);
    SendText.fromJson(Map<String, dynamic> json) {
        id = json['id'];
        name = json['name'];
        contentType = json['contentType'];
    }

    Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'contentType': contentType
    };

    createResponse() { return ""; }
    String getTypeName() { return "SendText"; }
}

// @Route("/sendraw")
class SendRaw implements IReturn<Uint8List>
{
    int id;
    String name;
    String contentType;

    SendRaw({this.id,this.name,this.contentType});

    SendRaw fromMap(Map<String, dynamic> map) => new SendRaw.fromJson(map);
    SendRaw.fromJson(Map<String, dynamic> json) {
        id = json['id'];
        name = json['name'];
        contentType = json['contentType'];
    }

    Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'contentType': contentType
    };

    createResponse() { return new Uint8List(0); }
    String getTypeName() { return "SendRaw"; }
}

class SendDefault implements IReturn<SendVerbResponse>
{
    int id;

    SendDefault({this.id});

    SendDefault fromMap(Map<String, dynamic> map) => new SendDefault.fromJson(map);
    SendDefault.fromJson(Map<String, dynamic> json) {
        id = json['id'];
    }

    Map<String, dynamic> toJson() => {
        'id': id
    };

    createResponse() { return new SendVerbResponse(); }
    String getTypeName() { return "SendDefault"; }
}

// @Route("/sendrestget/{Id}", "GET")
class SendRestGet implements IReturn<SendVerbResponse>, IGet
{
    int id;

    SendRestGet({this.id});

    SendRestGet fromMap(Map<String, dynamic> map) => new SendRestGet.fromJson(map);
    SendRestGet.fromJson(Map<String, dynamic> json) {
        id = json['id'];
    }

    Map<String, dynamic> toJson() => {
        'id': id
    };

    createResponse() { return new SendVerbResponse(); }
    String getTypeName() { return "SendRestGet"; }
}

class SendGet implements IReturn<SendVerbResponse>, IGet
{
    int id;

    SendGet({this.id});

    SendGet fromMap(Map<String, dynamic> map) => new SendGet.fromJson(map);
    SendGet.fromJson(Map<String, dynamic> json) {
        id = json['id'];
    }

    Map<String, dynamic> toJson() => {
        'id': id
    };

    createResponse() { return new SendVerbResponse(); }
    String getTypeName() { return "SendGet"; }
}

class SendPost implements IReturn<SendVerbResponse>, IPost
{
    int id;

    SendPost({this.id});

    SendPost fromMap(Map<String, dynamic> map) => new SendPost.fromJson(map);
    SendPost.fromJson(Map<String, dynamic> json) {
        id = json['id'];
    }

    Map<String, dynamic> toJson() => {
        'id': id
    };

    createResponse() { return new SendVerbResponse(); }
    String getTypeName() { return "SendPost"; }
}

class SendPut implements IReturn<SendVerbResponse>, IPut
{
    int id;

    SendPut({this.id});

    SendPut fromMap(Map<String, dynamic> map) => new SendPut.fromJson(map);
    SendPut.fromJson(Map<String, dynamic> json) {
        id = json['id'];
    }

    Map<String, dynamic> toJson() => {
        'id': id
    };

    createResponse() { return new SendVerbResponse(); }
    String getTypeName() { return "SendPut"; }
}

class SendReturnVoid implements IReturnVoid
{
    int id;

    SendReturnVoid({this.id});

    SendReturnVoid fromMap(Map<String, dynamic> map) => new SendReturnVoid.fromJson(map);
    SendReturnVoid.fromJson(Map<String, dynamic> json) {
        id = json['id'];
    }

    Map<String, dynamic> toJson() => {
        'id': id
    };

    createResponse() {}
    String getTypeName() { return "SendReturnVoid"; }
}

// @Route("/session")
class GetSession implements IReturn<GetSessionResponse>
{
    GetSession();
    GetSession fromMap(Map<String, dynamic> map) => new GetSession.fromJson(map);
    GetSession.fromJson(Map<String, dynamic> json) : super();
    Map<String, dynamic> toJson() => {};
    createResponse() { return new GetSessionResponse(); }
    String getTypeName() { return "GetSession"; }
}

// @Route("/session/edit/{CustomName}")
class UpdateSession implements IReturn<GetSessionResponse>
{
    String customName;

    UpdateSession({this.customName});

    UpdateSession fromMap(Map<String, dynamic> map) => new UpdateSession.fromJson(map);
    UpdateSession.fromJson(Map<String, dynamic> json) {
        customName = json['customName'];
    }

    Map<String, dynamic> toJson() => {
        'customName': customName
    };

    createResponse() { return new GetSessionResponse(); }
    String getTypeName() { return "UpdateSession"; }
}

class StoreLogs implements IReturn<StoreLogsResponse>
{
    List<Logger> loggers;

    StoreLogs({this.loggers});

    StoreLogs fromMap(Map<String, dynamic> map) => new StoreLogs.fromJson(map);
    StoreLogs.fromJson(Map<String, dynamic> json) {
        loggers = JsonConverters.fromJson(json['loggers'],'List<Logger>',_types);
    }

    Map<String, dynamic> toJson() => {
        'loggers': JsonConverters.toJson(loggers,'List<Logger>',_types)
    };

    createResponse() { return new StoreLogsResponse(); }
    String getTypeName() { return "StoreLogs"; }
}

// @Route("/testauth")
class TestAuth implements IReturn<TestAuthResponse>
{
    TestAuth();
    TestAuth fromMap(Map<String, dynamic> map) => new TestAuth.fromJson(map);
    TestAuth.fromJson(Map<String, dynamic> json) : super();
    Map<String, dynamic> toJson() => {};
    createResponse() { return new TestAuthResponse(); }
    String getTypeName() { return "TestAuth"; }
}

// @Route("/testdata/AllTypes")
class TestDataAllTypes implements IReturn<AllTypes>
{
    TestDataAllTypes();
    TestDataAllTypes fromMap(Map<String, dynamic> map) => new TestDataAllTypes.fromJson(map);
    TestDataAllTypes.fromJson(Map<String, dynamic> json) : super();
    Map<String, dynamic> toJson() => {};
    createResponse() { return new AllTypes(); }
    String getTypeName() { return "TestDataAllTypes"; }
}

// @Route("/testdata/AllCollectionTypes")
class TestDataAllCollectionTypes implements IReturn<AllCollectionTypes>
{
    TestDataAllCollectionTypes();
    TestDataAllCollectionTypes fromMap(Map<String, dynamic> map) => new TestDataAllCollectionTypes.fromJson(map);
    TestDataAllCollectionTypes.fromJson(Map<String, dynamic> json) : super();
    Map<String, dynamic> toJson() => {};
    createResponse() { return new AllCollectionTypes(); }
    String getTypeName() { return "TestDataAllCollectionTypes"; }
}

// @Route("/void-response")
class TestVoidResponse
{
    TestVoidResponse();
    TestVoidResponse fromMap(Map<String, dynamic> map) => new TestVoidResponse.fromJson(map);
    TestVoidResponse.fromJson(Map<String, dynamic> json) : super();
    Map<String, dynamic> toJson() => {};
}

// @Route("/null-response")
class TestNullResponse
{
    TestNullResponse();
    TestNullResponse fromMap(Map<String, dynamic> map) => new TestNullResponse.fromJson(map);
    TestNullResponse.fromJson(Map<String, dynamic> json) : super();
    Map<String, dynamic> toJson() => {};
}

// @Route("/auth")
// @Route("/auth/{provider}")
// @Route("/authenticate")
// @Route("/authenticate/{provider}")
// @DataContract
class Authenticate implements IReturn<AuthenticateResponse>, IPost, IMeta
{
    // @DataMember(Order=1)
    String provider;

    // @DataMember(Order=2)
    String state;

    // @DataMember(Order=3)
    String oauth_token;

    // @DataMember(Order=4)
    String oauth_verifier;

    // @DataMember(Order=5)
    String userName;

    // @DataMember(Order=6)
    String password;

    // @DataMember(Order=7)
    bool rememberMe;

    // @DataMember(Order=8)
    String Continue;

    // @DataMember(Order=9)
    String nonce;

    // @DataMember(Order=10)
    String uri;

    // @DataMember(Order=11)
    String response;

    // @DataMember(Order=12)
    String qop;

    // @DataMember(Order=13)
    String nc;

    // @DataMember(Order=14)
    String cnonce;

    // @DataMember(Order=15)
    bool useTokenCookie;

    // @DataMember(Order=16)
    String accessToken;

    // @DataMember(Order=17)
    String accessTokenSecret;

    // @DataMember(Order=18)
    Map<String,String> meta;

    Authenticate({this.provider,this.state,this.oauth_token,this.oauth_verifier,this.userName,this.password,this.rememberMe,this.Continue,this.nonce,this.uri,this.response,this.qop,this.nc,this.cnonce,this.useTokenCookie,this.accessToken,this.accessTokenSecret,this.meta});

    Authenticate fromMap(Map<String, dynamic> map) => new Authenticate.fromJson(map);
    Authenticate.fromJson(Map<String, dynamic> json) {
        provider = json['provider'];
        state = json['state'];
        oauth_token = json['oauth_token'];
        oauth_verifier = json['oauth_verifier'];
        userName = json['userName'];
        password = json['password'];
        rememberMe = json['rememberMe'];
        Continue = json['continue'];
        nonce = json['nonce'];
        uri = json['uri'];
        response = json['response'];
        qop = json['qop'];
        nc = json['nc'];
        cnonce = json['cnonce'];
        useTokenCookie = json['useTokenCookie'];
        accessToken = json['accessToken'];
        accessTokenSecret = json['accessTokenSecret'];
        meta = JsonConverters.toStringMap(json['meta']);
    }

    Map<String, dynamic> toJson() => {
        'provider': provider,
        'state': state,
        'oauth_token': oauth_token,
        'oauth_verifier': oauth_verifier,
        'userName': userName,
        'password': password,
        'rememberMe': rememberMe,
        'continue': Continue,
        'nonce': nonce,
        'uri': uri,
        'response': response,
        'qop': qop,
        'nc': nc,
        'cnonce': cnonce,
        'useTokenCookie': useTokenCookie,
        'accessToken': accessToken,
        'accessTokenSecret': accessTokenSecret,
        'meta': meta
    };

    createResponse() { return new AuthenticateResponse(); }
    String getTypeName() { return "Authenticate"; }
}

// @Route("/assignroles")
// @DataContract
class AssignRoles implements IReturn<AssignRolesResponse>, IPost
{
    // @DataMember(Order=1)
    String userName;

    // @DataMember(Order=2)
    List<String> permissions;

    // @DataMember(Order=3)
    List<String> roles;

    AssignRoles({this.userName,this.permissions,this.roles});

    AssignRoles fromMap(Map<String, dynamic> map) => new AssignRoles.fromJson(map);
    AssignRoles.fromJson(Map<String, dynamic> json) {
        userName = json['userName'];
        permissions = JsonConverters.fromJson(json['permissions'],'List<String>',_types);
        roles = JsonConverters.fromJson(json['roles'],'List<String>',_types);
    }

    Map<String, dynamic> toJson() => {
        'userName': userName,
        'permissions': JsonConverters.toJson(permissions,'List<String>',_types),
        'roles': JsonConverters.toJson(roles,'List<String>',_types)
    };

    createResponse() { return new AssignRolesResponse(); }
    String getTypeName() { return "AssignRoles"; }
}

// @Route("/unassignroles")
// @DataContract
class UnAssignRoles implements IReturn<UnAssignRolesResponse>, IPost
{
    // @DataMember(Order=1)
    String userName;

    // @DataMember(Order=2)
    List<String> permissions;

    // @DataMember(Order=3)
    List<String> roles;

    UnAssignRoles({this.userName,this.permissions,this.roles});

    UnAssignRoles fromMap(Map<String, dynamic> map) => new UnAssignRoles.fromJson(map);
    UnAssignRoles.fromJson(Map<String, dynamic> json) {
        userName = json['userName'];
        permissions = JsonConverters.fromJson(json['permissions'],'List<String>',_types);
        roles = JsonConverters.fromJson(json['roles'],'List<String>',_types);
    }

    Map<String, dynamic> toJson() => {
        'userName': userName,
        'permissions': JsonConverters.toJson(permissions,'List<String>',_types),
        'roles': JsonConverters.toJson(roles,'List<String>',_types)
    };

    createResponse() { return new UnAssignRolesResponse(); }
    String getTypeName() { return "UnAssignRoles"; }
}

// @Route("/session-to-token")
// @DataContract
class ConvertSessionToToken implements IReturn<ConvertSessionToTokenResponse>, IPost
{
    // @DataMember(Order=1)
    bool preserveSession;

    ConvertSessionToToken({this.preserveSession});

    ConvertSessionToToken fromMap(Map<String, dynamic> map) => new ConvertSessionToToken.fromJson(map);
    ConvertSessionToToken.fromJson(Map<String, dynamic> json) {
        preserveSession = json['preserveSession'];
    }

    Map<String, dynamic> toJson() => {
        'preserveSession': preserveSession
    };

    createResponse() { return new ConvertSessionToTokenResponse(); }
    String getTypeName() { return "ConvertSessionToToken"; }
}

// @Route("/access-token")
// @DataContract
class GetAccessToken implements IReturn<GetAccessTokenResponse>, IPost
{
    // @DataMember(Order=1)
    String refreshToken;

    GetAccessToken({this.refreshToken});

    GetAccessToken fromMap(Map<String, dynamic> map) => new GetAccessToken.fromJson(map);
    GetAccessToken.fromJson(Map<String, dynamic> json) {
        refreshToken = json['refreshToken'];
    }

    Map<String, dynamic> toJson() => {
        'refreshToken': refreshToken
    };

    createResponse() { return new GetAccessTokenResponse(); }
    String getTypeName() { return "GetAccessToken"; }
}

class QueryPocoBase extends QueryDb1<OnlyDefinedInGenericType> implements IReturn<QueryResponse<OnlyDefinedInGenericType>>, IMeta
{
    int id;

    QueryPocoBase({this.id});

    QueryPocoBase fromMap(Map<String, dynamic> map) => new QueryPocoBase.fromJson(map);
    QueryPocoBase.fromJson(Map<String, dynamic> json): super.fromJson(json) {
        id = json['id'];
    }

    Map<String, dynamic> toJson() => super.toJson()..addAll({
        'id': id
    });

    createResponse() { return new QueryResponse<OnlyDefinedInGenericType>(); }
    String getTypeName() { return "QueryPocoBase"; }
}

class QueryPocoIntoBase extends QueryDb2<OnlyDefinedInGenericTypeFrom, OnlyDefinedInGenericTypeInto> implements IReturn<QueryResponse<OnlyDefinedInGenericTypeInto>>, IMeta
{
    int id;

    QueryPocoIntoBase({this.id});

    QueryPocoIntoBase fromMap(Map<String, dynamic> map) => new QueryPocoIntoBase.fromJson(map);
    QueryPocoIntoBase.fromJson(Map<String, dynamic> json): super.fromJson(json) {
        id = json['id'];
    }

    Map<String, dynamic> toJson() => super.toJson()..addAll({
        'id': id
    });

    createResponse() { return new QueryResponse<OnlyDefinedInGenericTypeInto>(); }
    String getTypeName() { return "QueryPocoIntoBase"; }
}

// @Route("/rockstars", "GET")
class QueryRockstars extends QueryDb1<Rockstar> implements IReturn<QueryResponse<Rockstar>>, IMeta
{
    QueryRockstars();
    QueryRockstars fromMap(Map<String, dynamic> map) => new QueryRockstars.fromJson(map);
    QueryRockstars.fromJson(Map<String, dynamic> json) : super.fromJson(json);
    Map<String, dynamic> toJson() => super.toJson();
    createResponse() { return new QueryResponse<Rockstar>(); }
    String getTypeName() { return "QueryRockstars"; }
}

Map<String, TypeInfo> _types = <String, TypeInfo> {
    'ResponseError': new TypeInfo(TypeOf.Class, create:() => new ResponseError()),
    'ResponseStatus': new TypeInfo(TypeOf.Class, create:() => new ResponseStatus()),
    'List<ResponseError>': new TypeInfo(TypeOf.Class, create:() => new List<ResponseError>()),
    'ExternalEnum': new TypeInfo(TypeOf.Enum, enumValues:ExternalEnum.values),
    'ExternalEnum2': new TypeInfo(TypeOf.Enum, enumValues:ExternalEnum2.values),
    'ExternalType': new TypeInfo(TypeOf.Class, create:() => new ExternalType()),
    'ExternalEnum3': new TypeInfo(TypeOf.Enum, enumValues:ExternalEnum3.values),
    'IAuthTokens': new TypeInfo(TypeOf.Interface),
    'AuthUserSession': new TypeInfo(TypeOf.Class, create:() => new AuthUserSession()),
    'DateTime': new TypeInfo(TypeOf.Class, create:() => new DateTime(0)),
    'List<String>': new TypeInfo(TypeOf.Class, create:() => new List<String>()),
    'List<IAuthTokens>': new TypeInfo(TypeOf.Class, create:() => new List<IAuthTokens>()),
    'MetadataTestNestedChild': new TypeInfo(TypeOf.Class, create:() => new MetadataTestNestedChild()),
    'MetadataTestChild': new TypeInfo(TypeOf.Class, create:() => new MetadataTestChild()),
    'List<MetadataTestNestedChild>': new TypeInfo(TypeOf.Class, create:() => new List<MetadataTestNestedChild>()),
    'MenuItemExampleItem': new TypeInfo(TypeOf.Class, create:() => new MenuItemExampleItem()),
    'MenuItemExample': new TypeInfo(TypeOf.Class, create:() => new MenuItemExample()),
    'MenuExample': new TypeInfo(TypeOf.Class, create:() => new MenuExample()),
    'NestedClass': new TypeInfo(TypeOf.Class, create:() => new NestedClass()),
    'ListResult': new TypeInfo(TypeOf.Class, create:() => new ListResult()),
    'ArrayResult': new TypeInfo(TypeOf.Class, create:() => new ArrayResult()),
    'EnumType': new TypeInfo(TypeOf.Enum, enumValues:EnumType.values),
    'EnumFlags': new TypeInfo(TypeOf.Enum, enumValues:EnumFlags.values),
    'SubType': new TypeInfo(TypeOf.Class, create:() => new SubType()),
    'HelloBase': new TypeInfo(TypeOf.AbstractClass),
    'HelloResponseBase': new TypeInfo(TypeOf.AbstractClass),
    'Poco': new TypeInfo(TypeOf.Class, create:() => new Poco()),
    'HelloBase1<T>': new TypeInfo(TypeOf.AbstractClass),
    'List<int>': new TypeInfo(TypeOf.Class, create:() => new List<int>()),
    'Item': new TypeInfo(TypeOf.Class, create:() => new Item()),
    'HelloWithReturnResponse': new TypeInfo(TypeOf.AbstractClass),
    'HelloType': new TypeInfo(TypeOf.Class, create:() => new HelloType()),
    'IPoco': new TypeInfo(TypeOf.Interface),
    'IEmptyInterface': new TypeInfo(TypeOf.Interface),
    'EmptyClass': new TypeInfo(TypeOf.Class, create:() => new EmptyClass()),
    'InnerType': new TypeInfo(TypeOf.Class, create:() => new InnerType()),
    'InnerEnum': new TypeInfo(TypeOf.Enum, enumValues:InnerEnum.values),
    'DayOfWeek': new TypeInfo(TypeOf.Enum, enumValues:DayOfWeek.values),
    'ScopeType': new TypeInfo(TypeOf.Enum, enumValues:ScopeType.values),
    'PingService': new TypeInfo(TypeOf.Class, create:() => new PingService()),
    'ReturnedDto': new TypeInfo(TypeOf.Class, create:() => new ReturnedDto()),
    'CustomUserSession': new TypeInfo(TypeOf.Class, create:() => new CustomUserSession()),
    'UnAuthInfo': new TypeInfo(TypeOf.Class, create:() => new UnAuthInfo()),
    'Channel': new TypeInfo(TypeOf.Class, create:() => new Channel()),
    'Device': new TypeInfo(TypeOf.Class, create:() => new Device()),
    'List<Channel>': new TypeInfo(TypeOf.Class, create:() => new List<Channel>()),
    'Logger': new TypeInfo(TypeOf.Class, create:() => new Logger()),
    'List<Device>': new TypeInfo(TypeOf.Class, create:() => new List<Device>()),
    'Rockstar': new TypeInfo(TypeOf.Class, create:() => new Rockstar()),
    'OnlyDefinedInGenericType': new TypeInfo(TypeOf.Class, create:() => new OnlyDefinedInGenericType()),
    'OnlyDefinedInGenericTypeFrom': new TypeInfo(TypeOf.Class, create:() => new OnlyDefinedInGenericTypeFrom()),
    'OnlyDefinedInGenericTypeInto': new TypeInfo(TypeOf.Class, create:() => new OnlyDefinedInGenericTypeInto()),
    'TypesGroup': new TypeInfo(TypeOf.Class, create:() => new TypesGroup()),
    'CustomHttpErrorResponse': new TypeInfo(TypeOf.Class, create:() => new CustomHttpErrorResponse()),
    'ThrowTypeResponse': new TypeInfo(TypeOf.Class, create:() => new ThrowTypeResponse()),
    'ThrowValidationResponse': new TypeInfo(TypeOf.Class, create:() => new ThrowValidationResponse()),
    'ThrowBusinessErrorResponse': new TypeInfo(TypeOf.Class, create:() => new ThrowBusinessErrorResponse()),
    'ExternalOperationResponse': new TypeInfo(TypeOf.Class, create:() => new ExternalOperationResponse()),
    'ExternalOperation2Response': new TypeInfo(TypeOf.Class, create:() => new ExternalOperation2Response()),
    'ExternalReturnTypeResponse': new TypeInfo(TypeOf.Class, create:() => new ExternalReturnTypeResponse()),
    'Account': new TypeInfo(TypeOf.Class, create:() => new Account()),
    'Project': new TypeInfo(TypeOf.Class, create:() => new Project()),
    'CreateJwtResponse': new TypeInfo(TypeOf.Class, create:() => new CreateJwtResponse()),
    'CreateRefreshJwtResponse': new TypeInfo(TypeOf.Class, create:() => new CreateRefreshJwtResponse()),
    'MetadataTestResponse': new TypeInfo(TypeOf.Class, create:() => new MetadataTestResponse()),
    'List<MetadataTestChild>': new TypeInfo(TypeOf.Class, create:() => new List<MetadataTestChild>()),
    'GetExampleResponse': new TypeInfo(TypeOf.Class, create:() => new GetExampleResponse()),
    'GetRandomIdsResponse': new TypeInfo(TypeOf.Class, create:() => new GetRandomIdsResponse()),
    'HelloResponse': new TypeInfo(TypeOf.Class, create:() => new HelloResponse()),
    'AllTypes': new TypeInfo(TypeOf.Class, create:() => new AllTypes()),
    'Duration': new TypeInfo(TypeOf.Class, create:() => new Duration()),
    'KeyValuePair<String, String>': new TypeInfo(TypeOf.Class, create:() => new KeyValuePair<String, String>()),
    'Map<int,String>': new TypeInfo(TypeOf.Class, create:() => new Map<int,String>()),
    'AllCollectionTypes': new TypeInfo(TypeOf.Class, create:() => new AllCollectionTypes()),
    'List<Poco>': new TypeInfo(TypeOf.Class, create:() => new List<Poco>()),
    'Map<String,List<Poco>>': new TypeInfo(TypeOf.Class, create:() => new Map<String,List<Poco>>()),
    'Map<String,List<Map<String,Poco>>>': new TypeInfo(TypeOf.Class, create:() => new Map<String,List<Map<String,Poco>>>()),
    'List<Map<String,Poco>>': new TypeInfo(TypeOf.Class, create:() => new List<Map<String,Poco>>()),
    'Map<String,Poco>': new TypeInfo(TypeOf.Class, create:() => new Map<String,Poco>()),
    'HelloAllTypesResponse': new TypeInfo(TypeOf.Class, create:() => new HelloAllTypesResponse()),
    'HelloDateTime': new TypeInfo(TypeOf.Class, create:() => new HelloDateTime()),
    'HelloWithDataContractResponse': new TypeInfo(TypeOf.Class, create:() => new HelloWithDataContractResponse()),
    'HelloWithDescriptionResponse': new TypeInfo(TypeOf.Class, create:() => new HelloWithDescriptionResponse()),
    'HelloWithInheritanceResponse': new TypeInfo(TypeOf.Class, create:() => new HelloWithInheritanceResponse()),
    'HelloWithAlternateReturnResponse': new TypeInfo(TypeOf.Class, create:() => new HelloWithAlternateReturnResponse()),
    'HelloWithRouteResponse': new TypeInfo(TypeOf.Class, create:() => new HelloWithRouteResponse()),
    'HelloWithTypeResponse': new TypeInfo(TypeOf.Class, create:() => new HelloWithTypeResponse()),
    'HelloInnerTypesResponse': new TypeInfo(TypeOf.Class, create:() => new HelloInnerTypesResponse()),
    'HelloVerbResponse': new TypeInfo(TypeOf.Class, create:() => new HelloVerbResponse()),
    'EnumResponse': new TypeInfo(TypeOf.Class, create:() => new EnumResponse()),
    'HelloTypes': new TypeInfo(TypeOf.Class, create:() => new HelloTypes()),
    'HelloZipResponse': new TypeInfo(TypeOf.Class, create:() => new HelloZipResponse()),
    'PingResponse': new TypeInfo(TypeOf.Class, create:() => new PingResponse()),
    'Map<String,ResponseStatus>': new TypeInfo(TypeOf.Class, create:() => new Map<String,ResponseStatus>()),
    'RequiresRoleResponse': new TypeInfo(TypeOf.Class, create:() => new RequiresRoleResponse()),
    'SendVerbResponse': new TypeInfo(TypeOf.Class, create:() => new SendVerbResponse()),
    'GetSessionResponse': new TypeInfo(TypeOf.Class, create:() => new GetSessionResponse()),
    'StoreLogsResponse': new TypeInfo(TypeOf.Class, create:() => new StoreLogsResponse()),
    'List<Logger>': new TypeInfo(TypeOf.Class, create:() => new List<Logger>()),
    'TestAuthResponse': new TypeInfo(TypeOf.Class, create:() => new TestAuthResponse()),
    'RequiresAdmin': new TypeInfo(TypeOf.Class, create:() => new RequiresAdmin()),
    'Wait': new TypeInfo(TypeOf.Class, create:() => new Wait()),
    'EchoTypes': new TypeInfo(TypeOf.Class, create:() => new EchoTypes()),
    'EchoCollections': new TypeInfo(TypeOf.Class, create:() => new EchoCollections()),
    'EchoComplexTypes': new TypeInfo(TypeOf.Class, create:() => new EchoComplexTypes()),
    'StoreRockstars': new TypeInfo(TypeOf.Class, create:() => new StoreRockstars()),
    'AuthenticateResponse': new TypeInfo(TypeOf.Class, create:() => new AuthenticateResponse()),
    'AssignRolesResponse': new TypeInfo(TypeOf.Class, create:() => new AssignRolesResponse()),
    'UnAssignRolesResponse': new TypeInfo(TypeOf.Class, create:() => new UnAssignRolesResponse()),
    'ConvertSessionToTokenResponse': new TypeInfo(TypeOf.Class, create:() => new ConvertSessionToTokenResponse()),
    'GetAccessTokenResponse': new TypeInfo(TypeOf.Class, create:() => new GetAccessTokenResponse()),
    'QueryResponse<T>': new TypeInfo(TypeOf.GenericDef,create:() => new QueryResponse()),
    'CustomHttpError': new TypeInfo(TypeOf.Class, create:() => new CustomHttpError()),
    'ThrowHttpError': new TypeInfo(TypeOf.Class, create:() => new ThrowHttpError()),
    'Throw404': new TypeInfo(TypeOf.Class, create:() => new Throw404()),
    'ThrowCustom400': new TypeInfo(TypeOf.Class, create:() => new ThrowCustom400()),
    'ThrowType': new TypeInfo(TypeOf.Class, create:() => new ThrowType()),
    'ThrowValidation': new TypeInfo(TypeOf.Class, create:() => new ThrowValidation()),
    'ThrowBusinessError': new TypeInfo(TypeOf.Class, create:() => new ThrowBusinessError()),
    'ExternalOperation': new TypeInfo(TypeOf.Class, create:() => new ExternalOperation()),
    'ExternalOperation2': new TypeInfo(TypeOf.Class, create:() => new ExternalOperation2()),
    'ExternalOperation3': new TypeInfo(TypeOf.Class, create:() => new ExternalOperation3()),
    'ExternalOperation4': new TypeInfo(TypeOf.Class, create:() => new ExternalOperation4()),
    'RootPathRoutes': new TypeInfo(TypeOf.Class, create:() => new RootPathRoutes()),
    'GetAccount': new TypeInfo(TypeOf.Class, create:() => new GetAccount()),
    'GetProject': new TypeInfo(TypeOf.Class, create:() => new GetProject()),
    'ImageAsStream': new TypeInfo(TypeOf.Class, create:() => new ImageAsStream()),
    'ImageAsBytes': new TypeInfo(TypeOf.Class, create:() => new ImageAsBytes()),
    'ImageAsCustomResult': new TypeInfo(TypeOf.Class, create:() => new ImageAsCustomResult()),
    'ImageWriteToResponse': new TypeInfo(TypeOf.Class, create:() => new ImageWriteToResponse()),
    'ImageAsFile': new TypeInfo(TypeOf.Class, create:() => new ImageAsFile()),
    'ImageAsRedirect': new TypeInfo(TypeOf.Class, create:() => new ImageAsRedirect()),
    'DrawImage': new TypeInfo(TypeOf.Class, create:() => new DrawImage()),
    'CreateJwt': new TypeInfo(TypeOf.Class, create:() => new CreateJwt()),
    'CreateRefreshJwt': new TypeInfo(TypeOf.Class, create:() => new CreateRefreshJwt()),
    'ViewLogs': new TypeInfo(TypeOf.Class, create:() => new ViewLogs()),
    'MetadataTest': new TypeInfo(TypeOf.Class, create:() => new MetadataTest()),
    'MetadataTestArray': new TypeInfo(TypeOf.Class, create:() => new MetadataTestArray()),
    'GetExample': new TypeInfo(TypeOf.Class, create:() => new GetExample()),
    'GetRandomIds': new TypeInfo(TypeOf.Class, create:() => new GetRandomIds()),
    'TextFileTest': new TypeInfo(TypeOf.Class, create:() => new TextFileTest()),
    'ReturnText': new TypeInfo(TypeOf.Class, create:() => new ReturnText()),
    'ReturnHtml': new TypeInfo(TypeOf.Class, create:() => new ReturnHtml()),
    'Hello': new TypeInfo(TypeOf.Class, create:() => new Hello()),
    'HelloWithNestedClass': new TypeInfo(TypeOf.Class, create:() => new HelloWithNestedClass()),
    'HelloList': new TypeInfo(TypeOf.Class, create:() => new HelloList()),
    'HelloArray': new TypeInfo(TypeOf.Class, create:() => new HelloArray()),
    'HelloWithEnum': new TypeInfo(TypeOf.Class, create:() => new HelloWithEnum()),
    'HelloExternal': new TypeInfo(TypeOf.Class, create:() => new HelloExternal()),
    'AllowedAttributes': new TypeInfo(TypeOf.Class, create:() => new AllowedAttributes()),
    'HelloAllTypes': new TypeInfo(TypeOf.Class, create:() => new HelloAllTypes()),
    'HelloString': new TypeInfo(TypeOf.Class, create:() => new HelloString()),
    'HelloVoid': new TypeInfo(TypeOf.Class, create:() => new HelloVoid()),
    'HelloWithDataContract': new TypeInfo(TypeOf.Class, create:() => new HelloWithDataContract()),
    'HelloWithDescription': new TypeInfo(TypeOf.Class, create:() => new HelloWithDescription()),
    'HelloWithInheritance': new TypeInfo(TypeOf.Class, create:() => new HelloWithInheritance()),
    'HelloWithGenericInheritance': new TypeInfo(TypeOf.Class, create:() => new HelloWithGenericInheritance()),
    'HelloWithGenericInheritance2': new TypeInfo(TypeOf.Class, create:() => new HelloWithGenericInheritance2()),
    'HelloWithNestedInheritance': new TypeInfo(TypeOf.Class, create:() => new HelloWithNestedInheritance()),
    'HelloWithReturn': new TypeInfo(TypeOf.Class, create:() => new HelloWithReturn()),
    'HelloWithRoute': new TypeInfo(TypeOf.Class, create:() => new HelloWithRoute()),
    'HelloWithType': new TypeInfo(TypeOf.Class, create:() => new HelloWithType()),
    'HelloInterface': new TypeInfo(TypeOf.Class, create:() => new HelloInterface()),
    'HelloInnerTypes': new TypeInfo(TypeOf.Class, create:() => new HelloInnerTypes()),
    'HelloBuiltin': new TypeInfo(TypeOf.Class, create:() => new HelloBuiltin()),
    'HelloGet': new TypeInfo(TypeOf.Class, create:() => new HelloGet()),
    'HelloPost': new TypeInfo(TypeOf.Class, create:() => new HelloPost()),
    'HelloPut': new TypeInfo(TypeOf.Class, create:() => new HelloPut()),
    'HelloDelete': new TypeInfo(TypeOf.Class, create:() => new HelloDelete()),
    'HelloPatch': new TypeInfo(TypeOf.Class, create:() => new HelloPatch()),
    'HelloReturnVoid': new TypeInfo(TypeOf.Class, create:() => new HelloReturnVoid()),
    'EnumRequest': new TypeInfo(TypeOf.Class, create:() => new EnumRequest()),
    'HelloZip': new TypeInfo(TypeOf.Class, create:() => new HelloZip()),
    'Ping': new TypeInfo(TypeOf.Class, create:() => new Ping()),
    'ResetConnections': new TypeInfo(TypeOf.Class, create:() => new ResetConnections()),
    'RequiresRole': new TypeInfo(TypeOf.Class, create:() => new RequiresRole()),
    'ReturnString': new TypeInfo(TypeOf.Class, create:() => new ReturnString()),
    'ReturnBytes': new TypeInfo(TypeOf.Class, create:() => new ReturnBytes()),
    'Uint8List': new TypeInfo(TypeOf.Class, create:() => new Uint8List(0)),
    'ReturnStream': new TypeInfo(TypeOf.Class, create:() => new ReturnStream()),
    'GetRequest1': new TypeInfo(TypeOf.Class, create:() => new GetRequest1()),
    'GetRequest2': new TypeInfo(TypeOf.Class, create:() => new GetRequest2()),
    'SendJson': new TypeInfo(TypeOf.Class, create:() => new SendJson()),
    'SendText': new TypeInfo(TypeOf.Class, create:() => new SendText()),
    'SendRaw': new TypeInfo(TypeOf.Class, create:() => new SendRaw()),
    'SendDefault': new TypeInfo(TypeOf.Class, create:() => new SendDefault()),
    'SendRestGet': new TypeInfo(TypeOf.Class, create:() => new SendRestGet()),
    'SendGet': new TypeInfo(TypeOf.Class, create:() => new SendGet()),
    'SendPost': new TypeInfo(TypeOf.Class, create:() => new SendPost()),
    'SendPut': new TypeInfo(TypeOf.Class, create:() => new SendPut()),
    'SendReturnVoid': new TypeInfo(TypeOf.Class, create:() => new SendReturnVoid()),
    'GetSession': new TypeInfo(TypeOf.Class, create:() => new GetSession()),
    'UpdateSession': new TypeInfo(TypeOf.Class, create:() => new UpdateSession()),
    'StoreLogs': new TypeInfo(TypeOf.Class, create:() => new StoreLogs()),
    'TestAuth': new TypeInfo(TypeOf.Class, create:() => new TestAuth()),
    'TestDataAllTypes': new TypeInfo(TypeOf.Class, create:() => new TestDataAllTypes()),
    'TestDataAllCollectionTypes': new TypeInfo(TypeOf.Class, create:() => new TestDataAllCollectionTypes()),
    'TestVoidResponse': new TypeInfo(TypeOf.Class, create:() => new TestVoidResponse()),
    'TestNullResponse': new TypeInfo(TypeOf.Class, create:() => new TestNullResponse()),
    'Authenticate': new TypeInfo(TypeOf.Class, create:() => new Authenticate()),
    'AssignRoles': new TypeInfo(TypeOf.Class, create:() => new AssignRoles()),
    'UnAssignRoles': new TypeInfo(TypeOf.Class, create:() => new UnAssignRoles()),
    'ConvertSessionToToken': new TypeInfo(TypeOf.Class, create:() => new ConvertSessionToToken()),
    'GetAccessToken': new TypeInfo(TypeOf.Class, create:() => new GetAccessToken()),
    'QueryPocoBase': new TypeInfo(TypeOf.Class, create:() => new QueryPocoBase()),
    'QueryPocoIntoBase': new TypeInfo(TypeOf.Class, create:() => new QueryPocoIntoBase()),
    'QueryRockstars': new TypeInfo(TypeOf.Class, create:() => new QueryRockstars()),
};
