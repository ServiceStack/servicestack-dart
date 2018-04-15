/* Options:
Date: 2018-04-14 20:57:54
Version: 5.00
Tip: To override a DTO option, remove "//" prefix before updating
BaseUrl: http://localhost:55799

//GlobalNamespace: 
//AddServiceStackTypes: True
//AddResponseStatus: False
//AddImplicitVersion: 
//AddDescriptionAsComments: True
//IncludeTypes: 
//ExcludeTypes: 
DefaultImports: ../../lib/client.dart
*/

import '../../lib/client.dart';
import 'dart:collection';
import 'dart:typed_data';

class RequestLogEntry implements IConvertible
{
    int id;
    DateTime dateTime;
    int statusCode;
    String statusDescription;
    String httpMethod;
    String absoluteUri;
    String pathInfo;
    // @StringLength(2147483647)
    String requestBody;

    dynamic requestDto;
    String userAuthId;
    String sessionId;
    String ipAddress;
    String forwardedFor;
    String referer;
    Map<String,String> headers;
    Map<String,String> formData;
    Map<String,String> items;
    dynamic session;
    dynamic responseDto;
    dynamic errorResponse;
    String exceptionSource;
    dynamic exceptionData;
    Duration requestDuration;

    RequestLogEntry({this.id,this.dateTime,this.statusCode,this.statusDescription,this.httpMethod,this.absoluteUri,this.pathInfo,this.requestBody,this.requestDto,this.userAuthId,this.sessionId,this.ipAddress,this.forwardedFor,this.referer,this.headers,this.formData,this.items,this.session,this.responseDto,this.errorResponse,this.exceptionSource,this.exceptionData,this.requestDuration});
    RequestLogEntry.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        id = json['id'];
        dateTime = JsonConverters.fromJson(json['dateTime'],'DateTime',context);
        statusCode = json['statusCode'];
        statusDescription = json['statusDescription'];
        httpMethod = json['httpMethod'];
        absoluteUri = json['absoluteUri'];
        pathInfo = json['pathInfo'];
        requestBody = json['requestBody'];
        requestDto = JsonConverters.fromJson(json['requestDto'],'dynamic',context);
        userAuthId = json['userAuthId'];
        sessionId = json['sessionId'];
        ipAddress = json['ipAddress'];
        forwardedFor = json['forwardedFor'];
        referer = json['referer'];
        headers = JsonConverters.toStringMap(json['headers']);
        formData = JsonConverters.toStringMap(json['formData']);
        items = JsonConverters.toStringMap(json['items']);
        session = JsonConverters.fromJson(json['session'],'dynamic',context);
        responseDto = JsonConverters.fromJson(json['responseDto'],'dynamic',context);
        errorResponse = JsonConverters.fromJson(json['errorResponse'],'dynamic',context);
        exceptionSource = json['exceptionSource'];
        exceptionData = JsonConverters.fromJson(json['exceptionData'],'dynamic',context);
        requestDuration = JsonConverters.fromJson(json['requestDuration'],'Duration',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'id': id,
        'dateTime': JsonConverters.toJson(dateTime,'DateTime',context),
        'statusCode': statusCode,
        'statusDescription': statusDescription,
        'httpMethod': httpMethod,
        'absoluteUri': absoluteUri,
        'pathInfo': pathInfo,
        'requestBody': requestBody,
        'requestDto': JsonConverters.toJson(requestDto,'dynamic',context),
        'userAuthId': userAuthId,
        'sessionId': sessionId,
        'ipAddress': ipAddress,
        'forwardedFor': forwardedFor,
        'referer': referer,
        'headers': headers,
        'formData': formData,
        'items': items,
        'session': JsonConverters.toJson(session,'dynamic',context),
        'responseDto': JsonConverters.toJson(responseDto,'dynamic',context),
        'errorResponse': JsonConverters.toJson(errorResponse,'dynamic',context),
        'exceptionSource': exceptionSource,
        'exceptionData': JsonConverters.toJson(exceptionData,'dynamic',context),
        'requestDuration': JsonConverters.toJson(requestDuration,'Duration',context)
    };

    TypeContext context = _ctx;
}

class Rockstar implements IConvertible
{
    /**
    * Идентификатор
    */
    int id;
    /**
    * Фамилия
    */
    String firstName;
    /**
    * Имя
    */
    String lastName;
    /**
    * Возраст
    */
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

class ObjectDesign implements IConvertible
{
    int id;

    ObjectDesign({this.id});
    ObjectDesign.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        id = json['id'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'id': id
    };

    TypeContext context = _ctx;
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

    AuthUserSession({this.referrerUrl,this.id,this.userAuthId,this.userAuthName,this.userName,this.twitterUserId,this.twitterScreenName,this.facebookUserId,this.facebookUserName,this.firstName,this.lastName,this.displayName,this.company,this.email,this.primaryEmail,this.phoneNumber,this.birthDate,this.birthDateRaw,this.address,this.address2,this.city,this.state,this.country,this.culture,this.fullName,this.gender,this.language,this.mailAddress,this.nickname,this.postalCode,this.timeZone,this.requestTokenSecret,this.createdAt,this.lastModified,this.roles,this.permissions,this.isAuthenticated,this.fromToken,this.profileUrl,this.sequence,this.tag,this.authProvider,this.providerOAuthAccess,this.meta});
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
        'meta': meta
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

class MetadataTypeName implements IConvertible
{
    String name;
    String namespace;
    List<String> genericArgs;

    MetadataTypeName({this.name,this.namespace,this.genericArgs});
    MetadataTypeName.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        name = json['name'];
        namespace = json['namespace'];
        genericArgs = JsonConverters.fromJson(json['genericArgs'],'List<String>',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'name': name,
        'namespace': namespace,
        'genericArgs': JsonConverters.toJson(genericArgs,'List<String>',context)
    };

    TypeContext context = _ctx;
}

class MetadataRoute implements IConvertible
{
    String path;
    String verbs;
    String notes;
    String summary;

    MetadataRoute({this.path,this.verbs,this.notes,this.summary});
    MetadataRoute.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        path = json['path'];
        verbs = json['verbs'];
        notes = json['notes'];
        summary = json['summary'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'path': path,
        'verbs': verbs,
        'notes': notes,
        'summary': summary
    };

    TypeContext context = _ctx;
}

class MetadataDataContract implements IConvertible
{
    String name;
    String namespace;

    MetadataDataContract({this.name,this.namespace});
    MetadataDataContract.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        name = json['name'];
        namespace = json['namespace'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'name': name,
        'namespace': namespace
    };

    TypeContext context = _ctx;
}

class MetadataDataMember implements IConvertible
{
    String name;
    int order;
    bool isRequired;
    bool emitDefaultValue;

    MetadataDataMember({this.name,this.order,this.isRequired,this.emitDefaultValue});
    MetadataDataMember.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        name = json['name'];
        order = json['order'];
        isRequired = json['isRequired'];
        emitDefaultValue = json['emitDefaultValue'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'name': name,
        'order': order,
        'isRequired': isRequired,
        'emitDefaultValue': emitDefaultValue
    };

    TypeContext context = _ctx;
}

class MetadataAttribute implements IConvertible
{
    String name;
    List<MetadataPropertyType> constructorArgs;
    List<MetadataPropertyType> args;

    MetadataAttribute({this.name,this.constructorArgs,this.args});
    MetadataAttribute.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        name = json['name'];
        constructorArgs = JsonConverters.fromJson(json['constructorArgs'],'List<MetadataPropertyType>',context);
        args = JsonConverters.fromJson(json['args'],'List<MetadataPropertyType>',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'name': name,
        'constructorArgs': JsonConverters.toJson(constructorArgs,'List<MetadataPropertyType>',context),
        'args': JsonConverters.toJson(args,'List<MetadataPropertyType>',context)
    };

    TypeContext context = _ctx;
}

class MetadataPropertyType implements IConvertible
{
    String name;
    String type;
    bool isValueType;
    bool isSystemType;
    bool isEnum;
    String typeNamespace;
    List<String> genericArgs;
    String value;
    String description;
    MetadataDataMember dataMember;
    bool readOnly;
    String paramType;
    String displayType;
    bool isRequired;
    List<String> allowableValues;
    int allowableMin;
    int allowableMax;
    List<MetadataAttribute> attributes;

    MetadataPropertyType({this.name,this.type,this.isValueType,this.isSystemType,this.isEnum,this.typeNamespace,this.genericArgs,this.value,this.description,this.dataMember,this.readOnly,this.paramType,this.displayType,this.isRequired,this.allowableValues,this.allowableMin,this.allowableMax,this.attributes});
    MetadataPropertyType.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        name = json['name'];
        type = json['type'];
        isValueType = json['isValueType'];
        isSystemType = json['isSystemType'];
        isEnum = json['isEnum'];
        typeNamespace = json['typeNamespace'];
        genericArgs = JsonConverters.fromJson(json['genericArgs'],'List<String>',context);
        value = json['value'];
        description = json['description'];
        dataMember = JsonConverters.fromJson(json['dataMember'],'MetadataDataMember',context);
        readOnly = json['readOnly'];
        paramType = json['paramType'];
        displayType = json['displayType'];
        isRequired = json['isRequired'];
        allowableValues = JsonConverters.fromJson(json['allowableValues'],'List<String>',context);
        allowableMin = json['allowableMin'];
        allowableMax = json['allowableMax'];
        attributes = JsonConverters.fromJson(json['attributes'],'List<MetadataAttribute>',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'name': name,
        'type': type,
        'isValueType': isValueType,
        'isSystemType': isSystemType,
        'isEnum': isEnum,
        'typeNamespace': typeNamespace,
        'genericArgs': JsonConverters.toJson(genericArgs,'List<String>',context),
        'value': value,
        'description': description,
        'dataMember': JsonConverters.toJson(dataMember,'MetadataDataMember',context),
        'readOnly': readOnly,
        'paramType': paramType,
        'displayType': displayType,
        'isRequired': isRequired,
        'allowableValues': JsonConverters.toJson(allowableValues,'List<String>',context),
        'allowableMin': allowableMin,
        'allowableMax': allowableMax,
        'attributes': JsonConverters.toJson(attributes,'List<MetadataAttribute>',context)
    };

    TypeContext context = _ctx;
}

class MetadataType implements IConvertible
{
    String name;
    String namespace;
    List<String> genericArgs;
    MetadataTypeName inherits;
    List<MetadataTypeName> Implements;
    String displayType;
    String description;
    bool returnVoidMarker;
    bool isNested;
    bool isEnum;
    bool isEnumInt;
    bool isInterface;
    bool isAbstract;
    MetadataTypeName returnMarkerTypeName;
    List<MetadataRoute> routes;
    MetadataDataContract dataContract;
    List<MetadataPropertyType> properties;
    List<MetadataAttribute> attributes;
    List<MetadataTypeName> innerTypes;
    List<String> enumNames;
    List<String> enumValues;
    Map<String,String> meta;

    MetadataType({this.name,this.namespace,this.genericArgs,this.inherits,this.Implements,this.displayType,this.description,this.returnVoidMarker,this.isNested,this.isEnum,this.isEnumInt,this.isInterface,this.isAbstract,this.returnMarkerTypeName,this.routes,this.dataContract,this.properties,this.attributes,this.innerTypes,this.enumNames,this.enumValues,this.meta});
    MetadataType.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        name = json['name'];
        namespace = json['namespace'];
        genericArgs = JsonConverters.fromJson(json['genericArgs'],'List<String>',context);
        inherits = JsonConverters.fromJson(json['inherits'],'MetadataTypeName',context);
        Implements = JsonConverters.fromJson(json['implements'],'List<MetadataTypeName>',context);
        displayType = json['displayType'];
        description = json['description'];
        returnVoidMarker = json['returnVoidMarker'];
        isNested = json['isNested'];
        isEnum = json['isEnum'];
        isEnumInt = json['isEnumInt'];
        isInterface = json['isInterface'];
        isAbstract = json['isAbstract'];
        returnMarkerTypeName = JsonConverters.fromJson(json['returnMarkerTypeName'],'MetadataTypeName',context);
        routes = JsonConverters.fromJson(json['routes'],'List<MetadataRoute>',context);
        dataContract = JsonConverters.fromJson(json['dataContract'],'MetadataDataContract',context);
        properties = JsonConverters.fromJson(json['properties'],'List<MetadataPropertyType>',context);
        attributes = JsonConverters.fromJson(json['attributes'],'List<MetadataAttribute>',context);
        innerTypes = JsonConverters.fromJson(json['innerTypes'],'List<MetadataTypeName>',context);
        enumNames = JsonConverters.fromJson(json['enumNames'],'List<String>',context);
        enumValues = JsonConverters.fromJson(json['enumValues'],'List<String>',context);
        meta = JsonConverters.toStringMap(json['meta']);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'name': name,
        'namespace': namespace,
        'genericArgs': JsonConverters.toJson(genericArgs,'List<String>',context),
        'inherits': JsonConverters.toJson(inherits,'MetadataTypeName',context),
        'implements': JsonConverters.toJson(Implements,'List<MetadataTypeName>',context),
        'displayType': displayType,
        'description': description,
        'returnVoidMarker': returnVoidMarker,
        'isNested': isNested,
        'isEnum': isEnum,
        'isEnumInt': isEnumInt,
        'isInterface': isInterface,
        'isAbstract': isAbstract,
        'returnMarkerTypeName': JsonConverters.toJson(returnMarkerTypeName,'MetadataTypeName',context),
        'routes': JsonConverters.toJson(routes,'List<MetadataRoute>',context),
        'dataContract': JsonConverters.toJson(dataContract,'MetadataDataContract',context),
        'properties': JsonConverters.toJson(properties,'List<MetadataPropertyType>',context),
        'attributes': JsonConverters.toJson(attributes,'List<MetadataAttribute>',context),
        'innerTypes': JsonConverters.toJson(innerTypes,'List<MetadataTypeName>',context),
        'enumNames': JsonConverters.toJson(enumNames,'List<String>',context),
        'enumValues': JsonConverters.toJson(enumValues,'List<String>',context),
        'meta': meta
    };

    TypeContext context = _ctx;
}

class AutoQueryConvention implements IConvertible
{
    String name;
    String value;
    String types;

    AutoQueryConvention({this.name,this.value,this.types});
    AutoQueryConvention.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        name = json['name'];
        value = json['value'];
        types = json['types'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'name': name,
        'value': value,
        'types': types
    };

    TypeContext context = _ctx;
}

class AutoQueryViewerConfig implements IConvertible
{
    String serviceBaseUrl;
    String serviceName;
    String serviceDescription;
    String serviceIconUrl;
    List<String> formats;
    int maxLimit;
    bool isPublic;
    bool onlyShowAnnotatedServices;
    List<AutoQueryConvention> implicitConventions;
    String defaultSearchField;
    String defaultSearchType;
    String defaultSearchText;
    String brandUrl;
    String brandImageUrl;
    String textColor;
    String linkColor;
    String backgroundColor;
    String backgroundImageUrl;
    String iconUrl;
    Map<String,String> meta;

    AutoQueryViewerConfig({this.serviceBaseUrl,this.serviceName,this.serviceDescription,this.serviceIconUrl,this.formats,this.maxLimit,this.isPublic,this.onlyShowAnnotatedServices,this.implicitConventions,this.defaultSearchField,this.defaultSearchType,this.defaultSearchText,this.brandUrl,this.brandImageUrl,this.textColor,this.linkColor,this.backgroundColor,this.backgroundImageUrl,this.iconUrl,this.meta});
    AutoQueryViewerConfig.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        serviceBaseUrl = json['serviceBaseUrl'];
        serviceName = json['serviceName'];
        serviceDescription = json['serviceDescription'];
        serviceIconUrl = json['serviceIconUrl'];
        formats = JsonConverters.fromJson(json['formats'],'List<String>',context);
        maxLimit = json['maxLimit'];
        isPublic = json['isPublic'];
        onlyShowAnnotatedServices = json['onlyShowAnnotatedServices'];
        implicitConventions = JsonConverters.fromJson(json['implicitConventions'],'List<AutoQueryConvention>',context);
        defaultSearchField = json['defaultSearchField'];
        defaultSearchType = json['defaultSearchType'];
        defaultSearchText = json['defaultSearchText'];
        brandUrl = json['brandUrl'];
        brandImageUrl = json['brandImageUrl'];
        textColor = json['textColor'];
        linkColor = json['linkColor'];
        backgroundColor = json['backgroundColor'];
        backgroundImageUrl = json['backgroundImageUrl'];
        iconUrl = json['iconUrl'];
        meta = JsonConverters.toStringMap(json['meta']);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'serviceBaseUrl': serviceBaseUrl,
        'serviceName': serviceName,
        'serviceDescription': serviceDescription,
        'serviceIconUrl': serviceIconUrl,
        'formats': JsonConverters.toJson(formats,'List<String>',context),
        'maxLimit': maxLimit,
        'isPublic': isPublic,
        'onlyShowAnnotatedServices': onlyShowAnnotatedServices,
        'implicitConventions': JsonConverters.toJson(implicitConventions,'List<AutoQueryConvention>',context),
        'defaultSearchField': defaultSearchField,
        'defaultSearchType': defaultSearchType,
        'defaultSearchText': defaultSearchText,
        'brandUrl': brandUrl,
        'brandImageUrl': brandImageUrl,
        'textColor': textColor,
        'linkColor': linkColor,
        'backgroundColor': backgroundColor,
        'backgroundImageUrl': backgroundImageUrl,
        'iconUrl': iconUrl,
        'meta': meta
    };

    TypeContext context = _ctx;
}

class AutoQueryViewerUserInfo implements IConvertible
{
    bool isAuthenticated;
    int queryCount;
    Map<String,String> meta;

    AutoQueryViewerUserInfo({this.isAuthenticated,this.queryCount,this.meta});
    AutoQueryViewerUserInfo.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        isAuthenticated = json['isAuthenticated'];
        queryCount = json['queryCount'];
        meta = JsonConverters.toStringMap(json['meta']);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'isAuthenticated': isAuthenticated,
        'queryCount': queryCount,
        'meta': meta
    };

    TypeContext context = _ctx;
}

class AutoQueryOperation implements IConvertible
{
    String request;
    String from;
    String to;
    Map<String,String> meta;

    AutoQueryOperation({this.request,this.from,this.to,this.meta});
    AutoQueryOperation.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        request = json['request'];
        from = json['from'];
        to = json['to'];
        meta = JsonConverters.toStringMap(json['meta']);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'request': request,
        'from': from,
        'to': to,
        'meta': meta
    };

    TypeContext context = _ctx;
}

class NativeTypesTestService implements IConvertible
{
    NativeTypesTestService();
    NativeTypesTestService.fromJson(Map<String, dynamic> json) : super();
    fromMap(Map<String, dynamic> json) {
        return this;
    }

    Map<String, dynamic> toJson() => {};
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

class OnlyInReturnListArg implements IConvertible
{
    String result;

    OnlyInReturnListArg({this.result});
    OnlyInReturnListArg.fromJson(Map<String, dynamic> json) { fromMap(json); }

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

enum EnumWithValues
{
    Value1,
    Value2,
}

// @Flags()
class EnumFlags
{
    static const EnumFlags Value0 = const EnumFlags._(0);
    static const EnumFlags Value1 = const EnumFlags._(1);
    static const EnumFlags Value2 = const EnumFlags._(2);
    static const EnumFlags Value3 = const EnumFlags._(3);
    static const EnumFlags Value123 = const EnumFlags._(3);

    final int _value;
    const EnumFlags._(this._value);
    int get value => _value;
    static List<EnumFlags> get values => const [Value0,Value1,Value2,Value3,Value123];
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

class AllCollectionTypes implements IConvertible
{
    List<int> intArray;
    List<int> intList;
    List<String> stringArray;
    List<String> stringList;
    List<Poco> pocoArray;
    List<Poco> pocoList;
    Uint8List nullableByteArray;
    List<int> nullableByteList;
    List<DateTime> nullableDateTimeArray;
    List<DateTime> nullableDateTimeList;
    Map<String,List<Poco>> pocoLookup;
    Map<String,List<Map<String,Poco>>> pocoLookupMap;

