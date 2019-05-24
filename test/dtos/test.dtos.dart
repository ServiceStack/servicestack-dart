/* Options:
Date: 2019-05-24 03:12:33
Version: 5.41
Tip: To override a DTO option, remove "//" prefix before updating
BaseUrl: http://test.servicestack.net

//GlobalNamespace: 
//AddServiceStackTypes: True
//AddResponseStatus: False
AddImplicitVersion: 1
//AddDescriptionAsComments: True
//IncludeTypes: 
//ExcludeTypes: 
DefaultImports: ../../lib/servicestack.dart
*/

import '../../lib/servicestack.dart';
import 'dart:collection';
import 'dart:typed_data';

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

class ExternalType implements IConvertible
{
    ExternalEnum2 externalEnum2;

    ExternalType({this.externalEnum2});
    ExternalType.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        externalEnum2 = JsonConverters.fromJson(json['externalEnum2'],'ExternalEnum2',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'externalEnum2': JsonConverters.toJson(externalEnum2,'ExternalEnum2',context)
    };

    TypeContext context = _ctx;
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
class AuthUserSession implements IConvertible
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

    // @DataMember(Order=45)
    List<String> audiences;

    // @DataMember(Order=46)
    List<String> scopes;

    // @DataMember(Order=47)
    String dns;

    // @DataMember(Order=48)
    String rsa;

    // @DataMember(Order=49)
    String sid;

    // @DataMember(Order=50)
    String hash;

    // @DataMember(Order=51)
    String homePhone;

    // @DataMember(Order=52)
    String mobilePhone;

    // @DataMember(Order=53)
    String webpage;

    // @DataMember(Order=54)
    bool emailConfirmed;

    // @DataMember(Order=55)
    bool phoneNumberConfirmed;

    // @DataMember(Order=56)
    bool twoFactorEnabled;

    // @DataMember(Order=57)
    String securityStamp;

    // @DataMember(Order=58)
    String type;

    AuthUserSession({this.referrerUrl,this.id,this.userAuthId,this.userAuthName,this.userName,this.twitterUserId,this.twitterScreenName,this.facebookUserId,this.facebookUserName,this.firstName,this.lastName,this.displayName,this.company,this.email,this.primaryEmail,this.phoneNumber,this.birthDate,this.birthDateRaw,this.address,this.address2,this.city,this.state,this.country,this.culture,this.fullName,this.gender,this.language,this.mailAddress,this.nickname,this.postalCode,this.timeZone,this.requestTokenSecret,this.createdAt,this.lastModified,this.roles,this.permissions,this.isAuthenticated,this.fromToken,this.profileUrl,this.sequence,this.tag,this.authProvider,this.providerOAuthAccess,this.meta,this.audiences,this.scopes,this.dns,this.rsa,this.sid,this.hash,this.homePhone,this.mobilePhone,this.webpage,this.emailConfirmed,this.phoneNumberConfirmed,this.twoFactorEnabled,this.securityStamp,this.type});
    AuthUserSession.fromJson(Map<String, dynamic> json) { fromMap(json); }

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
        birthDate = JsonConverters.fromJson(json['birthDate'],'DateTime',context);
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
        createdAt = JsonConverters.fromJson(json['createdAt'],'DateTime',context);
        lastModified = JsonConverters.fromJson(json['lastModified'],'DateTime',context);
        roles = JsonConverters.fromJson(json['roles'],'List<String>',context);
        permissions = JsonConverters.fromJson(json['permissions'],'List<String>',context);
        isAuthenticated = json['isAuthenticated'];
        fromToken = json['fromToken'];
        profileUrl = json['profileUrl'];
        sequence = json['sequence'];
        tag = json['tag'];
        authProvider = json['authProvider'];
        providerOAuthAccess = JsonConverters.fromJson(json['providerOAuthAccess'],'List<IAuthTokens>',context);
        meta = JsonConverters.toStringMap(json['meta']);
        audiences = JsonConverters.fromJson(json['audiences'],'List<String>',context);
        scopes = JsonConverters.fromJson(json['scopes'],'List<String>',context);
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
        'birthDate': JsonConverters.toJson(birthDate,'DateTime',context),
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
        'createdAt': JsonConverters.toJson(createdAt,'DateTime',context),
        'lastModified': JsonConverters.toJson(lastModified,'DateTime',context),
        'roles': JsonConverters.toJson(roles,'List<String>',context),
        'permissions': JsonConverters.toJson(permissions,'List<String>',context),
        'isAuthenticated': isAuthenticated,
        'fromToken': fromToken,
        'profileUrl': profileUrl,
        'sequence': sequence,
        'tag': tag,
        'authProvider': authProvider,
        'providerOAuthAccess': JsonConverters.toJson(providerOAuthAccess,'List<IAuthTokens>',context),
        'meta': meta,
        'audiences': JsonConverters.toJson(audiences,'List<String>',context),
        'scopes': JsonConverters.toJson(scopes,'List<String>',context),
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
        'type': type
    };

    TypeContext context = _ctx;
}

class MetadataTestNestedChild implements IConvertible
{
    String name;

    MetadataTestNestedChild({this.name});
    MetadataTestNestedChild.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        name = json['name'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'name': name
    };

    TypeContext context = _ctx;
}

class MetadataTestChild implements IConvertible
{
    String name;
    List<MetadataTestNestedChild> results;

    MetadataTestChild({this.name,this.results});
    MetadataTestChild.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        name = json['name'];
        results = JsonConverters.fromJson(json['results'],'List<MetadataTestNestedChild>',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'name': name,
        'results': JsonConverters.toJson(results,'List<MetadataTestNestedChild>',context)
    };

    TypeContext context = _ctx;
}

class MenuItemExampleItem implements IConvertible
{
    // @DataMember(Order=1)
    // @ApiMember()
    String name1;

    MenuItemExampleItem({this.name1});
    MenuItemExampleItem.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        name1 = json['name1'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'name1': name1
    };

    TypeContext context = _ctx;
}

class MenuItemExample implements IConvertible
{
    // @DataMember(Order=1)
    // @ApiMember()
    String name1;

    MenuItemExampleItem menuItemExampleItem;

    MenuItemExample({this.name1,this.menuItemExampleItem});
    MenuItemExample.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        name1 = json['name1'];
        menuItemExampleItem = JsonConverters.fromJson(json['menuItemExampleItem'],'MenuItemExampleItem',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'name1': name1,
        'menuItemExampleItem': JsonConverters.toJson(menuItemExampleItem,'MenuItemExampleItem',context)
    };

    TypeContext context = _ctx;
}

// @DataContract
class MenuExample implements IConvertible
{
    // @DataMember(Order=1)
    // @ApiMember()
    MenuItemExample menuItemExample1;

    MenuExample({this.menuItemExample1});
    MenuExample.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        menuItemExample1 = JsonConverters.fromJson(json['menuItemExample1'],'MenuItemExample',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'menuItemExample1': JsonConverters.toJson(menuItemExample1,'MenuItemExample',context)
    };

    TypeContext context = _ctx;
}

class NestedClass implements IConvertible
{
    String value;

    NestedClass({this.value});
    NestedClass.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        value = json['value'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'value': value
    };

    TypeContext context = _ctx;
}

class ListResult implements IConvertible
{
    String result;

    ListResult({this.result});
    ListResult.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        result = json['result'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'result': result
    };

    TypeContext context = _ctx;
}

class ArrayResult implements IConvertible
{
    String result;

    ArrayResult({this.result});
    ArrayResult.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        result = json['result'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'result': result
    };

    TypeContext context = _ctx;
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

class SubType implements IConvertible
{
    int id;
    String name;

    SubType({this.id,this.name});
    SubType.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        id = json['id'];
        name = json['name'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'id': id,
        'name': name
    };

    TypeContext context = _ctx;
}

abstract class HelloBase
{
    int id;

    HelloBase({this.id});
    HelloBase.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        id = json['id'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'id': id
    };

    TypeContext context = _ctx;
}

abstract class HelloResponseBase
{
    int refId;

    HelloResponseBase({this.refId});
    HelloResponseBase.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        refId = json['refId'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'refId': refId
    };

    TypeContext context = _ctx;
}

class Poco implements IConvertible
{
    String name;

    Poco({this.name});
    Poco.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        name = json['name'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'name': name
    };

    TypeContext context = _ctx;
}

abstract class HelloBase1<T>
{
    List<T> items;
    List<int> counts;

    HelloBase1({this.items,this.counts});
    HelloBase1.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        items = JsonConverters.fromJson(json['items'],'List<${runtimeGenericTypeDefs(this,[0]).join(",")}>',context);
        counts = JsonConverters.fromJson(json['counts'],'List<int>',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'items': JsonConverters.toJson(items,'List<T>',context),
        'counts': JsonConverters.toJson(counts,'List<int>',context)
    };

    TypeContext context = _ctx;
}

class Item implements IConvertible
{
    String value;

    Item({this.value});
    Item.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        value = json['value'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'value': value
    };

    TypeContext context = _ctx;
}

abstract class HelloWithReturnResponse
{
    String result;

    HelloWithReturnResponse({this.result});
    HelloWithReturnResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        result = json['result'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'result': result
    };

    TypeContext context = _ctx;
}

class HelloType implements IConvertible
{
    String result;

    HelloType({this.result});
    HelloType.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        result = json['result'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'result': result
    };

    TypeContext context = _ctx;
}

abstract class IPoco
{
    String name;
}

abstract class IEmptyInterface
{
}

class EmptyClass implements IConvertible
{
    EmptyClass();
    EmptyClass.fromJson(Map<String, dynamic> json) : super();
    fromMap(Map<String, dynamic> json) {
        return this;
    }

    Map<String, dynamic> toJson() => {};
    TypeContext context = _ctx;
}

class InnerType implements IConvertible
{
    int id;
    String name;

    InnerType({this.id,this.name});
    InnerType.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        id = json['id'];
        name = json['name'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'id': id,
        'name': name
    };

    TypeContext context = _ctx;
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

class PingService implements IConvertible
{
    PingService();
    PingService.fromJson(Map<String, dynamic> json) : super();
    fromMap(Map<String, dynamic> json) {
        return this;
    }

    Map<String, dynamic> toJson() => {};
    TypeContext context = _ctx;
}

class ReturnedDto implements IConvertible
{
    int id;

    ReturnedDto({this.id});
    ReturnedDto.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        id = json['id'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'id': id
    };

    TypeContext context = _ctx;
}

class CustomUserSession extends AuthUserSession implements IConvertible
{
    // @DataMember
    String customName;

    // @DataMember
    String customInfo;

    CustomUserSession({this.customName,this.customInfo});
    CustomUserSession.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        super.fromMap(json);
        customName = json['customName'];
        customInfo = json['customInfo'];
        return this;
    }

    Map<String, dynamic> toJson() => super.toJson()..addAll({
        'customName': customName,
        'customInfo': customInfo
    });