    AllCollectionTypes({this.intArray,this.intList,this.stringArray,this.stringList,this.pocoArray,this.pocoList,this.nullableByteArray,this.nullableByteList,this.nullableDateTimeArray,this.nullableDateTimeList,this.pocoLookup,this.pocoLookupMap});
    AllCollectionTypes.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        intArray = JsonConverters.fromJson(json['intArray'],'List<int>',context);
        intList = JsonConverters.fromJson(json['intList'],'List<int>',context);
        stringArray = JsonConverters.fromJson(json['stringArray'],'List<String>',context);
        stringList = JsonConverters.fromJson(json['stringList'],'List<String>',context);
        pocoArray = JsonConverters.fromJson(json['pocoArray'],'List<Poco>',context);
        pocoList = JsonConverters.fromJson(json['pocoList'],'List<Poco>',context);
        nullableByteArray = JsonConverters.fromJson(json['nullableByteArray'],'Uint8List',context);
        nullableByteList = JsonConverters.fromJson(json['nullableByteList'],'List<int>',context);
        nullableDateTimeArray = JsonConverters.fromJson(json['nullableDateTimeArray'],'List<DateTime>',context);
        nullableDateTimeList = JsonConverters.fromJson(json['nullableDateTimeList'],'List<DateTime>',context);
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
        'nullableByteArray': JsonConverters.toJson(nullableByteArray,'Uint8List',context),
        'nullableByteList': JsonConverters.toJson(nullableByteList,'List<int>',context),
        'nullableDateTimeArray': JsonConverters.toJson(nullableDateTimeArray,'List<DateTime>',context),
        'nullableDateTimeList': JsonConverters.toJson(nullableDateTimeList,'List<DateTime>',context),
        'pocoLookup': JsonConverters.toJson(pocoLookup,'Map<String,List<Poco>>',context),
        'pocoLookupMap': JsonConverters.toJson(pocoLookupMap,'Map<String,List<Map<String,Poco>>>',context)
    };

    TypeContext context = _ctx;
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

class HelloResponseBase implements IConvertible
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

class InheritedItem implements IConvertible
{
    String name;

    InheritedItem({this.name});
    InheritedItem.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        name = json['name'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'name': name
    };

    TypeContext context = _ctx;
}

class HelloWithReturnResponse implements IConvertible
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

abstract class ImplementsPoco
{
    String name;
}

class TypeB implements IConvertible
{
    String foo;

    TypeB({this.foo});
    TypeB.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        foo = json['foo'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'foo': foo
    };

    TypeContext context = _ctx;
}

class TypeA implements IConvertible
{
    List<TypeB> bar;

    TypeA({this.bar});
    TypeA.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        bar = JsonConverters.fromJson(json['bar'],'List<TypeB>',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'bar': JsonConverters.toJson(bar,'List<TypeB>',context)
    };

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

class InnerTypeItem implements IConvertible
{
    int id;
    String name;

    InnerTypeItem({this.id,this.name});
    InnerTypeItem.fromJson(Map<String, dynamic> json) { fromMap(json); }

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

abstract class IEcho
{
    String sentence;
}

// @Flags()
class CacheControl
{
    static const CacheControl None = const CacheControl._(0);
    static const CacheControl Public = const CacheControl._(1);
    static const CacheControl Private = const CacheControl._(2);
    static const CacheControl MustRevalidate = const CacheControl._(4);
    static const CacheControl NoCache = const CacheControl._(8);
    static const CacheControl NoStore = const CacheControl._(16);
    static const CacheControl NoTransform = const CacheControl._(32);
    static const CacheControl ProxyRevalidate = const CacheControl._(64);

    final int _value;
    const CacheControl._(this._value);
    int get value => _value;
    static List<CacheControl> get values => const [None,Public,Private,MustRevalidate,NoCache,NoStore,NoTransform,ProxyRevalidate];
}

enum MyColor
{
    Red,
    Green,
    Blue,
}

class SwaggerNestedModel implements IConvertible
{
    /**
    * NestedProperty description
    */
    // @ApiMember(Description="NestedProperty description")
    bool nestedProperty;

    SwaggerNestedModel({this.nestedProperty});
    SwaggerNestedModel.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        nestedProperty = json['nestedProperty'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'nestedProperty': nestedProperty
    };

    TypeContext context = _ctx;
}

class SwaggerNestedModel2 implements IConvertible
{
    /**
    * NestedProperty2 description
    */
    // @ApiMember(Description="NestedProperty2 description")
    bool nestedProperty2;

    /**
    * MultipleValues description
    */
    // @ApiMember(Description="MultipleValues description")
    String multipleValues;

    /**
    * TestRange description
    */
    // @ApiMember(Description="TestRange description")
    int testRange;

    SwaggerNestedModel2({this.nestedProperty2,this.multipleValues,this.testRange});
    SwaggerNestedModel2.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        nestedProperty2 = json['nestedProperty2'];
        multipleValues = json['multipleValues'];
        testRange = json['testRange'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'nestedProperty2': nestedProperty2,
        'multipleValues': multipleValues,
        'testRange': testRange
    };

    TypeContext context = _ctx;
}

enum MyEnum
{
    A,
    B,
    C,
}

class PgRockstar extends Rockstar implements IConvertible
{
    PgRockstar();
    PgRockstar.fromJson(Map<String, dynamic> json) : super.fromJson(json);
    fromMap(Map<String, dynamic> json) {
        super.fromMap(json);
        return this;
    }

    Map<String, dynamic> toJson() => super.toJson();
    TypeContext context = _ctx;
}

class CustomRockstar implements IConvertible
{
    // @AutoQueryViewerField(Title="Name")
    String firstName;

    // @AutoQueryViewerField(HideInSummary=true)
    String lastName;

    int age;
    // @AutoQueryViewerField(Title="Album")
    String rockstarAlbumName;

    // @AutoQueryViewerField(Title="Genre")
    String rockstarGenreName;

    CustomRockstar({this.firstName,this.lastName,this.age,this.rockstarAlbumName,this.rockstarGenreName});
    CustomRockstar.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        firstName = json['firstName'];
        lastName = json['lastName'];
        age = json['age'];
        rockstarAlbumName = json['rockstarAlbumName'];
        rockstarGenreName = json['rockstarGenreName'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'firstName': firstName,
        'lastName': lastName,
        'age': age,
        'rockstarAlbumName': rockstarAlbumName,
        'rockstarGenreName': rockstarGenreName
    };

    TypeContext context = _ctx;
}

abstract class IFilterRockstars
{
}

class Movie implements IConvertible
{
    int id;
    String imdbId;
    String title;
    String rating;
    double score;
    String director;
    DateTime releaseDate;
    String tagLine;
    List<String> genres;

    Movie({this.id,this.imdbId,this.title,this.rating,this.score,this.director,this.releaseDate,this.tagLine,this.genres});
    Movie.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        id = json['id'];
        imdbId = json['imdbId'];
        title = json['title'];
        rating = json['rating'];
        score = JsonConverters.toDouble(json['score']);
        director = json['director'];
        releaseDate = JsonConverters.fromJson(json['releaseDate'],'DateTime',context);
        tagLine = json['tagLine'];
        genres = JsonConverters.fromJson(json['genres'],'List<String>',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'id': id,
        'imdbId': imdbId,
        'title': title,
        'rating': rating,
        'score': score,
        'director': director,
        'releaseDate': JsonConverters.toJson(releaseDate,'DateTime',context),
        'tagLine': tagLine,
        'genres': JsonConverters.toJson(genres,'List<String>',context)
    };

    TypeContext context = _ctx;
}

class RockstarAlbum implements IConvertible
{
    int id;
    int rockstarId;
    String name;

    RockstarAlbum({this.id,this.rockstarId,this.name});
    RockstarAlbum.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        id = json['id'];
        rockstarId = json['rockstarId'];
        name = json['name'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'id': id,
        'rockstarId': rockstarId,
        'name': name
    };

    TypeContext context = _ctx;
}

class RockstarReference implements IConvertible
{
    int id;
    String firstName;
    String lastName;
    int age;
    List<RockstarAlbum> albums;

    RockstarReference({this.id,this.firstName,this.lastName,this.age,this.albums});
    RockstarReference.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        id = json['id'];
        firstName = json['firstName'];
        lastName = json['lastName'];
        age = json['age'];
        albums = JsonConverters.fromJson(json['albums'],'List<RockstarAlbum>',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'id': id,
        'firstName': firstName,
        'lastName': lastName,
        'age': age,
        'albums': JsonConverters.toJson(albums,'List<RockstarAlbum>',context)
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

class ChangeRequestResponse implements IConvertible
{
    String contentType;
    String header;
    String queryString;
    String form;
    ResponseStatus responseStatus;

    ChangeRequestResponse({this.contentType,this.header,this.queryString,this.form,this.responseStatus});
    ChangeRequestResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        contentType = json['contentType'];
        header = json['header'];
        queryString = json['queryString'];
        form = json['form'];
        responseStatus = JsonConverters.fromJson(json['responseStatus'],'ResponseStatus',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'contentType': contentType,
        'header': header,
        'queryString': queryString,
        'form': form,
        'responseStatus': JsonConverters.toJson(responseStatus,'ResponseStatus',context)
    };

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

// @Route("/alwaysthrows")
class AlwaysThrows implements IReturn<AlwaysThrows>, IConvertible
{
    AlwaysThrows();
    AlwaysThrows.fromJson(Map<String, dynamic> json) : super();
    fromMap(Map<String, dynamic> json) {
        return this;
    }

    Map<String, dynamic> toJson() => {};
    createResponse() { return new AlwaysThrows(); }
    String getTypeName() { return "AlwaysThrows"; }
    TypeContext context = _ctx;
}

// @Route("/alwaysthrowsfilterattribute")
class AlwaysThrowsFilterAttribute implements IReturn<AlwaysThrowsFilterAttribute>, IConvertible
{
    AlwaysThrowsFilterAttribute();
    AlwaysThrowsFilterAttribute.fromJson(Map<String, dynamic> json) : super();
    fromMap(Map<String, dynamic> json) {
        return this;
    }

    Map<String, dynamic> toJson() => {};
    createResponse() { return new AlwaysThrowsFilterAttribute(); }
    String getTypeName() { return "AlwaysThrowsFilterAttribute"; }
    TypeContext context = _ctx;
}

// @Route("/alwaysthrowsglobalfilter")
class AlwaysThrowsGlobalFilter implements IReturn<AlwaysThrowsGlobalFilter>, IConvertible
{
    AlwaysThrowsGlobalFilter();
    AlwaysThrowsGlobalFilter.fromJson(Map<String, dynamic> json) : super();
    fromMap(Map<String, dynamic> json) {
        return this;
    }

    Map<String, dynamic> toJson() => {};
    createResponse() { return new AlwaysThrowsGlobalFilter(); }
    String getTypeName() { return "AlwaysThrowsGlobalFilter"; }
    TypeContext context = _ctx;
}

class CustomFieldHttpErrorResponse implements IConvertible
{
    String custom;
    ResponseStatus responseStatus;

    CustomFieldHttpErrorResponse({this.custom,this.responseStatus});
    CustomFieldHttpErrorResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

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

class NoRepeatResponse implements IConvertible
{
    String id;

    NoRepeatResponse({this.id});
    NoRepeatResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        id = json['id'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'id': id
    };

    TypeContext context = _ctx;
}

class BatchThrowsResponse implements IConvertible
{
    String result;
    ResponseStatus responseStatus;

    BatchThrowsResponse({this.result,this.responseStatus});
    BatchThrowsResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

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

class ObjectDesignResponse implements IConvertible
{
    ObjectDesign data;

    ObjectDesignResponse({this.data});
    ObjectDesignResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        data = JsonConverters.fromJson(json['data'],'ObjectDesign',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'data': JsonConverters.toJson(data,'ObjectDesign',context)
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

class AutoQueryMetadataResponse implements IConvertible
{
    AutoQueryViewerConfig config;
    AutoQueryViewerUserInfo userInfo;
    List<AutoQueryOperation> operations;
    List<MetadataType> types;
    ResponseStatus responseStatus;
    Map<String,String> meta;

    AutoQueryMetadataResponse({this.config,this.userInfo,this.operations,this.types,this.responseStatus,this.meta});
    AutoQueryMetadataResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        config = JsonConverters.fromJson(json['config'],'AutoQueryViewerConfig',context);
        userInfo = JsonConverters.fromJson(json['userInfo'],'AutoQueryViewerUserInfo',context);
        operations = JsonConverters.fromJson(json['operations'],'List<AutoQueryOperation>',context);
        types = JsonConverters.fromJson(json['types'],'List<MetadataType>',context);
        responseStatus = JsonConverters.fromJson(json['responseStatus'],'ResponseStatus',context);
        meta = JsonConverters.toStringMap(json['meta']);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'config': JsonConverters.toJson(config,'AutoQueryViewerConfig',context),
        'userInfo': JsonConverters.toJson(userInfo,'AutoQueryViewerUserInfo',context),
        'operations': JsonConverters.toJson(operations,'List<AutoQueryOperation>',context),
        'types': JsonConverters.toJson(types,'List<MetadataType>',context),
        'responseStatus': JsonConverters.toJson(responseStatus,'ResponseStatus',context),
        'meta': meta
    };

    TypeContext context = _ctx;
}

// @DataContract
class HelloACodeGenTestResponse implements IConvertible
{
    /**
    * Description for FirstResult
    */
    // @DataMember
    int firstResult;

    /**
    * Description for SecondResult
    */
    // @DataMember
    // @ApiMember(Description="Description for SecondResult")
    int secondResult;

    HelloACodeGenTestResponse({this.firstResult,this.secondResult});
    HelloACodeGenTestResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        firstResult = json['firstResult'];
        secondResult = json['secondResult'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'firstResult': firstResult,
        'secondResult': secondResult
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

/**
* Description on HelloAllResponse type
*/
// @DataContract
class HelloAnnotatedResponse implements IConvertible
{
    // @DataMember
    String result;

    HelloAnnotatedResponse({this.result});
    HelloAnnotatedResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        result = json['result'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'result': result
    };

    TypeContext context = _ctx;
}

class HelloList implements IReturn<List<ListResult>>, IConvertible
{
    List<String> names;

    HelloList({this.names});
    HelloList.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        names = JsonConverters.fromJson(json['names'],'List<String>',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'names': JsonConverters.toJson(names,'List<String>',context)
    };

    createResponse() { return new List<ListResult>(); }
    String getTypeName() { return "HelloList"; }
    TypeContext context = _ctx;
}

class HelloArray implements IReturn<List<ArrayResult>>, IConvertible
{
    List<String> names;

    HelloArray({this.names});
    HelloArray.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        names = JsonConverters.fromJson(json['names'],'List<String>',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'names': JsonConverters.toJson(names,'List<String>',context)
    };

    createResponse() { return new List<ArrayResult>(); }
    String getTypeName() { return "HelloArray"; }
    TypeContext context = _ctx;
}

class HelloExistingResponse implements IConvertible
{
    HelloList helloList;
    HelloArray helloArray;
    List<ArrayResult> arrayResults;
    List<ListResult> listResults;

    HelloExistingResponse({this.helloList,this.helloArray,this.arrayResults,this.listResults});
    HelloExistingResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        helloList = JsonConverters.fromJson(json['helloList'],'HelloList',context);
        helloArray = JsonConverters.fromJson(json['helloArray'],'HelloArray',context);
        arrayResults = JsonConverters.fromJson(json['arrayResults'],'List<ArrayResult>',context);
        listResults = JsonConverters.fromJson(json['listResults'],'List<ListResult>',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'helloList': JsonConverters.toJson(helloList,'HelloList',context),
        'helloArray': JsonConverters.toJson(helloArray,'HelloArray',context),
        'arrayResults': JsonConverters.toJson(arrayResults,'List<ArrayResult>',context),
        'listResults': JsonConverters.toJson(listResults,'List<ListResult>',context)
    };

    TypeContext context = _ctx;
}

class AllTypes implements IReturn<AllTypes>, IConvertible
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
    KeyValuePair<String,String> keyValuePair;
    DateTime nullableDateTime;
    Duration nullableTimeSpan;
    List<String> stringList;
    List<String> stringArray;
    Map<String,String> stringMap;
    Map<int,String> intStringMap;
    SubType subType;
    String point;
    // @DataMember(Name="aliasedName")
    String originalName;

    AllTypes({this.id,this.nullableId,this.byte,this.short,this.Int,this.long,this.uShort,this.uInt,this.uLong,this.float,this.Double,this.decimal,this.string,this.dateTime,this.timeSpan,this.dateTimeOffset,this.guid,this.char,this.keyValuePair,this.nullableDateTime,this.nullableTimeSpan,this.stringList,this.stringArray,this.stringMap,this.intStringMap,this.subType,this.point,this.originalName});
    AllTypes.fromJson(Map<String, dynamic> json) { fromMap(json); }

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
        point = JsonConverters.fromJson(json['point'],'String',context);
        originalName = json['originalName'];
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
        'subType': JsonConverters.toJson(subType,'SubType',context),
        'point': JsonConverters.toJson(point,'String',context),
        'originalName': originalName
    };

    createResponse() { return new AllTypes(); }
    String getTypeName() { return "AllTypes"; }
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

class HelloStruct implements IReturn<HelloStruct>, IConvertible
{
    String point;
    String nullablePoint;

    HelloStruct({this.point,this.nullablePoint});
    HelloStruct.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        point = JsonConverters.fromJson(json['point'],'String',context);
        nullablePoint = JsonConverters.fromJson(json['nullablePoint'],'String',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'point': JsonConverters.toJson(point,'String',context),
        'nullablePoint': JsonConverters.toJson(nullablePoint,'String',context)
    };

    createResponse() { return new HelloStruct(); }
    String getTypeName() { return "HelloStruct"; }
    TypeContext context = _ctx;
}

class HelloSessionResponse implements IConvertible
{
    AuthUserSession result;

    HelloSessionResponse({this.result});
    HelloSessionResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        result = JsonConverters.fromJson(json['result'],'AuthUserSession',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'result': JsonConverters.toJson(result,'AuthUserSession',context)
    };

    TypeContext context = _ctx;
}

class HelloImplementsInterface implements IReturn<HelloImplementsInterface>, ImplementsPoco, IConvertible
{
    String name;

    HelloImplementsInterface({this.name});
    HelloImplementsInterface.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        name = json['name'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'name': name
    };

    createResponse() { return new HelloImplementsInterface(); }
    String getTypeName() { return "HelloImplementsInterface"; }
    TypeContext context = _ctx;
}

class Request1Response implements IConvertible
{
    TypeA test;

    Request1Response({this.test});
    Request1Response.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        test = JsonConverters.fromJson(json['test'],'TypeA',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'test': JsonConverters.toJson(test,'TypeA',context)
    };

    TypeContext context = _ctx;
}

class Request2Response implements IConvertible
{
    TypeA test;

    Request2Response({this.test});
    Request2Response.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        test = JsonConverters.fromJson(json['test'],'TypeA',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'test': JsonConverters.toJson(test,'TypeA',context)
    };

    TypeContext context = _ctx;
}

class HelloInnerTypesResponse implements IConvertible
{
    InnerType innerType;
    InnerEnum innerEnum;
    List<InnerTypeItem> innerList;

    HelloInnerTypesResponse({this.innerType,this.innerEnum,this.innerList});
    HelloInnerTypesResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        innerType = JsonConverters.fromJson(json['innerType'],'InnerType',context);
        innerEnum = JsonConverters.fromJson(json['innerEnum'],'InnerEnum',context);
        innerList = JsonConverters.fromJson(json['innerList'],'List<InnerTypeItem>',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'innerType': JsonConverters.toJson(innerType,'InnerType',context),
        'innerEnum': JsonConverters.toJson(innerEnum,'InnerEnum',context),
        'innerList': JsonConverters.toJson(innerList,'List<InnerTypeItem>',context)
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

// @DataContract
class QueryResponseTemplate<T> implements IConvertible
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

    QueryResponseTemplate({this.offset,this.total,this.results,this.meta,this.responseStatus});
    QueryResponseTemplate.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        offset = json['offset'];
        total = json['total'];
        results = JsonConverters.fromJson(json['results'],'List<${runtimeGenericTypeDefs(this,[0]).join(",")}>',context);
        meta = JsonConverters.toStringMap(json['meta']);
        responseStatus = JsonConverters.fromJson(json['responseStatus'],'ResponseStatus',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'offset': offset,
        'total': total,
        'results': JsonConverters.toJson(results,'List<T>',context),
        'meta': meta,
        'responseStatus': JsonConverters.toJson(responseStatus,'ResponseStatus',context)
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

class ExcludeTestNested implements IConvertible
{
    int id;

    ExcludeTestNested({this.id});
    ExcludeTestNested.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        id = json['id'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'id': id
    };

    TypeContext context = _ctx;
}

class RestrictLocalhost implements IReturn<RestrictLocalhost>, IConvertible
{
    int id;

    RestrictLocalhost({this.id});
    RestrictLocalhost.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        id = json['id'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'id': id
    };

    createResponse() { return new RestrictLocalhost(); }
    String getTypeName() { return "RestrictLocalhost"; }
    TypeContext context = _ctx;
}

class RestrictInternal implements IReturn<RestrictInternal>, IConvertible
{
    int id;

    RestrictInternal({this.id});
    RestrictInternal.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        id = json['id'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'id': id
    };

    createResponse() { return new RestrictInternal(); }
    String getTypeName() { return "RestrictInternal"; }
    TypeContext context = _ctx;
}

class HelloTuple implements IReturn<HelloTuple>, IConvertible
{
    Tuple2<String,int> tuple2;
    Tuple3<String,int,bool> tuple3;
    List<Tuple2<String,int>> tuples2;
    List<Tuple3<String,int,bool>> tuples3;

    HelloTuple({this.tuple2,this.tuple3,this.tuples2,this.tuples3});
    HelloTuple.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        tuple2 = JsonConverters.fromJson(json['tuple2'],'Tuple2<String,int>',context);
        tuple3 = JsonConverters.fromJson(json['tuple3'],'Tuple3<String,int,bool>',context);
        tuples2 = JsonConverters.fromJson(json['tuples2'],'List<Tuple2<String,int>>',context);
        tuples3 = JsonConverters.fromJson(json['tuples3'],'List<Tuple3<String,int,bool>>',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'tuple2': JsonConverters.toJson(tuple2,'Tuple2<String,int>',context),
        'tuple3': JsonConverters.toJson(tuple3,'Tuple3<String,int,bool>',context),
        'tuples2': JsonConverters.toJson(tuples2,'List<Tuple2<String,int>>',context),
        'tuples3': JsonConverters.toJson(tuples3,'List<Tuple3<String,int,bool>>',context)
    };

    createResponse() { return new HelloTuple(); }
    String getTypeName() { return "HelloTuple"; }
    TypeContext context = _ctx;
}

class HelloAuthenticatedResponse implements IConvertible
{
    int version;
    String sessionId;
    String userName;
    String email;
    bool isAuthenticated;
    ResponseStatus responseStatus;

    HelloAuthenticatedResponse({this.version,this.sessionId,this.userName,this.email,this.isAuthenticated,this.responseStatus});
    HelloAuthenticatedResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        version = json['version'];
        sessionId = json['sessionId'];
        userName = json['userName'];
        email = json['email'];
        isAuthenticated = json['isAuthenticated'];
        responseStatus = JsonConverters.fromJson(json['responseStatus'],'ResponseStatus',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'version': version,
        'sessionId': sessionId,
        'userName': userName,
        'email': email,
        'isAuthenticated': isAuthenticated,
        'responseStatus': JsonConverters.toJson(responseStatus,'ResponseStatus',context)
    };

    TypeContext context = _ctx;
}

class Echo implements IConvertible
{
    String sentence;

    Echo({this.sentence});
    Echo.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        sentence = json['sentence'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'sentence': sentence
    };

    TypeContext context = _ctx;
}

class ThrowHttpErrorResponse implements IConvertible
{
    ThrowHttpErrorResponse();
    ThrowHttpErrorResponse.fromJson(Map<String, dynamic> json) : super();
    fromMap(Map<String, dynamic> json) {
        return this;
    }

    Map<String, dynamic> toJson() => {};
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
    int age;
    String required;
    String email;
    ResponseStatus responseStatus;

    ThrowValidationResponse({this.age,this.required,this.email,this.responseStatus});
    ThrowValidationResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        age = json['age'];
        required = json['required'];
        email = json['email'];
        responseStatus = JsonConverters.fromJson(json['responseStatus'],'ResponseStatus',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'age': age,
        'required': required,
        'email': email,
        'responseStatus': JsonConverters.toJson(responseStatus,'ResponseStatus',context)
    };

    TypeContext context = _ctx;
}

class acsprofileResponse implements IConvertible
{
    String profileId;

    acsprofileResponse({this.profileId});
    acsprofileResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        profileId = json['profileId'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'profileId': profileId
    };

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

// @Route("/matchroute/html")
class MatchesHtml implements IReturn<MatchesHtml>, IConvertible
{
    String name;

    MatchesHtml({this.name});
    MatchesHtml.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        name = json['name'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'name': name
    };

    createResponse() { return new MatchesHtml(); }
    String getTypeName() { return "MatchesHtml"; }
    TypeContext context = _ctx;
}

// @Route("/matchroute/json")
class MatchesJson implements IReturn<MatchesJson>, IConvertible
{
    String name;

    MatchesJson({this.name});
    MatchesJson.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        name = json['name'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'name': name
    };

    createResponse() { return new MatchesJson(); }
    String getTypeName() { return "MatchesJson"; }
    TypeContext context = _ctx;
}

class TimestampData implements IConvertible
{
    int timestamp;

    TimestampData({this.timestamp});
    TimestampData.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        timestamp = json['timestamp'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'timestamp': timestamp
    };

    TypeContext context = _ctx;
}

// @Route("/test/html")
class TestHtml implements IReturn<TestHtml>, IConvertible
{
    String name;

    TestHtml({this.name});
    TestHtml.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        name = json['name'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'name': name
    };

    createResponse() { return new TestHtml(); }
    String getTypeName() { return "TestHtml"; }
    TypeContext context = _ctx;
}

class ViewResponse implements IConvertible
{
    String result;

    ViewResponse({this.result});
    ViewResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        result = json['result'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'result': result
    };

    TypeContext context = _ctx;
}

// @Route("/swagger/model")
class SwaggerModel implements IReturn<SwaggerModel>, IConvertible
{
    int Int;
    String string;
    DateTime dateTime;
    DateTime dateTimeOffset;
    Duration timeSpan;

    SwaggerModel({this.Int,this.string,this.dateTime,this.dateTimeOffset,this.timeSpan});
    SwaggerModel.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        Int = json['int'];
        string = json['string'];
        dateTime = JsonConverters.fromJson(json['dateTime'],'DateTime',context);
        dateTimeOffset = JsonConverters.fromJson(json['dateTimeOffset'],'DateTime',context);
        timeSpan = JsonConverters.fromJson(json['timeSpan'],'Duration',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'int': Int,
        'string': string,
        'dateTime': JsonConverters.toJson(dateTime,'DateTime',context),
        'dateTimeOffset': JsonConverters.toJson(dateTimeOffset,'DateTime',context),
        'timeSpan': JsonConverters.toJson(timeSpan,'Duration',context)
    };

    createResponse() { return new SwaggerModel(); }
    String getTypeName() { return "SwaggerModel"; }
    TypeContext context = _ctx;
}

// @Route("/plain-dto")
class PlainDto implements IReturn<PlainDto>, IConvertible
{
    String name;

    PlainDto({this.name});
    PlainDto.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        name = json['name'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'name': name
    };

    createResponse() { return new PlainDto(); }
    String getTypeName() { return "PlainDto"; }
    TypeContext context = _ctx;
}

// @Route("/httpresult-dto")
class HttpResultDto implements IReturn<HttpResultDto>, IConvertible
{
    String name;

    HttpResultDto({this.name});
    HttpResultDto.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        name = json['name'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'name': name
    };

    createResponse() { return new HttpResultDto(); }
    String getTypeName() { return "HttpResultDto"; }
    TypeContext context = _ctx;
}

// @Route("/restrict/mq")
class TestMqRestriction implements IReturn<TestMqRestriction>, IConvertible
{
    String name;

    TestMqRestriction({this.name});
    TestMqRestriction.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        name = json['name'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'name': name
    };

    createResponse() { return new TestMqRestriction(); }
    String getTypeName() { return "TestMqRestriction"; }
    TypeContext context = _ctx;
}

// @Route("/set-cache")
class SetCache implements IReturn<SetCache>, IConvertible
{
    String eTag;
    Duration age;
    Duration maxAge;
    DateTime expires;
    DateTime lastModified;
    CacheControl cacheControl;

    SetCache({this.eTag,this.age,this.maxAge,this.expires,this.lastModified,this.cacheControl});
    SetCache.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        eTag = json['eTag'];
        age = JsonConverters.fromJson(json['age'],'Duration',context);
        maxAge = JsonConverters.fromJson(json['maxAge'],'Duration',context);
        expires = JsonConverters.fromJson(json['expires'],'DateTime',context);
        lastModified = JsonConverters.fromJson(json['lastModified'],'DateTime',context);
        cacheControl = JsonConverters.fromJson(json['cacheControl'],'CacheControl',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'eTag': eTag,
        'age': JsonConverters.toJson(age,'Duration',context),
        'maxAge': JsonConverters.toJson(maxAge,'Duration',context),
        'expires': JsonConverters.toJson(expires,'DateTime',context),
        'lastModified': JsonConverters.toJson(lastModified,'DateTime',context),
        'cacheControl': JsonConverters.toJson(cacheControl,'CacheControl',context)
    };

    createResponse() { return new SetCache(); }
    String getTypeName() { return "SetCache"; }
    TypeContext context = _ctx;
}

class SwaggerComplexResponse implements IConvertible
{
    // @DataMember
    // @ApiMember()
    bool isRequired;

    // @DataMember
    // @ApiMember(IsRequired=true)
    List<String> arrayString;

    // @DataMember
    // @ApiMember()
    List<int> arrayInt;

    // @DataMember
    // @ApiMember()
    List<String> listString;

    // @DataMember
    // @ApiMember()
    List<int> listInt;

    // @DataMember
    // @ApiMember()
    Map<String,String> dictionaryString;

    SwaggerComplexResponse({this.isRequired,this.arrayString,this.arrayInt,this.listString,this.listInt,this.dictionaryString});
    SwaggerComplexResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        isRequired = json['isRequired'];
        arrayString = JsonConverters.fromJson(json['arrayString'],'List<String>',context);
        arrayInt = JsonConverters.fromJson(json['arrayInt'],'List<int>',context);
        listString = JsonConverters.fromJson(json['listString'],'List<String>',context);
        listInt = JsonConverters.fromJson(json['listInt'],'List<int>',context);
        dictionaryString = JsonConverters.toStringMap(json['dictionaryString']);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'isRequired': isRequired,
        'arrayString': JsonConverters.toJson(arrayString,'List<String>',context),
        'arrayInt': JsonConverters.toJson(arrayInt,'List<int>',context),
        'listString': JsonConverters.toJson(listString,'List<String>',context),
        'listInt': JsonConverters.toJson(listInt,'List<int>',context),
        'dictionaryString': dictionaryString
    };

    TypeContext context = _ctx;
}

/**
* Api GET All
*/
// @Route("/swaggerexamples", "GET")
// @Api(Description="Api GET All")
class GetSwaggerExamples implements IReturn<GetSwaggerExamples>, IConvertible
{
    String Get;

    GetSwaggerExamples({this.Get});
    GetSwaggerExamples.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        Get = json['get'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'get': Get
    };

    createResponse() { return new GetSwaggerExamples(); }
    String getTypeName() { return "GetSwaggerExamples"; }
    TypeContext context = _ctx;
}

/**
* Api GET Id
*/
// @Route("/swaggerexamples/{Id}", "GET")
// @Api(Description="Api GET Id")
class GetSwaggerExample implements IReturn<GetSwaggerExample>, IConvertible
{
    int id;
    String Get;

    GetSwaggerExample({this.id,this.Get});
    GetSwaggerExample.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        id = json['id'];
        Get = json['get'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'id': id,
        'get': Get
    };

    createResponse() { return new GetSwaggerExample(); }
    String getTypeName() { return "GetSwaggerExample"; }
    TypeContext context = _ctx;
}

/**
* Api POST
*/
// @Route("/swaggerexamples", "POST")
// @Api(Description="Api POST")
class PostSwaggerExamples implements IReturn<PostSwaggerExamples>, IConvertible
{
    String post;

    PostSwaggerExamples({this.post});
    PostSwaggerExamples.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        post = json['post'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'post': post
    };

    createResponse() { return new PostSwaggerExamples(); }
    String getTypeName() { return "PostSwaggerExamples"; }
    TypeContext context = _ctx;
}

/**
* Api PUT Id
*/
// @Route("/swaggerexamples/{Id}", "PUT")
// @Api(Description="Api PUT Id")
class PutSwaggerExample implements IReturn<PutSwaggerExample>, IConvertible
{
    int id;
    String Get;

    PutSwaggerExample({this.id,this.Get});
    PutSwaggerExample.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        id = json['id'];
        Get = json['get'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'id': id,
        'get': Get
    };

    createResponse() { return new PutSwaggerExample(); }
    String getTypeName() { return "PutSwaggerExample"; }
    TypeContext context = _ctx;
}

// @Route("/lists", "GET")
class GetLists implements IReturn<GetLists>, IConvertible
{
    String id;

    GetLists({this.id});
    GetLists.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        id = json['id'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'id': id
    };

    createResponse() { return new GetLists(); }
    String getTypeName() { return "GetLists"; }
    TypeContext context = _ctx;
}

// @Route("/anontype")
class AnonType implements IConvertible
{
    AnonType();
    AnonType.fromJson(Map<String, dynamic> json) : super();
    fromMap(Map<String, dynamic> json) {
        return this;
    }

    Map<String, dynamic> toJson() => {};
    TypeContext context = _ctx;
}

// @Route("/query/requestlogs")
// @Route("/query/requestlogs/{Date}")
class QueryRequestLogs extends QueryData<RequestLogEntry> implements IReturn<QueryResponse<RequestLogEntry>>, IConvertible
{
    DateTime date;
    bool viewErrors;

    QueryRequestLogs({this.date,this.viewErrors});
    QueryRequestLogs.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        super.fromMap(json);
        date = JsonConverters.fromJson(json['date'],'DateTime',context);
        viewErrors = json['viewErrors'];
        return this;
    }

    Map<String, dynamic> toJson() => super.toJson()..addAll({
        'date': JsonConverters.toJson(date,'DateTime',context),
        'viewErrors': viewErrors
    });

    createResponse() { return new QueryResponse<RequestLogEntry>(); }
    String getTypeName() { return "QueryRequestLogs"; }
    TypeContext context = _ctx;
}

// @AutoQueryViewer(Name="Today's Logs", Title="Logs from Today")
class TodayLogs extends QueryData<RequestLogEntry> implements IReturn<QueryResponse<RequestLogEntry>>, IConvertible
{
    TodayLogs();
    TodayLogs.fromJson(Map<String, dynamic> json) : super.fromJson(json);
    fromMap(Map<String, dynamic> json) {
        super.fromMap(json);
        return this;
    }

    Map<String, dynamic> toJson() => super.toJson();
    createResponse() { return new QueryResponse<RequestLogEntry>(); }
    String getTypeName() { return "TodayLogs"; }
    TypeContext context = _ctx;
}

class TodayErrorLogs extends QueryData<RequestLogEntry> implements IReturn<QueryResponse<RequestLogEntry>>, IConvertible
{
    TodayErrorLogs();
    TodayErrorLogs.fromJson(Map<String, dynamic> json) : super.fromJson(json);
    fromMap(Map<String, dynamic> json) {
        super.fromMap(json);
        return this;
    }

    Map<String, dynamic> toJson() => super.toJson();
    createResponse() { return new QueryResponse<RequestLogEntry>(); }
    String getTypeName() { return "TodayErrorLogs"; }
    TypeContext context = _ctx;
}

class YesterdayLogs extends QueryData<RequestLogEntry> implements IReturn<QueryResponse<RequestLogEntry>>, IConvertible
{
    YesterdayLogs();
    YesterdayLogs.fromJson(Map<String, dynamic> json) : super.fromJson(json);
    fromMap(Map<String, dynamic> json) {
        super.fromMap(json);
        return this;
    }

    Map<String, dynamic> toJson() => super.toJson();
    createResponse() { return new QueryResponse<RequestLogEntry>(); }
    String getTypeName() { return "YesterdayLogs"; }
    TypeContext context = _ctx;
}

class YesterdayErrorLogs extends QueryData<RequestLogEntry> implements IReturn<QueryResponse<RequestLogEntry>>, IConvertible
{
    YesterdayErrorLogs();
    YesterdayErrorLogs.fromJson(Map<String, dynamic> json) : super.fromJson(json);
    fromMap(Map<String, dynamic> json) {
        super.fromMap(json);
        return this;
    }

    Map<String, dynamic> toJson() => super.toJson();
    createResponse() { return new QueryResponse<RequestLogEntry>(); }
    String getTypeName() { return "YesterdayErrorLogs"; }
    TypeContext context = _ctx;
}

// @Route("/query/rockstars")
class QueryRockstars extends QueryDb1<Rockstar> implements IReturn<QueryResponse<Rockstar>>, IConvertible
{
    int age;

    QueryRockstars({this.age});
    QueryRockstars.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        super.fromMap(json);
        age = json['age'];
        return this;
    }

    Map<String, dynamic> toJson() => super.toJson()..addAll({
        'age': age
    });

    createResponse() { return new QueryResponse<Rockstar>(); }
    String getTypeName() { return "QueryRockstars"; }
    TypeContext context = _ctx;
}

// @Route("/query/rockstars/cached")
class QueryRockstarsCached extends QueryDb1<Rockstar> implements IReturn<QueryResponse<Rockstar>>, IConvertible
{
    int age;

    QueryRockstarsCached({this.age});
    QueryRockstarsCached.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        super.fromMap(json);
        age = json['age'];
        return this;
    }

    Map<String, dynamic> toJson() => super.toJson()..addAll({
        'age': age
    });

    createResponse() { return new QueryResponse<Rockstar>(); }
    String getTypeName() { return "QueryRockstarsCached"; }
    TypeContext context = _ctx;
}

// @Route("/changerequest/{Id}")
class ChangeRequest implements IReturn<ChangeRequestResponse>, IConvertible
{
    String id;

    ChangeRequest({this.id});
    ChangeRequest.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        id = json['id'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'id': id
    };

    createResponse() { return new ChangeRequestResponse(); }
    String getTypeName() { return "ChangeRequest"; }
    TypeContext context = _ctx;
}

// @Route("/compress/{Path*}")
class CompressFile implements IConvertible
{
    String path;

    CompressFile({this.path});
    CompressFile.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        path = json['path'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'path': path
    };

    TypeContext context = _ctx;
}

// @Route("/Routing/LeadPost.aspx")
class LegacyLeadPost implements IConvertible
{
    String leadType;
    int myId;

    LegacyLeadPost({this.leadType,this.myId});
    LegacyLeadPost.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        leadType = json['leadType'];
        myId = json['myId'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'leadType': leadType,
        'myId': myId
    };

    TypeContext context = _ctx;
}

// @Route("/info/{Id}")
class Info implements IConvertible
{
    String id;

    Info({this.id});
    Info.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        id = json['id'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'id': id
    };

    TypeContext context = _ctx;
}

class CustomHttpError implements IReturn<CustomHttpErrorResponse>, IConvertible
{
    int statusCode;
    String statusDescription;

    CustomHttpError({this.statusCode,this.statusDescription});
    CustomHttpError.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        statusCode = json['statusCode'];
        statusDescription = json['statusDescription'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'statusCode': statusCode,
        'statusDescription': statusDescription
    };

    createResponse() { return new CustomHttpErrorResponse(); }
    String getTypeName() { return "CustomHttpError"; }
    TypeContext context = _ctx;
}

class CustomFieldHttpError implements IReturn<CustomFieldHttpErrorResponse>, IConvertible
{
    CustomFieldHttpError();
    CustomFieldHttpError.fromJson(Map<String, dynamic> json) : super();
    fromMap(Map<String, dynamic> json) {
        return this;
    }

    Map<String, dynamic> toJson() => {};
    createResponse() { return new CustomFieldHttpErrorResponse(); }
    String getTypeName() { return "CustomFieldHttpError"; }
    TypeContext context = _ctx;
}

class FallbackRoute implements IConvertible
{
    String pathInfo;

    FallbackRoute({this.pathInfo});
    FallbackRoute.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        pathInfo = json['pathInfo'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'pathInfo': pathInfo
    };

    TypeContext context = _ctx;
}

class NoRepeat implements IReturn<NoRepeatResponse>, IConvertible
{
    String id;

    NoRepeat({this.id});
    NoRepeat.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        id = json['id'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'id': id
    };

    createResponse() { return new NoRepeatResponse(); }
    String getTypeName() { return "NoRepeat"; }
    TypeContext context = _ctx;
}

class BatchThrows implements IReturn<BatchThrowsResponse>, IConvertible
{
    int id;
    String name;

    BatchThrows({this.id,this.name});
    BatchThrows.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        id = json['id'];
        name = json['name'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'id': id,
        'name': name
    };

    createResponse() { return new BatchThrowsResponse(); }
    String getTypeName() { return "BatchThrows"; }
    TypeContext context = _ctx;
}

class BatchThrowsAsync implements IReturn<BatchThrowsResponse>, IConvertible
{
    int id;
    String name;

    BatchThrowsAsync({this.id,this.name});
    BatchThrowsAsync.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        id = json['id'];
        name = json['name'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'id': id,
        'name': name
    };

    createResponse() { return new BatchThrowsResponse(); }
    String getTypeName() { return "BatchThrowsAsync"; }
    TypeContext context = _ctx;
}

// @Route("/code/object", "GET")
class ObjectId implements IReturn<ObjectDesignResponse>, IConvertible
{
    String objectName;

    ObjectId({this.objectName});
    ObjectId.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        objectName = json['objectName'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'objectName': objectName
    };

    createResponse() { return new ObjectDesignResponse(); }
    String getTypeName() { return "ObjectId"; }
    TypeContext context = _ctx;
}

// @Route("/jwt")
class CreateJwt extends AuthUserSession implements IReturn<CreateJwtResponse>, IConvertible
{
    DateTime jwtExpiry;

    CreateJwt({this.jwtExpiry});
    CreateJwt.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        super.fromMap(json);
        jwtExpiry = JsonConverters.fromJson(json['jwtExpiry'],'DateTime',context);
        return this;
    }

    Map<String, dynamic> toJson() => super.toJson()..addAll({
        'jwtExpiry': JsonConverters.toJson(jwtExpiry,'DateTime',context)
    });

    createResponse() { return new CreateJwtResponse(); }
    String getTypeName() { return "CreateJwt"; }
    TypeContext context = _ctx;
}

// @Route("/jwt-refresh")
class CreateRefreshJwt implements IReturn<CreateRefreshJwtResponse>, IConvertible
{
    String userAuthId;
    DateTime jwtExpiry;

    CreateRefreshJwt({this.userAuthId,this.jwtExpiry});
    CreateRefreshJwt.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        userAuthId = json['userAuthId'];
        jwtExpiry = JsonConverters.fromJson(json['jwtExpiry'],'DateTime',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'userAuthId': userAuthId,
        'jwtExpiry': JsonConverters.toJson(jwtExpiry,'DateTime',context)
    };

    createResponse() { return new CreateRefreshJwtResponse(); }
    String getTypeName() { return "CreateRefreshJwt"; }
    TypeContext context = _ctx;
}

class MetadataTest implements IReturn<MetadataTestResponse>, IConvertible
{
    int id;

    MetadataTest({this.id});
    MetadataTest.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        id = json['id'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'id': id
    };

    createResponse() { return new MetadataTestResponse(); }
    String getTypeName() { return "MetadataTest"; }
    TypeContext context = _ctx;
}

// @Route("/example", "GET")
// @DataContract
class GetExample implements IReturn<GetExampleResponse>, IConvertible
{
    GetExample();
    GetExample.fromJson(Map<String, dynamic> json) : super();
    fromMap(Map<String, dynamic> json) {
        return this;
    }

    Map<String, dynamic> toJson() => {};
    createResponse() { return new GetExampleResponse(); }
    String getTypeName() { return "GetExample"; }
    TypeContext context = _ctx;
}

class MetadataRequest implements IReturn<AutoQueryMetadataResponse>, IConvertible
{
    MetadataType metadataType;

    MetadataRequest({this.metadataType});
    MetadataRequest.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        metadataType = JsonConverters.fromJson(json['metadataType'],'MetadataType',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'metadataType': JsonConverters.toJson(metadataType,'MetadataType',context)
    };

    createResponse() { return new AutoQueryMetadataResponse(); }
    String getTypeName() { return "MetadataRequest"; }
    TypeContext context = _ctx;
}

class ExcludeMetadataProperty implements IConvertible
{
    int id;

    ExcludeMetadataProperty({this.id});
    ExcludeMetadataProperty.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        id = json['id'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'id': id
    };

    TypeContext context = _ctx;
}

// @Route("/namedconnection")
class NamedConnection implements IConvertible
{
    String emailAddresses;

    NamedConnection({this.emailAddresses});
    NamedConnection.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        emailAddresses = json['emailAddresses'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'emailAddresses': emailAddresses
    };

    TypeContext context = _ctx;
}

/**
* Description for HelloACodeGenTest
*/
class HelloACodeGenTest implements IReturn<HelloACodeGenTestResponse>, IConvertible
{
    /**
    * Description for FirstField
    */
    int firstField;
    List<String> secondFields;

    HelloACodeGenTest({this.firstField,this.secondFields});
    HelloACodeGenTest.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        firstField = json['firstField'];
        secondFields = JsonConverters.fromJson(json['secondFields'],'List<String>',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'firstField': firstField,
        'secondFields': JsonConverters.toJson(secondFields,'List<String>',context)
    };

    createResponse() { return new HelloACodeGenTestResponse(); }
    String getTypeName() { return "HelloACodeGenTest"; }
    TypeContext context = _ctx;
}

class HelloInService implements IReturn<HelloResponse>, IConvertible
{
    String name;

    HelloInService({this.name});
    HelloInService.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        name = json['name'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'name': name
    };

    createResponse() { return new HelloResponse(); }
    String getTypeName() { return "NativeTypesTestService.HelloInService"; }
    TypeContext context = _ctx;
}

// @Route("/hello")
// @Route("/hello/{Name}")
class Hello implements IReturn<HelloResponse>, IConvertible
{
    // @Required()
    String name;

    String title;

    Hello({this.name,this.title});
    Hello.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        name = json['name'];
        title = json['title'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'name': name,
        'title': title
    };

    createResponse() { return new HelloResponse(); }
    String getTypeName() { return "Hello"; }
    TypeContext context = _ctx;
}

/**
* Description on HelloAll type
*/
// @DataContract
class HelloAnnotated implements IReturn<HelloAnnotatedResponse>, IConvertible
{
    // @DataMember
    String name;

    HelloAnnotated({this.name});
    HelloAnnotated.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        name = json['name'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'name': name
    };

    createResponse() { return new HelloAnnotatedResponse(); }
    String getTypeName() { return "HelloAnnotated"; }
    TypeContext context = _ctx;
}

class HelloWithNestedClass implements IReturn<HelloResponse>, IConvertible
{
    String name;
    NestedClass nestedClassProp;

    HelloWithNestedClass({this.name,this.nestedClassProp});
    HelloWithNestedClass.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        name = json['name'];
        nestedClassProp = JsonConverters.fromJson(json['nestedClassProp'],'NestedClass',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'name': name,
        'nestedClassProp': JsonConverters.toJson(nestedClassProp,'NestedClass',context)
    };

    createResponse() { return new HelloResponse(); }
    String getTypeName() { return "HelloWithNestedClass"; }
    TypeContext context = _ctx;
}

class HelloReturnList implements IReturn<List<OnlyInReturnListArg>>, IConvertible
{
    List<String> names;

    HelloReturnList({this.names});
    HelloReturnList.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        names = JsonConverters.fromJson(json['names'],'List<String>',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'names': JsonConverters.toJson(names,'List<String>',context)
    };

    createResponse() { return new List<OnlyInReturnListArg>(); }
    String getTypeName() { return "HelloReturnList"; }
    TypeContext context = _ctx;
}

class HelloExisting implements IReturn<HelloExistingResponse>, IConvertible
{
    List<String> names;

    HelloExisting({this.names});
    HelloExisting.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        names = JsonConverters.fromJson(json['names'],'List<String>',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'names': JsonConverters.toJson(names,'List<String>',context)
    };

    createResponse() { return new HelloExistingResponse(); }
    String getTypeName() { return "HelloExisting"; }
    TypeContext context = _ctx;
}

class HelloWithEnum implements IConvertible
{
    EnumType enumProp;
    EnumWithValues enumWithValues;
    EnumType nullableEnumProp;
    EnumFlags enumFlags;

    HelloWithEnum({this.enumProp,this.enumWithValues,this.nullableEnumProp,this.enumFlags});
    HelloWithEnum.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        enumProp = JsonConverters.fromJson(json['enumProp'],'EnumType',context);
        enumWithValues = JsonConverters.fromJson(json['enumWithValues'],'EnumWithValues',context);
        nullableEnumProp = JsonConverters.fromJson(json['nullableEnumProp'],'EnumType',context);
        enumFlags = JsonConverters.fromJson(json['enumFlags'],'EnumFlags',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'enumProp': JsonConverters.toJson(enumProp,'EnumType',context),
        'enumWithValues': JsonConverters.toJson(enumWithValues,'EnumWithValues',context),
        'nullableEnumProp': JsonConverters.toJson(nullableEnumProp,'EnumType',context),
        'enumFlags': JsonConverters.toJson(enumFlags,'EnumFlags',context)
    };

    TypeContext context = _ctx;
}

class RestrictedAttributes implements IConvertible
{
    int id;
    String name;
    Hello hello;

    RestrictedAttributes({this.id,this.name,this.hello});
    RestrictedAttributes.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        id = json['id'];
        name = json['name'];
        hello = JsonConverters.fromJson(json['hello'],'Hello',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'hello': JsonConverters.toJson(hello,'Hello',context)
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
    // @DataMember
    // @Required()
    int id;

    /**
    * Range Description
    */
    // @DataMember(Name="Aliased")
    // @ApiMember(DataType="double", Description="Range Description", IsRequired=true, ParameterType="path")
    double range;

    AllowedAttributes({this.id,this.range});
    AllowedAttributes.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        id = json['id'];
        range = JsonConverters.toDouble(json['range']);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'id': id,
        'range': range
    };

    TypeContext context = _ctx;
}

/**
* Multi Line Class
*/
// @Api(Description="Multi Line Class")
class HelloMultiline implements IConvertible
{
    /**
    * Multi Line Property
    */
    // @ApiMember(Description="Multi Line Property")
    String overflow;

    HelloMultiline({this.overflow});
    HelloMultiline.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        overflow = json['overflow'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'overflow': overflow
    };

    TypeContext context = _ctx;
}

class HelloAllTypes implements IReturn<HelloAllTypesResponse>, IConvertible
{
    String name;
    AllTypes allTypes;
    AllCollectionTypes allCollectionTypes;

    HelloAllTypes({this.name,this.allTypes,this.allCollectionTypes});
    HelloAllTypes.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        name = json['name'];
        allTypes = JsonConverters.fromJson(json['allTypes'],'AllTypes',context);
        allCollectionTypes = JsonConverters.fromJson(json['allCollectionTypes'],'AllCollectionTypes',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
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
    String name;

    HelloString({this.name});
    HelloString.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        name = json['name'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'name': name
    };

    createResponse() { return ""; }
    String getTypeName() { return "HelloString"; }
    TypeContext context = _ctx;
}

class HelloVoid implements IReturnVoid, IConvertible
{
    String name;

    HelloVoid({this.name});
    HelloVoid.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        name = json['name'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'name': name
    };

    createResponse() {}
    String getTypeName() { return "HelloVoid"; }
    TypeContext context = _ctx;
}

// @DataContract
class HelloWithDataContract implements IReturn<HelloWithDataContractResponse>, IConvertible
{
    // @DataMember(Name="name", Order=1, IsRequired=true, EmitDefaultValue=false)
    String name;

    // @DataMember(Name="id", Order=2, EmitDefaultValue=false)
    int id;

    HelloWithDataContract({this.name,this.id});
    HelloWithDataContract.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        name = json['name'];
        id = json['id'];
        return this;
    }

    Map<String, dynamic> toJson() => {
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
    String name;

    HelloWithDescription({this.name});
    HelloWithDescription.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        name = json['name'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'name': name
    };

    createResponse() { return new HelloWithDescriptionResponse(); }
    String getTypeName() { return "HelloWithDescription"; }
    TypeContext context = _ctx;
}

class HelloWithInheritance extends HelloBase implements IReturn<HelloWithInheritanceResponse>, IConvertible
{
    String name;

    HelloWithInheritance({this.name});
    HelloWithInheritance.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        super.fromMap(json);
        name = json['name'];
        return this;
    }

    Map<String, dynamic> toJson() => super.toJson()..addAll({
        'name': name
    });

    createResponse() { return new HelloWithInheritanceResponse(); }
    String getTypeName() { return "HelloWithInheritance"; }
    TypeContext context = _ctx;
}

class HelloWithGenericInheritance extends HelloBase1<Poco> implements IConvertible
{
    String result;

    HelloWithGenericInheritance({this.result});
    HelloWithGenericInheritance.fromJson(Map<String, dynamic> json) { fromMap(json); }

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

class HelloWithGenericInheritance2 extends HelloBase1<Hello> implements IConvertible
{
    String result;

    HelloWithGenericInheritance2({this.result});
    HelloWithGenericInheritance2.fromJson(Map<String, dynamic> json) { fromMap(json); }

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

class HelloWithNestedInheritance extends HelloBase1<Item> implements IConvertible
{
    HelloWithNestedInheritance();
    HelloWithNestedInheritance.fromJson(Map<String, dynamic> json) : super.fromJson(json);
    fromMap(Map<String, dynamic> json) {
        super.fromMap(json);
        return this;
    }

    Map<String, dynamic> toJson() => super.toJson();
    TypeContext context = _ctx;
}

class HelloWithListInheritance extends ListBase<InheritedItem> implements IConvertible
{
    final List<InheritedItem> l = [];
    void set length(int newLength) { l.length = newLength; }
    int get length => l.length;
    InheritedItem operator [](int index) => l[index];
    void operator []=(int index, InheritedItem value) { l[index] = value; }
    HelloWithListInheritance();
    HelloWithListInheritance.fromJson(Map<String, dynamic> json) : super();
    fromMap(Map<String, dynamic> json) {
        return this;
    }

    Map<String, dynamic> toJson() => {};
    TypeContext context = _ctx;
}

class HelloWithReturn implements IReturn<HelloWithAlternateReturnResponse>, IConvertible
{
    String name;

    HelloWithReturn({this.name});
    HelloWithReturn.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        name = json['name'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'name': name
    };

    createResponse() { return new HelloWithAlternateReturnResponse(); }
    String getTypeName() { return "HelloWithReturn"; }
    TypeContext context = _ctx;
}

// @Route("/helloroute")
class HelloWithRoute implements IReturn<HelloWithRouteResponse>, IConvertible
{
    String name;

    HelloWithRoute({this.name});
    HelloWithRoute.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        name = json['name'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'name': name
    };

    createResponse() { return new HelloWithRouteResponse(); }
    String getTypeName() { return "HelloWithRoute"; }
    TypeContext context = _ctx;
}

class HelloWithType implements IReturn<HelloWithTypeResponse>, IConvertible
{
    String name;

    HelloWithType({this.name});
    HelloWithType.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        name = json['name'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'name': name
    };

    createResponse() { return new HelloWithTypeResponse(); }
    String getTypeName() { return "HelloWithType"; }
    TypeContext context = _ctx;
}

class HelloSession implements IReturn<HelloSessionResponse>, IConvertible
{
    HelloSession();
    HelloSession.fromJson(Map<String, dynamic> json) : super();
    fromMap(Map<String, dynamic> json) {
        return this;
    }

    Map<String, dynamic> toJson() => {};
    createResponse() { return new HelloSessionResponse(); }
    String getTypeName() { return "HelloSession"; }
    TypeContext context = _ctx;
}

class HelloInterface implements IConvertible
{
    IPoco poco;
    IEmptyInterface emptyInterface;
    EmptyClass emptyClass;
    String value;

    HelloInterface({this.poco,this.emptyInterface,this.emptyClass,this.value});
    HelloInterface.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        poco = JsonConverters.fromJson(json['poco'],'IPoco',context);
        emptyInterface = JsonConverters.fromJson(json['emptyInterface'],'IEmptyInterface',context);
        emptyClass = JsonConverters.fromJson(json['emptyClass'],'EmptyClass',context);
        value = json['value'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'poco': JsonConverters.toJson(poco,'IPoco',context),
        'emptyInterface': JsonConverters.toJson(emptyInterface,'IEmptyInterface',context),
        'emptyClass': JsonConverters.toJson(emptyClass,'EmptyClass',context),
        'value': value
    };

    TypeContext context = _ctx;
}

class Request1 implements IReturn<Request1Response>, IConvertible
{
    TypeA test;

    Request1({this.test});
    Request1.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        test = JsonConverters.fromJson(json['test'],'TypeA',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'test': JsonConverters.toJson(test,'TypeA',context)
    };

    createResponse() { return new Request1Response(); }
    String getTypeName() { return "Request1"; }
    TypeContext context = _ctx;
}

class Request2 implements IReturn<Request2Response>, IConvertible
{
    TypeA test;

    Request2({this.test});
    Request2.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        test = JsonConverters.fromJson(json['test'],'TypeA',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'test': JsonConverters.toJson(test,'TypeA',context)
    };

    createResponse() { return new Request2Response(); }
    String getTypeName() { return "Request2"; }
    TypeContext context = _ctx;
}

class HelloInnerTypes implements IReturn<HelloInnerTypesResponse>, IConvertible
{
    HelloInnerTypes();
    HelloInnerTypes.fromJson(Map<String, dynamic> json) : super();
    fromMap(Map<String, dynamic> json) {
        return this;
    }

    Map<String, dynamic> toJson() => {};
    createResponse() { return new HelloInnerTypesResponse(); }
    String getTypeName() { return "HelloInnerTypes"; }
    TypeContext context = _ctx;
}

class GetUserSession implements IReturn<CustomUserSession>, IConvertible
{
    GetUserSession();
    GetUserSession.fromJson(Map<String, dynamic> json) : super();
    fromMap(Map<String, dynamic> json) {
        return this;
    }

    Map<String, dynamic> toJson() => {};
    createResponse() { return new CustomUserSession(); }
    String getTypeName() { return "GetUserSession"; }
    TypeContext context = _ctx;
}

class QueryTemplate implements IReturn<QueryResponseTemplate<Poco>>, IConvertible
{
    QueryTemplate();
    QueryTemplate.fromJson(Map<String, dynamic> json) : super();
    fromMap(Map<String, dynamic> json) {
        return this;
    }

    Map<String, dynamic> toJson() => {};
    createResponse() { return new QueryResponseTemplate<Poco>(); }
    String getTypeName() { return "QueryTemplate"; }
    TypeContext context = _ctx;
}

class HelloReserved implements IConvertible
{
    String Class;
    String type;
    String extension;

    HelloReserved({this.Class,this.type,this.extension});
    HelloReserved.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        Class = json['class'];
        type = json['type'];
        extension = json['extension'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'class': Class,
        'type': type,
        'extension': extension
    };

    TypeContext context = _ctx;
}

class HelloDictionary implements IReturn<Map<String,String>>, IConvertible
{
    String key;
    String value;

    HelloDictionary({this.key,this.value});
    HelloDictionary.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        key = json['key'];
        value = json['value'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'key': key,
        'value': value
    };

    createResponse() { return new Map<String,String>(); }
    String getTypeName() { return "HelloDictionary"; }
    TypeContext context = _ctx;
}

class HelloBuiltin implements IConvertible
{
    DayOfWeek dayOfWeek;

    HelloBuiltin({this.dayOfWeek});
    HelloBuiltin.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        dayOfWeek = JsonConverters.fromJson(json['dayOfWeek'],'DayOfWeek',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'dayOfWeek': JsonConverters.toJson(dayOfWeek,'DayOfWeek',context)
    };

    TypeContext context = _ctx;
}

class HelloGet implements IReturn<HelloVerbResponse>, IGet, IConvertible
{
    int id;

    HelloGet({this.id});
    HelloGet.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        id = json['id'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'id': id
    };

    createResponse() { return new HelloVerbResponse(); }
    String getTypeName() { return "HelloGet"; }
    TypeContext context = _ctx;
}

class HelloPost extends HelloBase implements IReturn<HelloVerbResponse>, IPost, IConvertible
{
    HelloPost();
    HelloPost.fromJson(Map<String, dynamic> json) : super.fromJson(json);
    fromMap(Map<String, dynamic> json) {
        super.fromMap(json);
        return this;
    }

    Map<String, dynamic> toJson() => super.toJson();
    createResponse() { return new HelloVerbResponse(); }
    String getTypeName() { return "HelloPost"; }
    TypeContext context = _ctx;
}

class HelloPut implements IReturn<HelloVerbResponse>, IPut, IConvertible
{
    int id;

    HelloPut({this.id});
    HelloPut.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        id = json['id'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'id': id
    };

    createResponse() { return new HelloVerbResponse(); }
    String getTypeName() { return "HelloPut"; }
    TypeContext context = _ctx;
}

class HelloDelete implements IReturn<HelloVerbResponse>, IDelete, IConvertible
{
    int id;

    HelloDelete({this.id});
    HelloDelete.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        id = json['id'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'id': id
    };

    createResponse() { return new HelloVerbResponse(); }
    String getTypeName() { return "HelloDelete"; }
    TypeContext context = _ctx;
}

class HelloPatch implements IReturn<HelloVerbResponse>, IPatch, IConvertible
{
    int id;

    HelloPatch({this.id});
    HelloPatch.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        id = json['id'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'id': id
    };

    createResponse() { return new HelloVerbResponse(); }
    String getTypeName() { return "HelloPatch"; }
    TypeContext context = _ctx;
}

class HelloReturnVoid implements IReturnVoid, IConvertible
{
    int id;

    HelloReturnVoid({this.id});
    HelloReturnVoid.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        id = json['id'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'id': id
    };

    createResponse() {}
    String getTypeName() { return "HelloReturnVoid"; }
    TypeContext context = _ctx;
}

class EnumRequest implements IReturn<EnumResponse>, IPut, IConvertible
{
    ScopeType Operator;

    EnumRequest({this.Operator});
    EnumRequest.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        Operator = JsonConverters.fromJson(json['operator'],'ScopeType',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'operator': JsonConverters.toJson(Operator,'ScopeType',context)
    };

    createResponse() { return new EnumResponse(); }
    String getTypeName() { return "EnumRequest"; }
    TypeContext context = _ctx;
}

class ExcludeTest1 implements IReturn<ExcludeTestNested>, IConvertible
{
    ExcludeTest1();
    ExcludeTest1.fromJson(Map<String, dynamic> json) : super();
    fromMap(Map<String, dynamic> json) {
        return this;
    }

    Map<String, dynamic> toJson() => {};
    createResponse() { return new ExcludeTestNested(); }
    String getTypeName() { return "ExcludeTest1"; }
    TypeContext context = _ctx;
}

class ExcludeTest2 implements IReturn<String>, IConvertible
{
    ExcludeTestNested excludeTestNested;

    ExcludeTest2({this.excludeTestNested});
    ExcludeTest2.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        excludeTestNested = JsonConverters.fromJson(json['excludeTestNested'],'ExcludeTestNested',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'excludeTestNested': JsonConverters.toJson(excludeTestNested,'ExcludeTestNested',context)
    };

    createResponse() { return ""; }
    String getTypeName() { return "ExcludeTest2"; }
    TypeContext context = _ctx;
}

class HelloAuthenticated implements IReturn<HelloAuthenticatedResponse>, IHasSessionId, IConvertible
{
    String sessionId;
    int version;

    HelloAuthenticated({this.sessionId,this.version});
    HelloAuthenticated.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        sessionId = json['sessionId'];
        version = json['version'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'sessionId': sessionId,
        'version': version
    };

    createResponse() { return new HelloAuthenticatedResponse(); }
    String getTypeName() { return "HelloAuthenticated"; }
    TypeContext context = _ctx;
}

/**
* Echoes a sentence
*/
// @Route("/echoes", "POST")
// @Api(Description="Echoes a sentence")
class Echoes implements IReturn<Echo>, IConvertible
{
    /**
    * The sentence to echo.
    */
    // @ApiMember(DataType="string", Description="The sentence to echo.", IsRequired=true, Name="Sentence", ParameterType="form")
    String sentence;

    Echoes({this.sentence});
    Echoes.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        sentence = json['sentence'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'sentence': sentence
    };

    createResponse() { return new Echo(); }
    String getTypeName() { return "Echoes"; }
    TypeContext context = _ctx;
}

class CachedEcho implements IReturn<Echo>, IConvertible
{
    bool reload;
    String sentence;

    CachedEcho({this.reload,this.sentence});
    CachedEcho.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        reload = json['reload'];
        sentence = json['sentence'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'reload': reload,
        'sentence': sentence
    };

    createResponse() { return new Echo(); }
    String getTypeName() { return "CachedEcho"; }
    TypeContext context = _ctx;
}

class AsyncTest implements IReturn<Echo>, IConvertible
{
    AsyncTest();
    AsyncTest.fromJson(Map<String, dynamic> json) : super();
    fromMap(Map<String, dynamic> json) {
        return this;
    }

    Map<String, dynamic> toJson() => {};
    createResponse() { return new Echo(); }
    String getTypeName() { return "AsyncTest"; }
    TypeContext context = _ctx;
}

// @Route("/throwhttperror/{Status}")
class ThrowHttpError implements IReturn<ThrowHttpErrorResponse>, IConvertible
{
    int status;
    String message;

    ThrowHttpError({this.status,this.message});
    ThrowHttpError.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        status = json['status'];
        message = json['message'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'status': status,
        'message': message
    };

    createResponse() { return new ThrowHttpErrorResponse(); }
    String getTypeName() { return "ThrowHttpError"; }
    TypeContext context = _ctx;
}

// @Route("/throw404")
// @Route("/throw404/{Message}")
class Throw404 implements IConvertible
{
    String message;

    Throw404({this.message});
    Throw404.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        message = json['message'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'message': message
    };

    TypeContext context = _ctx;
}

// @Route("/return404")
class Return404 implements IConvertible
{
    Return404();
    Return404.fromJson(Map<String, dynamic> json) : super();
    fromMap(Map<String, dynamic> json) {
        return this;
    }

    Map<String, dynamic> toJson() => {};
    TypeContext context = _ctx;
}

// @Route("/return404result")
class Return404Result implements IConvertible
{
    Return404Result();
    Return404Result.fromJson(Map<String, dynamic> json) : super();
    fromMap(Map<String, dynamic> json) {
        return this;
    }

    Map<String, dynamic> toJson() => {};
    TypeContext context = _ctx;
}

// @Route("/throw/{Type}")
class ThrowType implements IReturn<ThrowTypeResponse>, IConvertible
{
    String type;
    String message;

    ThrowType({this.type,this.message});
    ThrowType.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        type = json['type'];
        message = json['message'];
        return this;
    }

    Map<String, dynamic> toJson() => {
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
    int age;
    String required;
    String email;

    ThrowValidation({this.age,this.required,this.email});
    ThrowValidation.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        age = json['age'];
        required = json['required'];
        email = json['email'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'age': age,
        'required': required,
        'email': email
    };

    createResponse() { return new ThrowValidationResponse(); }
    String getTypeName() { return "ThrowValidation"; }
    TypeContext context = _ctx;
}

// @Route("/api/acsprofiles", "POST,PUT,PATCH,DELETE")
// @Route("/api/acsprofiles/{profileId}")
class ACSProfile implements IReturn<acsprofileResponse>, IHasVersion, IHasSessionId, IConvertible
{
    String profileId;
    // @Required()
    // @StringLength(20)
    String shortName;

    // @StringLength(60)
    String longName;

    // @StringLength(20)
    String regionId;

    // @StringLength(20)
    String groupId;

    // @StringLength(12)
    String deviceID;

    DateTime lastUpdated;
    bool enabled;
    int version;
    String sessionId;

    ACSProfile({this.profileId,this.shortName,this.longName,this.regionId,this.groupId,this.deviceID,this.lastUpdated,this.enabled,this.version,this.sessionId});
    ACSProfile.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        profileId = json['profileId'];
        shortName = json['shortName'];
        longName = json['longName'];
        regionId = json['regionId'];
        groupId = json['groupId'];
        deviceID = json['deviceID'];
        lastUpdated = JsonConverters.fromJson(json['lastUpdated'],'DateTime',context);
        enabled = json['enabled'];
        version = json['version'];
        sessionId = json['sessionId'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'profileId': profileId,
        'shortName': shortName,
        'longName': longName,
        'regionId': regionId,
        'groupId': groupId,
        'deviceID': deviceID,
        'lastUpdated': JsonConverters.toJson(lastUpdated,'DateTime',context),
        'enabled': enabled,
        'version': version,
        'sessionId': sessionId
    };

    createResponse() { return new acsprofileResponse(); }
    String getTypeName() { return "ACSProfile"; }
    TypeContext context = _ctx;
}

// @Route("/return/string")
class ReturnString implements IReturn<String>, IConvertible
{
    String data;

    ReturnString({this.data});
    ReturnString.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        data = json['data'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'data': data
    };

    createResponse() { return ""; }
    String getTypeName() { return "ReturnString"; }
    TypeContext context = _ctx;
}

// @Route("/return/bytes")
class ReturnBytes implements IReturn<Uint8List>, IConvertible
{
    Uint8List data;

    ReturnBytes({this.data});
    ReturnBytes.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        data = JsonConverters.fromJson(json['data'],'Uint8List',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'data': JsonConverters.toJson(data,'Uint8List',context)
    };

    createResponse() { return new Uint8List(0); }
    String getTypeName() { return "ReturnBytes"; }
    TypeContext context = _ctx;
}

// @Route("/return/stream")
class ReturnStream implements IReturn<Uint8List>, IConvertible
{
    Uint8List data;

    ReturnStream({this.data});
    ReturnStream.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        data = JsonConverters.fromJson(json['data'],'Uint8List',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'data': JsonConverters.toJson(data,'Uint8List',context)
    };

    createResponse() { return new Uint8List(0); }
    String getTypeName() { return "ReturnStream"; }
    TypeContext context = _ctx;
}

// @Route("/Request1/", "GET")
class GetRequest1 implements IReturn<List<ReturnedDto>>, IGet, IConvertible
{
    GetRequest1();
    GetRequest1.fromJson(Map<String, dynamic> json) : super();
    fromMap(Map<String, dynamic> json) {
        return this;
    }

    Map<String, dynamic> toJson() => {};
    createResponse() { return new List<ReturnedDto>(); }
    String getTypeName() { return "GetRequest1"; }
    TypeContext context = _ctx;
}

// @Route("/Request3", "GET")
class GetRequest2 implements IReturn<ReturnedDto>, IGet, IConvertible
{
    GetRequest2();
    GetRequest2.fromJson(Map<String, dynamic> json) : super();
    fromMap(Map<String, dynamic> json) {
        return this;
    }

    Map<String, dynamic> toJson() => {};
    createResponse() { return new ReturnedDto(); }
    String getTypeName() { return "GetRequest2"; }
    TypeContext context = _ctx;
}

// @Route("/matchlast/{Id}")
class MatchesLastInt implements IConvertible
{
    int id;

    MatchesLastInt({this.id});
    MatchesLastInt.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        id = json['id'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'id': id
    };

    TypeContext context = _ctx;
}

// @Route("/matchlast/{Slug}")
class MatchesNotLastInt implements IConvertible
{
    String slug;

    MatchesNotLastInt({this.slug});
    MatchesNotLastInt.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        slug = json['slug'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'slug': slug
    };

    TypeContext context = _ctx;
}

// @Route("/matchregex/{Id}")
class MatchesId implements IConvertible
{
    int id;

    MatchesId({this.id});
    MatchesId.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        id = json['id'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'id': id
    };

    TypeContext context = _ctx;
}

// @Route("/matchregex/{Slug}")
class MatchesSlug implements IConvertible
{
    String slug;

    MatchesSlug({this.slug});
    MatchesSlug.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        slug = json['slug'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'slug': slug
    };

    TypeContext context = _ctx;
}

// @Route("/{Version}/userdata", "GET")
class SwaggerVersionTest implements IConvertible
{
    String version;

    SwaggerVersionTest({this.version});
    SwaggerVersionTest.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        version = json['version'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'version': version
    };

    TypeContext context = _ctx;
}

// @Route("/test/errorview")
class TestErrorView implements IConvertible
{
    String id;

    TestErrorView({this.id});
    TestErrorView.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        id = json['id'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'id': id
    };

    TypeContext context = _ctx;
}

// @Route("/timestamp", "GET")
class GetTimestamp implements IReturn<TimestampData>, IConvertible
{
    GetTimestamp();
    GetTimestamp.fromJson(Map<String, dynamic> json) : super();
    fromMap(Map<String, dynamic> json) {
        return this;
    }

    Map<String, dynamic> toJson() => {};
    createResponse() { return new TimestampData(); }
    String getTypeName() { return "GetTimestamp"; }
    TypeContext context = _ctx;
}

class TestMiniverView implements IConvertible
{
    TestMiniverView();
    TestMiniverView.fromJson(Map<String, dynamic> json) : super();
    fromMap(Map<String, dynamic> json) {
        return this;
    }

    Map<String, dynamic> toJson() => {};
    TypeContext context = _ctx;
}

// @Route("/testexecproc")
class TestExecProc implements IConvertible
{
    TestExecProc();
    TestExecProc.fromJson(Map<String, dynamic> json) : super();
    fromMap(Map<String, dynamic> json) {
        return this;
    }

    Map<String, dynamic> toJson() => {};
    TypeContext context = _ctx;
}

// @Route("/files/{Path*}")
class GetFile implements IConvertible
{
    String path;

    GetFile({this.path});
    GetFile.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        path = json['path'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'path': path
    };

    TypeContext context = _ctx;
}

// @Route("/test/html2")
class TestHtml2 implements IConvertible
{
    String name;

    TestHtml2({this.name});
    TestHtml2.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        name = json['name'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'name': name
    };

    TypeContext context = _ctx;
}

// @Route("/views/request")
class ViewRequest implements IReturn<ViewResponse>, IConvertible
{
    String name;

    ViewRequest({this.name});
    ViewRequest.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        name = json['name'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'name': name
    };

    createResponse() { return new ViewResponse(); }
    String getTypeName() { return "ViewRequest"; }
    TypeContext context = _ctx;
}

// @Route("/index")
class IndexPage implements IConvertible
{
    String pathInfo;

    IndexPage({this.pathInfo});
    IndexPage.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        pathInfo = json['pathInfo'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'pathInfo': pathInfo
    };

    TypeContext context = _ctx;
}

// @Route("/return/text")
class ReturnText implements IConvertible
{
    String text;

    ReturnText({this.text});
    ReturnText.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        text = json['text'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'text': text
    };

    TypeContext context = _ctx;
}

// @Route("/gzip/{FileName}")
class DownloadGzipFile implements IReturn<Uint8List>, IConvertible
{
    String fileName;

    DownloadGzipFile({this.fileName});
    DownloadGzipFile.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        fileName = json['fileName'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'fileName': fileName
    };

    createResponse() { return new Uint8List(0); }
    String getTypeName() { return "DownloadGzipFile"; }
    TypeContext context = _ctx;
}

// @Route("/match/{Language}/{Name*}")
class MatchName implements IReturn<HelloResponse>, IConvertible
{
    String language;
    String name;

    MatchName({this.language,this.name});
    MatchName.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        language = json['language'];
        name = json['name'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'language': language,
        'name': name
    };

    createResponse() { return new HelloResponse(); }
    String getTypeName() { return "MatchName"; }
    TypeContext context = _ctx;
}

// @Route("/match/{Language*}")
class MatchLang implements IReturn<HelloResponse>, IConvertible
{
    String language;

    MatchLang({this.language});
    MatchLang.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        language = json['language'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'language': language
    };

    createResponse() { return new HelloResponse(); }
    String getTypeName() { return "MatchLang"; }
    TypeContext context = _ctx;
}

/**
* SwaggerTest Service Description
*/
// @Route("/swagger", "GET")
// @Route("/swagger/{Name}", "GET")
// @Route("/swagger/{Name}", "POST")
// @Api(Description="SwaggerTest Service Description")
// @ApiResponse(Description="Your request was not understood", StatusCode=400)
// @ApiResponse(Description="Oops, something broke", StatusCode=500)
// @DataContract
class SwaggerTest implements IConvertible
{
    /**
    * Color Description
    */
    // @DataMember
    // @ApiMember(DataType="string", Description="Color Description", IsRequired=true, ParameterType="path")
    String name;

    // @DataMember
    // @ApiMember()
    MyColor color;

    /**
    * Aliased Description
    */
    // @DataMember(Name="Aliased")
    // @ApiMember(DataType="string", Description="Aliased Description", IsRequired=true)
    String original;

    /**
    * Not Aliased Description
    */
    // @DataMember
    // @ApiMember(DataType="string", Description="Not Aliased Description", IsRequired=true)
    String notAliased;

    /**
    * Format as password
    */
    // @DataMember
    // @ApiMember(DataType="password", Description="Format as password")
    String password;

    // @DataMember
    // @ApiMember(AllowMultiple=true)
    List<DateTime> myDateBetween;

    /**
    * Nested model 1
    */
    // @DataMember
    // @ApiMember(DataType="SwaggerNestedModel", Description="Nested model 1")
    SwaggerNestedModel nestedModel1;

    /**
    * Nested model 2
    */
    // @DataMember
    // @ApiMember(DataType="SwaggerNestedModel2", Description="Nested model 2")
    SwaggerNestedModel2 nestedModel2;

    SwaggerTest({this.name,this.color,this.original,this.notAliased,this.password,this.myDateBetween,this.nestedModel1,this.nestedModel2});
    SwaggerTest.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        name = json['name'];
        color = JsonConverters.fromJson(json['color'],'MyColor',context);
        original = json['original'];
        notAliased = json['notAliased'];
        password = json['password'];
        myDateBetween = JsonConverters.fromJson(json['myDateBetween'],'List<DateTime>',context);
        nestedModel1 = JsonConverters.fromJson(json['nestedModel1'],'SwaggerNestedModel',context);
        nestedModel2 = JsonConverters.fromJson(json['nestedModel2'],'SwaggerNestedModel2',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'name': name,
        'color': JsonConverters.toJson(color,'MyColor',context),
        'original': original,
        'notAliased': notAliased,
        'password': password,
        'myDateBetween': JsonConverters.toJson(myDateBetween,'List<DateTime>',context),
        'nestedModel1': JsonConverters.toJson(nestedModel1,'SwaggerNestedModel',context),
        'nestedModel2': JsonConverters.toJson(nestedModel2,'SwaggerNestedModel2',context)
    };

    TypeContext context = _ctx;
}

// @Route("/swaggertest2", "POST")
class SwaggerTest2 implements IConvertible
{
    // @ApiMember()
    MyEnum myEnumProperty;

    // @ApiMember(DataType="string", IsRequired=true, Name="Token", ParameterType="header")
    String token;

    SwaggerTest2({this.myEnumProperty,this.token});
    SwaggerTest2.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        myEnumProperty = JsonConverters.fromJson(json['myEnumProperty'],'MyEnum',context);
        token = json['token'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'myEnumProperty': JsonConverters.toJson(myEnumProperty,'MyEnum',context),
        'token': token
    };

    TypeContext context = _ctx;
}

// @Route("/swagger-complex", "POST")
class SwaggerComplex implements IReturn<SwaggerComplexResponse>, IConvertible
{
    // @DataMember
    // @ApiMember()
    bool isRequired;

    // @DataMember
    // @ApiMember(IsRequired=true)
    List<String> arrayString;

    // @DataMember
    // @ApiMember()
    List<int> arrayInt;

    // @DataMember
    // @ApiMember()
    List<String> listString;

    // @DataMember
    // @ApiMember()
    List<int> listInt;

    // @DataMember
    // @ApiMember()
    Map<String,String> dictionaryString;

    SwaggerComplex({this.isRequired,this.arrayString,this.arrayInt,this.listString,this.listInt,this.dictionaryString});
    SwaggerComplex.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        isRequired = json['isRequired'];
        arrayString = JsonConverters.fromJson(json['arrayString'],'List<String>',context);
        arrayInt = JsonConverters.fromJson(json['arrayInt'],'List<int>',context);
        listString = JsonConverters.fromJson(json['listString'],'List<String>',context);
        listInt = JsonConverters.fromJson(json['listInt'],'List<int>',context);
        dictionaryString = JsonConverters.toStringMap(json['dictionaryString']);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'isRequired': isRequired,
        'arrayString': JsonConverters.toJson(arrayString,'List<String>',context),
        'arrayInt': JsonConverters.toJson(arrayInt,'List<int>',context),
        'listString': JsonConverters.toJson(listString,'List<String>',context),
        'listInt': JsonConverters.toJson(listInt,'List<int>',context),
        'dictionaryString': dictionaryString
    };

    createResponse() { return new SwaggerComplexResponse(); }
    String getTypeName() { return "SwaggerComplex"; }
    TypeContext context = _ctx;
}

// @Route("/swaggerpost/{Required1}", "GET")
// @Route("/swaggerpost/{Required1}/{Optional1}", "GET")
// @Route("/swaggerpost", "POST")
class SwaggerPostTest implements IReturn<HelloResponse>, IConvertible
{
    // @ApiMember(Verb="POST")
    // @ApiMember(ParameterType="path", Route="/swaggerpost/{Required1}", Verb="GET")
    // @ApiMember(ParameterType="path", Route="/swaggerpost/{Required1}/{Optional1}", Verb="GET")
    String required1;

    // @ApiMember(Verb="POST")
    // @ApiMember(ParameterType="path", Route="/swaggerpost/{Required1}/{Optional1}", Verb="GET")
    String optional1;

    SwaggerPostTest({this.required1,this.optional1});
    SwaggerPostTest.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        required1 = json['required1'];
        optional1 = json['optional1'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'required1': required1,
        'optional1': optional1
    };

    createResponse() { return new HelloResponse(); }
    String getTypeName() { return "SwaggerPostTest"; }
    TypeContext context = _ctx;
}

// @Route("/swaggerpost2/{Required1}/{Required2}", "GET")
// @Route("/swaggerpost2/{Required1}/{Required2}/{Optional1}", "GET")
// @Route("/swaggerpost2", "POST")
class SwaggerPostTest2 implements IReturn<HelloResponse>, IConvertible
{
    // @ApiMember(ParameterType="path", Route="/swaggerpost2/{Required1}/{Required2}", Verb="GET")
    // @ApiMember(ParameterType="path", Route="/swaggerpost2/{Required1}/{Required2}/{Optional1}", Verb="GET")
    String required1;

    // @ApiMember(ParameterType="path", Route="/swaggerpost2/{Required1}/{Required2}", Verb="GET")
    // @ApiMember(ParameterType="path", Route="/swaggerpost2/{Required1}/{Required2}/{Optional1}", Verb="GET")
    String required2;

    // @ApiMember(ParameterType="path", Route="/swaggerpost2/{Required1}/{Required2}/{Optional1}", Verb="GET")
    String optional1;

    SwaggerPostTest2({this.required1,this.required2,this.optional1});
    SwaggerPostTest2.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        required1 = json['required1'];
        required2 = json['required2'];
        optional1 = json['optional1'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'required1': required1,
        'required2': required2,
        'optional1': optional1
    };

    createResponse() { return new HelloResponse(); }
    String getTypeName() { return "SwaggerPostTest2"; }
    TypeContext context = _ctx;
}

// @Route("/swagger/multiattrtest", "POST")
// @ApiResponse(Description="Code 1", StatusCode=400)
// @ApiResponse(Description="Code 2", StatusCode=402)
// @ApiResponse(Description="Code 3", StatusCode=401)
class SwaggerMultiApiResponseTest implements IReturnVoid, IConvertible
{
    SwaggerMultiApiResponseTest();
    SwaggerMultiApiResponseTest.fromJson(Map<String, dynamic> json) : super();
    fromMap(Map<String, dynamic> json) {
        return this;
    }

    Map<String, dynamic> toJson() => {};
    createResponse() {}
    String getTypeName() { return "SwaggerMultiApiResponseTest"; }
    TypeContext context = _ctx;
}

// @Route("/dynamically/registered/{Name}")
class DynamicallyRegistered implements IConvertible
{
    String name;

    DynamicallyRegistered({this.name});
    DynamicallyRegistered.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        name = json['name'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'name': name
    };

    TypeContext context = _ctx;
}

// @Route("/pgsql/rockstars")
class QueryPostgresRockstars extends QueryDb1<Rockstar> implements IReturn<QueryResponse<Rockstar>>, IConvertible
{
    int age;

    QueryPostgresRockstars({this.age});
    QueryPostgresRockstars.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        super.fromMap(json);
        age = json['age'];
        return this;
    }

    Map<String, dynamic> toJson() => super.toJson()..addAll({
        'age': age
    });

    createResponse() { return new QueryResponse<Rockstar>(); }
    String getTypeName() { return "QueryPostgresRockstars"; }
    TypeContext context = _ctx;
}

// @Route("/pgsql/pgrockstars")
class QueryPostgresPgRockstars extends QueryDb1<PgRockstar> implements IReturn<QueryResponse<PgRockstar>>, IConvertible
{
    int age;

    QueryPostgresPgRockstars({this.age});
    QueryPostgresPgRockstars.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        super.fromMap(json);
        age = json['age'];
        return this;
    }

    Map<String, dynamic> toJson() => super.toJson()..addAll({
        'age': age
    });

    createResponse() { return new QueryResponse<PgRockstar>(); }
    String getTypeName() { return "QueryPostgresPgRockstars"; }
    TypeContext context = _ctx;
}

class QueryRockstarsConventions extends QueryDb1<Rockstar> implements IReturn<QueryResponse<Rockstar>>, IConvertible
{
    List<int> ids;
    int ageOlderThan;
    int ageGreaterThanOrEqualTo;
    int ageGreaterThan;
    int greaterThanAge;
    String firstNameStartsWith;
    String lastNameEndsWith;
    String lastNameContains;
    String rockstarAlbumNameContains;
    int rockstarIdAfter;
    int rockstarIdOnOrAfter;

    QueryRockstarsConventions({this.ids,this.ageOlderThan,this.ageGreaterThanOrEqualTo,this.ageGreaterThan,this.greaterThanAge,this.firstNameStartsWith,this.lastNameEndsWith,this.lastNameContains,this.rockstarAlbumNameContains,this.rockstarIdAfter,this.rockstarIdOnOrAfter});
    QueryRockstarsConventions.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        super.fromMap(json);
        ids = JsonConverters.fromJson(json['ids'],'List<int>',context);
        ageOlderThan = json['ageOlderThan'];
        ageGreaterThanOrEqualTo = json['ageGreaterThanOrEqualTo'];
        ageGreaterThan = json['ageGreaterThan'];
        greaterThanAge = json['greaterThanAge'];
        firstNameStartsWith = json['firstNameStartsWith'];
        lastNameEndsWith = json['lastNameEndsWith'];
        lastNameContains = json['lastNameContains'];
        rockstarAlbumNameContains = json['rockstarAlbumNameContains'];
        rockstarIdAfter = json['rockstarIdAfter'];
        rockstarIdOnOrAfter = json['rockstarIdOnOrAfter'];
        return this;
    }

    Map<String, dynamic> toJson() => super.toJson()..addAll({
        'ids': JsonConverters.toJson(ids,'List<int>',context),
        'ageOlderThan': ageOlderThan,
        'ageGreaterThanOrEqualTo': ageGreaterThanOrEqualTo,
        'ageGreaterThan': ageGreaterThan,
        'greaterThanAge': greaterThanAge,
        'firstNameStartsWith': firstNameStartsWith,
        'lastNameEndsWith': lastNameEndsWith,
        'lastNameContains': lastNameContains,
        'rockstarAlbumNameContains': rockstarAlbumNameContains,
        'rockstarIdAfter': rockstarIdAfter,
        'rockstarIdOnOrAfter': rockstarIdOnOrAfter
    });

    createResponse() { return new QueryResponse<Rockstar>(); }
    String getTypeName() { return "QueryRockstarsConventions"; }
    TypeContext context = _ctx;
}

// @AutoQueryViewer(Description="Use this option to search for Rockstars!", Title="Search for Rockstars")
class QueryCustomRockstars extends QueryDb2<Rockstar,CustomRockstar> implements IReturn<QueryResponse<CustomRockstar>>, IConvertible
{
    int age;

    QueryCustomRockstars({this.age});
    QueryCustomRockstars.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        super.fromMap(json);
        age = json['age'];
        return this;
    }

    Map<String, dynamic> toJson() => super.toJson()..addAll({
        'age': age
    });

    createResponse() { return new QueryResponse<CustomRockstar>(); }
    String getTypeName() { return "QueryCustomRockstars"; }
    TypeContext context = _ctx;
}

// @Route("/customrockstars")
class QueryRockstarAlbums extends QueryDb2<Rockstar,CustomRockstar> implements IReturn<QueryResponse<CustomRockstar>>, IConvertible
{
    int age;
    String rockstarAlbumName;

    QueryRockstarAlbums({this.age,this.rockstarAlbumName});
    QueryRockstarAlbums.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        super.fromMap(json);
        age = json['age'];
        rockstarAlbumName = json['rockstarAlbumName'];
        return this;
    }

    Map<String, dynamic> toJson() => super.toJson()..addAll({
        'age': age,
        'rockstarAlbumName': rockstarAlbumName
    });

    createResponse() { return new QueryResponse<CustomRockstar>(); }
    String getTypeName() { return "QueryRockstarAlbums"; }
    TypeContext context = _ctx;
}

class QueryRockstarAlbumsImplicit extends QueryDb2<Rockstar,CustomRockstar> implements IReturn<QueryResponse<CustomRockstar>>, IConvertible
{
    QueryRockstarAlbumsImplicit();
    QueryRockstarAlbumsImplicit.fromJson(Map<String, dynamic> json) : super.fromJson(json);
    fromMap(Map<String, dynamic> json) {
        super.fromMap(json);
        return this;
    }

    Map<String, dynamic> toJson() => super.toJson();
    createResponse() { return new QueryResponse<CustomRockstar>(); }
    String getTypeName() { return "QueryRockstarAlbumsImplicit"; }
    TypeContext context = _ctx;
}

class QueryRockstarAlbumsLeftJoin extends QueryDb2<Rockstar,CustomRockstar> implements IReturn<QueryResponse<CustomRockstar>>, IConvertible
{
    int age;
    String albumName;

    QueryRockstarAlbumsLeftJoin({this.age,this.albumName});
    QueryRockstarAlbumsLeftJoin.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        super.fromMap(json);
        age = json['age'];
        albumName = json['albumName'];
        return this;
    }

    Map<String, dynamic> toJson() => super.toJson()..addAll({
        'age': age,
        'albumName': albumName
    });

    createResponse() { return new QueryResponse<CustomRockstar>(); }
    String getTypeName() { return "QueryRockstarAlbumsLeftJoin"; }
    TypeContext context = _ctx;
}

class QueryOverridedRockstars extends QueryDb1<Rockstar> implements IReturn<QueryResponse<Rockstar>>, IConvertible
{
    int age;