    TypeContext context = _ctx;
}

class UnAuthInfo implements IConvertible
{
    String customInfo;

    UnAuthInfo({this.customInfo});
    UnAuthInfo.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        customInfo = json['customInfo'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'customInfo': customInfo
    };

    TypeContext context = _ctx;
}

class Channel implements IConvertible
{
    String name;
    String value;

    Channel({this.name,this.value});
    Channel.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        name = json['name'];
        value = json['value'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'name': name,
        'value': value
    };

    TypeContext context = _ctx;
}

class Device implements IConvertible
{
    int id;
    String type;
    int timeStamp;
    List<Channel> channels;

    Device({this.id,this.type,this.timeStamp,this.channels});
    Device.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        id = json['id'];
        type = json['type'];
        timeStamp = json['timeStamp'];
        channels = JsonConverters.fromJson(json['channels'],'List<Channel>',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'id': id,
        'type': type,
        'timeStamp': timeStamp,
        'channels': JsonConverters.toJson(channels,'List<Channel>',context)
    };

    TypeContext context = _ctx;
}

class Logger implements IConvertible
{
    int id;
    List<Device> devices;

    Logger({this.id,this.devices});
    Logger.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        id = json['id'];
        devices = JsonConverters.fromJson(json['devices'],'List<Device>',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'id': id,
        'devices': JsonConverters.toJson(devices,'List<Device>',context)
    };

    TypeContext context = _ctx;
}

class Rockstar implements IConvertible
{
    int id;
    String firstName;
    String lastName;
    int age;

    Rockstar({this.id,this.firstName,this.lastName,this.age});
    Rockstar.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        id = json['id'];
        firstName = json['firstName'];
        lastName = json['lastName'];
        age = json['age'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'id': id,
        'firstName': firstName,
        'lastName': lastName,
        'age': age
    };

    TypeContext context = _ctx;
}

class OnlyDefinedInGenericType implements IConvertible
{
    int id;
    String name;

    OnlyDefinedInGenericType({this.id,this.name});
    OnlyDefinedInGenericType.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        id = json['id'];
        name = json['name'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'id': id,
        'name': name
    };

    TypeContext context = _ctx;
}

class OnlyDefinedInGenericTypeFrom implements IConvertible
{
    int id;
    String name;

    OnlyDefinedInGenericTypeFrom({this.id,this.name});
    OnlyDefinedInGenericTypeFrom.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        id = json['id'];
        name = json['name'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'id': id,
        'name': name
    };

    TypeContext context = _ctx;
}

class OnlyDefinedInGenericTypeInto implements IConvertible
{
    int id;
    String name;

    OnlyDefinedInGenericTypeInto({this.id,this.name});
    OnlyDefinedInGenericTypeInto.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        id = json['id'];
        name = json['name'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'id': id,
        'name': name
    };

    TypeContext context = _ctx;
}

class TypesGroup implements IConvertible
{
    TypesGroup();
    TypesGroup.fromJson(Map<String, dynamic> json) : super();
    fromMap(Map<String, dynamic> json) {
        return this;
    }

    Map<String, dynamic> toJson() => {};
    TypeContext context = _ctx;
}

class CustomHttpErrorResponse implements IConvertible
{
    String custom;
    ResponseStatus responseStatus;

    CustomHttpErrorResponse({this.custom,this.responseStatus});
    CustomHttpErrorResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        custom = json['custom'];
        responseStatus = JsonConverters.fromJson(json['responseStatus'],'ResponseStatus',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'custom': custom,
        'responseStatus': JsonConverters.toJson(responseStatus,'ResponseStatus',context)
    };

    TypeContext context = _ctx;
}

class ThrowTypeResponse implements IConvertible
{
    ResponseStatus responseStatus;

    ThrowTypeResponse({this.responseStatus});
    ThrowTypeResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        responseStatus = JsonConverters.fromJson(json['responseStatus'],'ResponseStatus',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'responseStatus': JsonConverters.toJson(responseStatus,'ResponseStatus',context)
    };

    TypeContext context = _ctx;
}

class ThrowValidationResponse implements IConvertible
{
    ResponseStatus responseStatus;
    int age;
    String required;
    String email;

    ThrowValidationResponse({this.responseStatus,this.age,this.required,this.email});
    ThrowValidationResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        responseStatus = JsonConverters.fromJson(json['responseStatus'],'ResponseStatus',context);
        age = json['age'];
        required = json['required'];
        email = json['email'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'responseStatus': JsonConverters.toJson(responseStatus,'ResponseStatus',context),
        'age': age,
        'required': required,
        'email': email
    };

    TypeContext context = _ctx;
}

class ThrowBusinessErrorResponse implements IConvertible
{
    ResponseStatus responseStatus;

    ThrowBusinessErrorResponse({this.responseStatus});
    ThrowBusinessErrorResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        responseStatus = JsonConverters.fromJson(json['responseStatus'],'ResponseStatus',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'responseStatus': JsonConverters.toJson(responseStatus,'ResponseStatus',context)
    };

    TypeContext context = _ctx;
}

class ExternalOperationResponse implements IConvertible
{
    String result;

    ExternalOperationResponse({this.result});
    ExternalOperationResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        result = json['result'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'result': result
    };

    TypeContext context = _ctx;
}

class ExternalOperation2Response implements IConvertible
{
    ExternalType externalType;

    ExternalOperation2Response({this.externalType});
    ExternalOperation2Response.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        externalType = JsonConverters.fromJson(json['externalType'],'ExternalType',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'externalType': JsonConverters.toJson(externalType,'ExternalType',context)
    };

    TypeContext context = _ctx;
}

class ExternalReturnTypeResponse implements IConvertible
{
    ExternalEnum3 externalEnum3;

    ExternalReturnTypeResponse({this.externalEnum3});
    ExternalReturnTypeResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        externalEnum3 = JsonConverters.fromJson(json['externalEnum3'],'ExternalEnum3',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'externalEnum3': JsonConverters.toJson(externalEnum3,'ExternalEnum3',context)
    };

    TypeContext context = _ctx;
}

class Account implements IConvertible
{
    String name;

    Account({this.name});
    Account.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        name = json['name'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'name': name
    };

    TypeContext context = _ctx;
}

class Project implements IConvertible
{
    String account;
    String name;

    Project({this.account,this.name});
    Project.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        account = json['account'];
        name = json['name'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'account': account,
        'name': name
    };

    TypeContext context = _ctx;
}

class CreateJwtResponse implements IConvertible
{
    String token;
    ResponseStatus responseStatus;

    CreateJwtResponse({this.token,this.responseStatus});
    CreateJwtResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        token = json['token'];
        responseStatus = JsonConverters.fromJson(json['responseStatus'],'ResponseStatus',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'token': token,
        'responseStatus': JsonConverters.toJson(responseStatus,'ResponseStatus',context)
    };

    TypeContext context = _ctx;
}

class CreateRefreshJwtResponse implements IConvertible
{
    String token;
    ResponseStatus responseStatus;

    CreateRefreshJwtResponse({this.token,this.responseStatus});
    CreateRefreshJwtResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        token = json['token'];
        responseStatus = JsonConverters.fromJson(json['responseStatus'],'ResponseStatus',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'token': token,
        'responseStatus': JsonConverters.toJson(responseStatus,'ResponseStatus',context)
    };

    TypeContext context = _ctx;
}

class MetadataTestResponse implements IConvertible
{
    int id;
    List<MetadataTestChild> results;

    MetadataTestResponse({this.id,this.results});
    MetadataTestResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        id = json['id'];
        results = JsonConverters.fromJson(json['results'],'List<MetadataTestChild>',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'id': id,
        'results': JsonConverters.toJson(results,'List<MetadataTestChild>',context)
    };

    TypeContext context = _ctx;
}

// @DataContract
class GetExampleResponse implements IConvertible
{
    // @DataMember(Order=1)
    ResponseStatus responseStatus;

    // @DataMember(Order=2)
    // @ApiMember()
    MenuExample menuExample1;

    GetExampleResponse({this.responseStatus,this.menuExample1});
    GetExampleResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        responseStatus = JsonConverters.fromJson(json['responseStatus'],'ResponseStatus',context);
        menuExample1 = JsonConverters.fromJson(json['menuExample1'],'MenuExample',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'responseStatus': JsonConverters.toJson(responseStatus,'ResponseStatus',context),
        'menuExample1': JsonConverters.toJson(menuExample1,'MenuExample',context)
    };

    TypeContext context = _ctx;
}

class GetRandomIdsResponse implements IConvertible
{
    List<String> results;

    GetRandomIdsResponse({this.results});
    GetRandomIdsResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        results = JsonConverters.fromJson(json['results'],'List<String>',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'results': JsonConverters.toJson(results,'List<String>',context)
    };

    TypeContext context = _ctx;
}

class HelloResponse implements IConvertible
{
    String result;

    HelloResponse({this.result});
    HelloResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        result = json['result'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'result': result
    };

    TypeContext context = _ctx;
}

class AllTypes implements IConvertible
{
    int version;
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
    KeyValuePair<String,String> keyValuePair;
    DateTime nullableDateTime;
    Duration nullableTimeSpan;
    List<String> stringList;
    List<String> stringArray;
    Map<String,String> stringMap;
    Map<int,String> intStringMap;
    SubType subType;

    AllTypes({this.version=1,this.id,this.nullableId,this.byte,this.short,this.Int,this.long,this.uShort,this.uInt,this.uLong,this.float,this.Double,this.decimal,this.string,this.dateTime,this.timeSpan,this.dateTimeOffset,this.guid,this.char,this.keyValuePair,this.nullableDateTime,this.nullableTimeSpan,this.stringList,this.stringArray,this.stringMap,this.intStringMap,this.subType});
    AllTypes.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        version = json['version'];
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
        dateTime = JsonConverters.fromJson(json['dateTime'],'DateTime',context);
        timeSpan = JsonConverters.fromJson(json['timeSpan'],'Duration',context);
        dateTimeOffset = JsonConverters.fromJson(json['dateTimeOffset'],'DateTime',context);
        guid = json['guid'];
        char = json['char'];
        keyValuePair = JsonConverters.fromJson(json['keyValuePair'],'KeyValuePair<String,String>',context);
        nullableDateTime = JsonConverters.fromJson(json['nullableDateTime'],'DateTime',context);
        nullableTimeSpan = JsonConverters.fromJson(json['nullableTimeSpan'],'Duration',context);
        stringList = JsonConverters.fromJson(json['stringList'],'List<String>',context);
        stringArray = JsonConverters.fromJson(json['stringArray'],'List<String>',context);
        stringMap = JsonConverters.toStringMap(json['stringMap']);
        intStringMap = JsonConverters.fromJson(json['intStringMap'],'Map<int,String>',context);
        subType = JsonConverters.fromJson(json['subType'],'SubType',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'version': version,
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
        'dateTime': JsonConverters.toJson(dateTime,'DateTime',context),
        'timeSpan': JsonConverters.toJson(timeSpan,'Duration',context),
        'dateTimeOffset': JsonConverters.toJson(dateTimeOffset,'DateTime',context),
        'guid': guid,
        'char': char,
        'keyValuePair': JsonConverters.toJson(keyValuePair,'KeyValuePair<String,String>',context),
        'nullableDateTime': JsonConverters.toJson(nullableDateTime,'DateTime',context),
        'nullableTimeSpan': JsonConverters.toJson(nullableTimeSpan,'Duration',context),
        'stringList': JsonConverters.toJson(stringList,'List<String>',context),
        'stringArray': JsonConverters.toJson(stringArray,'List<String>',context),
        'stringMap': stringMap,
        'intStringMap': JsonConverters.toJson(intStringMap,'Map<int,String>',context),
        'subType': JsonConverters.toJson(subType,'SubType',context)
    };

    TypeContext context = _ctx;
}

class AllCollectionTypes implements IConvertible
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
    AllCollectionTypes.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        intArray = JsonConverters.fromJson(json['intArray'],'List<int>',context);
        intList = JsonConverters.fromJson(json['intList'],'List<int>',context);
        stringArray = JsonConverters.fromJson(json['stringArray'],'List<String>',context);
        stringList = JsonConverters.fromJson(json['stringList'],'List<String>',context);
        pocoArray = JsonConverters.fromJson(json['pocoArray'],'List<Poco>',context);
        pocoList = JsonConverters.fromJson(json['pocoList'],'List<Poco>',context);
        pocoLookup = JsonConverters.fromJson(json['pocoLookup'],'Map<String,List<Poco>>',context);
        pocoLookupMap = JsonConverters.fromJson(json['pocoLookupMap'],'Map<String,List<Map<String,Poco>>>',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'intArray': JsonConverters.toJson(intArray,'List<int>',context),
        'intList': JsonConverters.toJson(intList,'List<int>',context),
        'stringArray': JsonConverters.toJson(stringArray,'List<String>',context),
        'stringList': JsonConverters.toJson(stringList,'List<String>',context),
        'pocoArray': JsonConverters.toJson(pocoArray,'List<Poco>',context),
        'pocoList': JsonConverters.toJson(pocoList,'List<Poco>',context),
        'pocoLookup': JsonConverters.toJson(pocoLookup,'Map<String,List<Poco>>',context),
        'pocoLookupMap': JsonConverters.toJson(pocoLookupMap,'Map<String,List<Map<String,Poco>>>',context)
    };

    TypeContext context = _ctx;
}

class HelloAllTypesResponse implements IConvertible
{
    String result;
    AllTypes allTypes;
    AllCollectionTypes allCollectionTypes;

    HelloAllTypesResponse({this.result,this.allTypes,this.allCollectionTypes});
    HelloAllTypesResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        result = json['result'];
        allTypes = JsonConverters.fromJson(json['allTypes'],'AllTypes',context);
        allCollectionTypes = JsonConverters.fromJson(json['allCollectionTypes'],'AllCollectionTypes',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'result': result,
        'allTypes': JsonConverters.toJson(allTypes,'AllTypes',context),
        'allCollectionTypes': JsonConverters.toJson(allCollectionTypes,'AllCollectionTypes',context)
    };

    TypeContext context = _ctx;
}

class HelloDateTime implements IReturn<HelloDateTime>, IConvertible
{
    int version;
    DateTime dateTime;

    HelloDateTime({this.version=1,this.dateTime});
    HelloDateTime.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        version = json['version'];
        dateTime = JsonConverters.fromJson(json['dateTime'],'DateTime',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'version': version,
        'dateTime': JsonConverters.toJson(dateTime,'DateTime',context)
    };

    createResponse() { return new HelloDateTime(); }
    String getTypeName() { return "HelloDateTime"; }
    TypeContext context = _ctx;
}

// @DataContract
class HelloWithDataContractResponse implements IConvertible
{
    // @DataMember(Name="result", Order=1, IsRequired=true, EmitDefaultValue=false)
    String result;

    HelloWithDataContractResponse({this.result});
    HelloWithDataContractResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        result = json['result'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'result': result
    };

    TypeContext context = _ctx;
}

/**
* Description on HelloWithDescriptionResponse type
*/
class HelloWithDescriptionResponse implements IConvertible
{
    String result;

    HelloWithDescriptionResponse({this.result});
    HelloWithDescriptionResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        result = json['result'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'result': result
    };

    TypeContext context = _ctx;
}

class HelloWithInheritanceResponse extends HelloResponseBase implements IConvertible
{
    String result;

    HelloWithInheritanceResponse({this.result});
    HelloWithInheritanceResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        super.fromMap(json);
        result = json['result'];
        return this;
    }

    Map<String, dynamic> toJson() => super.toJson()..addAll({
        'result': result
    });

    TypeContext context = _ctx;
}

class HelloWithAlternateReturnResponse extends HelloWithReturnResponse implements IConvertible
{
    String altResult;

    HelloWithAlternateReturnResponse({this.altResult});
    HelloWithAlternateReturnResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        super.fromMap(json);
        altResult = json['altResult'];
        return this;
    }

    Map<String, dynamic> toJson() => super.toJson()..addAll({
        'altResult': altResult
    });

    TypeContext context = _ctx;
}

class HelloWithRouteResponse implements IConvertible
{
    String result;

    HelloWithRouteResponse({this.result});
    HelloWithRouteResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        result = json['result'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'result': result
    };

    TypeContext context = _ctx;
}

class HelloWithTypeResponse implements IConvertible
{
    HelloType result;

    HelloWithTypeResponse({this.result});
    HelloWithTypeResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        result = JsonConverters.fromJson(json['result'],'HelloType',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'result': JsonConverters.toJson(result,'HelloType',context)
    };

    TypeContext context = _ctx;
}

class HelloInnerTypesResponse implements IConvertible
{
    InnerType innerType;
    InnerEnum innerEnum;

    HelloInnerTypesResponse({this.innerType,this.innerEnum});
    HelloInnerTypesResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        innerType = JsonConverters.fromJson(json['innerType'],'InnerType',context);
        innerEnum = JsonConverters.fromJson(json['innerEnum'],'InnerEnum',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'innerType': JsonConverters.toJson(innerType,'InnerType',context),
        'innerEnum': JsonConverters.toJson(innerEnum,'InnerEnum',context)
    };

    TypeContext context = _ctx;
}

class HelloVerbResponse implements IConvertible
{
    String result;

    HelloVerbResponse({this.result});
    HelloVerbResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        result = json['result'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'result': result
    };

    TypeContext context = _ctx;
}

class EnumResponse implements IConvertible
{
    ScopeType Operator;

    EnumResponse({this.Operator});
    EnumResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        Operator = JsonConverters.fromJson(json['operator'],'ScopeType',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'operator': JsonConverters.toJson(Operator,'ScopeType',context)
    };

    TypeContext context = _ctx;
}

// @Route("/hellotypes/{Name}")
class HelloTypes implements IReturn<HelloTypes>, IConvertible
{
    int version;
    String string;
    bool Bool;
    int Int;

    HelloTypes({this.version=1,this.string,this.Bool,this.Int});
    HelloTypes.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        version = json['version'];
        string = json['string'];
        Bool = json['bool'];
        Int = json['int'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'version': version,
        'string': string,
        'bool': Bool,
        'int': Int
    };

    createResponse() { return new HelloTypes(); }
    String getTypeName() { return "HelloTypes"; }
    TypeContext context = _ctx;
}

// @DataContract
class HelloZipResponse implements IConvertible
{
    // @DataMember
    String result;

    HelloZipResponse({this.result});
    HelloZipResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        result = json['result'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'result': result
    };

    TypeContext context = _ctx;
}

class PingResponse implements IConvertible
{
    Map<String,ResponseStatus> responses;
    ResponseStatus responseStatus;

    PingResponse({this.responses,this.responseStatus});
    PingResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        responses = JsonConverters.fromJson(json['responses'],'Map<String,ResponseStatus>',context);
        responseStatus = JsonConverters.fromJson(json['responseStatus'],'ResponseStatus',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'responses': JsonConverters.toJson(responses,'Map<String,ResponseStatus>',context),
        'responseStatus': JsonConverters.toJson(responseStatus,'ResponseStatus',context)
    };

    TypeContext context = _ctx;
}

class RequiresRoleResponse implements IConvertible
{
    String result;
    ResponseStatus responseStatus;

    RequiresRoleResponse({this.result,this.responseStatus});
    RequiresRoleResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        result = json['result'];
        responseStatus = JsonConverters.fromJson(json['responseStatus'],'ResponseStatus',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'result': result,
        'responseStatus': JsonConverters.toJson(responseStatus,'ResponseStatus',context)
    };

    TypeContext context = _ctx;
}

class SendVerbResponse implements IConvertible
{
    int id;
    String pathInfo;
    String requestMethod;

    SendVerbResponse({this.id,this.pathInfo,this.requestMethod});
    SendVerbResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        id = json['id'];
        pathInfo = json['pathInfo'];
        requestMethod = json['requestMethod'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'id': id,
        'pathInfo': pathInfo,
        'requestMethod': requestMethod
    };

    TypeContext context = _ctx;
}

class GetSessionResponse implements IConvertible
{
    CustomUserSession result;
    UnAuthInfo unAuthInfo;
    ResponseStatus responseStatus;

    GetSessionResponse({this.result,this.unAuthInfo,this.responseStatus});
    GetSessionResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        result = JsonConverters.fromJson(json['result'],'CustomUserSession',context);
        unAuthInfo = JsonConverters.fromJson(json['unAuthInfo'],'UnAuthInfo',context);
        responseStatus = JsonConverters.fromJson(json['responseStatus'],'ResponseStatus',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'result': JsonConverters.toJson(result,'CustomUserSession',context),
        'unAuthInfo': JsonConverters.toJson(unAuthInfo,'UnAuthInfo',context),
        'responseStatus': JsonConverters.toJson(responseStatus,'ResponseStatus',context)
    };

    TypeContext context = _ctx;
}

class StoreLogsResponse implements IConvertible
{
    List<Logger> existingLogs;
    ResponseStatus responseStatus;

    StoreLogsResponse({this.existingLogs,this.responseStatus});
    StoreLogsResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        existingLogs = JsonConverters.fromJson(json['existingLogs'],'List<Logger>',context);
        responseStatus = JsonConverters.fromJson(json['responseStatus'],'ResponseStatus',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'existingLogs': JsonConverters.toJson(existingLogs,'List<Logger>',context),
        'responseStatus': JsonConverters.toJson(responseStatus,'ResponseStatus',context)
    };

    TypeContext context = _ctx;
}