    QueryOverridedRockstars({this.age});
    QueryOverridedRockstars.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        super.fromMap(json);
        age = json['age'];
        return this;
    }

    Map<String, dynamic> toJson() => super.toJson()..addAll({
        'age': age
    });

    createResponse() { return new QueryResponse<Rockstar>(); }
    String getTypeName() { return "QueryOverridedRockstars"; }
    TypeContext context = _ctx;
}

class QueryOverridedCustomRockstars extends QueryDb2<Rockstar,CustomRockstar> implements IReturn<QueryResponse<CustomRockstar>>, IConvertible
{
    int age;

    QueryOverridedCustomRockstars({this.age});
    QueryOverridedCustomRockstars.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        super.fromMap(json);
        age = json['age'];
        return this;
    }

    Map<String, dynamic> toJson() => super.toJson()..addAll({
        'age': age
    });

    createResponse() { return new QueryResponse<CustomRockstar>(); }
    String getTypeName() { return "QueryOverridedCustomRockstars"; }
    TypeContext context = _ctx;
}

// @Route("/query-custom/rockstars")
class QueryFieldRockstars extends QueryDb1<Rockstar> implements IReturn<QueryResponse<Rockstar>>, IConvertible
{
    String firstName;
    List<String> firstNames;
    int age;
    String firstNameCaseInsensitive;
    String firstNameStartsWith;
    String lastNameEndsWith;
    List<String> firstNameBetween;
    String orLastName;
    List<String> firstNameContainsMulti;