class TestAuthResponse implements IConvertible
{
    String userId;
    String sessionId;
    String userName;
    String displayName;
    ResponseStatus responseStatus;

    TestAuthResponse({this.userId,this.sessionId,this.userName,this.displayName,this.responseStatus});
    TestAuthResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        userId = json['userId'];
        sessionId = json['sessionId'];
        userName = json['userName'];
        displayName = json['displayName'];
        responseStatus = JsonConverters.fromJson(json['responseStatus'],'ResponseStatus',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'userId': userId,
        'sessionId': sessionId,
        'userName': userName,
        'displayName': displayName,
        'responseStatus': JsonConverters.toJson(responseStatus,'ResponseStatus',context)
    };

    TypeContext context = _ctx;
}

class RequiresAdmin implements IReturn<RequiresAdmin>, IConvertible
{
    int version;
    int id;

    RequiresAdmin({this.version=1,this.id});
    RequiresAdmin.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        version = json['version'];
        id = json['id'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'version': version,
        'id': id
    };

    createResponse() { return new RequiresAdmin(); }
    String getTypeName() { return "RequiresAdmin"; }
    TypeContext context = _ctx;
}

// @Route("/custom")
// @Route("/custom/{Data}")
class CustomRoute implements IReturn<CustomRoute>, IConvertible
{
    int version;
    String data;

    CustomRoute({this.version=1,this.data});
    CustomRoute.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        version = json['version'];
        data = json['data'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'version': version,
        'data': data
    };

    createResponse() { return new CustomRoute(); }
    String getTypeName() { return "CustomRoute"; }
    TypeContext context = _ctx;
}

// @Route("/wait/{ForMs}")
class Wait implements IReturn<Wait>, IConvertible
{
    int version;
    int forMs;

    Wait({this.version=1,this.forMs});
    Wait.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        version = json['version'];
        forMs = json['forMs'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'version': version,
        'forMs': forMs
    };

    createResponse() { return new Wait(); }
    String getTypeName() { return "Wait"; }
    TypeContext context = _ctx;
}

// @Route("/echo/types")
class EchoTypes implements IReturn<EchoTypes>, IConvertible
{
    int version;
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

    EchoTypes({this.version=1,this.byte,this.short,this.Int,this.long,this.uShort,this.uInt,this.uLong,this.float,this.Double,this.decimal,this.string,this.dateTime,this.timeSpan,this.dateTimeOffset,this.guid,this.char});
    EchoTypes.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        version = json['version'];
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
        dateTime = JsonConverters.fromJson(json['dateTime'],'DateTime',context);
        timeSpan = JsonConverters.fromJson(json['timeSpan'],'Duration',context);
        dateTimeOffset = JsonConverters.fromJson(json['dateTimeOffset'],'DateTime',context);
        guid = json['guid'];
        char = json['char'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'version': version,
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
        'dateTime': JsonConverters.toJson(dateTime,'DateTime',context),
        'timeSpan': JsonConverters.toJson(timeSpan,'Duration',context),
        'dateTimeOffset': JsonConverters.toJson(dateTimeOffset,'DateTime',context),
        'guid': guid,
        'char': char
    };

    createResponse() { return new EchoTypes(); }
    String getTypeName() { return "EchoTypes"; }
    TypeContext context = _ctx;
}

// @Route("/echo/collections")
class EchoCollections implements IReturn<EchoCollections>, IConvertible
{
    int version;
    List<String> stringList;
    List<String> stringArray;
    Map<String,String> stringMap;
    Map<int,String> intStringMap;

    EchoCollections({this.version=1,this.stringList,this.stringArray,this.stringMap,this.intStringMap});
    EchoCollections.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        version = json['version'];
        stringList = JsonConverters.fromJson(json['stringList'],'List<String>',context);
        stringArray = JsonConverters.fromJson(json['stringArray'],'List<String>',context);
        stringMap = JsonConverters.toStringMap(json['stringMap']);
        intStringMap = JsonConverters.fromJson(json['intStringMap'],'Map<int,String>',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'version': version,
        'stringList': JsonConverters.toJson(stringList,'List<String>',context),
        'stringArray': JsonConverters.toJson(stringArray,'List<String>',context),
        'stringMap': stringMap,
        'intStringMap': JsonConverters.toJson(intStringMap,'Map<int,String>',context)
    };

    createResponse() { return new EchoCollections(); }
    String getTypeName() { return "EchoCollections"; }
    TypeContext context = _ctx;
}

// @Route("/echo/complex")
class EchoComplexTypes implements IReturn<EchoComplexTypes>, IConvertible
{
    int version;
    SubType subType;
    List<SubType> subTypes;
    Map<String,SubType> subTypeMap;
    Map<String,String> stringMap;
    Map<int,String> intStringMap;

    EchoComplexTypes({this.version=1,this.subType,this.subTypes,this.subTypeMap,this.stringMap,this.intStringMap});
    EchoComplexTypes.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        version = json['version'];
        subType = JsonConverters.fromJson(json['subType'],'SubType',context);
        subTypes = JsonConverters.fromJson(json['subTypes'],'List<SubType>',context);
        subTypeMap = JsonConverters.fromJson(json['subTypeMap'],'Map<String,SubType>',context);
        stringMap = JsonConverters.toStringMap(json['stringMap']);
        intStringMap = JsonConverters.fromJson(json['intStringMap'],'Map<int,String>',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'version': version,
        'subType': JsonConverters.toJson(subType,'SubType',context),
        'subTypes': JsonConverters.toJson(subTypes,'List<SubType>',context),
        'subTypeMap': JsonConverters.toJson(subTypeMap,'Map<String,SubType>',context),
        'stringMap': stringMap,
        'intStringMap': JsonConverters.toJson(intStringMap,'Map<int,String>',context)
    };

    createResponse() { return new EchoComplexTypes(); }
    String getTypeName() { return "EchoComplexTypes"; }
    TypeContext context = _ctx;
}

// @Route("/rockstars", "POST")
class StoreRockstars extends ListBase<Rockstar> implements IReturn<StoreRockstars>, IConvertible
{
    int version;

    final List<Rockstar> l = [];
    void set length(int newLength) { l.length = newLength; }
    int get length => l.length;
    Rockstar operator [](int index) => l[index];
    void operator []=(int index, Rockstar value) { l[index] = value; }
    StoreRockstars({this.version=1});
    StoreRockstars.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        version = json['version'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'version': version
    };

    createResponse() { return new StoreRockstars(); }
    String getTypeName() { return "StoreRockstars"; }
    TypeContext context = _ctx;
}

// @DataContract(Namespace="http://schemas.servicestack.net/types")
class GetStuffResponse implements IConvertible
{
    // @DataMember
    DateTime summaryDate;

    // @DataMember
    DateTime summaryEndDate;

    // @DataMember
    String symbol;

    // @DataMember
    String email;

    // @DataMember
    bool isEnabled;

    GetStuffResponse({this.summaryDate,this.summaryEndDate,this.symbol,this.email,this.isEnabled});
    GetStuffResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        summaryDate = JsonConverters.fromJson(json['summaryDate'],'DateTime',context);
        summaryEndDate = JsonConverters.fromJson(json['summaryEndDate'],'DateTime',context);
        symbol = json['symbol'];
        email = json['email'];
        isEnabled = json['isEnabled'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'summaryDate': JsonConverters.toJson(summaryDate,'DateTime',context),
        'summaryEndDate': JsonConverters.toJson(summaryEndDate,'DateTime',context),
        'symbol': symbol,
        'email': email,
        'isEnabled': isEnabled
    };

    TypeContext context = _ctx;
}

class DummyTypes implements IConvertible
{
    int version;
    List<HelloResponse> helloResponses;

    DummyTypes({this.version=1,this.helloResponses});
    DummyTypes.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        version = json['version'];
        helloResponses = JsonConverters.fromJson(json['helloResponses'],'List<HelloResponse>',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'version': version,
        'helloResponses': JsonConverters.toJson(helloResponses,'List<HelloResponse>',context)
    };

    TypeContext context = _ctx;
}

class CustomHttpError implements IReturn<CustomHttpErrorResponse>, IConvertible
{
    int version;
    int statusCode;
    String statusDescription;

    CustomHttpError({this.version=1,this.statusCode,this.statusDescription});
    CustomHttpError.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        version = json['version'];
        statusCode = json['statusCode'];
        statusDescription = json['statusDescription'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'version': version,
        'statusCode': statusCode,
        'statusDescription': statusDescription
    };

    createResponse() { return new CustomHttpErrorResponse(); }
    String getTypeName() { return "CustomHttpError"; }
    TypeContext context = _ctx;
}

// @Route("/throwhttperror/{Status}")
class ThrowHttpError implements IConvertible
{
    int version;
    int status;
    String message;

    ThrowHttpError({this.version=1,this.status,this.message});
    ThrowHttpError.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        version = json['version'];
        status = json['status'];
        message = json['message'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'version': version,
        'status': status,
        'message': message
    };

    TypeContext context = _ctx;
}

// @Route("/throw404")
// @Route("/throw404/{Message}")
class Throw404 implements IConvertible
{
    int version;
    String message;

    Throw404({this.version=1,this.message});
    Throw404.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        version = json['version'];
        message = json['message'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'version': version,
        'message': message
    };

    TypeContext context = _ctx;
}

// @Route("/throwcustom400")
// @Route("/throwcustom400/{Message}")
class ThrowCustom400 implements IConvertible
{
    int version;
    String message;

    ThrowCustom400({this.version=1,this.message});
    ThrowCustom400.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        version = json['version'];
        message = json['message'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'version': version,
        'message': message
    };

    TypeContext context = _ctx;
}

// @Route("/throw/{Type}")
class ThrowType implements IReturn<ThrowTypeResponse>, IConvertible
{
    int version;
    String type;
    String message;

    ThrowType({this.version=1,this.type,this.message});
    ThrowType.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        version = json['version'];
        type = json['type'];
        message = json['message'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'version': version,
        'type': type,
        'message': message
    };

    createResponse() { return new ThrowTypeResponse(); }
    String getTypeName() { return "ThrowType"; }
    TypeContext context = _ctx;
}

// @Route("/throwvalidation")
class ThrowValidation implements IReturn<ThrowValidationResponse>, IConvertible
{
    int version;
    int age;
    String required;
    String email;

    ThrowValidation({this.version=1,this.age,this.required,this.email});
    ThrowValidation.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        version = json['version'];
        age = json['age'];
        required = json['required'];
        email = json['email'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'version': version,
        'age': age,
        'required': required,
        'email': email
    };

    createResponse() { return new ThrowValidationResponse(); }
    String getTypeName() { return "ThrowValidation"; }
    TypeContext context = _ctx;
}

// @Route("/throwbusinesserror")
class ThrowBusinessError implements IReturn<ThrowBusinessErrorResponse>, IConvertible
{
    int version;

    ThrowBusinessError({this.version=1});
    ThrowBusinessError.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        version = json['version'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'version': version
    };

    createResponse() { return new ThrowBusinessErrorResponse(); }
    String getTypeName() { return "ThrowBusinessError"; }
    TypeContext context = _ctx;
}

class ExternalOperation implements IReturn<ExternalOperationResponse>, IConvertible
{
    int version;
    int id;
    String name;
    ExternalEnum externalEnum;

    ExternalOperation({this.version=1,this.id,this.name,this.externalEnum});
    ExternalOperation.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        version = json['version'];
        id = json['id'];
        name = json['name'];
        externalEnum = JsonConverters.fromJson(json['externalEnum'],'ExternalEnum',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'version': version,
        'id': id,
        'name': name,
        'externalEnum': JsonConverters.toJson(externalEnum,'ExternalEnum',context)
    };

    createResponse() { return new ExternalOperationResponse(); }
    String getTypeName() { return "ExternalOperation"; }
    TypeContext context = _ctx;
}

class ExternalOperation2 implements IReturn<ExternalOperation2Response>, IConvertible
{
    int version;
    int id;

    ExternalOperation2({this.version=1,this.id});
    ExternalOperation2.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        version = json['version'];
        id = json['id'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'version': version,
        'id': id
    };

    createResponse() { return new ExternalOperation2Response(); }
    String getTypeName() { return "ExternalOperation2"; }
    TypeContext context = _ctx;
}

class ExternalOperation3 implements IReturn<ExternalReturnTypeResponse>, IConvertible
{
    int version;
    int id;

    ExternalOperation3({this.version=1,this.id});
    ExternalOperation3.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        version = json['version'];
        id = json['id'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'version': version,
        'id': id
    };

    createResponse() { return new ExternalReturnTypeResponse(); }
    String getTypeName() { return "ExternalOperation3"; }
    TypeContext context = _ctx;
}

class ExternalOperation4 implements IConvertible
{
    int version;
    int id;

    ExternalOperation4({this.version=1,this.id});
    ExternalOperation4.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        version = json['version'];
        id = json['id'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'version': version,
        'id': id
    };

    TypeContext context = _ctx;
}

class RootPathRoutes implements IConvertible
{
    int version;
    String path;

    RootPathRoutes({this.version=1,this.path});
    RootPathRoutes.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        version = json['version'];
        path = json['path'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'version': version,
        'path': path
    };

    TypeContext context = _ctx;
}

class GetAccount implements IReturn<Account>, IConvertible
{
    int version;
    String account;

    GetAccount({this.version=1,this.account});
    GetAccount.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        version = json['version'];
        account = json['account'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'version': version,
        'account': account
    };

    createResponse() { return new Account(); }
    String getTypeName() { return "GetAccount"; }
    TypeContext context = _ctx;
}

class GetProject implements IReturn<Project>, IConvertible
{
    int version;
    String account;
    String project;

    GetProject({this.version=1,this.account,this.project});
    GetProject.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        version = json['version'];
        account = json['account'];
        project = json['project'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'version': version,
        'account': account,
        'project': project
    };

    createResponse() { return new Project(); }
    String getTypeName() { return "GetProject"; }
    TypeContext context = _ctx;
}

// @Route("/image-stream")
class ImageAsStream implements IReturn<Uint8List>, IConvertible
{
    int version;
    String format;

    ImageAsStream({this.version=1,this.format});
    ImageAsStream.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        version = json['version'];
        format = json['format'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'version': version,
        'format': format
    };

    createResponse() { return new Uint8List(0); }
    String getTypeName() { return "ImageAsStream"; }
    TypeContext context = _ctx;
}

// @Route("/image-bytes")
class ImageAsBytes implements IReturn<Uint8List>, IConvertible
{
    int version;
    String format;

    ImageAsBytes({this.version=1,this.format});
    ImageAsBytes.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        version = json['version'];
        format = json['format'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'version': version,
        'format': format
    };

    createResponse() { return new Uint8List(0); }
    String getTypeName() { return "ImageAsBytes"; }
    TypeContext context = _ctx;
}

// @Route("/image-custom")
class ImageAsCustomResult implements IReturn<Uint8List>, IConvertible
{
    int version;
    String format;

    ImageAsCustomResult({this.version=1,this.format});
    ImageAsCustomResult.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        version = json['version'];
        format = json['format'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'version': version,
        'format': format
    };

    createResponse() { return new Uint8List(0); }
    String getTypeName() { return "ImageAsCustomResult"; }
    TypeContext context = _ctx;
}

// @Route("/image-response")
class ImageWriteToResponse implements IReturn<Uint8List>, IConvertible
{
    int version;
    String format;

    ImageWriteToResponse({this.version=1,this.format});
    ImageWriteToResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        version = json['version'];
        format = json['format'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'version': version,
        'format': format
    };

    createResponse() { return new Uint8List(0); }
    String getTypeName() { return "ImageWriteToResponse"; }
    TypeContext context = _ctx;
}

// @Route("/image-file")
class ImageAsFile implements IReturn<Uint8List>, IConvertible
{
    int version;
    String format;

    ImageAsFile({this.version=1,this.format});
    ImageAsFile.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        version = json['version'];
        format = json['format'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'version': version,
        'format': format
    };

    createResponse() { return new Uint8List(0); }
    String getTypeName() { return "ImageAsFile"; }
    TypeContext context = _ctx;
}

// @Route("/image-redirect")
class ImageAsRedirect implements IConvertible
{
    int version;
    String format;

    ImageAsRedirect({this.version=1,this.format});
    ImageAsRedirect.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        version = json['version'];
        format = json['format'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'version': version,
        'format': format
    };

    TypeContext context = _ctx;
}

// @Route("/hello-image/{Name}")
class HelloImage implements IReturn<Uint8List>, IConvertible
{
    int version;
    String name;
    String format;
    int width;
    int height;
    int fontSize;
    String fontFamily;
    String foreground;
    String background;

    HelloImage({this.version=1,this.name,this.format,this.width,this.height,this.fontSize,this.fontFamily,this.foreground,this.background});
    HelloImage.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        version = json['version'];
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
        'version': version,
        'name': name,
        'format': format,
        'width': width,
        'height': height,
        'fontSize': fontSize,
        'fontFamily': fontFamily,
        'foreground': foreground,
        'background': background
    };

    createResponse() { return new Uint8List(0); }
    String getTypeName() { return "HelloImage"; }
    TypeContext context = _ctx;
}

// @Route("/jwt")
class CreateJwt extends AuthUserSession implements IReturn<CreateJwtResponse>, IConvertible
{
    int version;
    DateTime jwtExpiry;

    CreateJwt({this.version=1,this.jwtExpiry});
    CreateJwt.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        super.fromMap(json);
        version = json['version'];
        jwtExpiry = JsonConverters.fromJson(json['jwtExpiry'],'DateTime',context);
        return this;
    }

    Map<String, dynamic> toJson() => super.toJson()..addAll({
        'version': version,
        'jwtExpiry': JsonConverters.toJson(jwtExpiry,'DateTime',context)
    });

    createResponse() { return new CreateJwtResponse(); }
    String getTypeName() { return "CreateJwt"; }
    TypeContext context = _ctx;
}

// @Route("/jwt-refresh")
class CreateRefreshJwt implements IReturn<CreateRefreshJwtResponse>, IConvertible
{
    int version;
    String userAuthId;
    DateTime jwtExpiry;

    CreateRefreshJwt({this.version=1,this.userAuthId,this.jwtExpiry});
    CreateRefreshJwt.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        version = json['version'];
        userAuthId = json['userAuthId'];
        jwtExpiry = JsonConverters.fromJson(json['jwtExpiry'],'DateTime',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'version': version,
        'userAuthId': userAuthId,
        'jwtExpiry': JsonConverters.toJson(jwtExpiry,'DateTime',context)
    };

    createResponse() { return new CreateRefreshJwtResponse(); }
    String getTypeName() { return "CreateRefreshJwt"; }
    TypeContext context = _ctx;
}

// @Route("/logs")
class ViewLogs implements IReturn<String>, IConvertible
{
    int version;
    bool clear;

    ViewLogs({this.version=1,this.clear});
    ViewLogs.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        version = json['version'];
        clear = json['clear'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'version': version,
        'clear': clear
    };

    createResponse() { return ""; }
    String getTypeName() { return "ViewLogs"; }
    TypeContext context = _ctx;
}

// @Route("/metadatatest")
class MetadataTest implements IReturn<MetadataTestResponse>, IConvertible
{
    int version;
    int id;

    MetadataTest({this.version=1,this.id});
    MetadataTest.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        version = json['version'];
        id = json['id'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'version': version,
        'id': id
    };

    createResponse() { return new MetadataTestResponse(); }
    String getTypeName() { return "MetadataTest"; }
    TypeContext context = _ctx;
}

// @Route("/metadatatest-array")
class MetadataTestArray implements IReturn<List<MetadataTestChild>>, IConvertible
{
    int version;
    int id;

    MetadataTestArray({this.version=1,this.id});
    MetadataTestArray.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        version = json['version'];
        id = json['id'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'version': version,
        'id': id
    };

    createResponse() { return new List<MetadataTestChild>(); }
    String getTypeName() { return "MetadataTestArray"; }
    TypeContext context = _ctx;
}

// @Route("/example", "GET")
// @DataContract
class GetExample implements IReturn<GetExampleResponse>, IConvertible
{
    int version;

    GetExample({this.version=1});
    GetExample.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        version = json['version'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'version': version
    };

    createResponse() { return new GetExampleResponse(); }
    String getTypeName() { return "GetExample"; }
    TypeContext context = _ctx;
}

// @Route("/randomids")
class GetRandomIds implements IReturn<GetRandomIdsResponse>, IConvertible
{
    int version;
    int take;

    GetRandomIds({this.version=1,this.take});
    GetRandomIds.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        version = json['version'];
        take = json['take'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'version': version,
        'take': take
    };

    createResponse() { return new GetRandomIdsResponse(); }
    String getTypeName() { return "GetRandomIds"; }
    TypeContext context = _ctx;
}

// @Route("/textfile-test")
class TextFileTest implements IConvertible
{
    int version;
    bool asAttachment;

    TextFileTest({this.version=1,this.asAttachment});
    TextFileTest.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        version = json['version'];
        asAttachment = json['asAttachment'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'version': version,
        'asAttachment': asAttachment
    };

    TypeContext context = _ctx;
}

// @Route("/return/text")
class ReturnText implements IConvertible
{
    int version;
    String text;

    ReturnText({this.version=1,this.text});
    ReturnText.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        version = json['version'];
        text = json['text'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'version': version,
        'text': text
    };

    TypeContext context = _ctx;
}

// @Route("/return/html")
class ReturnHtml implements IConvertible
{
    int version;
    String text;