    QueryFieldRockstars({this.firstName,this.firstNames,this.age,this.firstNameCaseInsensitive,this.firstNameStartsWith,this.lastNameEndsWith,this.firstNameBetween,this.orLastName,this.firstNameContainsMulti});
    QueryFieldRockstars.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        super.fromMap(json);
        firstName = json['firstName'];
        firstNames = JsonConverters.fromJson(json['firstNames'],'List<String>',context);
        age = json['age'];
        firstNameCaseInsensitive = json['firstNameCaseInsensitive'];
        firstNameStartsWith = json['firstNameStartsWith'];
        lastNameEndsWith = json['lastNameEndsWith'];
        firstNameBetween = JsonConverters.fromJson(json['firstNameBetween'],'List<String>',context);
        orLastName = json['orLastName'];
        firstNameContainsMulti = JsonConverters.fromJson(json['firstNameContainsMulti'],'List<String>',context);
        return this;
    }

    Map<String, dynamic> toJson() => super.toJson()..addAll({
        'firstName': firstName,
        'firstNames': JsonConverters.toJson(firstNames,'List<String>',context),
        'age': age,
        'firstNameCaseInsensitive': firstNameCaseInsensitive,
        'firstNameStartsWith': firstNameStartsWith,
        'lastNameEndsWith': lastNameEndsWith,
        'firstNameBetween': JsonConverters.toJson(firstNameBetween,'List<String>',context),
        'orLastName': orLastName,
        'firstNameContainsMulti': JsonConverters.toJson(firstNameContainsMulti,'List<String>',context)
    });