    ReturnHtml({this.version=1,this.text});
    ReturnHtml.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        version = json['version'];
        text = json['text'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'version': version,
        'text': text
    };

    TypeContext context = _ctx;
}

// @Route("/hello")
// @Route("/hello/{Name}")
class Hello implements IReturn<HelloResponse>, IConvertible
{
    int version;
    // @Required()
    String name;

    String title;

    Hello({this.version=1,this.name,this.title});
    Hello.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        version = json['version'];
        name = json['name'];
        title = json['title'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'version': version,
        'name': name,
        'title': title
    };

    createResponse() { return new HelloResponse(); }
    String getTypeName() { return "Hello"; }
    TypeContext context = _ctx;
}

class HelloWithNestedClass implements IReturn<HelloResponse>, IConvertible
{
    int version;
    String name;
    NestedClass nestedClassProp;

    HelloWithNestedClass({this.version=1,this.name,this.nestedClassProp});
    HelloWithNestedClass.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        version = json['version'];
        name = json['name'];
        nestedClassProp = JsonConverters.fromJson(json['nestedClassProp'],'NestedClass',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'version': version,
        'name': name,
        'nestedClassProp': JsonConverters.toJson(nestedClassProp,'NestedClass',context)
    };

    createResponse() { return new HelloResponse(); }
    String getTypeName() { return "HelloWithNestedClass"; }
    TypeContext context = _ctx;
}

class HelloList implements IReturn<List<ListResult>>, IConvertible
{
    int version;
    List<String> names;

    HelloList({this.version=1,this.names});
    HelloList.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        version = json['version'];
        names = JsonConverters.fromJson(json['names'],'List<String>',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'version': version,
        'names': JsonConverters.toJson(names,'List<String>',context)
    };

    createResponse() { return new List<ListResult>(); }
    String getTypeName() { return "HelloList"; }
    TypeContext context = _ctx;
}

class HelloArray implements IReturn<List<ArrayResult>>, IConvertible
{
    int version;
    List<String> names;

    HelloArray({this.version=1,this.names});
    HelloArray.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        version = json['version'];
        names = JsonConverters.fromJson(json['names'],'List<String>',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'version': version,
        'names': JsonConverters.toJson(names,'List<String>',context)
    };

    createResponse() { return new List<ArrayResult>(); }
    String getTypeName() { return "HelloArray"; }
    TypeContext context = _ctx;
}

class HelloWithEnum implements IConvertible
{
    int version;
    EnumType enumProp;
    EnumType nullableEnumProp;
    EnumFlags enumFlags;

    HelloWithEnum({this.version=1,this.enumProp,this.nullableEnumProp,this.enumFlags});
    HelloWithEnum.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        version = json['version'];
        enumProp = JsonConverters.fromJson(json['enumProp'],'EnumType',context);
        nullableEnumProp = JsonConverters.fromJson(json['nullableEnumProp'],'EnumType',context);
        enumFlags = JsonConverters.fromJson(json['enumFlags'],'EnumFlags',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'version': version,
        'enumProp': JsonConverters.toJson(enumProp,'EnumType',context),
        'nullableEnumProp': JsonConverters.toJson(nullableEnumProp,'EnumType',context),
        'enumFlags': JsonConverters.toJson(enumFlags,'EnumFlags',context)
    };

    TypeContext context = _ctx;
}

class HelloExternal implements IConvertible
{
    int version;
    String name;

    HelloExternal({this.version=1,this.name});
    HelloExternal.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        version = json['version'];
        name = json['name'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'version': version,
        'name': name
    };

    TypeContext context = _ctx;
}

/**
* AllowedAttributes Description
*/
// @Route("/allowed-attributes", "GET")
// @Api(Description="AllowedAttributes Description")
// @ApiResponse(Description="Your request was not understood", StatusCode=400)
// @DataContract
class AllowedAttributes implements IConvertible
{
    int version;
    /**
    * Range Description
    */
    // @DataMember(Name="Aliased")
    // @ApiMember(DataType="double", Description="Range Description", IsRequired=true, ParameterType="path")
    double range;

    AllowedAttributes({this.version=1,this.range});
    AllowedAttributes.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        version = json['version'];
        range = JsonConverters.toDouble(json['range']);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'version': version,
        'range': range
    };

    TypeContext context = _ctx;
}

// @Route("/all-types")
class HelloAllTypes implements IReturn<HelloAllTypesResponse>, IConvertible
{
    int version;
    String name;
    AllTypes allTypes;
    AllCollectionTypes allCollectionTypes;

    HelloAllTypes({this.version=1,this.name,this.allTypes,this.allCollectionTypes});
    HelloAllTypes.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        version = json['version'];
        name = json['name'];
        allTypes = JsonConverters.fromJson(json['allTypes'],'AllTypes',context);
        allCollectionTypes = JsonConverters.fromJson(json['allCollectionTypes'],'AllCollectionTypes',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'version': version,
        'name': name,
        'allTypes': JsonConverters.toJson(allTypes,'AllTypes',context),
        'allCollectionTypes': JsonConverters.toJson(allCollectionTypes,'AllCollectionTypes',context)
    };

    createResponse() { return new HelloAllTypesResponse(); }
    String getTypeName() { return "HelloAllTypes"; }
    TypeContext context = _ctx;
}

class HelloString implements IReturn<String>, IConvertible
{
    int version;
    String name;

    HelloString({this.version=1,this.name});
    HelloString.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        version = json['version'];
        name = json['name'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'version': version,
        'name': name
    };

    createResponse() { return ""; }
    String getTypeName() { return "HelloString"; }
    TypeContext context = _ctx;
}

class HelloVoid implements IConvertible
{
    int version;
    String name;

    HelloVoid({this.version=1,this.name});
    HelloVoid.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        version = json['version'];
        name = json['name'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'version': version,
        'name': name
    };

    TypeContext context = _ctx;
}

// @DataContract
class HelloWithDataContract implements IReturn<HelloWithDataContractResponse>, IConvertible
{
    int version;
    // @DataMember(Name="name", Order=1, IsRequired=true, EmitDefaultValue=false)
    String name;

    // @DataMember(Name="id", Order=2, EmitDefaultValue=false)
    int id;

    HelloWithDataContract({this.version=1,this.name,this.id});
    HelloWithDataContract.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        version = json['version'];
        name = json['name'];
        id = json['id'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'version': version,
        'name': name,
        'id': id
    };

    createResponse() { return new HelloWithDataContractResponse(); }
    String getTypeName() { return "HelloWithDataContract"; }
    TypeContext context = _ctx;
}

/**
* Description on HelloWithDescription type
*/
class HelloWithDescription implements IReturn<HelloWithDescriptionResponse>, IConvertible
{
    int version;
    String name;

    HelloWithDescription({this.version=1,this.name});
    HelloWithDescription.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        version = json['version'];
        name = json['name'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'version': version,
        'name': name
    };

    createResponse() { return new HelloWithDescriptionResponse(); }
    String getTypeName() { return "HelloWithDescription"; }
    TypeContext context = _ctx;
}

class HelloWithInheritance extends HelloBase implements IReturn<HelloWithInheritanceResponse>, IConvertible
{
    int version;
    String name;

    HelloWithInheritance({this.version=1,this.name});
    HelloWithInheritance.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        super.fromMap(json);
        version = json['version'];
        name = json['name'];
        return this;
    }

    Map<String, dynamic> toJson() => super.toJson()..addAll({
        'version': version,
        'name': name
    });

    createResponse() { return new HelloWithInheritanceResponse(); }
    String getTypeName() { return "HelloWithInheritance"; }
    TypeContext context = _ctx;
}

class HelloWithGenericInheritance extends HelloBase1<Poco> implements IConvertible
{
    int version;
    String result;

    HelloWithGenericInheritance({this.version=1,this.result});
    HelloWithGenericInheritance.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        super.fromMap(json);
        version = json['version'];
        result = json['result'];
        return this;
    }

    Map<String, dynamic> toJson() => super.toJson()..addAll({
        'version': version,
        'result': result
    });

    TypeContext context = _ctx;
}

class HelloWithGenericInheritance2 extends HelloBase1<Hello> implements IConvertible
{
    int version;
    String result;

    HelloWithGenericInheritance2({this.version=1,this.result});
    HelloWithGenericInheritance2.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        super.fromMap(json);
        version = json['version'];
        result = json['result'];
        return this;
    }

    Map<String, dynamic> toJson() => super.toJson()..addAll({
        'version': version,
        'result': result
    });

    TypeContext context = _ctx;
}

class HelloWithNestedInheritance extends HelloBase1<Item> implements IConvertible
{
    int version;

    HelloWithNestedInheritance({this.version=1});
    HelloWithNestedInheritance.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        super.fromMap(json);
        version = json['version'];
        return this;
    }

    Map<String, dynamic> toJson() => super.toJson()..addAll({
        'version': version
    });

    TypeContext context = _ctx;
}

class HelloWithReturn implements IReturn<HelloWithAlternateReturnResponse>, IConvertible
{
    int version;
    String name;

    HelloWithReturn({this.version=1,this.name});
    HelloWithReturn.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        version = json['version'];
        name = json['name'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'version': version,
        'name': name
    };

    createResponse() { return new HelloWithAlternateReturnResponse(); }
    String getTypeName() { return "HelloWithReturn"; }
    TypeContext context = _ctx;
}

// @Route("/helloroute")
class HelloWithRoute implements IReturn<HelloWithRouteResponse>, IConvertible
{
    int version;
    String name;

    HelloWithRoute({this.version=1,this.name});
    HelloWithRoute.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        version = json['version'];
        name = json['name'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'version': version,
        'name': name
    };

    createResponse() { return new HelloWithRouteResponse(); }
    String getTypeName() { return "HelloWithRoute"; }
    TypeContext context = _ctx;
}

class HelloWithType implements IReturn<HelloWithTypeResponse>, IConvertible
{
    int version;
    String name;

    HelloWithType({this.version=1,this.name});
    HelloWithType.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        version = json['version'];
        name = json['name'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'version': version,
        'name': name
    };

    createResponse() { return new HelloWithTypeResponse(); }
    String getTypeName() { return "HelloWithType"; }
    TypeContext context = _ctx;
}

class HelloInterface implements IConvertible
{
    int version;
    IPoco poco;
    IEmptyInterface emptyInterface;
    EmptyClass emptyClass;

    HelloInterface({this.version=1,this.poco,this.emptyInterface,this.emptyClass});
    HelloInterface.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        version = json['version'];
        poco = JsonConverters.fromJson(json['poco'],'IPoco',context);
        emptyInterface = JsonConverters.fromJson(json['emptyInterface'],'IEmptyInterface',context);
        emptyClass = JsonConverters.fromJson(json['emptyClass'],'EmptyClass',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'version': version,
        'poco': JsonConverters.toJson(poco,'IPoco',context),
        'emptyInterface': JsonConverters.toJson(emptyInterface,'IEmptyInterface',context),
        'emptyClass': JsonConverters.toJson(emptyClass,'EmptyClass',context)
    };