    createResponse() { return new QueryResponse<Rockstar>(); }
    String getTypeName() { return "QueryFieldRockstars"; }
    TypeContext context = _ctx;
}

class QueryFieldRockstarsDynamic extends QueryDb1<Rockstar> implements IReturn<QueryResponse<Rockstar>>, IConvertible
{
    int age;

    QueryFieldRockstarsDynamic({this.age});
    QueryFieldRockstarsDynamic.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        super.fromMap(json);
        age = json['age'];
        return this;
    }

    Map<String, dynamic> toJson() => super.toJson()..addAll({
        'age': age
    });

    createResponse() { return new QueryResponse<Rockstar>(); }
    String getTypeName() { return "QueryFieldRockstarsDynamic"; }
    TypeContext context = _ctx;
}

class QueryRockstarsFilter extends QueryDb1<Rockstar> implements IReturn<QueryResponse<Rockstar>>, IConvertible
{
    int age;

    QueryRockstarsFilter({this.age});
    QueryRockstarsFilter.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        super.fromMap(json);
        age = json['age'];
        return this;
    }

    Map<String, dynamic> toJson() => super.toJson()..addAll({
        'age': age
    });

    createResponse() { return new QueryResponse<Rockstar>(); }
    String getTypeName() { return "QueryRockstarsFilter"; }
    TypeContext context = _ctx;
}

class QueryCustomRockstarsFilter extends QueryDb2<Rockstar,CustomRockstar> implements IReturn<QueryResponse<CustomRockstar>>, IConvertible
{
    int age;

    QueryCustomRockstarsFilter({this.age});
    QueryCustomRockstarsFilter.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        super.fromMap(json);
        age = json['age'];
        return this;
    }

    Map<String, dynamic> toJson() => super.toJson()..addAll({
        'age': age
    });

    createResponse() { return new QueryResponse<CustomRockstar>(); }
    String getTypeName() { return "QueryCustomRockstarsFilter"; }
    TypeContext context = _ctx;
}

class QueryRockstarsIFilter extends QueryDb1<Rockstar> implements IReturn<QueryResponse<Rockstar>>, IFilterRockstars, IConvertible
{
    int age;

    QueryRockstarsIFilter({this.age});
    QueryRockstarsIFilter.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        super.fromMap(json);
        age = json['age'];
        return this;
    }

    Map<String, dynamic> toJson() => super.toJson()..addAll({
        'age': age
    });

    createResponse() { return new QueryResponse<Rockstar>(); }
    String getTypeName() { return "QueryRockstarsIFilter"; }
    TypeContext context = _ctx;
}

// @Route("/OrRockstars")
class QueryOrRockstars extends QueryDb1<Rockstar> implements IReturn<QueryResponse<Rockstar>>, IConvertible
{
    int age;
    String firstName;

    QueryOrRockstars({this.age,this.firstName});
    QueryOrRockstars.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        super.fromMap(json);
        age = json['age'];
        firstName = json['firstName'];
        return this;
    }

    Map<String, dynamic> toJson() => super.toJson()..addAll({
        'age': age,
        'firstName': firstName
    });

    createResponse() { return new QueryResponse<Rockstar>(); }
    String getTypeName() { return "QueryOrRockstars"; }
    TypeContext context = _ctx;
}