    TypeContext context = _ctx;
}

class HelloInnerTypes implements IReturn<HelloInnerTypesResponse>, IConvertible
{
    int version;

    HelloInnerTypes({this.version=1});
    HelloInnerTypes.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        version = json['version'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'version': version
    };

    createResponse() { return new HelloInnerTypesResponse(); }
    String getTypeName() { return "HelloInnerTypes"; }
    TypeContext context = _ctx;
}

class HelloBuiltin implements IConvertible
{
    int version;
    DayOfWeek dayOfWeek;

    HelloBuiltin({this.version=1,this.dayOfWeek});
    HelloBuiltin.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        version = json['version'];
        dayOfWeek = JsonConverters.fromJson(json['dayOfWeek'],'DayOfWeek',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'version': version,
        'dayOfWeek': JsonConverters.toJson(dayOfWeek,'DayOfWeek',context)
    };

    TypeContext context = _ctx;
}

class HelloGet implements IReturn<HelloVerbResponse>, IGet, IConvertible
{
    int version;
    int id;

    HelloGet({this.version=1,this.id});
    HelloGet.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        version = json['version'];
        id = json['id'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'version': version,
        'id': id
    };

    createResponse() { return new HelloVerbResponse(); }
    String getTypeName() { return "HelloGet"; }
    TypeContext context = _ctx;
}

class HelloPost extends HelloBase implements IReturn<HelloVerbResponse>, IPost, IConvertible
{
    int version;

    HelloPost({this.version=1});
    HelloPost.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        super.fromMap(json);
        version = json['version'];
        return this;
    }

    Map<String, dynamic> toJson() => super.toJson()..addAll({
        'version': version
    });

    createResponse() { return new HelloVerbResponse(); }
    String getTypeName() { return "HelloPost"; }
    TypeContext context = _ctx;
}

class HelloPut implements IReturn<HelloVerbResponse>, IPut, IConvertible
{
    int version;
    int id;

    HelloPut({this.version=1,this.id});
    HelloPut.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        version = json['version'];
        id = json['id'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'version': version,
        'id': id
    };

    createResponse() { return new HelloVerbResponse(); }
    String getTypeName() { return "HelloPut"; }
    TypeContext context = _ctx;
}

class HelloDelete implements IReturn<HelloVerbResponse>, IDelete, IConvertible
{
    int version;
    int id;

    HelloDelete({this.version=1,this.id});
    HelloDelete.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        version = json['version'];
        id = json['id'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'version': version,
        'id': id
    };

    createResponse() { return new HelloVerbResponse(); }
    String getTypeName() { return "HelloDelete"; }
    TypeContext context = _ctx;
}

class HelloPatch implements IReturn<HelloVerbResponse>, IPatch, IConvertible
{
    int version;
    int id;

    HelloPatch({this.version=1,this.id});
    HelloPatch.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        version = json['version'];
        id = json['id'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'version': version,
        'id': id
    };

    createResponse() { return new HelloVerbResponse(); }
    String getTypeName() { return "HelloPatch"; }
    TypeContext context = _ctx;
}

class HelloReturnVoid implements IReturnVoid, IConvertible
{
    int version;
    int id;

    HelloReturnVoid({this.version=1,this.id});
    HelloReturnVoid.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        version = json['version'];
        id = json['id'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'version': version,
        'id': id
    };

    createResponse() {}
    String getTypeName() { return "HelloReturnVoid"; }
    TypeContext context = _ctx;
}

class EnumRequest implements IReturn<EnumResponse>, IPut, IConvertible
{
    int version;
    ScopeType Operator;

    EnumRequest({this.version=1,this.Operator});
    EnumRequest.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        version = json['version'];
        Operator = JsonConverters.fromJson(json['operator'],'ScopeType',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'version': version,
        'operator': JsonConverters.toJson(Operator,'ScopeType',context)
    };

    createResponse() { return new EnumResponse(); }
    String getTypeName() { return "EnumRequest"; }
    TypeContext context = _ctx;
}

// @Route("/hellozip")
// @DataContract
class HelloZip implements IReturn<HelloZipResponse>, IConvertible
{
    int version;
    // @DataMember
    String name;

    // @DataMember
    List<String> test;

    HelloZip({this.version=1,this.name,this.test});
    HelloZip.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        version = json['version'];
        name = json['name'];
        test = JsonConverters.fromJson(json['test'],'List<String>',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'version': version,
        'name': name,
        'test': JsonConverters.toJson(test,'List<String>',context)
    };

    createResponse() { return new HelloZipResponse(); }
    String getTypeName() { return "HelloZip"; }
    TypeContext context = _ctx;
}

// @Route("/ping")
class Ping implements IReturn<PingResponse>, IConvertible
{
    int version;

    Ping({this.version=1});
    Ping.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        version = json['version'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'version': version
    };

    createResponse() { return new PingResponse(); }
    String getTypeName() { return "Ping"; }
    TypeContext context = _ctx;
}

// @Route("/reset-connections")
class ResetConnections implements IConvertible
{
    int version;

    ResetConnections({this.version=1});
    ResetConnections.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        version = json['version'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'version': version
    };

    TypeContext context = _ctx;
}

// @Route("/requires-role")
class RequiresRole implements IReturn<RequiresRoleResponse>, IConvertible
{
    int version;

    RequiresRole({this.version=1});
    RequiresRole.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        version = json['version'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'version': version
    };

    createResponse() { return new RequiresRoleResponse(); }
    String getTypeName() { return "RequiresRole"; }
    TypeContext context = _ctx;
}

// @Route("/return/string")
class ReturnString implements IReturn<String>, IConvertible
{
    int version;
    String data;

    ReturnString({this.version=1,this.data});
    ReturnString.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        version = json['version'];
        data = json['data'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'version': version,
        'data': data
    };

    createResponse() { return ""; }
    String getTypeName() { return "ReturnString"; }
    TypeContext context = _ctx;
}

// @Route("/return/bytes")
class ReturnBytes implements IReturn<Uint8List>, IConvertible
{
    int version;
    Uint8List data;

    ReturnBytes({this.version=1,this.data});
    ReturnBytes.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        version = json['version'];
        data = JsonConverters.fromJson(json['data'],'Uint8List',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'version': version,
        'data': JsonConverters.toJson(data,'Uint8List',context)
    };

    createResponse() { return new Uint8List(0); }
    String getTypeName() { return "ReturnBytes"; }
    TypeContext context = _ctx;
}

// @Route("/return/stream")
class ReturnStream implements IReturn<Uint8List>, IConvertible
{
    int version;
    Uint8List data;

    ReturnStream({this.version=1,this.data});
    ReturnStream.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        version = json['version'];
        data = JsonConverters.fromJson(json['data'],'Uint8List',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'version': version,
        'data': JsonConverters.toJson(data,'Uint8List',context)
    };

    createResponse() { return new Uint8List(0); }
    String getTypeName() { return "ReturnStream"; }
    TypeContext context = _ctx;
}

// @Route("/Request1", "GET")
class GetRequest1 implements IReturn<List<ReturnedDto>>, IGet, IConvertible
{
    int version;

    GetRequest1({this.version=1});
    GetRequest1.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        version = json['version'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'version': version
    };

    createResponse() { return new List<ReturnedDto>(); }
    String getTypeName() { return "GetRequest1"; }
    TypeContext context = _ctx;
}

// @Route("/Request2", "GET")
class GetRequest2 implements IReturn<List<ReturnedDto>>, IGet, IConvertible
{
    int version;

    GetRequest2({this.version=1});
    GetRequest2.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        version = json['version'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'version': version
    };

    createResponse() { return new List<ReturnedDto>(); }
    String getTypeName() { return "GetRequest2"; }
    TypeContext context = _ctx;
}

// @Route("/sendjson")
class SendJson implements IReturn<String>, IConvertible
{
    int version;
    int id;
    String name;

    SendJson({this.version=1,this.id,this.name});
    SendJson.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        version = json['version'];
        id = json['id'];
        name = json['name'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'version': version,
        'id': id,
        'name': name
    };

    createResponse() { return ""; }
    String getTypeName() { return "SendJson"; }
    TypeContext context = _ctx;
}

// @Route("/sendtext")
class SendText implements IReturn<String>, IConvertible
{
    int version;
    int id;
    String name;
    String contentType;

    SendText({this.version=1,this.id,this.name,this.contentType});
    SendText.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        version = json['version'];
        id = json['id'];
        name = json['name'];
        contentType = json['contentType'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'version': version,
        'id': id,
        'name': name,
        'contentType': contentType
    };

    createResponse() { return ""; }
    String getTypeName() { return "SendText"; }
    TypeContext context = _ctx;
}

// @Route("/sendraw")
class SendRaw implements IReturn<Uint8List>, IConvertible
{
    int version;
    int id;
    String name;
    String contentType;

    SendRaw({this.version=1,this.id,this.name,this.contentType});
    SendRaw.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        version = json['version'];
        id = json['id'];
        name = json['name'];
        contentType = json['contentType'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'version': version,
        'id': id,
        'name': name,
        'contentType': contentType
    };

    createResponse() { return new Uint8List(0); }
    String getTypeName() { return "SendRaw"; }
    TypeContext context = _ctx;
}

class SendDefault implements IReturn<SendVerbResponse>, IConvertible
{
    int version;
    int id;

    SendDefault({this.version=1,this.id});
    SendDefault.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        version = json['version'];
        id = json['id'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'version': version,
        'id': id
    };

    createResponse() { return new SendVerbResponse(); }
    String getTypeName() { return "SendDefault"; }
    TypeContext context = _ctx;
}

// @Route("/sendrestget/{Id}", "GET")
class SendRestGet implements IReturn<SendVerbResponse>, IGet, IConvertible
{
    int version;
    int id;

    SendRestGet({this.version=1,this.id});
    SendRestGet.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        version = json['version'];
        id = json['id'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'version': version,
        'id': id
    };

    createResponse() { return new SendVerbResponse(); }
    String getTypeName() { return "SendRestGet"; }
    TypeContext context = _ctx;
}

class SendGet implements IReturn<SendVerbResponse>, IGet, IConvertible
{
    int version;
    int id;

    SendGet({this.version=1,this.id});
    SendGet.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        version = json['version'];
        id = json['id'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'version': version,
        'id': id
    };

    createResponse() { return new SendVerbResponse(); }
    String getTypeName() { return "SendGet"; }
    TypeContext context = _ctx;
}

class SendPost implements IReturn<SendVerbResponse>, IPost, IConvertible
{
    int version;
    int id;

    SendPost({this.version=1,this.id});
    SendPost.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        version = json['version'];
        id = json['id'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'version': version,
        'id': id
    };