class QueryGetRockstars extends QueryDb1<Rockstar> implements IReturn<QueryResponse<Rockstar>>, IConvertible
{
    List<int> ids;
    List<int> ages;
    List<String> firstNames;
    List<int> idsBetween;

    QueryGetRockstars({this.ids,this.ages,this.firstNames,this.idsBetween});
    QueryGetRockstars.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        super.fromMap(json);
        ids = JsonConverters.fromJson(json['ids'],'List<int>',context);
        ages = JsonConverters.fromJson(json['ages'],'List<int>',context);
        firstNames = JsonConverters.fromJson(json['firstNames'],'List<String>',context);
        idsBetween = JsonConverters.fromJson(json['idsBetween'],'List<int>',context);
        return this;
    }

    Map<String, dynamic> toJson() => super.toJson()..addAll({
        'ids': JsonConverters.toJson(ids,'List<int>',context),
        'ages': JsonConverters.toJson(ages,'List<int>',context),
        'firstNames': JsonConverters.toJson(firstNames,'List<String>',context),
        'idsBetween': JsonConverters.toJson(idsBetween,'List<int>',context)
    });

    createResponse() { return new QueryResponse<Rockstar>(); }
    String getTypeName() { return "QueryGetRockstars"; }
    TypeContext context = _ctx;
}

class QueryGetRockstarsDynamic extends QueryDb1<Rockstar> implements IReturn<QueryResponse<Rockstar>>, IConvertible
{
    QueryGetRockstarsDynamic();
    QueryGetRockstarsDynamic.fromJson(Map<String, dynamic> json) : super.fromJson(json);
    fromMap(Map<String, dynamic> json) {
        super.fromMap(json);
        return this;
    }

    Map<String, dynamic> toJson() => super.toJson();
    createResponse() { return new QueryResponse<Rockstar>(); }
    String getTypeName() { return "QueryGetRockstarsDynamic"; }
    TypeContext context = _ctx;
}

// @Route("/movies/search")
class SearchMovies extends QueryDb1<Movie> implements IReturn<QueryResponse<Movie>>, IConvertible
{
    SearchMovies();
    SearchMovies.fromJson(Map<String, dynamic> json) : super.fromJson(json);
    fromMap(Map<String, dynamic> json) {
        super.fromMap(json);
        return this;
    }

    Map<String, dynamic> toJson() => super.toJson();
    createResponse() { return new QueryResponse<Movie>(); }
    String getTypeName() { return "SearchMovies"; }
    TypeContext context = _ctx;
}

// @Route("/movies")
class QueryMovies extends QueryDb1<Movie> implements IReturn<QueryResponse<Movie>>, IConvertible
{
    List<int> ids;
    List<String> imdbIds;
    List<String> ratings;

    QueryMovies({this.ids,this.imdbIds,this.ratings});
    QueryMovies.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        super.fromMap(json);
        ids = JsonConverters.fromJson(json['ids'],'List<int>',context);
        imdbIds = JsonConverters.fromJson(json['imdbIds'],'List<String>',context);
        ratings = JsonConverters.fromJson(json['ratings'],'List<String>',context);
        return this;
    }

    Map<String, dynamic> toJson() => super.toJson()..addAll({
        'ids': JsonConverters.toJson(ids,'List<int>',context),
        'imdbIds': JsonConverters.toJson(imdbIds,'List<String>',context),
        'ratings': JsonConverters.toJson(ratings,'List<String>',context)
    });

    createResponse() { return new QueryResponse<Movie>(); }
    String getTypeName() { return "QueryMovies"; }
    TypeContext context = _ctx;
}

class StreamMovies extends QueryDb1<Movie> implements IReturn<QueryResponse<Movie>>, IConvertible
{
    List<String> ratings;

    StreamMovies({this.ratings});
    StreamMovies.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        super.fromMap(json);
        ratings = JsonConverters.fromJson(json['ratings'],'List<String>',context);
        return this;
    }

    Map<String, dynamic> toJson() => super.toJson()..addAll({
        'ratings': JsonConverters.toJson(ratings,'List<String>',context)
    });

    createResponse() { return new QueryResponse<Movie>(); }
    String getTypeName() { return "StreamMovies"; }
    TypeContext context = _ctx;
}

class QueryUnknownRockstars extends QueryDb1<Rockstar> implements IReturn<QueryResponse<Rockstar>>, IConvertible
{
    int unknownInt;
    String unknownProperty;

    QueryUnknownRockstars({this.unknownInt,this.unknownProperty});
    QueryUnknownRockstars.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        super.fromMap(json);
        unknownInt = json['unknownInt'];
        unknownProperty = json['unknownProperty'];
        return this;
    }

    Map<String, dynamic> toJson() => super.toJson()..addAll({
        'unknownInt': unknownInt,
        'unknownProperty': unknownProperty
    });

    createResponse() { return new QueryResponse<Rockstar>(); }
    String getTypeName() { return "QueryUnknownRockstars"; }
    TypeContext context = _ctx;
}

// @Route("/query/rockstar-references")
class QueryRockstarsWithReferences extends QueryDb1<RockstarReference> implements IReturn<QueryResponse<RockstarReference>>, IConvertible
{
    int age;

    QueryRockstarsWithReferences({this.age});
    QueryRockstarsWithReferences.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        super.fromMap(json);
        age = json['age'];
        return this;
    }

    Map<String, dynamic> toJson() => super.toJson()..addAll({
        'age': age
    });

    createResponse() { return new QueryResponse<RockstarReference>(); }
    String getTypeName() { return "QueryRockstarsWithReferences"; }
    TypeContext context = _ctx;
}

class QueryPocoBase extends QueryDb1<OnlyDefinedInGenericType> implements IReturn<QueryResponse<OnlyDefinedInGenericType>>, IConvertible
{
    int id;

    QueryPocoBase({this.id});
    QueryPocoBase.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        super.fromMap(json);
        id = json['id'];
        return this;
    }

    Map<String, dynamic> toJson() => super.toJson()..addAll({
        'id': id
    });

    createResponse() { return new QueryResponse<OnlyDefinedInGenericType>(); }
    String getTypeName() { return "QueryPocoBase"; }
    TypeContext context = _ctx;
}

class QueryPocoIntoBase extends QueryDb2<OnlyDefinedInGenericTypeFrom,OnlyDefinedInGenericTypeInto> implements IReturn<QueryResponse<OnlyDefinedInGenericTypeInto>>, IConvertible
{
    int id;

    QueryPocoIntoBase({this.id});
    QueryPocoIntoBase.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        super.fromMap(json);
        id = json['id'];
        return this;
    }

    Map<String, dynamic> toJson() => super.toJson()..addAll({
        'id': id
    });

    createResponse() { return new QueryResponse<OnlyDefinedInGenericTypeInto>(); }
    String getTypeName() { return "QueryPocoIntoBase"; }
    TypeContext context = _ctx;
}

// @Route("/query/alltypes")
class QueryAllTypes extends QueryDb1<AllTypes> implements IReturn<QueryResponse<AllTypes>>, IConvertible
{
    QueryAllTypes();
    QueryAllTypes.fromJson(Map<String, dynamic> json) : super.fromJson(json);
    fromMap(Map<String, dynamic> json) {
        super.fromMap(json);
        return this;
    }

    Map<String, dynamic> toJson() => super.toJson();
    createResponse() { return new QueryResponse<AllTypes>(); }
    String getTypeName() { return "QueryAllTypes"; }
    TypeContext context = _ctx;
}

// @Route("/querydata/rockstars")
class QueryDataRockstars extends QueryData<Rockstar> implements IReturn<QueryResponse<Rockstar>>, IConvertible
{
    int age;

    QueryDataRockstars({this.age});
    QueryDataRockstars.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        super.fromMap(json);
        age = json['age'];
        return this;
    }

    Map<String, dynamic> toJson() => super.toJson()..addAll({
        'age': age
    });

    createResponse() { return new QueryResponse<Rockstar>(); }
    String getTypeName() { return "QueryDataRockstars"; }
    TypeContext context = _ctx;
}