    createResponse() { return new SendVerbResponse(); }
    String getTypeName() { return "SendPost"; }
    TypeContext context = _ctx;
}

class SendPut implements IReturn<SendVerbResponse>, IPut, IConvertible
{
    int version;
    int id;

    SendPut({this.version=1,this.id});
    SendPut.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        version = json['version'];
        id = json['id'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'version': version,
        'id': id
    };

    createResponse() { return new SendVerbResponse(); }
    String getTypeName() { return "SendPut"; }
    TypeContext context = _ctx;
}

class SendReturnVoid implements IReturnVoid, IConvertible
{
    int version;
    int id;

    SendReturnVoid({this.version=1,this.id});
    SendReturnVoid.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        version = json['version'];
        id = json['id'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'version': version,
        'id': id
    };

    createResponse() {}
    String getTypeName() { return "SendReturnVoid"; }
    TypeContext context = _ctx;
}

// @Route("/session")
class GetSession implements IReturn<GetSessionResponse>, IConvertible
{
    int version;

    GetSession({this.version=1});
    GetSession.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        version = json['version'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'version': version
    };

    createResponse() { return new GetSessionResponse(); }
    String getTypeName() { return "GetSession"; }
    TypeContext context = _ctx;
}

// @Route("/session/edit/{CustomName}")
class UpdateSession implements IReturn<GetSessionResponse>, IConvertible
{
    int version;
    String customName;

    UpdateSession({this.version=1,this.customName});
    UpdateSession.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        version = json['version'];
        customName = json['customName'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'version': version,
        'customName': customName
    };

    createResponse() { return new GetSessionResponse(); }
    String getTypeName() { return "UpdateSession"; }
    TypeContext context = _ctx;
}

class StoreLogs implements IReturn<StoreLogsResponse>, IConvertible
{
    int version;
    List<Logger> loggers;

    StoreLogs({this.version=1,this.loggers});
    StoreLogs.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        version = json['version'];
        loggers = JsonConverters.fromJson(json['loggers'],'List<Logger>',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'version': version,
        'loggers': JsonConverters.toJson(loggers,'List<Logger>',context)
    };

    createResponse() { return new StoreLogsResponse(); }
    String getTypeName() { return "StoreLogs"; }
    TypeContext context = _ctx;
}

class HelloAuth implements IReturn<HelloResponse>, IConvertible
{
    int version;
    String name;

    HelloAuth({this.version=1,this.name});
    HelloAuth.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        version = json['version'];
        name = json['name'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'version': version,
        'name': name
    };

    createResponse() { return new HelloResponse(); }
    String getTypeName() { return "HelloAuth"; }
    TypeContext context = _ctx;
}

// @Route("/testauth")
class TestAuth implements IReturn<TestAuthResponse>, IConvertible
{
    int version;

    TestAuth({this.version=1});
    TestAuth.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        version = json['version'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'version': version
    };

    createResponse() { return new TestAuthResponse(); }
    String getTypeName() { return "TestAuth"; }
    TypeContext context = _ctx;
}

// @Route("/testdata/AllTypes")
class TestDataAllTypes implements IReturn<AllTypes>, IConvertible
{
    int version;

    TestDataAllTypes({this.version=1});
    TestDataAllTypes.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        version = json['version'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'version': version
    };

    createResponse() { return new AllTypes(); }
    String getTypeName() { return "TestDataAllTypes"; }
    TypeContext context = _ctx;
}

// @Route("/testdata/AllCollectionTypes")
class TestDataAllCollectionTypes implements IReturn<AllCollectionTypes>, IConvertible
{
    int version;

    TestDataAllCollectionTypes({this.version=1});
    TestDataAllCollectionTypes.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        version = json['version'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'version': version
    };

    createResponse() { return new AllCollectionTypes(); }
    String getTypeName() { return "TestDataAllCollectionTypes"; }
    TypeContext context = _ctx;
}

// @Route("/void-response")
class TestVoidResponse implements IConvertible
{
    int version;

    TestVoidResponse({this.version=1});
    TestVoidResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        version = json['version'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'version': version
    };

    TypeContext context = _ctx;
}

// @Route("/null-response")
class TestNullResponse implements IConvertible
{
    int version;

    TestNullResponse({this.version=1});
    TestNullResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        version = json['version'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'version': version
    };

    TypeContext context = _ctx;
}

// @Route("/Stuff")
// @DataContract(Namespace="http://schemas.servicestack.net/types")
class GetStuff implements IReturn<GetStuffResponse>, IConvertible
{
    int version;
    // @DataMember
    // @ApiMember(DataType="DateTime", Name="Summary Date")
    DateTime summaryDate;

    // @DataMember
    // @ApiMember(DataType="DateTime", Name="Summary End Date")
    DateTime summaryEndDate;

    // @DataMember
    // @ApiMember(DataType="string", Name="Symbol")
    String symbol;

    // @DataMember
    // @ApiMember(DataType="string", Name="Email")
    String email;

    // @DataMember
    // @ApiMember(DataType="bool", Name="Is Enabled")
    bool isEnabled;

    GetStuff({this.version=1,this.summaryDate,this.summaryEndDate,this.symbol,this.email,this.isEnabled});
    GetStuff.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        version = json['version'];
        summaryDate = JsonConverters.fromJson(json['summaryDate'],'DateTime',context);
        summaryEndDate = JsonConverters.fromJson(json['summaryEndDate'],'DateTime',context);
        symbol = json['symbol'];
        email = json['email'];
        isEnabled = json['isEnabled'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'version': version,
        'summaryDate': JsonConverters.toJson(summaryDate,'DateTime',context),
        'summaryEndDate': JsonConverters.toJson(summaryEndDate,'DateTime',context),
        'symbol': symbol,
        'email': email,
        'isEnabled': isEnabled
    };

    createResponse() { return new GetStuffResponse(); }
    String getTypeName() { return "GetStuff"; }
    TypeContext context = _ctx;
}

class QueryPocoBase extends QueryDb1<OnlyDefinedInGenericType> implements IReturn<QueryResponse<OnlyDefinedInGenericType>>, IConvertible
{
    int version;
    int id;

    QueryPocoBase({this.version=1,this.id});
    QueryPocoBase.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        super.fromMap(json);
        version = json['version'];
        id = json['id'];
        return this;
    }

    Map<String, dynamic> toJson() => super.toJson()..addAll({
        'version': version,
        'id': id
    });

    createResponse() { return new QueryResponse<OnlyDefinedInGenericType>(); }
    String getTypeName() { return "QueryPocoBase"; }
    TypeContext context = _ctx;
}

class QueryPocoIntoBase extends QueryDb2<OnlyDefinedInGenericTypeFrom,OnlyDefinedInGenericTypeInto> implements IReturn<QueryResponse<OnlyDefinedInGenericTypeInto>>, IConvertible
{
    int version;
    int id;

    QueryPocoIntoBase({this.version=1,this.id});
    QueryPocoIntoBase.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        super.fromMap(json);
        version = json['version'];
        id = json['id'];
        return this;
    }

    Map<String, dynamic> toJson() => super.toJson()..addAll({
        'version': version,
        'id': id
    });

    createResponse() { return new QueryResponse<OnlyDefinedInGenericTypeInto>(); }
    String getTypeName() { return "QueryPocoIntoBase"; }
    TypeContext context = _ctx;
}

// @Route("/rockstars", "GET")
class QueryRockstars extends QueryDb1<Rockstar> implements IReturn<QueryResponse<Rockstar>>, IConvertible
{
    int version;

    QueryRockstars({this.version=1});
    QueryRockstars.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        super.fromMap(json);
        version = json['version'];
        return this;
    }

    Map<String, dynamic> toJson() => super.toJson()..addAll({
        'version': version
    });

    createResponse() { return new QueryResponse<Rockstar>(); }
    String getTypeName() { return "QueryRockstars"; }
    TypeContext context = _ctx;
}

TypeContext _ctx = new TypeContext(library: 'test.servicestack.net', types: <String, TypeInfo> {
    'ExternalEnum': new TypeInfo(TypeOf.Enum, enumValues:ExternalEnum.values),
    'ExternalEnum2': new TypeInfo(TypeOf.Enum, enumValues:ExternalEnum2.values),
    'ExternalType': new TypeInfo(TypeOf.Class, create:() => new ExternalType()),
    'ExternalEnum3': new TypeInfo(TypeOf.Enum, enumValues:ExternalEnum3.values),
    'IAuthTokens': new TypeInfo(TypeOf.Interface),
    'AuthUserSession': new TypeInfo(TypeOf.Class, create:() => new AuthUserSession()),
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
    'CustomRoute': new TypeInfo(TypeOf.Class, create:() => new CustomRoute()),
    'Wait': new TypeInfo(TypeOf.Class, create:() => new Wait()),
    'EchoTypes': new TypeInfo(TypeOf.Class, create:() => new EchoTypes()),
    'EchoCollections': new TypeInfo(TypeOf.Class, create:() => new EchoCollections()),
    'EchoComplexTypes': new TypeInfo(TypeOf.Class, create:() => new EchoComplexTypes()),
    'List<SubType>': new TypeInfo(TypeOf.Class, create:() => new List<SubType>()),
    'Map<String,SubType>': new TypeInfo(TypeOf.Class, create:() => new Map<String,SubType>()),
    'StoreRockstars': new TypeInfo(TypeOf.Class, create:() => new StoreRockstars()),
    'GetStuffResponse': new TypeInfo(TypeOf.Class, create:() => new GetStuffResponse()),
    'DummyTypes': new TypeInfo(TypeOf.Class, create:() => new DummyTypes()),
    'List<HelloResponse>': new TypeInfo(TypeOf.Class, create:() => new List<HelloResponse>()),
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
    'HelloImage': new TypeInfo(TypeOf.Class, create:() => new HelloImage()),
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
    'HelloAuth': new TypeInfo(TypeOf.Class, create:() => new HelloAuth()),
    'TestAuth': new TypeInfo(TypeOf.Class, create:() => new TestAuth()),
    'TestDataAllTypes': new TypeInfo(TypeOf.Class, create:() => new TestDataAllTypes()),
    'TestDataAllCollectionTypes': new TypeInfo(TypeOf.Class, create:() => new TestDataAllCollectionTypes()),
    'TestVoidResponse': new TypeInfo(TypeOf.Class, create:() => new TestVoidResponse()),
    'TestNullResponse': new TypeInfo(TypeOf.Class, create:() => new TestNullResponse()),
    'GetStuff': new TypeInfo(TypeOf.Class, create:() => new GetStuff()),
    'QueryPocoBase': new TypeInfo(TypeOf.Class, create:() => new QueryPocoBase()),
    'QueryPocoIntoBase': new TypeInfo(TypeOf.Class, create:() => new QueryPocoIntoBase()),
    'QueryRockstars': new TypeInfo(TypeOf.Class, create:() => new QueryRockstars()),
});