TypeContext _ctx = new TypeContext(library: 'localhost', types: <String, TypeInfo> {
    'RequestLogEntry': new TypeInfo(TypeOf.Class, create:() => new RequestLogEntry()),
    'Rockstar': new TypeInfo(TypeOf.Class, create:() => new Rockstar()),
    'ObjectDesign': new TypeInfo(TypeOf.Class, create:() => new ObjectDesign()),
    'IAuthTokens': new TypeInfo(TypeOf.Interface),
    'AuthUserSession': new TypeInfo(TypeOf.Class, create:() => new AuthUserSession()),
    'List<IAuthTokens>': new TypeInfo(TypeOf.Class, create:() => new List<IAuthTokens>()),
    'MetadataTestNestedChild': new TypeInfo(TypeOf.Class, create:() => new MetadataTestNestedChild()),
    'MetadataTestChild': new TypeInfo(TypeOf.Class, create:() => new MetadataTestChild()),
    'List<MetadataTestNestedChild>': new TypeInfo(TypeOf.Class, create:() => new List<MetadataTestNestedChild>()),
    'MenuItemExampleItem': new TypeInfo(TypeOf.Class, create:() => new MenuItemExampleItem()),
    'MenuItemExample': new TypeInfo(TypeOf.Class, create:() => new MenuItemExample()),
    'MenuExample': new TypeInfo(TypeOf.Class, create:() => new MenuExample()),
    'MetadataTypeName': new TypeInfo(TypeOf.Class, create:() => new MetadataTypeName()),
    'MetadataRoute': new TypeInfo(TypeOf.Class, create:() => new MetadataRoute()),
    'MetadataDataContract': new TypeInfo(TypeOf.Class, create:() => new MetadataDataContract()),
    'MetadataDataMember': new TypeInfo(TypeOf.Class, create:() => new MetadataDataMember()),
    'MetadataAttribute': new TypeInfo(TypeOf.Class, create:() => new MetadataAttribute()),
    'List<MetadataPropertyType>': new TypeInfo(TypeOf.Class, create:() => new List<MetadataPropertyType>()),
    'MetadataPropertyType': new TypeInfo(TypeOf.Class, create:() => new MetadataPropertyType()),
    'List<MetadataAttribute>': new TypeInfo(TypeOf.Class, create:() => new List<MetadataAttribute>()),
    'MetadataType': new TypeInfo(TypeOf.Class, create:() => new MetadataType()),
    'List<MetadataTypeName>': new TypeInfo(TypeOf.Class, create:() => new List<MetadataTypeName>()),
    'List<MetadataRoute>': new TypeInfo(TypeOf.Class, create:() => new List<MetadataRoute>()),
    'AutoQueryConvention': new TypeInfo(TypeOf.Class, create:() => new AutoQueryConvention()),
    'AutoQueryViewerConfig': new TypeInfo(TypeOf.Class, create:() => new AutoQueryViewerConfig()),
    'List<AutoQueryConvention>': new TypeInfo(TypeOf.Class, create:() => new List<AutoQueryConvention>()),
    'AutoQueryViewerUserInfo': new TypeInfo(TypeOf.Class, create:() => new AutoQueryViewerUserInfo()),
    'AutoQueryOperation': new TypeInfo(TypeOf.Class, create:() => new AutoQueryOperation()),
    'NativeTypesTestService': new TypeInfo(TypeOf.Class, create:() => new NativeTypesTestService()),
    'NestedClass': new TypeInfo(TypeOf.Class, create:() => new NestedClass()),
    'ListResult': new TypeInfo(TypeOf.Class, create:() => new ListResult()),
    'OnlyInReturnListArg': new TypeInfo(TypeOf.Class, create:() => new OnlyInReturnListArg()),
    'ArrayResult': new TypeInfo(TypeOf.Class, create:() => new ArrayResult()),
    'EnumType': new TypeInfo(TypeOf.Enum, enumValues:EnumType.values),
    'EnumWithValues': new TypeInfo(TypeOf.Enum, enumValues:EnumWithValues.values),
    'EnumFlags': new TypeInfo(TypeOf.Enum, enumValues:EnumFlags.values),
    'Poco': new TypeInfo(TypeOf.Class, create:() => new Poco()),
    'AllCollectionTypes': new TypeInfo(TypeOf.Class, create:() => new AllCollectionTypes()),
    'List<Poco>': new TypeInfo(TypeOf.Class, create:() => new List<Poco>()),
    'Uint8List': new TypeInfo(TypeOf.Class, create:() => new Uint8List(0)),
    'List<DateTime>': new TypeInfo(TypeOf.Class, create:() => new List<DateTime>()),
    'Map<String,List<Poco>>': new TypeInfo(TypeOf.Class, create:() => new Map<String,List<Poco>>()),
    'Map<String,List<Map<String,Poco>>>': new TypeInfo(TypeOf.Class, create:() => new Map<String,List<Map<String,Poco>>>()),
    'List<Map<String,Poco>>': new TypeInfo(TypeOf.Class, create:() => new List<Map<String,Poco>>()),
    'Map<String,Poco>': new TypeInfo(TypeOf.Class, create:() => new Map<String,Poco>()),
    'SubType': new TypeInfo(TypeOf.Class, create:() => new SubType()),
    'HelloBase': new TypeInfo(TypeOf.AbstractClass),
    'HelloResponseBase': new TypeInfo(TypeOf.Class, create:() => new HelloResponseBase()),
    'HelloBase1<T>': new TypeInfo(TypeOf.AbstractClass),
    'Item': new TypeInfo(TypeOf.Class, create:() => new Item()),
    'InheritedItem': new TypeInfo(TypeOf.Class, create:() => new InheritedItem()),
    'HelloWithReturnResponse': new TypeInfo(TypeOf.Class, create:() => new HelloWithReturnResponse()),
    'HelloType': new TypeInfo(TypeOf.Class, create:() => new HelloType()),
    'IPoco': new TypeInfo(TypeOf.Interface),
    'IEmptyInterface': new TypeInfo(TypeOf.Interface),
    'EmptyClass': new TypeInfo(TypeOf.Class, create:() => new EmptyClass()),
    'ImplementsPoco': new TypeInfo(TypeOf.Interface),
    'TypeB': new TypeInfo(TypeOf.Class, create:() => new TypeB()),
    'TypeA': new TypeInfo(TypeOf.Class, create:() => new TypeA()),
    'List<TypeB>': new TypeInfo(TypeOf.Class, create:() => new List<TypeB>()),
    'InnerType': new TypeInfo(TypeOf.Class, create:() => new InnerType()),
    'InnerEnum': new TypeInfo(TypeOf.Enum, enumValues:InnerEnum.values),
    'InnerTypeItem': new TypeInfo(TypeOf.Class, create:() => new InnerTypeItem()),
    'DayOfWeek': new TypeInfo(TypeOf.Enum, enumValues:DayOfWeek.values),
    'ScopeType': new TypeInfo(TypeOf.Enum, enumValues:ScopeType.values),
    'IEcho': new TypeInfo(TypeOf.Interface),
    'CacheControl': new TypeInfo(TypeOf.Enum, enumValues:CacheControl.values),
    'MyColor': new TypeInfo(TypeOf.Enum, enumValues:MyColor.values),
    'SwaggerNestedModel': new TypeInfo(TypeOf.Class, create:() => new SwaggerNestedModel()),
    'SwaggerNestedModel2': new TypeInfo(TypeOf.Class, create:() => new SwaggerNestedModel2()),
    'MyEnum': new TypeInfo(TypeOf.Enum, enumValues:MyEnum.values),
    'PgRockstar': new TypeInfo(TypeOf.Class, create:() => new PgRockstar()),
    'CustomRockstar': new TypeInfo(TypeOf.Class, create:() => new CustomRockstar()),
    'IFilterRockstars': new TypeInfo(TypeOf.Interface),
    'Movie': new TypeInfo(TypeOf.Class, create:() => new Movie()),
    'RockstarAlbum': new TypeInfo(TypeOf.Class, create:() => new RockstarAlbum()),
    'RockstarReference': new TypeInfo(TypeOf.Class, create:() => new RockstarReference()),
    'List<RockstarAlbum>': new TypeInfo(TypeOf.Class, create:() => new List<RockstarAlbum>()),
    'OnlyDefinedInGenericType': new TypeInfo(TypeOf.Class, create:() => new OnlyDefinedInGenericType()),
    'OnlyDefinedInGenericTypeFrom': new TypeInfo(TypeOf.Class, create:() => new OnlyDefinedInGenericTypeFrom()),
    'OnlyDefinedInGenericTypeInto': new TypeInfo(TypeOf.Class, create:() => new OnlyDefinedInGenericTypeInto()),
    'TypesGroup': new TypeInfo(TypeOf.Class, create:() => new TypesGroup()),
    'ChangeRequestResponse': new TypeInfo(TypeOf.Class, create:() => new ChangeRequestResponse()),
    'CustomHttpErrorResponse': new TypeInfo(TypeOf.Class, create:() => new CustomHttpErrorResponse()),
    'AlwaysThrows': new TypeInfo(TypeOf.Class, create:() => new AlwaysThrows()),
    'AlwaysThrowsFilterAttribute': new TypeInfo(TypeOf.Class, create:() => new AlwaysThrowsFilterAttribute()),
    'AlwaysThrowsGlobalFilter': new TypeInfo(TypeOf.Class, create:() => new AlwaysThrowsGlobalFilter()),
    'CustomFieldHttpErrorResponse': new TypeInfo(TypeOf.Class, create:() => new CustomFieldHttpErrorResponse()),
    'NoRepeatResponse': new TypeInfo(TypeOf.Class, create:() => new NoRepeatResponse()),
    'BatchThrowsResponse': new TypeInfo(TypeOf.Class, create:() => new BatchThrowsResponse()),
    'ObjectDesignResponse': new TypeInfo(TypeOf.Class, create:() => new ObjectDesignResponse()),
    'CreateJwtResponse': new TypeInfo(TypeOf.Class, create:() => new CreateJwtResponse()),
    'CreateRefreshJwtResponse': new TypeInfo(TypeOf.Class, create:() => new CreateRefreshJwtResponse()),
    'MetadataTestResponse': new TypeInfo(TypeOf.Class, create:() => new MetadataTestResponse()),
    'List<MetadataTestChild>': new TypeInfo(TypeOf.Class, create:() => new List<MetadataTestChild>()),
    'GetExampleResponse': new TypeInfo(TypeOf.Class, create:() => new GetExampleResponse()),
    'AutoQueryMetadataResponse': new TypeInfo(TypeOf.Class, create:() => new AutoQueryMetadataResponse()),
    'List<AutoQueryOperation>': new TypeInfo(TypeOf.Class, create:() => new List<AutoQueryOperation>()),
    'List<MetadataType>': new TypeInfo(TypeOf.Class, create:() => new List<MetadataType>()),
    'HelloACodeGenTestResponse': new TypeInfo(TypeOf.Class, create:() => new HelloACodeGenTestResponse()),
    'HelloResponse': new TypeInfo(TypeOf.Class, create:() => new HelloResponse()),
    'HelloAnnotatedResponse': new TypeInfo(TypeOf.Class, create:() => new HelloAnnotatedResponse()),
    'HelloList': new TypeInfo(TypeOf.Class, create:() => new HelloList()),
    'HelloArray': new TypeInfo(TypeOf.Class, create:() => new HelloArray()),
    'HelloExistingResponse': new TypeInfo(TypeOf.Class, create:() => new HelloExistingResponse()),
    'List<ArrayResult>': new TypeInfo(TypeOf.Class, create:() => new List<ArrayResult>()),
    'List<ListResult>': new TypeInfo(TypeOf.Class, create:() => new List<ListResult>()),
    'AllTypes': new TypeInfo(TypeOf.Class, create:() => new AllTypes()),
    'Map<int,String>': new TypeInfo(TypeOf.Class, create:() => new Map<int,String>()),
    'HelloAllTypesResponse': new TypeInfo(TypeOf.Class, create:() => new HelloAllTypesResponse()),
    'HelloWithDataContractResponse': new TypeInfo(TypeOf.Class, create:() => new HelloWithDataContractResponse()),
    'HelloWithDescriptionResponse': new TypeInfo(TypeOf.Class, create:() => new HelloWithDescriptionResponse()),
    'HelloWithInheritanceResponse': new TypeInfo(TypeOf.Class, create:() => new HelloWithInheritanceResponse()),
    'HelloWithAlternateReturnResponse': new TypeInfo(TypeOf.Class, create:() => new HelloWithAlternateReturnResponse()),
    'HelloWithRouteResponse': new TypeInfo(TypeOf.Class, create:() => new HelloWithRouteResponse()),
    'HelloWithTypeResponse': new TypeInfo(TypeOf.Class, create:() => new HelloWithTypeResponse()),
    'HelloStruct': new TypeInfo(TypeOf.Class, create:() => new HelloStruct()),
    'HelloSessionResponse': new TypeInfo(TypeOf.Class, create:() => new HelloSessionResponse()),
    'HelloImplementsInterface': new TypeInfo(TypeOf.Class, create:() => new HelloImplementsInterface()),
    'Request1Response': new TypeInfo(TypeOf.Class, create:() => new Request1Response()),
    'Request2Response': new TypeInfo(TypeOf.Class, create:() => new Request2Response()),
    'HelloInnerTypesResponse': new TypeInfo(TypeOf.Class, create:() => new HelloInnerTypesResponse()),
    'List<InnerTypeItem>': new TypeInfo(TypeOf.Class, create:() => new List<InnerTypeItem>()),
    'CustomUserSession': new TypeInfo(TypeOf.Class, create:() => new CustomUserSession()),
    'QueryResponseTemplate<T>': new TypeInfo(TypeOf.GenericDef,create:() => new QueryResponseTemplate()),
    'HelloVerbResponse': new TypeInfo(TypeOf.Class, create:() => new HelloVerbResponse()),
    'EnumResponse': new TypeInfo(TypeOf.Class, create:() => new EnumResponse()),
    'ExcludeTestNested': new TypeInfo(TypeOf.Class, create:() => new ExcludeTestNested()),
    'RestrictLocalhost': new TypeInfo(TypeOf.Class, create:() => new RestrictLocalhost()),
    'RestrictInternal': new TypeInfo(TypeOf.Class, create:() => new RestrictInternal()),
    'HelloTuple': new TypeInfo(TypeOf.Class, create:() => new HelloTuple()),
    'Tuple2<String,int>': new TypeInfo(TypeOf.Class, create:() => new Tuple2<String,int>()),
    'Tuple3<String,int,bool>': new TypeInfo(TypeOf.Class, create:() => new Tuple3<String,int,bool>()),
    'List<Tuple2<String,int>>': new TypeInfo(TypeOf.Class, create:() => new List<Tuple2<String,int>>()),
    'List<Tuple3<String,int,bool>>': new TypeInfo(TypeOf.Class, create:() => new List<Tuple3<String,int,bool>>()),
    'HelloAuthenticatedResponse': new TypeInfo(TypeOf.Class, create:() => new HelloAuthenticatedResponse()),
    'Echo': new TypeInfo(TypeOf.Class, create:() => new Echo()),
    'ThrowHttpErrorResponse': new TypeInfo(TypeOf.Class, create:() => new ThrowHttpErrorResponse()),
    'ThrowTypeResponse': new TypeInfo(TypeOf.Class, create:() => new ThrowTypeResponse()),
    'ThrowValidationResponse': new TypeInfo(TypeOf.Class, create:() => new ThrowValidationResponse()),
    'acsprofileResponse': new TypeInfo(TypeOf.Class, create:() => new acsprofileResponse()),
    'ReturnedDto': new TypeInfo(TypeOf.Class, create:() => new ReturnedDto()),
    'MatchesHtml': new TypeInfo(TypeOf.Class, create:() => new MatchesHtml()),
    'MatchesJson': new TypeInfo(TypeOf.Class, create:() => new MatchesJson()),
    'TimestampData': new TypeInfo(TypeOf.Class, create:() => new TimestampData()),
    'TestHtml': new TypeInfo(TypeOf.Class, create:() => new TestHtml()),
    'ViewResponse': new TypeInfo(TypeOf.Class, create:() => new ViewResponse()),
    'SwaggerModel': new TypeInfo(TypeOf.Class, create:() => new SwaggerModel()),
    'PlainDto': new TypeInfo(TypeOf.Class, create:() => new PlainDto()),
    'HttpResultDto': new TypeInfo(TypeOf.Class, create:() => new HttpResultDto()),
    'TestMqRestriction': new TypeInfo(TypeOf.Class, create:() => new TestMqRestriction()),
    'SetCache': new TypeInfo(TypeOf.Class, create:() => new SetCache()),
    'SwaggerComplexResponse': new TypeInfo(TypeOf.Class, create:() => new SwaggerComplexResponse()),
    'GetSwaggerExamples': new TypeInfo(TypeOf.Class, create:() => new GetSwaggerExamples()),
    'GetSwaggerExample': new TypeInfo(TypeOf.Class, create:() => new GetSwaggerExample()),
    'PostSwaggerExamples': new TypeInfo(TypeOf.Class, create:() => new PostSwaggerExamples()),
    'PutSwaggerExample': new TypeInfo(TypeOf.Class, create:() => new PutSwaggerExample()),
    'GetLists': new TypeInfo(TypeOf.Class, create:() => new GetLists()),
    'AnonType': new TypeInfo(TypeOf.Class, create:() => new AnonType()),
    'QueryRequestLogs': new TypeInfo(TypeOf.Class, create:() => new QueryRequestLogs()),
    'TodayLogs': new TypeInfo(TypeOf.Class, create:() => new TodayLogs()),
    'TodayErrorLogs': new TypeInfo(TypeOf.Class, create:() => new TodayErrorLogs()),
    'YesterdayLogs': new TypeInfo(TypeOf.Class, create:() => new YesterdayLogs()),
    'YesterdayErrorLogs': new TypeInfo(TypeOf.Class, create:() => new YesterdayErrorLogs()),
    'QueryRockstars': new TypeInfo(TypeOf.Class, create:() => new QueryRockstars()),
    'QueryRockstarsCached': new TypeInfo(TypeOf.Class, create:() => new QueryRockstarsCached()),
    'ChangeRequest': new TypeInfo(TypeOf.Class, create:() => new ChangeRequest()),
    'CompressFile': new TypeInfo(TypeOf.Class, create:() => new CompressFile()),
    'LegacyLeadPost': new TypeInfo(TypeOf.Class, create:() => new LegacyLeadPost()),
    'Info': new TypeInfo(TypeOf.Class, create:() => new Info()),
    'CustomHttpError': new TypeInfo(TypeOf.Class, create:() => new CustomHttpError()),
    'CustomFieldHttpError': new TypeInfo(TypeOf.Class, create:() => new CustomFieldHttpError()),
    'FallbackRoute': new TypeInfo(TypeOf.Class, create:() => new FallbackRoute()),
    'NoRepeat': new TypeInfo(TypeOf.Class, create:() => new NoRepeat()),
    'BatchThrows': new TypeInfo(TypeOf.Class, create:() => new BatchThrows()),
    'BatchThrowsAsync': new TypeInfo(TypeOf.Class, create:() => new BatchThrowsAsync()),
    'ObjectId': new TypeInfo(TypeOf.Class, create:() => new ObjectId()),
    'CreateJwt': new TypeInfo(TypeOf.Class, create:() => new CreateJwt()),
    'CreateRefreshJwt': new TypeInfo(TypeOf.Class, create:() => new CreateRefreshJwt()),
    'MetadataTest': new TypeInfo(TypeOf.Class, create:() => new MetadataTest()),
    'GetExample': new TypeInfo(TypeOf.Class, create:() => new GetExample()),
    'MetadataRequest': new TypeInfo(TypeOf.Class, create:() => new MetadataRequest()),
    'ExcludeMetadataProperty': new TypeInfo(TypeOf.Class, create:() => new ExcludeMetadataProperty()),
    'NamedConnection': new TypeInfo(TypeOf.Class, create:() => new NamedConnection()),
    'HelloACodeGenTest': new TypeInfo(TypeOf.Class, create:() => new HelloACodeGenTest()),
    'HelloInService': new TypeInfo(TypeOf.Class, create:() => new HelloInService()),
    'Hello': new TypeInfo(TypeOf.Class, create:() => new Hello()),
    'HelloAnnotated': new TypeInfo(TypeOf.Class, create:() => new HelloAnnotated()),
    'HelloWithNestedClass': new TypeInfo(TypeOf.Class, create:() => new HelloWithNestedClass()),
    'HelloReturnList': new TypeInfo(TypeOf.Class, create:() => new HelloReturnList()),
    'HelloExisting': new TypeInfo(TypeOf.Class, create:() => new HelloExisting()),
    'HelloWithEnum': new TypeInfo(TypeOf.Class, create:() => new HelloWithEnum()),
    'RestrictedAttributes': new TypeInfo(TypeOf.Class, create:() => new RestrictedAttributes()),
    'AllowedAttributes': new TypeInfo(TypeOf.Class, create:() => new AllowedAttributes()),
    'HelloMultiline': new TypeInfo(TypeOf.Class, create:() => new HelloMultiline()),
    'HelloAllTypes': new TypeInfo(TypeOf.Class, create:() => new HelloAllTypes()),
    'HelloString': new TypeInfo(TypeOf.Class, create:() => new HelloString()),
    'HelloVoid': new TypeInfo(TypeOf.Class, create:() => new HelloVoid()),
    'HelloWithDataContract': new TypeInfo(TypeOf.Class, create:() => new HelloWithDataContract()),
    'HelloWithDescription': new TypeInfo(TypeOf.Class, create:() => new HelloWithDescription()),
    'HelloWithInheritance': new TypeInfo(TypeOf.Class, create:() => new HelloWithInheritance()),
    'HelloWithGenericInheritance': new TypeInfo(TypeOf.Class, create:() => new HelloWithGenericInheritance()),
    'HelloWithGenericInheritance2': new TypeInfo(TypeOf.Class, create:() => new HelloWithGenericInheritance2()),
    'HelloWithNestedInheritance': new TypeInfo(TypeOf.Class, create:() => new HelloWithNestedInheritance()),
    'HelloWithListInheritance': new TypeInfo(TypeOf.Class, create:() => new HelloWithListInheritance()),
    'HelloWithReturn': new TypeInfo(TypeOf.Class, create:() => new HelloWithReturn()),
    'HelloWithRoute': new TypeInfo(TypeOf.Class, create:() => new HelloWithRoute()),
    'HelloWithType': new TypeInfo(TypeOf.Class, create:() => new HelloWithType()),
    'HelloSession': new TypeInfo(TypeOf.Class, create:() => new HelloSession()),
    'HelloInterface': new TypeInfo(TypeOf.Class, create:() => new HelloInterface()),
    'Request1': new TypeInfo(TypeOf.Class, create:() => new Request1()),
    'Request2': new TypeInfo(TypeOf.Class, create:() => new Request2()),
    'HelloInnerTypes': new TypeInfo(TypeOf.Class, create:() => new HelloInnerTypes()),
    'GetUserSession': new TypeInfo(TypeOf.Class, create:() => new GetUserSession()),
    'QueryTemplate': new TypeInfo(TypeOf.Class, create:() => new QueryTemplate()),
    'HelloReserved': new TypeInfo(TypeOf.Class, create:() => new HelloReserved()),
    'HelloDictionary': new TypeInfo(TypeOf.Class, create:() => new HelloDictionary()),
    'HelloBuiltin': new TypeInfo(TypeOf.Class, create:() => new HelloBuiltin()),
    'HelloGet': new TypeInfo(TypeOf.Class, create:() => new HelloGet()),
    'HelloPost': new TypeInfo(TypeOf.Class, create:() => new HelloPost()),
    'HelloPut': new TypeInfo(TypeOf.Class, create:() => new HelloPut()),
    'HelloDelete': new TypeInfo(TypeOf.Class, create:() => new HelloDelete()),
    'HelloPatch': new TypeInfo(TypeOf.Class, create:() => new HelloPatch()),
    'HelloReturnVoid': new TypeInfo(TypeOf.Class, create:() => new HelloReturnVoid()),
    'EnumRequest': new TypeInfo(TypeOf.Class, create:() => new EnumRequest()),
    'ExcludeTest1': new TypeInfo(TypeOf.Class, create:() => new ExcludeTest1()),
    'ExcludeTest2': new TypeInfo(TypeOf.Class, create:() => new ExcludeTest2()),
    'HelloAuthenticated': new TypeInfo(TypeOf.Class, create:() => new HelloAuthenticated()),
    'Echoes': new TypeInfo(TypeOf.Class, create:() => new Echoes()),
    'CachedEcho': new TypeInfo(TypeOf.Class, create:() => new CachedEcho()),
    'AsyncTest': new TypeInfo(TypeOf.Class, create:() => new AsyncTest()),
    'ThrowHttpError': new TypeInfo(TypeOf.Class, create:() => new ThrowHttpError()),
    'Throw404': new TypeInfo(TypeOf.Class, create:() => new Throw404()),
    'Return404': new TypeInfo(TypeOf.Class, create:() => new Return404()),
    'Return404Result': new TypeInfo(TypeOf.Class, create:() => new Return404Result()),
    'ThrowType': new TypeInfo(TypeOf.Class, create:() => new ThrowType()),
    'ThrowValidation': new TypeInfo(TypeOf.Class, create:() => new ThrowValidation()),
    'ACSProfile': new TypeInfo(TypeOf.Class, create:() => new ACSProfile()),
    'ReturnString': new TypeInfo(TypeOf.Class, create:() => new ReturnString()),
    'ReturnBytes': new TypeInfo(TypeOf.Class, create:() => new ReturnBytes()),
    'ReturnStream': new TypeInfo(TypeOf.Class, create:() => new ReturnStream()),
    'GetRequest1': new TypeInfo(TypeOf.Class, create:() => new GetRequest1()),
    'GetRequest2': new TypeInfo(TypeOf.Class, create:() => new GetRequest2()),
    'MatchesLastInt': new TypeInfo(TypeOf.Class, create:() => new MatchesLastInt()),
    'MatchesNotLastInt': new TypeInfo(TypeOf.Class, create:() => new MatchesNotLastInt()),
    'MatchesId': new TypeInfo(TypeOf.Class, create:() => new MatchesId()),
    'MatchesSlug': new TypeInfo(TypeOf.Class, create:() => new MatchesSlug()),
    'SwaggerVersionTest': new TypeInfo(TypeOf.Class, create:() => new SwaggerVersionTest()),
    'TestErrorView': new TypeInfo(TypeOf.Class, create:() => new TestErrorView()),
    'GetTimestamp': new TypeInfo(TypeOf.Class, create:() => new GetTimestamp()),
    'TestMiniverView': new TypeInfo(TypeOf.Class, create:() => new TestMiniverView()),
    'TestExecProc': new TypeInfo(TypeOf.Class, create:() => new TestExecProc()),
    'GetFile': new TypeInfo(TypeOf.Class, create:() => new GetFile()),
    'TestHtml2': new TypeInfo(TypeOf.Class, create:() => new TestHtml2()),
    'ViewRequest': new TypeInfo(TypeOf.Class, create:() => new ViewRequest()),
    'IndexPage': new TypeInfo(TypeOf.Class, create:() => new IndexPage()),
    'ReturnText': new TypeInfo(TypeOf.Class, create:() => new ReturnText()),
    'DownloadGzipFile': new TypeInfo(TypeOf.Class, create:() => new DownloadGzipFile()),
    'MatchName': new TypeInfo(TypeOf.Class, create:() => new MatchName()),
    'MatchLang': new TypeInfo(TypeOf.Class, create:() => new MatchLang()),
    'SwaggerTest': new TypeInfo(TypeOf.Class, create:() => new SwaggerTest()),
    'SwaggerTest2': new TypeInfo(TypeOf.Class, create:() => new SwaggerTest2()),
    'SwaggerComplex': new TypeInfo(TypeOf.Class, create:() => new SwaggerComplex()),
    'SwaggerPostTest': new TypeInfo(TypeOf.Class, create:() => new SwaggerPostTest()),
    'SwaggerPostTest2': new TypeInfo(TypeOf.Class, create:() => new SwaggerPostTest2()),
    'SwaggerMultiApiResponseTest': new TypeInfo(TypeOf.Class, create:() => new SwaggerMultiApiResponseTest()),
    'DynamicallyRegistered': new TypeInfo(TypeOf.Class, create:() => new DynamicallyRegistered()),
    'QueryPostgresRockstars': new TypeInfo(TypeOf.Class, create:() => new QueryPostgresRockstars()),
    'QueryPostgresPgRockstars': new TypeInfo(TypeOf.Class, create:() => new QueryPostgresPgRockstars()),
    'QueryRockstarsConventions': new TypeInfo(TypeOf.Class, create:() => new QueryRockstarsConventions()),
    'QueryCustomRockstars': new TypeInfo(TypeOf.Class, create:() => new QueryCustomRockstars()),
    'QueryRockstarAlbums': new TypeInfo(TypeOf.Class, create:() => new QueryRockstarAlbums()),
    'QueryRockstarAlbumsImplicit': new TypeInfo(TypeOf.Class, create:() => new QueryRockstarAlbumsImplicit()),
    'QueryRockstarAlbumsLeftJoin': new TypeInfo(TypeOf.Class, create:() => new QueryRockstarAlbumsLeftJoin()),
    'QueryOverridedRockstars': new TypeInfo(TypeOf.Class, create:() => new QueryOverridedRockstars()),
    'QueryOverridedCustomRockstars': new TypeInfo(TypeOf.Class, create:() => new QueryOverridedCustomRockstars()),
    'QueryFieldRockstars': new TypeInfo(TypeOf.Class, create:() => new QueryFieldRockstars()),
    'QueryFieldRockstarsDynamic': new TypeInfo(TypeOf.Class, create:() => new QueryFieldRockstarsDynamic()),
    'QueryRockstarsFilter': new TypeInfo(TypeOf.Class, create:() => new QueryRockstarsFilter()),
    'QueryCustomRockstarsFilter': new TypeInfo(TypeOf.Class, create:() => new QueryCustomRockstarsFilter()),
    'QueryRockstarsIFilter': new TypeInfo(TypeOf.Class, create:() => new QueryRockstarsIFilter()),
    'QueryOrRockstars': new TypeInfo(TypeOf.Class, create:() => new QueryOrRockstars()),
    'QueryGetRockstars': new TypeInfo(TypeOf.Class, create:() => new QueryGetRockstars()),
    'QueryGetRockstarsDynamic': new TypeInfo(TypeOf.Class, create:() => new QueryGetRockstarsDynamic()),
    'SearchMovies': new TypeInfo(TypeOf.Class, create:() => new SearchMovies()),
    'QueryMovies': new TypeInfo(TypeOf.Class, create:() => new QueryMovies()),
    'StreamMovies': new TypeInfo(TypeOf.Class, create:() => new StreamMovies()),
    'QueryUnknownRockstars': new TypeInfo(TypeOf.Class, create:() => new QueryUnknownRockstars()),
    'QueryRockstarsWithReferences': new TypeInfo(TypeOf.Class, create:() => new QueryRockstarsWithReferences()),
    'QueryPocoBase': new TypeInfo(TypeOf.Class, create:() => new QueryPocoBase()),
    'QueryPocoIntoBase': new TypeInfo(TypeOf.Class, create:() => new QueryPocoIntoBase()),
    'QueryAllTypes': new TypeInfo(TypeOf.Class, create:() => new QueryAllTypes()),
    'QueryDataRockstars': new TypeInfo(TypeOf.Class, create:() => new QueryDataRockstars()),
});
