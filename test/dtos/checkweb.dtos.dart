/* Options:
Date: 2018-04-11 03:10:00
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
DefaultImports: ../../lib/client.dart,dart:collection,dart:typed_data
*/

import '../../lib/client.dart';
import 'dart:collection';
import 'dart:typed_data';

class RequestLogEntry
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

    RequestLogEntry fromMap(Map<String, dynamic> map) => new RequestLogEntry.fromJson(map);
    RequestLogEntry.fromJson(Map<String, dynamic> json) {
        id = json['id'];
        dateTime = JsonConverters.fromJson(json['dateTime'],'DateTime',_types);
        statusCode = json['statusCode'];
        statusDescription = json['statusDescription'];
        httpMethod = json['httpMethod'];
        absoluteUri = json['absoluteUri'];
        pathInfo = json['pathInfo'];
        requestBody = json['requestBody'];
        requestDto = JsonConverters.fromJson(json['requestDto'],'dynamic',_types);
        userAuthId = json['userAuthId'];
        sessionId = json['sessionId'];
        ipAddress = json['ipAddress'];
        forwardedFor = json['forwardedFor'];
        referer = json['referer'];
        headers = json['headers'];
        formData = json['formData'];
        items = json['items'];
        session = JsonConverters.fromJson(json['session'],'dynamic',_types);
        responseDto = JsonConverters.fromJson(json['responseDto'],'dynamic',_types);
        errorResponse = JsonConverters.fromJson(json['errorResponse'],'dynamic',_types);
        exceptionSource = json['exceptionSource'];
        exceptionData = JsonConverters.fromJson(json['exceptionData'],'dynamic',_types);
        requestDuration = JsonConverters.fromJson(json['requestDuration'],'Duration',_types);
    }

    Map<String, dynamic> toJson() => {
        'id': id,
        'dateTime': JsonConverters.toJson(dateTime,'DateTime',_types),
        'statusCode': statusCode,
        'statusDescription': statusDescription,
        'httpMethod': httpMethod,
        'absoluteUri': absoluteUri,
        'pathInfo': pathInfo,
        'requestBody': requestBody,
        'requestDto': JsonConverters.toJson(requestDto,'dynamic',_types),
        'userAuthId': userAuthId,
        'sessionId': sessionId,
        'ipAddress': ipAddress,
        'forwardedFor': forwardedFor,
        'referer': referer,
        'headers': headers,
        'formData': formData,
        'items': items,
        'session': JsonConverters.toJson(session,'dynamic',_types),
        'responseDto': JsonConverters.toJson(responseDto,'dynamic',_types),
        'errorResponse': JsonConverters.toJson(errorResponse,'dynamic',_types),
        'exceptionSource': exceptionSource,
        'exceptionData': JsonConverters.toJson(exceptionData,'dynamic',_types),
        'requestDuration': JsonConverters.toJson(requestDuration,'Duration',_types)
    };

}

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
        meta = json['meta'];
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
        meta = json['meta'];
    }

    Map<String, dynamic> toJson() => {
        'errorCode': errorCode,
        'message': message,
        'stackTrace': stackTrace,
        'errors': JsonConverters.toJson(errors,'List<ResponseError>',_types),
        'meta': meta
    };

}

class Rockstar
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

class ObjectDesign
{
    int id;

    ObjectDesign({this.id});

    ObjectDesign fromMap(Map<String, dynamic> map) => new ObjectDesign.fromJson(map);
    ObjectDesign.fromJson(Map<String, dynamic> json) {
        id = json['id'];
    }

    Map<String, dynamic> toJson() => {
        'id': id
    };

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
        meta = json['meta'];
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

class MetadataTypeName
{
    String name;
    String namespace;
    List<String> genericArgs;

    MetadataTypeName({this.name,this.namespace,this.genericArgs});

    MetadataTypeName fromMap(Map<String, dynamic> map) => new MetadataTypeName.fromJson(map);
    MetadataTypeName.fromJson(Map<String, dynamic> json) {
        name = json['name'];
        namespace = json['namespace'];
        genericArgs = JsonConverters.fromJson(json['genericArgs'],'List<String>',_types);
    }

    Map<String, dynamic> toJson() => {
        'name': name,
        'namespace': namespace,
        'genericArgs': JsonConverters.toJson(genericArgs,'List<String>',_types)
    };

}

class MetadataRoute
{
    String path;
    String verbs;
    String notes;
    String summary;

    MetadataRoute({this.path,this.verbs,this.notes,this.summary});

    MetadataRoute fromMap(Map<String, dynamic> map) => new MetadataRoute.fromJson(map);
    MetadataRoute.fromJson(Map<String, dynamic> json) {
        path = json['path'];
        verbs = json['verbs'];
        notes = json['notes'];
        summary = json['summary'];
    }

    Map<String, dynamic> toJson() => {
        'path': path,
        'verbs': verbs,
        'notes': notes,
        'summary': summary
    };

}

class MetadataDataContract
{
    String name;
    String namespace;

    MetadataDataContract({this.name,this.namespace});

    MetadataDataContract fromMap(Map<String, dynamic> map) => new MetadataDataContract.fromJson(map);
    MetadataDataContract.fromJson(Map<String, dynamic> json) {
        name = json['name'];
        namespace = json['namespace'];
    }

    Map<String, dynamic> toJson() => {
        'name': name,
        'namespace': namespace
    };

}

class MetadataDataMember
{
    String name;
    int order;
    bool isRequired;
    bool emitDefaultValue;

    MetadataDataMember({this.name,this.order,this.isRequired,this.emitDefaultValue});

    MetadataDataMember fromMap(Map<String, dynamic> map) => new MetadataDataMember.fromJson(map);
    MetadataDataMember.fromJson(Map<String, dynamic> json) {
        name = json['name'];
        order = json['order'];
        isRequired = json['isRequired'];
        emitDefaultValue = json['emitDefaultValue'];
    }

    Map<String, dynamic> toJson() => {
        'name': name,
        'order': order,
        'isRequired': isRequired,
        'emitDefaultValue': emitDefaultValue
    };

}

class MetadataAttribute
{
    String name;
    List<MetadataPropertyType> constructorArgs;
    List<MetadataPropertyType> args;

    MetadataAttribute({this.name,this.constructorArgs,this.args});

    MetadataAttribute fromMap(Map<String, dynamic> map) => new MetadataAttribute.fromJson(map);
    MetadataAttribute.fromJson(Map<String, dynamic> json) {
        name = json['name'];
        constructorArgs = JsonConverters.fromJson(json['constructorArgs'],'List<MetadataPropertyType>',_types);
        args = JsonConverters.fromJson(json['args'],'List<MetadataPropertyType>',_types);
    }

    Map<String, dynamic> toJson() => {
        'name': name,
        'constructorArgs': JsonConverters.toJson(constructorArgs,'List<MetadataPropertyType>',_types),
        'args': JsonConverters.toJson(args,'List<MetadataPropertyType>',_types)
    };

}

class MetadataPropertyType
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

    MetadataPropertyType fromMap(Map<String, dynamic> map) => new MetadataPropertyType.fromJson(map);
    MetadataPropertyType.fromJson(Map<String, dynamic> json) {
        name = json['name'];
        type = json['type'];
        isValueType = json['isValueType'];
        isSystemType = json['isSystemType'];
        isEnum = json['isEnum'];
        typeNamespace = json['typeNamespace'];
        genericArgs = JsonConverters.fromJson(json['genericArgs'],'List<String>',_types);
        value = json['value'];
        description = json['description'];
        dataMember = JsonConverters.fromJson(json['dataMember'],'MetadataDataMember',_types);
        readOnly = json['readOnly'];
        paramType = json['paramType'];
        displayType = json['displayType'];
        isRequired = json['isRequired'];
        allowableValues = JsonConverters.fromJson(json['allowableValues'],'List<String>',_types);
        allowableMin = json['allowableMin'];
        allowableMax = json['allowableMax'];
        attributes = JsonConverters.fromJson(json['attributes'],'List<MetadataAttribute>',_types);
    }

    Map<String, dynamic> toJson() => {
        'name': name,
        'type': type,
        'isValueType': isValueType,
        'isSystemType': isSystemType,
        'isEnum': isEnum,
        'typeNamespace': typeNamespace,
        'genericArgs': JsonConverters.toJson(genericArgs,'List<String>',_types),
        'value': value,
        'description': description,
        'dataMember': JsonConverters.toJson(dataMember,'MetadataDataMember',_types),
        'readOnly': readOnly,
        'paramType': paramType,
        'displayType': displayType,
        'isRequired': isRequired,
        'allowableValues': JsonConverters.toJson(allowableValues,'List<String>',_types),
        'allowableMin': allowableMin,
        'allowableMax': allowableMax,
        'attributes': JsonConverters.toJson(attributes,'List<MetadataAttribute>',_types)
    };

}

class MetadataType
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

    MetadataType fromMap(Map<String, dynamic> map) => new MetadataType.fromJson(map);
    MetadataType.fromJson(Map<String, dynamic> json) {
        name = json['name'];
        namespace = json['namespace'];
        genericArgs = JsonConverters.fromJson(json['genericArgs'],'List<String>',_types);
        inherits = JsonConverters.fromJson(json['inherits'],'MetadataTypeName',_types);
        Implements = JsonConverters.fromJson(json['implements'],'List<MetadataTypeName>',_types);
        displayType = json['displayType'];
        description = json['description'];
        returnVoidMarker = json['returnVoidMarker'];
        isNested = json['isNested'];
        isEnum = json['isEnum'];
        isEnumInt = json['isEnumInt'];
        isInterface = json['isInterface'];
        isAbstract = json['isAbstract'];
        returnMarkerTypeName = JsonConverters.fromJson(json['returnMarkerTypeName'],'MetadataTypeName',_types);
        routes = JsonConverters.fromJson(json['routes'],'List<MetadataRoute>',_types);
        dataContract = JsonConverters.fromJson(json['dataContract'],'MetadataDataContract',_types);
        properties = JsonConverters.fromJson(json['properties'],'List<MetadataPropertyType>',_types);
        attributes = JsonConverters.fromJson(json['attributes'],'List<MetadataAttribute>',_types);
        innerTypes = JsonConverters.fromJson(json['innerTypes'],'List<MetadataTypeName>',_types);
        enumNames = JsonConverters.fromJson(json['enumNames'],'List<String>',_types);
        enumValues = JsonConverters.fromJson(json['enumValues'],'List<String>',_types);
        meta = json['meta'];
    }

    Map<String, dynamic> toJson() => {
        'name': name,
        'namespace': namespace,
        'genericArgs': JsonConverters.toJson(genericArgs,'List<String>',_types),
        'inherits': JsonConverters.toJson(inherits,'MetadataTypeName',_types),
        'implements': JsonConverters.toJson(Implements,'List<MetadataTypeName>',_types),
        'displayType': displayType,
        'description': description,
        'returnVoidMarker': returnVoidMarker,
        'isNested': isNested,
        'isEnum': isEnum,
        'isEnumInt': isEnumInt,
        'isInterface': isInterface,
        'isAbstract': isAbstract,
        'returnMarkerTypeName': JsonConverters.toJson(returnMarkerTypeName,'MetadataTypeName',_types),
        'routes': JsonConverters.toJson(routes,'List<MetadataRoute>',_types),
        'dataContract': JsonConverters.toJson(dataContract,'MetadataDataContract',_types),
        'properties': JsonConverters.toJson(properties,'List<MetadataPropertyType>',_types),
        'attributes': JsonConverters.toJson(attributes,'List<MetadataAttribute>',_types),
        'innerTypes': JsonConverters.toJson(innerTypes,'List<MetadataTypeName>',_types),
        'enumNames': JsonConverters.toJson(enumNames,'List<String>',_types),
        'enumValues': JsonConverters.toJson(enumValues,'List<String>',_types),
        'meta': meta
    };

}

class AutoQueryConvention
{
    String name;
    String value;
    String types;

    AutoQueryConvention({this.name,this.value,this.types});

    AutoQueryConvention fromMap(Map<String, dynamic> map) => new AutoQueryConvention.fromJson(map);
    AutoQueryConvention.fromJson(Map<String, dynamic> json) {
        name = json['name'];
        value = json['value'];
        types = json['types'];
    }

    Map<String, dynamic> toJson() => {
        'name': name,
        'value': value,
        'types': types
    };

}

class AutoQueryViewerConfig
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

    AutoQueryViewerConfig fromMap(Map<String, dynamic> map) => new AutoQueryViewerConfig.fromJson(map);
    AutoQueryViewerConfig.fromJson(Map<String, dynamic> json) {
        serviceBaseUrl = json['serviceBaseUrl'];
        serviceName = json['serviceName'];
        serviceDescription = json['serviceDescription'];
        serviceIconUrl = json['serviceIconUrl'];
        formats = JsonConverters.fromJson(json['formats'],'List<String>',_types);
        maxLimit = json['maxLimit'];
        isPublic = json['isPublic'];
        onlyShowAnnotatedServices = json['onlyShowAnnotatedServices'];
        implicitConventions = JsonConverters.fromJson(json['implicitConventions'],'List<AutoQueryConvention>',_types);
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
        meta = json['meta'];
    }

    Map<String, dynamic> toJson() => {
        'serviceBaseUrl': serviceBaseUrl,
        'serviceName': serviceName,
        'serviceDescription': serviceDescription,
        'serviceIconUrl': serviceIconUrl,
        'formats': JsonConverters.toJson(formats,'List<String>',_types),
        'maxLimit': maxLimit,
        'isPublic': isPublic,
        'onlyShowAnnotatedServices': onlyShowAnnotatedServices,
        'implicitConventions': JsonConverters.toJson(implicitConventions,'List<AutoQueryConvention>',_types),
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

}

class AutoQueryViewerUserInfo
{
    bool isAuthenticated;
    int queryCount;
    Map<String,String> meta;

    AutoQueryViewerUserInfo({this.isAuthenticated,this.queryCount,this.meta});

    AutoQueryViewerUserInfo fromMap(Map<String, dynamic> map) => new AutoQueryViewerUserInfo.fromJson(map);
    AutoQueryViewerUserInfo.fromJson(Map<String, dynamic> json) {
        isAuthenticated = json['isAuthenticated'];
        queryCount = json['queryCount'];
        meta = json['meta'];
    }

    Map<String, dynamic> toJson() => {
        'isAuthenticated': isAuthenticated,
        'queryCount': queryCount,
        'meta': meta
    };

}

class AutoQueryOperation
{
    String request;
    String from;
    String to;
    Map<String,String> meta;

    AutoQueryOperation({this.request,this.from,this.to,this.meta});

    AutoQueryOperation fromMap(Map<String, dynamic> map) => new AutoQueryOperation.fromJson(map);
    AutoQueryOperation.fromJson(Map<String, dynamic> json) {
        request = json['request'];
        from = json['from'];
        to = json['to'];
        meta = json['meta'];
    }

    Map<String, dynamic> toJson() => {
        'request': request,
        'from': from,
        'to': to,
        'meta': meta
    };

}

class NativeTypesTestService
{
    NativeTypesTestService();
    NativeTypesTestService fromMap(Map<String, dynamic> map) => new NativeTypesTestService.fromJson(map);
    NativeTypesTestService.fromJson(Map<String, dynamic> json) : super();
    Map<String, dynamic> toJson() => {};
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

class OnlyInReturnListArg
{
    String result;

    OnlyInReturnListArg({this.result});

    OnlyInReturnListArg fromMap(Map<String, dynamic> map) => new OnlyInReturnListArg.fromJson(map);
    OnlyInReturnListArg.fromJson(Map<String, dynamic> json) {
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

class AllCollectionTypes
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

    AllCollectionTypes fromMap(Map<String, dynamic> map) => new AllCollectionTypes.fromJson(map);
    AllCollectionTypes.fromJson(Map<String, dynamic> json) {
        intArray = JsonConverters.fromJson(json['intArray'],'List<int>',_types);
        intList = JsonConverters.fromJson(json['intList'],'List<int>',_types);
        stringArray = JsonConverters.fromJson(json['stringArray'],'List<String>',_types);
        stringList = JsonConverters.fromJson(json['stringList'],'List<String>',_types);
        pocoArray = JsonConverters.fromJson(json['pocoArray'],'List<Poco>',_types);
        pocoList = JsonConverters.fromJson(json['pocoList'],'List<Poco>',_types);
        nullableByteArray = JsonConverters.fromJson(json['nullableByteArray'],'Uint8List',_types);
        nullableByteList = JsonConverters.fromJson(json['nullableByteList'],'List<int>',_types);
        nullableDateTimeArray = JsonConverters.fromJson(json['nullableDateTimeArray'],'List<DateTime>',_types);
        nullableDateTimeList = JsonConverters.fromJson(json['nullableDateTimeList'],'List<DateTime>',_types);
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
        'nullableByteArray': JsonConverters.toJson(nullableByteArray,'Uint8List',_types),
        'nullableByteList': JsonConverters.toJson(nullableByteList,'List<int>',_types),
        'nullableDateTimeArray': JsonConverters.toJson(nullableDateTimeArray,'List<DateTime>',_types),
        'nullableDateTimeList': JsonConverters.toJson(nullableDateTimeList,'List<DateTime>',_types),
        'pocoLookup': JsonConverters.toJson(pocoLookup,'Map<String,List<Poco>>',_types),
        'pocoLookupMap': JsonConverters.toJson(pocoLookupMap,'Map<String,List<Map<String,Poco>>>',_types)
    };

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

class HelloResponseBase
{
    int refId;

    HelloResponseBase({this.refId});

    HelloResponseBase fromMap(Map<String, dynamic> map) => new HelloResponseBase.fromJson(map);
    HelloResponseBase.fromJson(Map<String, dynamic> json) {
        refId = json['refId'];
    }

    Map<String, dynamic> toJson() => {
        'refId': refId
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

class InheritedItem
{
    String name;

    InheritedItem({this.name});

    InheritedItem fromMap(Map<String, dynamic> map) => new InheritedItem.fromJson(map);
    InheritedItem.fromJson(Map<String, dynamic> json) {
        name = json['name'];
    }

    Map<String, dynamic> toJson() => {
        'name': name
    };

}

class HelloWithReturnResponse
{
    String result;

    HelloWithReturnResponse({this.result});

    HelloWithReturnResponse fromMap(Map<String, dynamic> map) => new HelloWithReturnResponse.fromJson(map);
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

abstract class ImplementsPoco
{
    String name;
}

class TypeB
{
    String foo;

    TypeB({this.foo});

    TypeB fromMap(Map<String, dynamic> map) => new TypeB.fromJson(map);
    TypeB.fromJson(Map<String, dynamic> json) {
        foo = json['foo'];
    }

    Map<String, dynamic> toJson() => {
        'foo': foo
    };

}

class TypeA
{
    List<TypeB> bar;

    TypeA({this.bar});

    TypeA fromMap(Map<String, dynamic> map) => new TypeA.fromJson(map);
    TypeA.fromJson(Map<String, dynamic> json) {
        bar = JsonConverters.fromJson(json['bar'],'List<TypeB>',_types);
    }

    Map<String, dynamic> toJson() => {
        'bar': JsonConverters.toJson(bar,'List<TypeB>',_types)
    };

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

class InnerTypeItem
{
    int id;
    String name;

    InnerTypeItem({this.id,this.name});

    InnerTypeItem fromMap(Map<String, dynamic> map) => new InnerTypeItem.fromJson(map);
    InnerTypeItem.fromJson(Map<String, dynamic> json) {
        id = json['id'];
        name = json['name'];
    }

    Map<String, dynamic> toJson() => {
        'id': id,
        'name': name
    };

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

class Tuple2<T1, T2>
{
    T1 item1;
    T2 item2;

    Tuple2({this.item1,this.item2});

    Tuple2 fromMap(Map<String, dynamic> map) => new Tuple2.fromJson(map);
    Tuple2.fromJson(Map<String, dynamic> json) {
        item1 = json['item1'];
        item2 = json['item2'];
    }

    Map<String, dynamic> toJson() => {
        'item1': item1,
        'item2': item2
    };

}

class Tuple3<T1, T2, T3>
{
    T1 item1;
    T2 item2;
    T3 item3;

    Tuple3({this.item1,this.item2,this.item3});

    Tuple3 fromMap(Map<String, dynamic> map) => new Tuple3.fromJson(map);
    Tuple3.fromJson(Map<String, dynamic> json) {
        item1 = json['item1'];
        item2 = json['item2'];
        item3 = json['item3'];
    }

    Map<String, dynamic> toJson() => {
        'item1': item1,
        'item2': item2,
        'item3': item3
    };

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

class SwaggerNestedModel
{
    /**
    * NestedProperty description
    */
    // @ApiMember(Description="NestedProperty description")
    bool nestedProperty;

    SwaggerNestedModel({this.nestedProperty});

    SwaggerNestedModel fromMap(Map<String, dynamic> map) => new SwaggerNestedModel.fromJson(map);
    SwaggerNestedModel.fromJson(Map<String, dynamic> json) {
        nestedProperty = json['nestedProperty'];
    }

    Map<String, dynamic> toJson() => {
        'nestedProperty': nestedProperty
    };

}

class SwaggerNestedModel2
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

    SwaggerNestedModel2 fromMap(Map<String, dynamic> map) => new SwaggerNestedModel2.fromJson(map);
    SwaggerNestedModel2.fromJson(Map<String, dynamic> json) {
        nestedProperty2 = json['nestedProperty2'];
        multipleValues = json['multipleValues'];
        testRange = json['testRange'];
    }

    Map<String, dynamic> toJson() => {
        'nestedProperty2': nestedProperty2,
        'multipleValues': multipleValues,
        'testRange': testRange
    };

}

enum MyEnum
{
    A,
    B,
    C,
}

// @DataContract
class UserApiKey
{
    // @DataMember(Order=1)
    String key;

    // @DataMember(Order=2)
    String keyType;

    // @DataMember(Order=3)
    DateTime expiryDate;

    UserApiKey({this.key,this.keyType,this.expiryDate});

    UserApiKey fromMap(Map<String, dynamic> map) => new UserApiKey.fromJson(map);
    UserApiKey.fromJson(Map<String, dynamic> json) {
        key = json['key'];
        keyType = json['keyType'];
        expiryDate = JsonConverters.fromJson(json['expiryDate'],'DateTime',_types);
    }

    Map<String, dynamic> toJson() => {
        'key': key,
        'keyType': keyType,
        'expiryDate': JsonConverters.toJson(expiryDate,'DateTime',_types)
    };

}

class PgRockstar extends Rockstar
{
    PgRockstar();
    PgRockstar fromMap(Map<String, dynamic> map) => new PgRockstar.fromJson(map);
    PgRockstar.fromJson(Map<String, dynamic> json) : super.fromJson(json);
    Map<String, dynamic> toJson() => super.toJson();
}

class CustomRockstar
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

    CustomRockstar fromMap(Map<String, dynamic> map) => new CustomRockstar.fromJson(map);
    CustomRockstar.fromJson(Map<String, dynamic> json) {
        firstName = json['firstName'];
        lastName = json['lastName'];
        age = json['age'];
        rockstarAlbumName = json['rockstarAlbumName'];
        rockstarGenreName = json['rockstarGenreName'];
    }

    Map<String, dynamic> toJson() => {
        'firstName': firstName,
        'lastName': lastName,
        'age': age,
        'rockstarAlbumName': rockstarAlbumName,
        'rockstarGenreName': rockstarGenreName
    };

}

abstract class IFilterRockstars
{
}

class Movie
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

    Movie fromMap(Map<String, dynamic> map) => new Movie.fromJson(map);
    Movie.fromJson(Map<String, dynamic> json) {
        id = json['id'];
        imdbId = json['imdbId'];
        title = json['title'];
        rating = json['rating'];
        score = json['score'];
        director = json['director'];
        releaseDate = JsonConverters.fromJson(json['releaseDate'],'DateTime',_types);
        tagLine = json['tagLine'];
        genres = JsonConverters.fromJson(json['genres'],'List<String>',_types);
    }

    Map<String, dynamic> toJson() => {
        'id': id,
        'imdbId': imdbId,
        'title': title,
        'rating': rating,
        'score': score,
        'director': director,
        'releaseDate': JsonConverters.toJson(releaseDate,'DateTime',_types),
        'tagLine': tagLine,
        'genres': JsonConverters.toJson(genres,'List<String>',_types)
    };

}

class RockstarAlbum
{
    int id;
    int rockstarId;
    String name;

    RockstarAlbum({this.id,this.rockstarId,this.name});

    RockstarAlbum fromMap(Map<String, dynamic> map) => new RockstarAlbum.fromJson(map);
    RockstarAlbum.fromJson(Map<String, dynamic> json) {
        id = json['id'];
        rockstarId = json['rockstarId'];
        name = json['name'];
    }

    Map<String, dynamic> toJson() => {
        'id': id,
        'rockstarId': rockstarId,
        'name': name
    };

}

class RockstarReference
{
    int id;
    String firstName;
    String lastName;
    int age;
    List<RockstarAlbum> albums;

    RockstarReference({this.id,this.firstName,this.lastName,this.age,this.albums});

    RockstarReference fromMap(Map<String, dynamic> map) => new RockstarReference.fromJson(map);
    RockstarReference.fromJson(Map<String, dynamic> json) {
        id = json['id'];
        firstName = json['firstName'];
        lastName = json['lastName'];
        age = json['age'];
        albums = JsonConverters.fromJson(json['albums'],'List<RockstarAlbum>',_types);
    }

    Map<String, dynamic> toJson() => {
        'id': id,
        'firstName': firstName,
        'lastName': lastName,
        'age': age,
        'albums': JsonConverters.toJson(albums,'List<RockstarAlbum>',_types)
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
        meta = json['meta'];
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

class ChangeRequestResponse
{
    String contentType;
    String header;
    String queryString;
    String form;
    ResponseStatus responseStatus;

    ChangeRequestResponse({this.contentType,this.header,this.queryString,this.form,this.responseStatus});

    ChangeRequestResponse fromMap(Map<String, dynamic> map) => new ChangeRequestResponse.fromJson(map);
    ChangeRequestResponse.fromJson(Map<String, dynamic> json) {
        contentType = json['contentType'];
        header = json['header'];
        queryString = json['queryString'];
        form = json['form'];
        responseStatus = JsonConverters.fromJson(json['responseStatus'],'ResponseStatus',_types);
    }

    Map<String, dynamic> toJson() => {
        'contentType': contentType,
        'header': header,
        'queryString': queryString,
        'form': form,
        'responseStatus': JsonConverters.toJson(responseStatus,'ResponseStatus',_types)
    };

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

// @Route("/alwaysthrows")
class AlwaysThrows implements IReturn<AlwaysThrows>
{
    AlwaysThrows();
    AlwaysThrows fromMap(Map<String, dynamic> map) => new AlwaysThrows.fromJson(map);
    AlwaysThrows.fromJson(Map<String, dynamic> json) : super();
    Map<String, dynamic> toJson() => {};
    createResponse() { return new AlwaysThrows(); }
    String getTypeName() { return "AlwaysThrows"; }
}

// @Route("/alwaysthrowsfilterattribute")
class AlwaysThrowsFilterAttribute implements IReturn<AlwaysThrowsFilterAttribute>
{
    AlwaysThrowsFilterAttribute();
    AlwaysThrowsFilterAttribute fromMap(Map<String, dynamic> map) => new AlwaysThrowsFilterAttribute.fromJson(map);
    AlwaysThrowsFilterAttribute.fromJson(Map<String, dynamic> json) : super();
    Map<String, dynamic> toJson() => {};
    createResponse() { return new AlwaysThrowsFilterAttribute(); }
    String getTypeName() { return "AlwaysThrowsFilterAttribute"; }
}

// @Route("/alwaysthrowsglobalfilter")
class AlwaysThrowsGlobalFilter implements IReturn<AlwaysThrowsGlobalFilter>
{
    AlwaysThrowsGlobalFilter();
    AlwaysThrowsGlobalFilter fromMap(Map<String, dynamic> map) => new AlwaysThrowsGlobalFilter.fromJson(map);
    AlwaysThrowsGlobalFilter.fromJson(Map<String, dynamic> json) : super();
    Map<String, dynamic> toJson() => {};
    createResponse() { return new AlwaysThrowsGlobalFilter(); }
    String getTypeName() { return "AlwaysThrowsGlobalFilter"; }
}

class CustomFieldHttpErrorResponse
{
    String custom;
    ResponseStatus responseStatus;

    CustomFieldHttpErrorResponse({this.custom,this.responseStatus});

    CustomFieldHttpErrorResponse fromMap(Map<String, dynamic> map) => new CustomFieldHttpErrorResponse.fromJson(map);
    CustomFieldHttpErrorResponse.fromJson(Map<String, dynamic> json) {
        custom = json['custom'];
        responseStatus = JsonConverters.fromJson(json['responseStatus'],'ResponseStatus',_types);
    }

    Map<String, dynamic> toJson() => {
        'custom': custom,
        'responseStatus': JsonConverters.toJson(responseStatus,'ResponseStatus',_types)
    };

}

class NoRepeatResponse
{
    String id;

    NoRepeatResponse({this.id});

    NoRepeatResponse fromMap(Map<String, dynamic> map) => new NoRepeatResponse.fromJson(map);
    NoRepeatResponse.fromJson(Map<String, dynamic> json) {
        id = json['id'];
    }

    Map<String, dynamic> toJson() => {
        'id': id
    };

}

class BatchThrowsResponse
{
    String result;
    ResponseStatus responseStatus;

    BatchThrowsResponse({this.result,this.responseStatus});

    BatchThrowsResponse fromMap(Map<String, dynamic> map) => new BatchThrowsResponse.fromJson(map);
    BatchThrowsResponse.fromJson(Map<String, dynamic> json) {
        result = json['result'];
        responseStatus = JsonConverters.fromJson(json['responseStatus'],'ResponseStatus',_types);
    }

    Map<String, dynamic> toJson() => {
        'result': result,
        'responseStatus': JsonConverters.toJson(responseStatus,'ResponseStatus',_types)
    };

}

class ObjectDesignResponse
{
    ObjectDesign data;

    ObjectDesignResponse({this.data});

    ObjectDesignResponse fromMap(Map<String, dynamic> map) => new ObjectDesignResponse.fromJson(map);
    ObjectDesignResponse.fromJson(Map<String, dynamic> json) {
        data = JsonConverters.fromJson(json['data'],'ObjectDesign',_types);
    }

    Map<String, dynamic> toJson() => {
        'data': JsonConverters.toJson(data,'ObjectDesign',_types)
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

class AutoQueryMetadataResponse
{
    AutoQueryViewerConfig config;
    AutoQueryViewerUserInfo userInfo;
    List<AutoQueryOperation> operations;
    List<MetadataType> types;
    ResponseStatus responseStatus;
    Map<String,String> meta;

    AutoQueryMetadataResponse({this.config,this.userInfo,this.operations,this.types,this.responseStatus,this.meta});

    AutoQueryMetadataResponse fromMap(Map<String, dynamic> map) => new AutoQueryMetadataResponse.fromJson(map);
    AutoQueryMetadataResponse.fromJson(Map<String, dynamic> json) {
        config = JsonConverters.fromJson(json['config'],'AutoQueryViewerConfig',_types);
        userInfo = JsonConverters.fromJson(json['userInfo'],'AutoQueryViewerUserInfo',_types);
        operations = JsonConverters.fromJson(json['operations'],'List<AutoQueryOperation>',_types);
        types = JsonConverters.fromJson(json['types'],'List<MetadataType>',_types);
        responseStatus = JsonConverters.fromJson(json['responseStatus'],'ResponseStatus',_types);
        meta = json['meta'];
    }

    Map<String, dynamic> toJson() => {
        'config': JsonConverters.toJson(config,'AutoQueryViewerConfig',_types),
        'userInfo': JsonConverters.toJson(userInfo,'AutoQueryViewerUserInfo',_types),
        'operations': JsonConverters.toJson(operations,'List<AutoQueryOperation>',_types),
        'types': JsonConverters.toJson(types,'List<MetadataType>',_types),
        'responseStatus': JsonConverters.toJson(responseStatus,'ResponseStatus',_types),
        'meta': meta
    };

}

// @DataContract
class HelloACodeGenTestResponse
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

    HelloACodeGenTestResponse fromMap(Map<String, dynamic> map) => new HelloACodeGenTestResponse.fromJson(map);
    HelloACodeGenTestResponse.fromJson(Map<String, dynamic> json) {
        firstResult = json['firstResult'];
        secondResult = json['secondResult'];
    }

    Map<String, dynamic> toJson() => {
        'firstResult': firstResult,
        'secondResult': secondResult
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

/**
* Description on HelloAllResponse type
*/
// @DataContract
class HelloAnnotatedResponse
{
    // @DataMember
    String result;

    HelloAnnotatedResponse({this.result});

    HelloAnnotatedResponse fromMap(Map<String, dynamic> map) => new HelloAnnotatedResponse.fromJson(map);
    HelloAnnotatedResponse.fromJson(Map<String, dynamic> json) {
        result = json['result'];
    }

    Map<String, dynamic> toJson() => {
        'result': result
    };

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

class HelloExistingResponse
{
    HelloList helloList;
    HelloArray helloArray;
    List<ArrayResult> arrayResults;
    List<ListResult> listResults;

    HelloExistingResponse({this.helloList,this.helloArray,this.arrayResults,this.listResults});

    HelloExistingResponse fromMap(Map<String, dynamic> map) => new HelloExistingResponse.fromJson(map);
    HelloExistingResponse.fromJson(Map<String, dynamic> json) {
        helloList = JsonConverters.fromJson(json['helloList'],'HelloList',_types);
        helloArray = JsonConverters.fromJson(json['helloArray'],'HelloArray',_types);
        arrayResults = JsonConverters.fromJson(json['arrayResults'],'List<ArrayResult>',_types);
        listResults = JsonConverters.fromJson(json['listResults'],'List<ListResult>',_types);
    }

    Map<String, dynamic> toJson() => {
        'helloList': JsonConverters.toJson(helloList,'HelloList',_types),
        'helloArray': JsonConverters.toJson(helloArray,'HelloArray',_types),
        'arrayResults': JsonConverters.toJson(arrayResults,'List<ArrayResult>',_types),
        'listResults': JsonConverters.toJson(listResults,'List<ListResult>',_types)
    };

}

class AllTypes implements IReturn<AllTypes>
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
    String point;
    // @DataMember(Name="aliasedName")
    String originalName;

    AllTypes({this.id,this.nullableId,this.byte,this.short,this.Int,this.long,this.uShort,this.uInt,this.uLong,this.float,this.Double,this.decimal,this.string,this.dateTime,this.timeSpan,this.dateTimeOffset,this.guid,this.char,this.keyValuePair,this.nullableDateTime,this.nullableTimeSpan,this.stringList,this.stringArray,this.stringMap,this.intStringMap,this.subType,this.point,this.originalName});

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
        float = json['float'];
        Double = json['double'];
        decimal = json['decimal'];
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
        stringMap = json['stringMap'];
        intStringMap = JsonConverters.fromJson(json['intStringMap'],'Map<int,String>',_types);
        subType = JsonConverters.fromJson(json['subType'],'SubType',_types);
        point = JsonConverters.fromJson(json['point'],'String',_types);
        originalName = json['originalName'];
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
        'subType': JsonConverters.toJson(subType,'SubType',_types),
        'point': JsonConverters.toJson(point,'String',_types),
        'originalName': originalName
    };

    createResponse() { return new AllTypes(); }
    String getTypeName() { return "AllTypes"; }
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

class HelloStruct implements IReturn<HelloStruct>
{
    String point;
    String nullablePoint;

    HelloStruct({this.point,this.nullablePoint});

    HelloStruct fromMap(Map<String, dynamic> map) => new HelloStruct.fromJson(map);
    HelloStruct.fromJson(Map<String, dynamic> json) {
        point = JsonConverters.fromJson(json['point'],'String',_types);
        nullablePoint = JsonConverters.fromJson(json['nullablePoint'],'String',_types);
    }

    Map<String, dynamic> toJson() => {
        'point': JsonConverters.toJson(point,'String',_types),
        'nullablePoint': JsonConverters.toJson(nullablePoint,'String',_types)
    };

    createResponse() { return new HelloStruct(); }
    String getTypeName() { return "HelloStruct"; }
}

class HelloSessionResponse
{
    AuthUserSession result;

    HelloSessionResponse({this.result});

    HelloSessionResponse fromMap(Map<String, dynamic> map) => new HelloSessionResponse.fromJson(map);
    HelloSessionResponse.fromJson(Map<String, dynamic> json) {
        result = JsonConverters.fromJson(json['result'],'AuthUserSession',_types);
    }

    Map<String, dynamic> toJson() => {
        'result': JsonConverters.toJson(result,'AuthUserSession',_types)
    };

}

class HelloImplementsInterface implements IReturn<HelloImplementsInterface>, ImplementsPoco
{
    String name;

    HelloImplementsInterface({this.name});

    HelloImplementsInterface fromMap(Map<String, dynamic> map) => new HelloImplementsInterface.fromJson(map);
    HelloImplementsInterface.fromJson(Map<String, dynamic> json) {
        name = json['name'];
    }

    Map<String, dynamic> toJson() => {
        'name': name
    };

    createResponse() { return new HelloImplementsInterface(); }
    String getTypeName() { return "HelloImplementsInterface"; }
}

class Request1Response
{
    TypeA test;

    Request1Response({this.test});

    Request1Response fromMap(Map<String, dynamic> map) => new Request1Response.fromJson(map);
    Request1Response.fromJson(Map<String, dynamic> json) {
        test = JsonConverters.fromJson(json['test'],'TypeA',_types);
    }

    Map<String, dynamic> toJson() => {
        'test': JsonConverters.toJson(test,'TypeA',_types)
    };

}

class Request2Response
{
    TypeA test;

    Request2Response({this.test});

    Request2Response fromMap(Map<String, dynamic> map) => new Request2Response.fromJson(map);
    Request2Response.fromJson(Map<String, dynamic> json) {
        test = JsonConverters.fromJson(json['test'],'TypeA',_types);
    }

    Map<String, dynamic> toJson() => {
        'test': JsonConverters.toJson(test,'TypeA',_types)
    };

}

class HelloInnerTypesResponse
{
    InnerType innerType;
    InnerEnum innerEnum;
    List<InnerTypeItem> innerList;

    HelloInnerTypesResponse({this.innerType,this.innerEnum,this.innerList});

    HelloInnerTypesResponse fromMap(Map<String, dynamic> map) => new HelloInnerTypesResponse.fromJson(map);
    HelloInnerTypesResponse.fromJson(Map<String, dynamic> json) {
        innerType = JsonConverters.fromJson(json['innerType'],'InnerType',_types);
        innerEnum = JsonConverters.fromJson(json['innerEnum'],'InnerEnum',_types);
        innerList = JsonConverters.fromJson(json['innerList'],'List<InnerTypeItem>',_types);
    }

    Map<String, dynamic> toJson() => {
        'innerType': JsonConverters.toJson(innerType,'InnerType',_types),
        'innerEnum': JsonConverters.toJson(innerEnum,'InnerEnum',_types),
        'innerList': JsonConverters.toJson(innerList,'List<InnerTypeItem>',_types)
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

// @DataContract
class QueryResponseTemplate<T>
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

    QueryResponseTemplate fromMap(Map<String, dynamic> map) => new QueryResponseTemplate.fromJson(map);
    QueryResponseTemplate.fromJson(Map<String, dynamic> json) {
        offset = json['offset'];
        total = json['total'];
        results = JsonConverters.fromJson(json['results'],'List<${runtimeGenericTypeDefs(this,[0]).join(",")}>',_types);
        meta = json['meta'];
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

class ExcludeTestNested
{
    int id;

    ExcludeTestNested({this.id});

    ExcludeTestNested fromMap(Map<String, dynamic> map) => new ExcludeTestNested.fromJson(map);
    ExcludeTestNested.fromJson(Map<String, dynamic> json) {
        id = json['id'];
    }

    Map<String, dynamic> toJson() => {
        'id': id
    };

}

class RestrictLocalhost implements IReturn<RestrictLocalhost>
{
    int id;

    RestrictLocalhost({this.id});

    RestrictLocalhost fromMap(Map<String, dynamic> map) => new RestrictLocalhost.fromJson(map);
    RestrictLocalhost.fromJson(Map<String, dynamic> json) {
        id = json['id'];
    }

    Map<String, dynamic> toJson() => {
        'id': id
    };

    createResponse() { return new RestrictLocalhost(); }
    String getTypeName() { return "RestrictLocalhost"; }
}

class RestrictInternal implements IReturn<RestrictInternal>
{
    int id;

    RestrictInternal({this.id});

    RestrictInternal fromMap(Map<String, dynamic> map) => new RestrictInternal.fromJson(map);
    RestrictInternal.fromJson(Map<String, dynamic> json) {
        id = json['id'];
    }

    Map<String, dynamic> toJson() => {
        'id': id
    };

    createResponse() { return new RestrictInternal(); }
    String getTypeName() { return "RestrictInternal"; }
}

class HelloTuple implements IReturn<HelloTuple>
{
    Tuple2<String, int> tuple2;
    Tuple3<String, int, bool> tuple3;
    List<Tuple2<String,int>> tuples2;
    List<Tuple3<String,int,bool>> tuples3;

    HelloTuple({this.tuple2,this.tuple3,this.tuples2,this.tuples3});

    HelloTuple fromMap(Map<String, dynamic> map) => new HelloTuple.fromJson(map);
    HelloTuple.fromJson(Map<String, dynamic> json) {
        tuple2 = JsonConverters.fromJson(json['tuple2'],'Tuple2<String, int>',_types);
        tuple3 = JsonConverters.fromJson(json['tuple3'],'Tuple3<String, int, bool>',_types);
        tuples2 = JsonConverters.fromJson(json['tuples2'],'List<Tuple2<String,int>>',_types);
        tuples3 = JsonConverters.fromJson(json['tuples3'],'List<Tuple3<String,int,bool>>',_types);
    }

    Map<String, dynamic> toJson() => {
        'tuple2': JsonConverters.toJson(tuple2,'Tuple2<String, int>',_types),
        'tuple3': JsonConverters.toJson(tuple3,'Tuple3<String, int, bool>',_types),
        'tuples2': JsonConverters.toJson(tuples2,'List<Tuple2<String,int>>',_types),
        'tuples3': JsonConverters.toJson(tuples3,'List<Tuple3<String,int,bool>>',_types)
    };

    createResponse() { return new HelloTuple(); }
    String getTypeName() { return "HelloTuple"; }
}

class HelloAuthenticatedResponse
{
    int version;
    String sessionId;
    String userName;
    String email;
    bool isAuthenticated;
    ResponseStatus responseStatus;

    HelloAuthenticatedResponse({this.version,this.sessionId,this.userName,this.email,this.isAuthenticated,this.responseStatus});

    HelloAuthenticatedResponse fromMap(Map<String, dynamic> map) => new HelloAuthenticatedResponse.fromJson(map);
    HelloAuthenticatedResponse.fromJson(Map<String, dynamic> json) {
        version = json['version'];
        sessionId = json['sessionId'];
        userName = json['userName'];
        email = json['email'];
        isAuthenticated = json['isAuthenticated'];
        responseStatus = JsonConverters.fromJson(json['responseStatus'],'ResponseStatus',_types);
    }

    Map<String, dynamic> toJson() => {
        'version': version,
        'sessionId': sessionId,
        'userName': userName,
        'email': email,
        'isAuthenticated': isAuthenticated,
        'responseStatus': JsonConverters.toJson(responseStatus,'ResponseStatus',_types)
    };

}

class Echo
{
    String sentence;

    Echo({this.sentence});

    Echo fromMap(Map<String, dynamic> map) => new Echo.fromJson(map);
    Echo.fromJson(Map<String, dynamic> json) {
        sentence = json['sentence'];
    }

    Map<String, dynamic> toJson() => {
        'sentence': sentence
    };

}

class ThrowHttpErrorResponse
{
    ThrowHttpErrorResponse();
    ThrowHttpErrorResponse fromMap(Map<String, dynamic> map) => new ThrowHttpErrorResponse.fromJson(map);
    ThrowHttpErrorResponse.fromJson(Map<String, dynamic> json) : super();
    Map<String, dynamic> toJson() => {};
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

class acsprofileResponse
{
    String profileId;

    acsprofileResponse({this.profileId});

    acsprofileResponse fromMap(Map<String, dynamic> map) => new acsprofileResponse.fromJson(map);
    acsprofileResponse.fromJson(Map<String, dynamic> json) {
        profileId = json['profileId'];
    }

    Map<String, dynamic> toJson() => {
        'profileId': profileId
    };

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

// @Route("/matchroute/html")
class MatchesHtml implements IReturn<MatchesHtml>
{
    String name;

    MatchesHtml({this.name});

    MatchesHtml fromMap(Map<String, dynamic> map) => new MatchesHtml.fromJson(map);
    MatchesHtml.fromJson(Map<String, dynamic> json) {
        name = json['name'];
    }

    Map<String, dynamic> toJson() => {
        'name': name
    };

    createResponse() { return new MatchesHtml(); }
    String getTypeName() { return "MatchesHtml"; }
}

// @Route("/matchroute/json")
class MatchesJson implements IReturn<MatchesJson>
{
    String name;

    MatchesJson({this.name});

    MatchesJson fromMap(Map<String, dynamic> map) => new MatchesJson.fromJson(map);
    MatchesJson.fromJson(Map<String, dynamic> json) {
        name = json['name'];
    }

    Map<String, dynamic> toJson() => {
        'name': name
    };

    createResponse() { return new MatchesJson(); }
    String getTypeName() { return "MatchesJson"; }
}

class TimestampData
{
    int timestamp;

    TimestampData({this.timestamp});

    TimestampData fromMap(Map<String, dynamic> map) => new TimestampData.fromJson(map);
    TimestampData.fromJson(Map<String, dynamic> json) {
        timestamp = json['timestamp'];
    }

    Map<String, dynamic> toJson() => {
        'timestamp': timestamp
    };

}

// @Route("/test/html")
class TestHtml implements IReturn<TestHtml>
{
    String name;

    TestHtml({this.name});

    TestHtml fromMap(Map<String, dynamic> map) => new TestHtml.fromJson(map);
    TestHtml.fromJson(Map<String, dynamic> json) {
        name = json['name'];
    }

    Map<String, dynamic> toJson() => {
        'name': name
    };

    createResponse() { return new TestHtml(); }
    String getTypeName() { return "TestHtml"; }
}

class ViewResponse
{
    String result;

    ViewResponse({this.result});

    ViewResponse fromMap(Map<String, dynamic> map) => new ViewResponse.fromJson(map);
    ViewResponse.fromJson(Map<String, dynamic> json) {
        result = json['result'];
    }

    Map<String, dynamic> toJson() => {
        'result': result
    };

}

// @Route("/swagger/model")
class SwaggerModel implements IReturn<SwaggerModel>
{
    int Int;
    String string;
    DateTime dateTime;
    DateTime dateTimeOffset;
    Duration timeSpan;

    SwaggerModel({this.Int,this.string,this.dateTime,this.dateTimeOffset,this.timeSpan});

    SwaggerModel fromMap(Map<String, dynamic> map) => new SwaggerModel.fromJson(map);
    SwaggerModel.fromJson(Map<String, dynamic> json) {
        Int = json['int'];
        string = json['string'];
        dateTime = JsonConverters.fromJson(json['dateTime'],'DateTime',_types);
        dateTimeOffset = JsonConverters.fromJson(json['dateTimeOffset'],'DateTime',_types);
        timeSpan = JsonConverters.fromJson(json['timeSpan'],'Duration',_types);
    }

    Map<String, dynamic> toJson() => {
        'int': Int,
        'string': string,
        'dateTime': JsonConverters.toJson(dateTime,'DateTime',_types),
        'dateTimeOffset': JsonConverters.toJson(dateTimeOffset,'DateTime',_types),
        'timeSpan': JsonConverters.toJson(timeSpan,'Duration',_types)
    };

    createResponse() { return new SwaggerModel(); }
    String getTypeName() { return "SwaggerModel"; }
}

// @Route("/plain-dto")
class PlainDto implements IReturn<PlainDto>
{
    String name;

    PlainDto({this.name});

    PlainDto fromMap(Map<String, dynamic> map) => new PlainDto.fromJson(map);
    PlainDto.fromJson(Map<String, dynamic> json) {
        name = json['name'];
    }

    Map<String, dynamic> toJson() => {
        'name': name
    };

    createResponse() { return new PlainDto(); }
    String getTypeName() { return "PlainDto"; }
}

// @Route("/httpresult-dto")
class HttpResultDto implements IReturn<HttpResultDto>
{
    String name;

    HttpResultDto({this.name});

    HttpResultDto fromMap(Map<String, dynamic> map) => new HttpResultDto.fromJson(map);
    HttpResultDto.fromJson(Map<String, dynamic> json) {
        name = json['name'];
    }

    Map<String, dynamic> toJson() => {
        'name': name
    };

    createResponse() { return new HttpResultDto(); }
    String getTypeName() { return "HttpResultDto"; }
}

// @Route("/restrict/mq")
class TestMqRestriction implements IReturn<TestMqRestriction>
{
    String name;

    TestMqRestriction({this.name});

    TestMqRestriction fromMap(Map<String, dynamic> map) => new TestMqRestriction.fromJson(map);
    TestMqRestriction.fromJson(Map<String, dynamic> json) {
        name = json['name'];
    }

    Map<String, dynamic> toJson() => {
        'name': name
    };

    createResponse() { return new TestMqRestriction(); }
    String getTypeName() { return "TestMqRestriction"; }
}

// @Route("/set-cache")
class SetCache implements IReturn<SetCache>
{
    String eTag;
    Duration age;
    Duration maxAge;
    DateTime expires;
    DateTime lastModified;
    CacheControl cacheControl;

    SetCache({this.eTag,this.age,this.maxAge,this.expires,this.lastModified,this.cacheControl});

    SetCache fromMap(Map<String, dynamic> map) => new SetCache.fromJson(map);
    SetCache.fromJson(Map<String, dynamic> json) {
        eTag = json['eTag'];
        age = JsonConverters.fromJson(json['age'],'Duration',_types);
        maxAge = JsonConverters.fromJson(json['maxAge'],'Duration',_types);
        expires = JsonConverters.fromJson(json['expires'],'DateTime',_types);
        lastModified = JsonConverters.fromJson(json['lastModified'],'DateTime',_types);
        cacheControl = JsonConverters.fromJson(json['cacheControl'],'CacheControl',_types);
    }

    Map<String, dynamic> toJson() => {
        'eTag': eTag,
        'age': JsonConverters.toJson(age,'Duration',_types),
        'maxAge': JsonConverters.toJson(maxAge,'Duration',_types),
        'expires': JsonConverters.toJson(expires,'DateTime',_types),
        'lastModified': JsonConverters.toJson(lastModified,'DateTime',_types),
        'cacheControl': JsonConverters.toJson(cacheControl,'CacheControl',_types)
    };

    createResponse() { return new SetCache(); }
    String getTypeName() { return "SetCache"; }
}

class SwaggerComplexResponse
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

    SwaggerComplexResponse fromMap(Map<String, dynamic> map) => new SwaggerComplexResponse.fromJson(map);
    SwaggerComplexResponse.fromJson(Map<String, dynamic> json) {
        isRequired = json['isRequired'];
        arrayString = JsonConverters.fromJson(json['arrayString'],'List<String>',_types);
        arrayInt = JsonConverters.fromJson(json['arrayInt'],'List<int>',_types);
        listString = JsonConverters.fromJson(json['listString'],'List<String>',_types);
        listInt = JsonConverters.fromJson(json['listInt'],'List<int>',_types);
        dictionaryString = json['dictionaryString'];
    }

    Map<String, dynamic> toJson() => {
        'isRequired': isRequired,
        'arrayString': JsonConverters.toJson(arrayString,'List<String>',_types),
        'arrayInt': JsonConverters.toJson(arrayInt,'List<int>',_types),
        'listString': JsonConverters.toJson(listString,'List<String>',_types),
        'listInt': JsonConverters.toJson(listInt,'List<int>',_types),
        'dictionaryString': dictionaryString
    };

}

/**
* Api GET All
*/
// @Route("/swaggerexamples", "GET")
// @Api(Description="Api GET All")
class GetSwaggerExamples implements IReturn<GetSwaggerExamples>
{
    String Get;

    GetSwaggerExamples({this.Get});

    GetSwaggerExamples fromMap(Map<String, dynamic> map) => new GetSwaggerExamples.fromJson(map);
    GetSwaggerExamples.fromJson(Map<String, dynamic> json) {
        Get = json['get'];
    }

    Map<String, dynamic> toJson() => {
        'get': Get
    };

    createResponse() { return new GetSwaggerExamples(); }
    String getTypeName() { return "GetSwaggerExamples"; }
}

/**
* Api GET Id
*/
// @Route("/swaggerexamples/{Id}", "GET")
// @Api(Description="Api GET Id")
class GetSwaggerExample implements IReturn<GetSwaggerExample>
{
    int id;
    String Get;

    GetSwaggerExample({this.id,this.Get});

    GetSwaggerExample fromMap(Map<String, dynamic> map) => new GetSwaggerExample.fromJson(map);
    GetSwaggerExample.fromJson(Map<String, dynamic> json) {
        id = json['id'];
        Get = json['get'];
    }

    Map<String, dynamic> toJson() => {
        'id': id,
        'get': Get
    };

    createResponse() { return new GetSwaggerExample(); }
    String getTypeName() { return "GetSwaggerExample"; }
}

/**
* Api POST
*/
// @Route("/swaggerexamples", "POST")
// @Api(Description="Api POST")
class PostSwaggerExamples implements IReturn<PostSwaggerExamples>
{
    String post;

    PostSwaggerExamples({this.post});

    PostSwaggerExamples fromMap(Map<String, dynamic> map) => new PostSwaggerExamples.fromJson(map);
    PostSwaggerExamples.fromJson(Map<String, dynamic> json) {
        post = json['post'];
    }

    Map<String, dynamic> toJson() => {
        'post': post
    };

    createResponse() { return new PostSwaggerExamples(); }
    String getTypeName() { return "PostSwaggerExamples"; }
}

/**
* Api PUT Id
*/
// @Route("/swaggerexamples/{Id}", "PUT")
// @Api(Description="Api PUT Id")
class PutSwaggerExample implements IReturn<PutSwaggerExample>
{
    int id;
    String Get;

    PutSwaggerExample({this.id,this.Get});

    PutSwaggerExample fromMap(Map<String, dynamic> map) => new PutSwaggerExample.fromJson(map);
    PutSwaggerExample.fromJson(Map<String, dynamic> json) {
        id = json['id'];
        Get = json['get'];
    }

    Map<String, dynamic> toJson() => {
        'id': id,
        'get': Get
    };

    createResponse() { return new PutSwaggerExample(); }
    String getTypeName() { return "PutSwaggerExample"; }
}

// @Route("/lists", "GET")
class GetLists implements IReturn<GetLists>
{
    String id;

    GetLists({this.id});

    GetLists fromMap(Map<String, dynamic> map) => new GetLists.fromJson(map);
    GetLists.fromJson(Map<String, dynamic> json) {
        id = json['id'];
    }

    Map<String, dynamic> toJson() => {
        'id': id
    };

    createResponse() { return new GetLists(); }
    String getTypeName() { return "GetLists"; }
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
        meta = json['meta'];
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
        meta = json['meta'];
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
class GetApiKeysResponse
{
    // @DataMember(Order=1)
    List<UserApiKey> results;

    // @DataMember(Order=2)
    ResponseStatus responseStatus;

    GetApiKeysResponse({this.results,this.responseStatus});

    GetApiKeysResponse fromMap(Map<String, dynamic> map) => new GetApiKeysResponse.fromJson(map);
    GetApiKeysResponse.fromJson(Map<String, dynamic> json) {
        results = JsonConverters.fromJson(json['results'],'List<UserApiKey>',_types);
        responseStatus = JsonConverters.fromJson(json['responseStatus'],'ResponseStatus',_types);
    }

    Map<String, dynamic> toJson() => {
        'results': JsonConverters.toJson(results,'List<UserApiKey>',_types),
        'responseStatus': JsonConverters.toJson(responseStatus,'ResponseStatus',_types)
    };

}

// @DataContract
class RegisterResponse
{
    // @DataMember(Order=1)
    String userId;

    // @DataMember(Order=2)
    String sessionId;

    // @DataMember(Order=3)
    String userName;

    // @DataMember(Order=4)
    String referrerUrl;

    // @DataMember(Order=5)
    String bearerToken;

    // @DataMember(Order=6)
    String refreshToken;

    // @DataMember(Order=7)
    ResponseStatus responseStatus;

    // @DataMember(Order=8)
    Map<String,String> meta;

    RegisterResponse({this.userId,this.sessionId,this.userName,this.referrerUrl,this.bearerToken,this.refreshToken,this.responseStatus,this.meta});

    RegisterResponse fromMap(Map<String, dynamic> map) => new RegisterResponse.fromJson(map);
    RegisterResponse.fromJson(Map<String, dynamic> json) {
        userId = json['userId'];
        sessionId = json['sessionId'];
        userName = json['userName'];
        referrerUrl = json['referrerUrl'];
        bearerToken = json['bearerToken'];
        refreshToken = json['refreshToken'];
        responseStatus = JsonConverters.fromJson(json['responseStatus'],'ResponseStatus',_types);
        meta = json['meta'];
    }

    Map<String, dynamic> toJson() => {
        'userId': userId,
        'sessionId': sessionId,
        'userName': userName,
        'referrerUrl': referrerUrl,
        'bearerToken': bearerToken,
        'refreshToken': refreshToken,
        'responseStatus': JsonConverters.toJson(responseStatus,'ResponseStatus',_types),
        'meta': meta
    };

}

// @Route("/anontype")
class AnonType
{
    AnonType();
    AnonType fromMap(Map<String, dynamic> map) => new AnonType.fromJson(map);
    AnonType.fromJson(Map<String, dynamic> json) : super();
    Map<String, dynamic> toJson() => {};
}

// @Route("/query/requestlogs")
// @Route("/query/requestlogs/{Date}")
class QueryRequestLogs extends QueryData<RequestLogEntry> implements IReturn<QueryResponse<RequestLogEntry>>, IMeta
{
    DateTime date;
    bool viewErrors;

    QueryRequestLogs({this.date,this.viewErrors});

    QueryRequestLogs fromMap(Map<String, dynamic> map) => new QueryRequestLogs.fromJson(map);
    QueryRequestLogs.fromJson(Map<String, dynamic> json): super.fromJson(json) {
        date = JsonConverters.fromJson(json['date'],'DateTime',_types);
        viewErrors = json['viewErrors'];
    }

    Map<String, dynamic> toJson() => super.toJson()..addAll({
        'date': JsonConverters.toJson(date,'DateTime',_types),
        'viewErrors': viewErrors
    });

    createResponse() { return new QueryResponse<RequestLogEntry>(); }
    String getTypeName() { return "QueryRequestLogs"; }
}

// @AutoQueryViewer(Name="Today's Logs", Title="Logs from Today")
class TodayLogs extends QueryData<RequestLogEntry> implements IReturn<QueryResponse<RequestLogEntry>>, IMeta
{
    TodayLogs();
    TodayLogs fromMap(Map<String, dynamic> map) => new TodayLogs.fromJson(map);
    TodayLogs.fromJson(Map<String, dynamic> json) : super.fromJson(json);
    Map<String, dynamic> toJson() => super.toJson();
    createResponse() { return new QueryResponse<RequestLogEntry>(); }
    String getTypeName() { return "TodayLogs"; }
}

class TodayErrorLogs extends QueryData<RequestLogEntry> implements IReturn<QueryResponse<RequestLogEntry>>, IMeta
{
    TodayErrorLogs();
    TodayErrorLogs fromMap(Map<String, dynamic> map) => new TodayErrorLogs.fromJson(map);
    TodayErrorLogs.fromJson(Map<String, dynamic> json) : super.fromJson(json);
    Map<String, dynamic> toJson() => super.toJson();
    createResponse() { return new QueryResponse<RequestLogEntry>(); }
    String getTypeName() { return "TodayErrorLogs"; }
}

class YesterdayLogs extends QueryData<RequestLogEntry> implements IReturn<QueryResponse<RequestLogEntry>>, IMeta
{
    YesterdayLogs();
    YesterdayLogs fromMap(Map<String, dynamic> map) => new YesterdayLogs.fromJson(map);
    YesterdayLogs.fromJson(Map<String, dynamic> json) : super.fromJson(json);
    Map<String, dynamic> toJson() => super.toJson();
    createResponse() { return new QueryResponse<RequestLogEntry>(); }
    String getTypeName() { return "YesterdayLogs"; }
}

class YesterdayErrorLogs extends QueryData<RequestLogEntry> implements IReturn<QueryResponse<RequestLogEntry>>, IMeta
{
    YesterdayErrorLogs();
    YesterdayErrorLogs fromMap(Map<String, dynamic> map) => new YesterdayErrorLogs.fromJson(map);
    YesterdayErrorLogs.fromJson(Map<String, dynamic> json) : super.fromJson(json);
    Map<String, dynamic> toJson() => super.toJson();
    createResponse() { return new QueryResponse<RequestLogEntry>(); }
    String getTypeName() { return "YesterdayErrorLogs"; }
}

// @Route("/query/rockstars")
class QueryRockstars extends QueryDb1<Rockstar> implements IReturn<QueryResponse<Rockstar>>, IMeta
{
    int age;

    QueryRockstars({this.age});

    QueryRockstars fromMap(Map<String, dynamic> map) => new QueryRockstars.fromJson(map);
    QueryRockstars.fromJson(Map<String, dynamic> json): super.fromJson(json) {
        age = json['age'];
    }

    Map<String, dynamic> toJson() => super.toJson()..addAll({
        'age': age
    });

    createResponse() { return new QueryResponse<Rockstar>(); }
    String getTypeName() { return "QueryRockstars"; }
}

// @Route("/query/rockstars/cached")
class QueryRockstarsCached extends QueryDb1<Rockstar> implements IReturn<QueryResponse<Rockstar>>, IMeta
{
    int age;

    QueryRockstarsCached({this.age});

    QueryRockstarsCached fromMap(Map<String, dynamic> map) => new QueryRockstarsCached.fromJson(map);
    QueryRockstarsCached.fromJson(Map<String, dynamic> json): super.fromJson(json) {
        age = json['age'];
    }

    Map<String, dynamic> toJson() => super.toJson()..addAll({
        'age': age
    });

    createResponse() { return new QueryResponse<Rockstar>(); }
    String getTypeName() { return "QueryRockstarsCached"; }
}

// @Route("/changerequest/{Id}")
class ChangeRequest implements IReturn<ChangeRequestResponse>
{
    String id;

    ChangeRequest({this.id});

    ChangeRequest fromMap(Map<String, dynamic> map) => new ChangeRequest.fromJson(map);
    ChangeRequest.fromJson(Map<String, dynamic> json) {
        id = json['id'];
    }

    Map<String, dynamic> toJson() => {
        'id': id
    };

    createResponse() { return new ChangeRequestResponse(); }
    String getTypeName() { return "ChangeRequest"; }
}

// @Route("/compress/{Path*}")
class CompressFile
{
    String path;

    CompressFile({this.path});

    CompressFile fromMap(Map<String, dynamic> map) => new CompressFile.fromJson(map);
    CompressFile.fromJson(Map<String, dynamic> json) {
        path = json['path'];
    }

    Map<String, dynamic> toJson() => {
        'path': path
    };

}

// @Route("/Routing/LeadPost.aspx")
class LegacyLeadPost
{
    String leadType;
    int myId;

    LegacyLeadPost({this.leadType,this.myId});

    LegacyLeadPost fromMap(Map<String, dynamic> map) => new LegacyLeadPost.fromJson(map);
    LegacyLeadPost.fromJson(Map<String, dynamic> json) {
        leadType = json['leadType'];
        myId = json['myId'];
    }

    Map<String, dynamic> toJson() => {
        'leadType': leadType,
        'myId': myId
    };

}

// @Route("/info/{Id}")
class Info
{
    String id;

    Info({this.id});

    Info fromMap(Map<String, dynamic> map) => new Info.fromJson(map);
    Info.fromJson(Map<String, dynamic> json) {
        id = json['id'];
    }

    Map<String, dynamic> toJson() => {
        'id': id
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

class CustomFieldHttpError implements IReturn<CustomFieldHttpErrorResponse>
{
    CustomFieldHttpError();
    CustomFieldHttpError fromMap(Map<String, dynamic> map) => new CustomFieldHttpError.fromJson(map);
    CustomFieldHttpError.fromJson(Map<String, dynamic> json) : super();
    Map<String, dynamic> toJson() => {};
    createResponse() { return new CustomFieldHttpErrorResponse(); }
    String getTypeName() { return "CustomFieldHttpError"; }
}

class FallbackRoute
{
    String pathInfo;

    FallbackRoute({this.pathInfo});

    FallbackRoute fromMap(Map<String, dynamic> map) => new FallbackRoute.fromJson(map);
    FallbackRoute.fromJson(Map<String, dynamic> json) {
        pathInfo = json['pathInfo'];
    }

    Map<String, dynamic> toJson() => {
        'pathInfo': pathInfo
    };

}

class NoRepeat implements IReturn<NoRepeatResponse>
{
    String id;

    NoRepeat({this.id});

    NoRepeat fromMap(Map<String, dynamic> map) => new NoRepeat.fromJson(map);
    NoRepeat.fromJson(Map<String, dynamic> json) {
        id = json['id'];
    }

    Map<String, dynamic> toJson() => {
        'id': id
    };

    createResponse() { return new NoRepeatResponse(); }
    String getTypeName() { return "NoRepeat"; }
}

class BatchThrows implements IReturn<BatchThrowsResponse>
{
    int id;
    String name;

    BatchThrows({this.id,this.name});

    BatchThrows fromMap(Map<String, dynamic> map) => new BatchThrows.fromJson(map);
    BatchThrows.fromJson(Map<String, dynamic> json) {
        id = json['id'];
        name = json['name'];
    }

    Map<String, dynamic> toJson() => {
        'id': id,
        'name': name
    };

    createResponse() { return new BatchThrowsResponse(); }
    String getTypeName() { return "BatchThrows"; }
}

class BatchThrowsAsync implements IReturn<BatchThrowsResponse>
{
    int id;
    String name;

    BatchThrowsAsync({this.id,this.name});

    BatchThrowsAsync fromMap(Map<String, dynamic> map) => new BatchThrowsAsync.fromJson(map);
    BatchThrowsAsync.fromJson(Map<String, dynamic> json) {
        id = json['id'];
        name = json['name'];
    }

    Map<String, dynamic> toJson() => {
        'id': id,
        'name': name
    };

    createResponse() { return new BatchThrowsResponse(); }
    String getTypeName() { return "BatchThrowsAsync"; }
}

// @Route("/code/object", "GET")
class ObjectId implements IReturn<ObjectDesignResponse>
{
    String objectName;

    ObjectId({this.objectName});

    ObjectId fromMap(Map<String, dynamic> map) => new ObjectId.fromJson(map);
    ObjectId.fromJson(Map<String, dynamic> json) {
        objectName = json['objectName'];
    }

    Map<String, dynamic> toJson() => {
        'objectName': objectName
    };

    createResponse() { return new ObjectDesignResponse(); }
    String getTypeName() { return "ObjectId"; }
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

class MetadataRequest implements IReturn<AutoQueryMetadataResponse>
{
    MetadataType metadataType;

    MetadataRequest({this.metadataType});

    MetadataRequest fromMap(Map<String, dynamic> map) => new MetadataRequest.fromJson(map);
    MetadataRequest.fromJson(Map<String, dynamic> json) {
        metadataType = JsonConverters.fromJson(json['metadataType'],'MetadataType',_types);
    }

    Map<String, dynamic> toJson() => {
        'metadataType': JsonConverters.toJson(metadataType,'MetadataType',_types)
    };

    createResponse() { return new AutoQueryMetadataResponse(); }
    String getTypeName() { return "MetadataRequest"; }
}

class ExcludeMetadataProperty
{
    int id;

    ExcludeMetadataProperty({this.id});

    ExcludeMetadataProperty fromMap(Map<String, dynamic> map) => new ExcludeMetadataProperty.fromJson(map);
    ExcludeMetadataProperty.fromJson(Map<String, dynamic> json) {
        id = json['id'];
    }

    Map<String, dynamic> toJson() => {
        'id': id
    };

}

// @Route("/namedconnection")
class NamedConnection
{
    String emailAddresses;

    NamedConnection({this.emailAddresses});

    NamedConnection fromMap(Map<String, dynamic> map) => new NamedConnection.fromJson(map);
    NamedConnection.fromJson(Map<String, dynamic> json) {
        emailAddresses = json['emailAddresses'];
    }

    Map<String, dynamic> toJson() => {
        'emailAddresses': emailAddresses
    };

}

/**
* Description for HelloACodeGenTest
*/
class HelloACodeGenTest implements IReturn<HelloACodeGenTestResponse>
{
    /**
    * Description for FirstField
    */
    int firstField;
    List<String> secondFields;

    HelloACodeGenTest({this.firstField,this.secondFields});

    HelloACodeGenTest fromMap(Map<String, dynamic> map) => new HelloACodeGenTest.fromJson(map);
    HelloACodeGenTest.fromJson(Map<String, dynamic> json) {
        firstField = json['firstField'];
        secondFields = JsonConverters.fromJson(json['secondFields'],'List<String>',_types);
    }

    Map<String, dynamic> toJson() => {
        'firstField': firstField,
        'secondFields': JsonConverters.toJson(secondFields,'List<String>',_types)
    };

    createResponse() { return new HelloACodeGenTestResponse(); }
    String getTypeName() { return "HelloACodeGenTest"; }
}

class HelloInService implements IReturn<HelloResponse>
{
    String name;

    HelloInService({this.name});

    HelloInService fromMap(Map<String, dynamic> map) => new HelloInService.fromJson(map);
    HelloInService.fromJson(Map<String, dynamic> json) {
        name = json['name'];
    }

    Map<String, dynamic> toJson() => {
        'name': name
    };

    createResponse() { return new HelloResponse(); }
    String getTypeName() { return "NativeTypesTestService.HelloInService"; }
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

/**
* Description on HelloAll type
*/
// @DataContract
class HelloAnnotated implements IReturn<HelloAnnotatedResponse>
{
    // @DataMember
    String name;

    HelloAnnotated({this.name});

    HelloAnnotated fromMap(Map<String, dynamic> map) => new HelloAnnotated.fromJson(map);
    HelloAnnotated.fromJson(Map<String, dynamic> json) {
        name = json['name'];
    }

    Map<String, dynamic> toJson() => {
        'name': name
    };

    createResponse() { return new HelloAnnotatedResponse(); }
    String getTypeName() { return "HelloAnnotated"; }
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

class HelloReturnList implements IReturn<List<OnlyInReturnListArg>>
{
    List<String> names;

    HelloReturnList({this.names});

    HelloReturnList fromMap(Map<String, dynamic> map) => new HelloReturnList.fromJson(map);
    HelloReturnList.fromJson(Map<String, dynamic> json) {
        names = JsonConverters.fromJson(json['names'],'List<String>',_types);
    }

    Map<String, dynamic> toJson() => {
        'names': JsonConverters.toJson(names,'List<String>',_types)
    };

    createResponse() { return new List<OnlyInReturnListArg>(); }
    String getTypeName() { return "HelloReturnList"; }
}

class HelloExisting implements IReturn<HelloExistingResponse>
{
    List<String> names;

    HelloExisting({this.names});

    HelloExisting fromMap(Map<String, dynamic> map) => new HelloExisting.fromJson(map);
    HelloExisting.fromJson(Map<String, dynamic> json) {
        names = JsonConverters.fromJson(json['names'],'List<String>',_types);
    }

    Map<String, dynamic> toJson() => {
        'names': JsonConverters.toJson(names,'List<String>',_types)
    };

    createResponse() { return new HelloExistingResponse(); }
    String getTypeName() { return "HelloExisting"; }
}

class HelloWithEnum
{
    EnumType enumProp;
    EnumWithValues enumWithValues;
    EnumType nullableEnumProp;
    EnumFlags enumFlags;

    HelloWithEnum({this.enumProp,this.enumWithValues,this.nullableEnumProp,this.enumFlags});

    HelloWithEnum fromMap(Map<String, dynamic> map) => new HelloWithEnum.fromJson(map);
    HelloWithEnum.fromJson(Map<String, dynamic> json) {
        enumProp = JsonConverters.fromJson(json['enumProp'],'EnumType',_types);
        enumWithValues = JsonConverters.fromJson(json['enumWithValues'],'EnumWithValues',_types);
        nullableEnumProp = JsonConverters.fromJson(json['nullableEnumProp'],'EnumType',_types);
        enumFlags = JsonConverters.fromJson(json['enumFlags'],'EnumFlags',_types);
    }

    Map<String, dynamic> toJson() => {
        'enumProp': JsonConverters.toJson(enumProp,'EnumType',_types),
        'enumWithValues': JsonConverters.toJson(enumWithValues,'EnumWithValues',_types),
        'nullableEnumProp': JsonConverters.toJson(nullableEnumProp,'EnumType',_types),
        'enumFlags': JsonConverters.toJson(enumFlags,'EnumFlags',_types)
    };

}

class RestrictedAttributes
{
    int id;
    String name;
    Hello hello;

    RestrictedAttributes({this.id,this.name,this.hello});

    RestrictedAttributes fromMap(Map<String, dynamic> map) => new RestrictedAttributes.fromJson(map);
    RestrictedAttributes.fromJson(Map<String, dynamic> json) {
        id = json['id'];
        name = json['name'];
        hello = JsonConverters.fromJson(json['hello'],'Hello',_types);
    }

    Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'hello': JsonConverters.toJson(hello,'Hello',_types)
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

    AllowedAttributes fromMap(Map<String, dynamic> map) => new AllowedAttributes.fromJson(map);
    AllowedAttributes.fromJson(Map<String, dynamic> json) {
        id = json['id'];
        range = json['range'];
    }

    Map<String, dynamic> toJson() => {
        'id': id,
        'range': range
    };

}

/**
* Multi Line Class
*/
// @Api(Description="Multi Line Class")
class HelloMultiline
{
    /**
    * Multi Line Property
    */
    // @ApiMember(Description="Multi Line Property")
    String overflow;

    HelloMultiline({this.overflow});

    HelloMultiline fromMap(Map<String, dynamic> map) => new HelloMultiline.fromJson(map);
    HelloMultiline.fromJson(Map<String, dynamic> json) {
        overflow = json['overflow'];
    }

    Map<String, dynamic> toJson() => {
        'overflow': overflow
    };

}

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

class HelloVoid implements IReturnVoid
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

    createResponse() {}
    String getTypeName() { return "HelloVoid"; }
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

class HelloWithListInheritance extends ListBase<InheritedItem>
{
    final List<InheritedItem> l = [];
    void set length(int newLength) { l.length = newLength; }
    int get length => l.length;
    InheritedItem operator [](int index) => l[index];
    void operator []=(int index, InheritedItem value) { l[index] = value; }
    HelloWithListInheritance();
    HelloWithListInheritance fromMap(Map<String, dynamic> map) => new HelloWithListInheritance.fromJson(map);
    HelloWithListInheritance.fromJson(Map<String, dynamic> json) : super();
    Map<String, dynamic> toJson() => {};
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

class HelloSession implements IReturn<HelloSessionResponse>
{
    HelloSession();
    HelloSession fromMap(Map<String, dynamic> map) => new HelloSession.fromJson(map);
    HelloSession.fromJson(Map<String, dynamic> json) : super();
    Map<String, dynamic> toJson() => {};
    createResponse() { return new HelloSessionResponse(); }
    String getTypeName() { return "HelloSession"; }
}

class HelloInterface
{
    IPoco poco;
    IEmptyInterface emptyInterface;
    EmptyClass emptyClass;
    String value;

    HelloInterface({this.poco,this.emptyInterface,this.emptyClass,this.value});

    HelloInterface fromMap(Map<String, dynamic> map) => new HelloInterface.fromJson(map);
    HelloInterface.fromJson(Map<String, dynamic> json) {
        poco = JsonConverters.fromJson(json['poco'],'IPoco',_types);
        emptyInterface = JsonConverters.fromJson(json['emptyInterface'],'IEmptyInterface',_types);
        emptyClass = JsonConverters.fromJson(json['emptyClass'],'EmptyClass',_types);
        value = json['value'];
    }

    Map<String, dynamic> toJson() => {
        'poco': JsonConverters.toJson(poco,'IPoco',_types),
        'emptyInterface': JsonConverters.toJson(emptyInterface,'IEmptyInterface',_types),
        'emptyClass': JsonConverters.toJson(emptyClass,'EmptyClass',_types),
        'value': value
    };

}

class Request1 implements IReturn<Request1Response>
{
    TypeA test;

    Request1({this.test});

    Request1 fromMap(Map<String, dynamic> map) => new Request1.fromJson(map);
    Request1.fromJson(Map<String, dynamic> json) {
        test = JsonConverters.fromJson(json['test'],'TypeA',_types);
    }

    Map<String, dynamic> toJson() => {
        'test': JsonConverters.toJson(test,'TypeA',_types)
    };

    createResponse() { return new Request1Response(); }
    String getTypeName() { return "Request1"; }
}

class Request2 implements IReturn<Request2Response>
{
    TypeA test;

    Request2({this.test});

    Request2 fromMap(Map<String, dynamic> map) => new Request2.fromJson(map);
    Request2.fromJson(Map<String, dynamic> json) {
        test = JsonConverters.fromJson(json['test'],'TypeA',_types);
    }

    Map<String, dynamic> toJson() => {
        'test': JsonConverters.toJson(test,'TypeA',_types)
    };

    createResponse() { return new Request2Response(); }
    String getTypeName() { return "Request2"; }
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

class GetUserSession implements IReturn<CustomUserSession>
{
    GetUserSession();
    GetUserSession fromMap(Map<String, dynamic> map) => new GetUserSession.fromJson(map);
    GetUserSession.fromJson(Map<String, dynamic> json) : super();
    Map<String, dynamic> toJson() => {};
    createResponse() { return new CustomUserSession(); }
    String getTypeName() { return "GetUserSession"; }
}

class QueryTemplate implements IReturn<QueryResponseTemplate<Poco>>
{
    QueryTemplate();
    QueryTemplate fromMap(Map<String, dynamic> map) => new QueryTemplate.fromJson(map);
    QueryTemplate.fromJson(Map<String, dynamic> json) : super();
    Map<String, dynamic> toJson() => {};
    createResponse() { return new QueryResponseTemplate<Poco>(); }
    String getTypeName() { return "QueryTemplate"; }
}

class HelloReserved
{
    String Class;
    String type;
    String extension;

    HelloReserved({this.Class,this.type,this.extension});

    HelloReserved fromMap(Map<String, dynamic> map) => new HelloReserved.fromJson(map);
    HelloReserved.fromJson(Map<String, dynamic> json) {
        Class = json['class'];
        type = json['type'];
        extension = json['extension'];
    }

    Map<String, dynamic> toJson() => {
        'class': Class,
        'type': type,
        'extension': extension
    };

}

class HelloDictionary implements IReturn<Map<String,String>>
{
    String key;
    String value;

    HelloDictionary({this.key,this.value});

    HelloDictionary fromMap(Map<String, dynamic> map) => new HelloDictionary.fromJson(map);
    HelloDictionary.fromJson(Map<String, dynamic> json) {
        key = json['key'];
        value = json['value'];
    }

    Map<String, dynamic> toJson() => {
        'key': key,
        'value': value
    };

    createResponse() { return new Map<String,String>(); }
    String getTypeName() { return "HelloDictionary"; }
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

class ExcludeTest1 implements IReturn<ExcludeTestNested>
{
    ExcludeTest1();
    ExcludeTest1 fromMap(Map<String, dynamic> map) => new ExcludeTest1.fromJson(map);
    ExcludeTest1.fromJson(Map<String, dynamic> json) : super();
    Map<String, dynamic> toJson() => {};
    createResponse() { return new ExcludeTestNested(); }
    String getTypeName() { return "ExcludeTest1"; }
}

class ExcludeTest2 implements IReturn<String>
{
    ExcludeTestNested excludeTestNested;

    ExcludeTest2({this.excludeTestNested});

    ExcludeTest2 fromMap(Map<String, dynamic> map) => new ExcludeTest2.fromJson(map);
    ExcludeTest2.fromJson(Map<String, dynamic> json) {
        excludeTestNested = JsonConverters.fromJson(json['excludeTestNested'],'ExcludeTestNested',_types);
    }

    Map<String, dynamic> toJson() => {
        'excludeTestNested': JsonConverters.toJson(excludeTestNested,'ExcludeTestNested',_types)
    };

    createResponse() { return ""; }
    String getTypeName() { return "ExcludeTest2"; }
}

class HelloAuthenticated implements IReturn<HelloAuthenticatedResponse>, IHasSessionId
{
    String sessionId;
    int version;

    HelloAuthenticated({this.sessionId,this.version});

    HelloAuthenticated fromMap(Map<String, dynamic> map) => new HelloAuthenticated.fromJson(map);
    HelloAuthenticated.fromJson(Map<String, dynamic> json) {
        sessionId = json['sessionId'];
        version = json['version'];
    }

    Map<String, dynamic> toJson() => {
        'sessionId': sessionId,
        'version': version
    };

    createResponse() { return new HelloAuthenticatedResponse(); }
    String getTypeName() { return "HelloAuthenticated"; }
}

/**
* Echoes a sentence
*/
// @Route("/echoes", "POST")
// @Api(Description="Echoes a sentence")
class Echoes implements IReturn<Echo>
{
    /**
    * The sentence to echo.
    */
    // @ApiMember(DataType="string", Description="The sentence to echo.", IsRequired=true, Name="Sentence", ParameterType="form")
    String sentence;

    Echoes({this.sentence});

    Echoes fromMap(Map<String, dynamic> map) => new Echoes.fromJson(map);
    Echoes.fromJson(Map<String, dynamic> json) {
        sentence = json['sentence'];
    }

    Map<String, dynamic> toJson() => {
        'sentence': sentence
    };

    createResponse() { return new Echo(); }
    String getTypeName() { return "Echoes"; }
}

class CachedEcho implements IReturn<Echo>
{
    bool reload;
    String sentence;

    CachedEcho({this.reload,this.sentence});

    CachedEcho fromMap(Map<String, dynamic> map) => new CachedEcho.fromJson(map);
    CachedEcho.fromJson(Map<String, dynamic> json) {
        reload = json['reload'];
        sentence = json['sentence'];
    }

    Map<String, dynamic> toJson() => {
        'reload': reload,
        'sentence': sentence
    };

    createResponse() { return new Echo(); }
    String getTypeName() { return "CachedEcho"; }
}

class AsyncTest implements IReturn<Echo>
{
    AsyncTest();
    AsyncTest fromMap(Map<String, dynamic> map) => new AsyncTest.fromJson(map);
    AsyncTest.fromJson(Map<String, dynamic> json) : super();
    Map<String, dynamic> toJson() => {};
    createResponse() { return new Echo(); }
    String getTypeName() { return "AsyncTest"; }
}

// @Route("/throwhttperror/{Status}")
class ThrowHttpError implements IReturn<ThrowHttpErrorResponse>
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

    createResponse() { return new ThrowHttpErrorResponse(); }
    String getTypeName() { return "ThrowHttpError"; }
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

// @Route("/return404")
class Return404
{
    Return404();
    Return404 fromMap(Map<String, dynamic> map) => new Return404.fromJson(map);
    Return404.fromJson(Map<String, dynamic> json) : super();
    Map<String, dynamic> toJson() => {};
}

// @Route("/return404result")
class Return404Result
{
    Return404Result();
    Return404Result fromMap(Map<String, dynamic> map) => new Return404Result.fromJson(map);
    Return404Result.fromJson(Map<String, dynamic> json) : super();
    Map<String, dynamic> toJson() => {};
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

// @Route("/api/acsprofiles", "POST,PUT,PATCH,DELETE")
// @Route("/api/acsprofiles/{profileId}")
class ACSProfile implements IReturn<acsprofileResponse>, IHasVersion, IHasSessionId
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

    ACSProfile fromMap(Map<String, dynamic> map) => new ACSProfile.fromJson(map);
    ACSProfile.fromJson(Map<String, dynamic> json) {
        profileId = json['profileId'];
        shortName = json['shortName'];
        longName = json['longName'];
        regionId = json['regionId'];
        groupId = json['groupId'];
        deviceID = json['deviceID'];
        lastUpdated = JsonConverters.fromJson(json['lastUpdated'],'DateTime',_types);
        enabled = json['enabled'];
        version = json['version'];
        sessionId = json['sessionId'];
    }

    Map<String, dynamic> toJson() => {
        'profileId': profileId,
        'shortName': shortName,
        'longName': longName,
        'regionId': regionId,
        'groupId': groupId,
        'deviceID': deviceID,
        'lastUpdated': JsonConverters.toJson(lastUpdated,'DateTime',_types),
        'enabled': enabled,
        'version': version,
        'sessionId': sessionId
    };

    createResponse() { return new acsprofileResponse(); }
    String getTypeName() { return "ACSProfile"; }
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

// @Route("/Request1/", "GET")
class GetRequest1 implements IReturn<List<ReturnedDto>>, IGet
{
    GetRequest1();
    GetRequest1 fromMap(Map<String, dynamic> map) => new GetRequest1.fromJson(map);
    GetRequest1.fromJson(Map<String, dynamic> json) : super();
    Map<String, dynamic> toJson() => {};
    createResponse() { return new List<ReturnedDto>(); }
    String getTypeName() { return "GetRequest1"; }
}

// @Route("/Request3", "GET")
class GetRequest2 implements IReturn<ReturnedDto>, IGet
{
    GetRequest2();
    GetRequest2 fromMap(Map<String, dynamic> map) => new GetRequest2.fromJson(map);
    GetRequest2.fromJson(Map<String, dynamic> json) : super();
    Map<String, dynamic> toJson() => {};
    createResponse() { return new ReturnedDto(); }
    String getTypeName() { return "GetRequest2"; }
}

// @Route("/matchlast/{Id}")
class MatchesLastInt
{
    int id;

    MatchesLastInt({this.id});

    MatchesLastInt fromMap(Map<String, dynamic> map) => new MatchesLastInt.fromJson(map);
    MatchesLastInt.fromJson(Map<String, dynamic> json) {
        id = json['id'];
    }

    Map<String, dynamic> toJson() => {
        'id': id
    };

}

// @Route("/matchlast/{Slug}")
class MatchesNotLastInt
{
    String slug;

    MatchesNotLastInt({this.slug});

    MatchesNotLastInt fromMap(Map<String, dynamic> map) => new MatchesNotLastInt.fromJson(map);
    MatchesNotLastInt.fromJson(Map<String, dynamic> json) {
        slug = json['slug'];
    }

    Map<String, dynamic> toJson() => {
        'slug': slug
    };

}

// @Route("/matchregex/{Id}")
class MatchesId
{
    int id;

    MatchesId({this.id});

    MatchesId fromMap(Map<String, dynamic> map) => new MatchesId.fromJson(map);
    MatchesId.fromJson(Map<String, dynamic> json) {
        id = json['id'];
    }

    Map<String, dynamic> toJson() => {
        'id': id
    };

}

// @Route("/matchregex/{Slug}")
class MatchesSlug
{
    String slug;

    MatchesSlug({this.slug});

    MatchesSlug fromMap(Map<String, dynamic> map) => new MatchesSlug.fromJson(map);
    MatchesSlug.fromJson(Map<String, dynamic> json) {
        slug = json['slug'];
    }

    Map<String, dynamic> toJson() => {
        'slug': slug
    };

}

// @Route("/{Version}/userdata", "GET")
class SwaggerVersionTest
{
    String version;

    SwaggerVersionTest({this.version});

    SwaggerVersionTest fromMap(Map<String, dynamic> map) => new SwaggerVersionTest.fromJson(map);
    SwaggerVersionTest.fromJson(Map<String, dynamic> json) {
        version = json['version'];
    }

    Map<String, dynamic> toJson() => {
        'version': version
    };

}

// @Route("/test/errorview")
class TestErrorView
{
    String id;

    TestErrorView({this.id});

    TestErrorView fromMap(Map<String, dynamic> map) => new TestErrorView.fromJson(map);
    TestErrorView.fromJson(Map<String, dynamic> json) {
        id = json['id'];
    }

    Map<String, dynamic> toJson() => {
        'id': id
    };

}

// @Route("/timestamp", "GET")
class GetTimestamp implements IReturn<TimestampData>
{
    GetTimestamp();
    GetTimestamp fromMap(Map<String, dynamic> map) => new GetTimestamp.fromJson(map);
    GetTimestamp.fromJson(Map<String, dynamic> json) : super();
    Map<String, dynamic> toJson() => {};
    createResponse() { return new TimestampData(); }
    String getTypeName() { return "GetTimestamp"; }
}

class TestMiniverView
{
    TestMiniverView();
    TestMiniverView fromMap(Map<String, dynamic> map) => new TestMiniverView.fromJson(map);
    TestMiniverView.fromJson(Map<String, dynamic> json) : super();
    Map<String, dynamic> toJson() => {};
}

// @Route("/testexecproc")
class TestExecProc
{
    TestExecProc();
    TestExecProc fromMap(Map<String, dynamic> map) => new TestExecProc.fromJson(map);
    TestExecProc.fromJson(Map<String, dynamic> json) : super();
    Map<String, dynamic> toJson() => {};
}

// @Route("/files/{Path*}")
class GetFile
{
    String path;

    GetFile({this.path});

    GetFile fromMap(Map<String, dynamic> map) => new GetFile.fromJson(map);
    GetFile.fromJson(Map<String, dynamic> json) {
        path = json['path'];
    }

    Map<String, dynamic> toJson() => {
        'path': path
    };

}

// @Route("/test/html2")
class TestHtml2
{
    String name;

    TestHtml2({this.name});

    TestHtml2 fromMap(Map<String, dynamic> map) => new TestHtml2.fromJson(map);
    TestHtml2.fromJson(Map<String, dynamic> json) {
        name = json['name'];
    }

    Map<String, dynamic> toJson() => {
        'name': name
    };

}

// @Route("/views/request")
class ViewRequest implements IReturn<ViewResponse>
{
    String name;

    ViewRequest({this.name});

    ViewRequest fromMap(Map<String, dynamic> map) => new ViewRequest.fromJson(map);
    ViewRequest.fromJson(Map<String, dynamic> json) {
        name = json['name'];
    }

    Map<String, dynamic> toJson() => {
        'name': name
    };

    createResponse() { return new ViewResponse(); }
    String getTypeName() { return "ViewRequest"; }
}

// @Route("/index")
class IndexPage
{
    String pathInfo;

    IndexPage({this.pathInfo});

    IndexPage fromMap(Map<String, dynamic> map) => new IndexPage.fromJson(map);
    IndexPage.fromJson(Map<String, dynamic> json) {
        pathInfo = json['pathInfo'];
    }

    Map<String, dynamic> toJson() => {
        'pathInfo': pathInfo
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

// @Route("/gzip/{FileName}")
class DownloadGzipFile implements IReturn<Uint8List>
{
    String fileName;

    DownloadGzipFile({this.fileName});

    DownloadGzipFile fromMap(Map<String, dynamic> map) => new DownloadGzipFile.fromJson(map);
    DownloadGzipFile.fromJson(Map<String, dynamic> json) {
        fileName = json['fileName'];
    }

    Map<String, dynamic> toJson() => {
        'fileName': fileName
    };

    createResponse() { return new Uint8List(0); }
    String getTypeName() { return "DownloadGzipFile"; }
}

// @Route("/match/{Language}/{Name*}")
class MatchName implements IReturn<HelloResponse>
{
    String language;
    String name;

    MatchName({this.language,this.name});

    MatchName fromMap(Map<String, dynamic> map) => new MatchName.fromJson(map);
    MatchName.fromJson(Map<String, dynamic> json) {
        language = json['language'];
        name = json['name'];
    }

    Map<String, dynamic> toJson() => {
        'language': language,
        'name': name
    };

    createResponse() { return new HelloResponse(); }
    String getTypeName() { return "MatchName"; }
}

// @Route("/match/{Language*}")
class MatchLang implements IReturn<HelloResponse>
{
    String language;

    MatchLang({this.language});

    MatchLang fromMap(Map<String, dynamic> map) => new MatchLang.fromJson(map);
    MatchLang.fromJson(Map<String, dynamic> json) {
        language = json['language'];
    }

    Map<String, dynamic> toJson() => {
        'language': language
    };

    createResponse() { return new HelloResponse(); }
    String getTypeName() { return "MatchLang"; }
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
class SwaggerTest
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

    SwaggerTest fromMap(Map<String, dynamic> map) => new SwaggerTest.fromJson(map);
    SwaggerTest.fromJson(Map<String, dynamic> json) {
        name = json['name'];
        color = JsonConverters.fromJson(json['color'],'MyColor',_types);
        original = json['original'];
        notAliased = json['notAliased'];
        password = json['password'];
        myDateBetween = JsonConverters.fromJson(json['myDateBetween'],'List<DateTime>',_types);
        nestedModel1 = JsonConverters.fromJson(json['nestedModel1'],'SwaggerNestedModel',_types);
        nestedModel2 = JsonConverters.fromJson(json['nestedModel2'],'SwaggerNestedModel2',_types);
    }

    Map<String, dynamic> toJson() => {
        'name': name,
        'color': JsonConverters.toJson(color,'MyColor',_types),
        'original': original,
        'notAliased': notAliased,
        'password': password,
        'myDateBetween': JsonConverters.toJson(myDateBetween,'List<DateTime>',_types),
        'nestedModel1': JsonConverters.toJson(nestedModel1,'SwaggerNestedModel',_types),
        'nestedModel2': JsonConverters.toJson(nestedModel2,'SwaggerNestedModel2',_types)
    };

}

// @Route("/swaggertest2", "POST")
class SwaggerTest2
{
    // @ApiMember()
    MyEnum myEnumProperty;

    // @ApiMember(DataType="string", IsRequired=true, Name="Token", ParameterType="header")
    String token;

    SwaggerTest2({this.myEnumProperty,this.token});

    SwaggerTest2 fromMap(Map<String, dynamic> map) => new SwaggerTest2.fromJson(map);
    SwaggerTest2.fromJson(Map<String, dynamic> json) {
        myEnumProperty = JsonConverters.fromJson(json['myEnumProperty'],'MyEnum',_types);
        token = json['token'];
    }

    Map<String, dynamic> toJson() => {
        'myEnumProperty': JsonConverters.toJson(myEnumProperty,'MyEnum',_types),
        'token': token
    };

}

// @Route("/swagger-complex", "POST")
class SwaggerComplex implements IReturn<SwaggerComplexResponse>
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

    SwaggerComplex fromMap(Map<String, dynamic> map) => new SwaggerComplex.fromJson(map);
    SwaggerComplex.fromJson(Map<String, dynamic> json) {
        isRequired = json['isRequired'];
        arrayString = JsonConverters.fromJson(json['arrayString'],'List<String>',_types);
        arrayInt = JsonConverters.fromJson(json['arrayInt'],'List<int>',_types);
        listString = JsonConverters.fromJson(json['listString'],'List<String>',_types);
        listInt = JsonConverters.fromJson(json['listInt'],'List<int>',_types);
        dictionaryString = json['dictionaryString'];
    }

    Map<String, dynamic> toJson() => {
        'isRequired': isRequired,
        'arrayString': JsonConverters.toJson(arrayString,'List<String>',_types),
        'arrayInt': JsonConverters.toJson(arrayInt,'List<int>',_types),
        'listString': JsonConverters.toJson(listString,'List<String>',_types),
        'listInt': JsonConverters.toJson(listInt,'List<int>',_types),
        'dictionaryString': dictionaryString
    };

    createResponse() { return new SwaggerComplexResponse(); }
    String getTypeName() { return "SwaggerComplex"; }
}

// @Route("/swaggerpost/{Required1}", "GET")
// @Route("/swaggerpost/{Required1}/{Optional1}", "GET")
// @Route("/swaggerpost", "POST")
class SwaggerPostTest implements IReturn<HelloResponse>
{
    // @ApiMember(Verb="POST")
    // @ApiMember(ParameterType="path", Route="/swaggerpost/{Required1}", Verb="GET")
    // @ApiMember(ParameterType="path", Route="/swaggerpost/{Required1}/{Optional1}", Verb="GET")
    String required1;

    // @ApiMember(Verb="POST")
    // @ApiMember(ParameterType="path", Route="/swaggerpost/{Required1}/{Optional1}", Verb="GET")
    String optional1;

    SwaggerPostTest({this.required1,this.optional1});

    SwaggerPostTest fromMap(Map<String, dynamic> map) => new SwaggerPostTest.fromJson(map);
    SwaggerPostTest.fromJson(Map<String, dynamic> json) {
        required1 = json['required1'];
        optional1 = json['optional1'];
    }

    Map<String, dynamic> toJson() => {
        'required1': required1,
        'optional1': optional1
    };

    createResponse() { return new HelloResponse(); }
    String getTypeName() { return "SwaggerPostTest"; }
}

// @Route("/swaggerpost2/{Required1}/{Required2}", "GET")
// @Route("/swaggerpost2/{Required1}/{Required2}/{Optional1}", "GET")
// @Route("/swaggerpost2", "POST")
class SwaggerPostTest2 implements IReturn<HelloResponse>
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

    SwaggerPostTest2 fromMap(Map<String, dynamic> map) => new SwaggerPostTest2.fromJson(map);
    SwaggerPostTest2.fromJson(Map<String, dynamic> json) {
        required1 = json['required1'];
        required2 = json['required2'];
        optional1 = json['optional1'];
    }

    Map<String, dynamic> toJson() => {
        'required1': required1,
        'required2': required2,
        'optional1': optional1
    };

    createResponse() { return new HelloResponse(); }
    String getTypeName() { return "SwaggerPostTest2"; }
}

// @Route("/swagger/multiattrtest", "POST")
// @ApiResponse(Description="Code 1", StatusCode=400)
// @ApiResponse(Description="Code 2", StatusCode=402)
// @ApiResponse(Description="Code 3", StatusCode=401)
class SwaggerMultiApiResponseTest implements IReturnVoid
{
    SwaggerMultiApiResponseTest();
    SwaggerMultiApiResponseTest fromMap(Map<String, dynamic> map) => new SwaggerMultiApiResponseTest.fromJson(map);
    SwaggerMultiApiResponseTest.fromJson(Map<String, dynamic> json) : super();
    Map<String, dynamic> toJson() => {};
    createResponse() {}
    String getTypeName() { return "SwaggerMultiApiResponseTest"; }
}

// @Route("/dynamically/registered/{Name}")
class DynamicallyRegistered
{
    String name;

    DynamicallyRegistered({this.name});

    DynamicallyRegistered fromMap(Map<String, dynamic> map) => new DynamicallyRegistered.fromJson(map);
    DynamicallyRegistered.fromJson(Map<String, dynamic> json) {
        name = json['name'];
    }

    Map<String, dynamic> toJson() => {
        'name': name
    };

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
        meta = json['meta'];
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

// @Route("/apikeys")
// @Route("/apikeys/{Environment}")
// @DataContract
class GetApiKeys implements IReturn<GetApiKeysResponse>, IGet
{
    // @DataMember(Order=1)
    String environment;

    GetApiKeys({this.environment});

    GetApiKeys fromMap(Map<String, dynamic> map) => new GetApiKeys.fromJson(map);
    GetApiKeys.fromJson(Map<String, dynamic> json) {
        environment = json['environment'];
    }

    Map<String, dynamic> toJson() => {
        'environment': environment
    };

    createResponse() { return new GetApiKeysResponse(); }
    String getTypeName() { return "GetApiKeys"; }
}

// @Route("/apikeys/regenerate")
// @Route("/apikeys/regenerate/{Environment}")
// @DataContract
class RegenerateApiKeys implements IReturn<GetApiKeysResponse>, IPost
{
    // @DataMember(Order=1)
    String environment;

    RegenerateApiKeys({this.environment});

    RegenerateApiKeys fromMap(Map<String, dynamic> map) => new RegenerateApiKeys.fromJson(map);
    RegenerateApiKeys.fromJson(Map<String, dynamic> json) {
        environment = json['environment'];
    }

    Map<String, dynamic> toJson() => {
        'environment': environment
    };

    createResponse() { return new GetApiKeysResponse(); }
    String getTypeName() { return "RegenerateApiKeys"; }
}

// @Route("/register")
// @DataContract
class Register implements IReturn<RegisterResponse>, IPost
{
    // @DataMember(Order=1)
    String userName;

    // @DataMember(Order=2)
    String firstName;

    // @DataMember(Order=3)
    String lastName;

    // @DataMember(Order=4)
    String displayName;

    // @DataMember(Order=5)
    String email;

    // @DataMember(Order=6)
    String password;

    // @DataMember(Order=7)
    bool autoLogin;

    // @DataMember(Order=8)
    String Continue;

    Register({this.userName,this.firstName,this.lastName,this.displayName,this.email,this.password,this.autoLogin,this.Continue});

    Register fromMap(Map<String, dynamic> map) => new Register.fromJson(map);
    Register.fromJson(Map<String, dynamic> json) {
        userName = json['userName'];
        firstName = json['firstName'];
        lastName = json['lastName'];
        displayName = json['displayName'];
        email = json['email'];
        password = json['password'];
        autoLogin = json['autoLogin'];
        Continue = json['continue'];
    }

    Map<String, dynamic> toJson() => {
        'userName': userName,
        'firstName': firstName,
        'lastName': lastName,
        'displayName': displayName,
        'email': email,
        'password': password,
        'autoLogin': autoLogin,
        'continue': Continue
    };

    createResponse() { return new RegisterResponse(); }
    String getTypeName() { return "Register"; }
}

// @Route("/pgsql/rockstars")
class QueryPostgresRockstars extends QueryDb1<Rockstar> implements IReturn<QueryResponse<Rockstar>>, IMeta
{
    int age;

    QueryPostgresRockstars({this.age});

    QueryPostgresRockstars fromMap(Map<String, dynamic> map) => new QueryPostgresRockstars.fromJson(map);
    QueryPostgresRockstars.fromJson(Map<String, dynamic> json): super.fromJson(json) {
        age = json['age'];
    }

    Map<String, dynamic> toJson() => super.toJson()..addAll({
        'age': age
    });

    createResponse() { return new QueryResponse<Rockstar>(); }
    String getTypeName() { return "QueryPostgresRockstars"; }
}

// @Route("/pgsql/pgrockstars")
class QueryPostgresPgRockstars extends QueryDb1<PgRockstar> implements IReturn<QueryResponse<PgRockstar>>, IMeta
{
    int age;

    QueryPostgresPgRockstars({this.age});

    QueryPostgresPgRockstars fromMap(Map<String, dynamic> map) => new QueryPostgresPgRockstars.fromJson(map);
    QueryPostgresPgRockstars.fromJson(Map<String, dynamic> json): super.fromJson(json) {
        age = json['age'];
    }

    Map<String, dynamic> toJson() => super.toJson()..addAll({
        'age': age
    });

    createResponse() { return new QueryResponse<PgRockstar>(); }
    String getTypeName() { return "QueryPostgresPgRockstars"; }
}

class QueryRockstarsConventions extends QueryDb1<Rockstar> implements IReturn<QueryResponse<Rockstar>>, IMeta
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

    QueryRockstarsConventions fromMap(Map<String, dynamic> map) => new QueryRockstarsConventions.fromJson(map);
    QueryRockstarsConventions.fromJson(Map<String, dynamic> json): super.fromJson(json) {
        ids = JsonConverters.fromJson(json['ids'],'List<int>',_types);
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
    }

    Map<String, dynamic> toJson() => super.toJson()..addAll({
        'ids': JsonConverters.toJson(ids,'List<int>',_types),
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
}

// @AutoQueryViewer(Description="Use this option to search for Rockstars!", Title="Search for Rockstars")
class QueryCustomRockstars extends QueryDb2<Rockstar, CustomRockstar> implements IReturn<QueryResponse<CustomRockstar>>, IMeta
{
    int age;

    QueryCustomRockstars({this.age});

    QueryCustomRockstars fromMap(Map<String, dynamic> map) => new QueryCustomRockstars.fromJson(map);
    QueryCustomRockstars.fromJson(Map<String, dynamic> json): super.fromJson(json) {
        age = json['age'];
    }

    Map<String, dynamic> toJson() => super.toJson()..addAll({
        'age': age
    });

    createResponse() { return new QueryResponse<CustomRockstar>(); }
    String getTypeName() { return "QueryCustomRockstars"; }
}

// @Route("/customrockstars")
class QueryRockstarAlbums extends QueryDb2<Rockstar, CustomRockstar> implements IReturn<QueryResponse<CustomRockstar>>, IMeta
{
    int age;
    String rockstarAlbumName;

    QueryRockstarAlbums({this.age,this.rockstarAlbumName});

    QueryRockstarAlbums fromMap(Map<String, dynamic> map) => new QueryRockstarAlbums.fromJson(map);
    QueryRockstarAlbums.fromJson(Map<String, dynamic> json): super.fromJson(json) {
        age = json['age'];
        rockstarAlbumName = json['rockstarAlbumName'];
    }

    Map<String, dynamic> toJson() => super.toJson()..addAll({
        'age': age,
        'rockstarAlbumName': rockstarAlbumName
    });

    createResponse() { return new QueryResponse<CustomRockstar>(); }
    String getTypeName() { return "QueryRockstarAlbums"; }
}

class QueryRockstarAlbumsImplicit extends QueryDb2<Rockstar, CustomRockstar> implements IReturn<QueryResponse<CustomRockstar>>, IMeta
{
    QueryRockstarAlbumsImplicit();
    QueryRockstarAlbumsImplicit fromMap(Map<String, dynamic> map) => new QueryRockstarAlbumsImplicit.fromJson(map);
    QueryRockstarAlbumsImplicit.fromJson(Map<String, dynamic> json) : super.fromJson(json);
    Map<String, dynamic> toJson() => super.toJson();
    createResponse() { return new QueryResponse<CustomRockstar>(); }
    String getTypeName() { return "QueryRockstarAlbumsImplicit"; }
}

class QueryRockstarAlbumsLeftJoin extends QueryDb2<Rockstar, CustomRockstar> implements IReturn<QueryResponse<CustomRockstar>>, IMeta
{
    int age;
    String albumName;

    QueryRockstarAlbumsLeftJoin({this.age,this.albumName});

    QueryRockstarAlbumsLeftJoin fromMap(Map<String, dynamic> map) => new QueryRockstarAlbumsLeftJoin.fromJson(map);
    QueryRockstarAlbumsLeftJoin.fromJson(Map<String, dynamic> json): super.fromJson(json) {
        age = json['age'];
        albumName = json['albumName'];
    }

    Map<String, dynamic> toJson() => super.toJson()..addAll({
        'age': age,
        'albumName': albumName
    });

    createResponse() { return new QueryResponse<CustomRockstar>(); }
    String getTypeName() { return "QueryRockstarAlbumsLeftJoin"; }
}

class QueryOverridedRockstars extends QueryDb1<Rockstar> implements IReturn<QueryResponse<Rockstar>>, IMeta
{
    int age;

    QueryOverridedRockstars({this.age});

    QueryOverridedRockstars fromMap(Map<String, dynamic> map) => new QueryOverridedRockstars.fromJson(map);
    QueryOverridedRockstars.fromJson(Map<String, dynamic> json): super.fromJson(json) {
        age = json['age'];
    }

    Map<String, dynamic> toJson() => super.toJson()..addAll({
        'age': age
    });

    createResponse() { return new QueryResponse<Rockstar>(); }
    String getTypeName() { return "QueryOverridedRockstars"; }
}

class QueryOverridedCustomRockstars extends QueryDb2<Rockstar, CustomRockstar> implements IReturn<QueryResponse<CustomRockstar>>, IMeta
{
    int age;

    QueryOverridedCustomRockstars({this.age});

    QueryOverridedCustomRockstars fromMap(Map<String, dynamic> map) => new QueryOverridedCustomRockstars.fromJson(map);
    QueryOverridedCustomRockstars.fromJson(Map<String, dynamic> json): super.fromJson(json) {
        age = json['age'];
    }

    Map<String, dynamic> toJson() => super.toJson()..addAll({
        'age': age
    });

    createResponse() { return new QueryResponse<CustomRockstar>(); }
    String getTypeName() { return "QueryOverridedCustomRockstars"; }
}

// @Route("/query-custom/rockstars")
class QueryFieldRockstars extends QueryDb1<Rockstar> implements IReturn<QueryResponse<Rockstar>>, IMeta
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

    QueryFieldRockstars fromMap(Map<String, dynamic> map) => new QueryFieldRockstars.fromJson(map);
    QueryFieldRockstars.fromJson(Map<String, dynamic> json): super.fromJson(json) {
        firstName = json['firstName'];
        firstNames = JsonConverters.fromJson(json['firstNames'],'List<String>',_types);
        age = json['age'];
        firstNameCaseInsensitive = json['firstNameCaseInsensitive'];
        firstNameStartsWith = json['firstNameStartsWith'];
        lastNameEndsWith = json['lastNameEndsWith'];
        firstNameBetween = JsonConverters.fromJson(json['firstNameBetween'],'List<String>',_types);
        orLastName = json['orLastName'];
        firstNameContainsMulti = JsonConverters.fromJson(json['firstNameContainsMulti'],'List<String>',_types);
    }

    Map<String, dynamic> toJson() => super.toJson()..addAll({
        'firstName': firstName,
        'firstNames': JsonConverters.toJson(firstNames,'List<String>',_types),
        'age': age,
        'firstNameCaseInsensitive': firstNameCaseInsensitive,
        'firstNameStartsWith': firstNameStartsWith,
        'lastNameEndsWith': lastNameEndsWith,
        'firstNameBetween': JsonConverters.toJson(firstNameBetween,'List<String>',_types),
        'orLastName': orLastName,
        'firstNameContainsMulti': JsonConverters.toJson(firstNameContainsMulti,'List<String>',_types)
    });

    createResponse() { return new QueryResponse<Rockstar>(); }
    String getTypeName() { return "QueryFieldRockstars"; }
}

class QueryFieldRockstarsDynamic extends QueryDb1<Rockstar> implements IReturn<QueryResponse<Rockstar>>, IMeta
{
    int age;

    QueryFieldRockstarsDynamic({this.age});

    QueryFieldRockstarsDynamic fromMap(Map<String, dynamic> map) => new QueryFieldRockstarsDynamic.fromJson(map);
    QueryFieldRockstarsDynamic.fromJson(Map<String, dynamic> json): super.fromJson(json) {
        age = json['age'];
    }

    Map<String, dynamic> toJson() => super.toJson()..addAll({
        'age': age
    });

    createResponse() { return new QueryResponse<Rockstar>(); }
    String getTypeName() { return "QueryFieldRockstarsDynamic"; }
}

class QueryRockstarsFilter extends QueryDb1<Rockstar> implements IReturn<QueryResponse<Rockstar>>, IMeta
{
    int age;

    QueryRockstarsFilter({this.age});

    QueryRockstarsFilter fromMap(Map<String, dynamic> map) => new QueryRockstarsFilter.fromJson(map);
    QueryRockstarsFilter.fromJson(Map<String, dynamic> json): super.fromJson(json) {
        age = json['age'];
    }

    Map<String, dynamic> toJson() => super.toJson()..addAll({
        'age': age
    });

    createResponse() { return new QueryResponse<Rockstar>(); }
    String getTypeName() { return "QueryRockstarsFilter"; }
}

class QueryCustomRockstarsFilter extends QueryDb2<Rockstar, CustomRockstar> implements IReturn<QueryResponse<CustomRockstar>>, IMeta
{
    int age;

    QueryCustomRockstarsFilter({this.age});

    QueryCustomRockstarsFilter fromMap(Map<String, dynamic> map) => new QueryCustomRockstarsFilter.fromJson(map);
    QueryCustomRockstarsFilter.fromJson(Map<String, dynamic> json): super.fromJson(json) {
        age = json['age'];
    }

    Map<String, dynamic> toJson() => super.toJson()..addAll({
        'age': age
    });

    createResponse() { return new QueryResponse<CustomRockstar>(); }
    String getTypeName() { return "QueryCustomRockstarsFilter"; }
}

class QueryRockstarsIFilter extends QueryDb1<Rockstar> implements IReturn<QueryResponse<Rockstar>>, IMeta, IFilterRockstars
{
    int age;

    QueryRockstarsIFilter({this.age});

    QueryRockstarsIFilter fromMap(Map<String, dynamic> map) => new QueryRockstarsIFilter.fromJson(map);
    QueryRockstarsIFilter.fromJson(Map<String, dynamic> json): super.fromJson(json) {
        age = json['age'];
    }

    Map<String, dynamic> toJson() => super.toJson()..addAll({
        'age': age
    });

    createResponse() { return new QueryResponse<Rockstar>(); }
    String getTypeName() { return "QueryRockstarsIFilter"; }
}

// @Route("/OrRockstars")
class QueryOrRockstars extends QueryDb1<Rockstar> implements IReturn<QueryResponse<Rockstar>>, IMeta
{
    int age;
    String firstName;

    QueryOrRockstars({this.age,this.firstName});

    QueryOrRockstars fromMap(Map<String, dynamic> map) => new QueryOrRockstars.fromJson(map);
    QueryOrRockstars.fromJson(Map<String, dynamic> json): super.fromJson(json) {
        age = json['age'];
        firstName = json['firstName'];
    }

    Map<String, dynamic> toJson() => super.toJson()..addAll({
        'age': age,
        'firstName': firstName
    });

    createResponse() { return new QueryResponse<Rockstar>(); }
    String getTypeName() { return "QueryOrRockstars"; }
}

class QueryGetRockstars extends QueryDb1<Rockstar> implements IReturn<QueryResponse<Rockstar>>, IMeta
{
    List<int> ids;
    List<int> ages;
    List<String> firstNames;
    List<int> idsBetween;

    QueryGetRockstars({this.ids,this.ages,this.firstNames,this.idsBetween});

    QueryGetRockstars fromMap(Map<String, dynamic> map) => new QueryGetRockstars.fromJson(map);
    QueryGetRockstars.fromJson(Map<String, dynamic> json): super.fromJson(json) {
        ids = JsonConverters.fromJson(json['ids'],'List<int>',_types);
        ages = JsonConverters.fromJson(json['ages'],'List<int>',_types);
        firstNames = JsonConverters.fromJson(json['firstNames'],'List<String>',_types);
        idsBetween = JsonConverters.fromJson(json['idsBetween'],'List<int>',_types);
    }

    Map<String, dynamic> toJson() => super.toJson()..addAll({
        'ids': JsonConverters.toJson(ids,'List<int>',_types),
        'ages': JsonConverters.toJson(ages,'List<int>',_types),
        'firstNames': JsonConverters.toJson(firstNames,'List<String>',_types),
        'idsBetween': JsonConverters.toJson(idsBetween,'List<int>',_types)
    });

    createResponse() { return new QueryResponse<Rockstar>(); }
    String getTypeName() { return "QueryGetRockstars"; }
}

class QueryGetRockstarsDynamic extends QueryDb1<Rockstar> implements IReturn<QueryResponse<Rockstar>>, IMeta
{
    QueryGetRockstarsDynamic();
    QueryGetRockstarsDynamic fromMap(Map<String, dynamic> map) => new QueryGetRockstarsDynamic.fromJson(map);
    QueryGetRockstarsDynamic.fromJson(Map<String, dynamic> json) : super.fromJson(json);
    Map<String, dynamic> toJson() => super.toJson();
    createResponse() { return new QueryResponse<Rockstar>(); }
    String getTypeName() { return "QueryGetRockstarsDynamic"; }
}

// @Route("/movies/search")
class SearchMovies extends QueryDb1<Movie> implements IReturn<QueryResponse<Movie>>, IMeta
{
    SearchMovies();
    SearchMovies fromMap(Map<String, dynamic> map) => new SearchMovies.fromJson(map);
    SearchMovies.fromJson(Map<String, dynamic> json) : super.fromJson(json);
    Map<String, dynamic> toJson() => super.toJson();
    createResponse() { return new QueryResponse<Movie>(); }
    String getTypeName() { return "SearchMovies"; }
}

// @Route("/movies")
class QueryMovies extends QueryDb1<Movie> implements IReturn<QueryResponse<Movie>>, IMeta
{
    List<int> ids;
    List<String> imdbIds;
    List<String> ratings;

    QueryMovies({this.ids,this.imdbIds,this.ratings});

    QueryMovies fromMap(Map<String, dynamic> map) => new QueryMovies.fromJson(map);
    QueryMovies.fromJson(Map<String, dynamic> json): super.fromJson(json) {
        ids = JsonConverters.fromJson(json['ids'],'List<int>',_types);
        imdbIds = JsonConverters.fromJson(json['imdbIds'],'List<String>',_types);
        ratings = JsonConverters.fromJson(json['ratings'],'List<String>',_types);
    }

    Map<String, dynamic> toJson() => super.toJson()..addAll({
        'ids': JsonConverters.toJson(ids,'List<int>',_types),
        'imdbIds': JsonConverters.toJson(imdbIds,'List<String>',_types),
        'ratings': JsonConverters.toJson(ratings,'List<String>',_types)
    });

    createResponse() { return new QueryResponse<Movie>(); }
    String getTypeName() { return "QueryMovies"; }
}

class StreamMovies extends QueryDb1<Movie> implements IReturn<QueryResponse<Movie>>, IMeta
{
    List<String> ratings;

    StreamMovies({this.ratings});

    StreamMovies fromMap(Map<String, dynamic> map) => new StreamMovies.fromJson(map);
    StreamMovies.fromJson(Map<String, dynamic> json): super.fromJson(json) {
        ratings = JsonConverters.fromJson(json['ratings'],'List<String>',_types);
    }

    Map<String, dynamic> toJson() => super.toJson()..addAll({
        'ratings': JsonConverters.toJson(ratings,'List<String>',_types)
    });

    createResponse() { return new QueryResponse<Movie>(); }
    String getTypeName() { return "StreamMovies"; }
}

class QueryUnknownRockstars extends QueryDb1<Rockstar> implements IReturn<QueryResponse<Rockstar>>, IMeta
{
    int unknownInt;
    String unknownProperty;

    QueryUnknownRockstars({this.unknownInt,this.unknownProperty});

    QueryUnknownRockstars fromMap(Map<String, dynamic> map) => new QueryUnknownRockstars.fromJson(map);
    QueryUnknownRockstars.fromJson(Map<String, dynamic> json): super.fromJson(json) {
        unknownInt = json['unknownInt'];
        unknownProperty = json['unknownProperty'];
    }

    Map<String, dynamic> toJson() => super.toJson()..addAll({
        'unknownInt': unknownInt,
        'unknownProperty': unknownProperty
    });

    createResponse() { return new QueryResponse<Rockstar>(); }
    String getTypeName() { return "QueryUnknownRockstars"; }
}

// @Route("/query/rockstar-references")
class QueryRockstarsWithReferences extends QueryDb1<RockstarReference> implements IReturn<QueryResponse<RockstarReference>>, IMeta
{
    int age;

    QueryRockstarsWithReferences({this.age});

    QueryRockstarsWithReferences fromMap(Map<String, dynamic> map) => new QueryRockstarsWithReferences.fromJson(map);
    QueryRockstarsWithReferences.fromJson(Map<String, dynamic> json): super.fromJson(json) {
        age = json['age'];
    }

    Map<String, dynamic> toJson() => super.toJson()..addAll({
        'age': age
    });

    createResponse() { return new QueryResponse<RockstarReference>(); }
    String getTypeName() { return "QueryRockstarsWithReferences"; }
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

// @Route("/query/alltypes")
class QueryAllTypes extends QueryDb1<AllTypes> implements IReturn<QueryResponse<AllTypes>>, IMeta
{
    QueryAllTypes();
    QueryAllTypes fromMap(Map<String, dynamic> map) => new QueryAllTypes.fromJson(map);
    QueryAllTypes.fromJson(Map<String, dynamic> json) : super.fromJson(json);
    Map<String, dynamic> toJson() => super.toJson();
    createResponse() { return new QueryResponse<AllTypes>(); }
    String getTypeName() { return "QueryAllTypes"; }
}

// @Route("/querydata/rockstars")
class QueryDataRockstars extends QueryData<Rockstar> implements IReturn<QueryResponse<Rockstar>>, IMeta
{
    int age;

    QueryDataRockstars({this.age});

    QueryDataRockstars fromMap(Map<String, dynamic> map) => new QueryDataRockstars.fromJson(map);
    QueryDataRockstars.fromJson(Map<String, dynamic> json): super.fromJson(json) {
        age = json['age'];
    }

    Map<String, dynamic> toJson() => super.toJson()..addAll({
        'age': age
    });

    createResponse() { return new QueryResponse<Rockstar>(); }
    String getTypeName() { return "QueryDataRockstars"; }
}

Map<String, TypeInfo> _types = <String, TypeInfo> {
    'RequestLogEntry': new TypeInfo(TypeOf.Class, create:() => new RequestLogEntry()),
    'DateTime': new TypeInfo(TypeOf.Class, create:() => new DateTime(0)),
    'dynamic': new TypeInfo(TypeOf.Class, create:() => new dynamic()),
    'Duration': new TypeInfo(TypeOf.Class, create:() => new Duration()),
    'ResponseError': new TypeInfo(TypeOf.Class, create:() => new ResponseError()),
    'ResponseStatus': new TypeInfo(TypeOf.Class, create:() => new ResponseStatus()),
    'List<ResponseError>': new TypeInfo(TypeOf.Class, create:() => new List<ResponseError>()),
    'Rockstar': new TypeInfo(TypeOf.Class, create:() => new Rockstar()),
    'ObjectDesign': new TypeInfo(TypeOf.Class, create:() => new ObjectDesign()),
    'IAuthTokens': new TypeInfo(TypeOf.Interface),
    'AuthUserSession': new TypeInfo(TypeOf.Class, create:() => new AuthUserSession()),
    'List<String>': new TypeInfo(TypeOf.Class, create:() => new List<String>()),
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
    'List<int>': new TypeInfo(TypeOf.Class, create:() => new List<int>()),
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
    'Tuple2<T1, T2>': new TypeInfo(TypeOf.GenericDef,create:() => new Tuple2()),
    'Tuple3<T1, T2, T3>': new TypeInfo(TypeOf.GenericDef,create:() => new Tuple3()),
    'IEcho': new TypeInfo(TypeOf.Interface),
    'CacheControl': new TypeInfo(TypeOf.Enum, enumValues:CacheControl.values),
    'MyColor': new TypeInfo(TypeOf.Enum, enumValues:MyColor.values),
    'SwaggerNestedModel': new TypeInfo(TypeOf.Class, create:() => new SwaggerNestedModel()),
    'SwaggerNestedModel2': new TypeInfo(TypeOf.Class, create:() => new SwaggerNestedModel2()),
    'MyEnum': new TypeInfo(TypeOf.Enum, enumValues:MyEnum.values),
    'UserApiKey': new TypeInfo(TypeOf.Class, create:() => new UserApiKey()),
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
    'QueryResponse<T>': new TypeInfo(TypeOf.GenericDef,create:() => new QueryResponse()),
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
    'KeyValuePair<String, String>': new TypeInfo(TypeOf.Class, create:() => new KeyValuePair<String, String>()),
    'Map<int,String>': new TypeInfo(TypeOf.Class, create:() => new Map<int,String>()),
    'String': new TypeInfo(TypeOf.Class, create:() => ""),
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
    'Tuple2<String, int>': new TypeInfo(TypeOf.Class, create:() => new Tuple2<String, int>()),
    'Tuple3<String, int, bool>': new TypeInfo(TypeOf.Class, create:() => new Tuple3<String, int, bool>()),
    'List<Tuple2<String,int>>': new TypeInfo(TypeOf.Class, create:() => new List<Tuple2<String,int>>()),
    'Tuple2<String,int>': new TypeInfo(TypeOf.Class, create:() => new Tuple2<String,int>()),
    'List<Tuple3<String,int,bool>>': new TypeInfo(TypeOf.Class, create:() => new List<Tuple3<String,int,bool>>()),
    'Tuple3<String,int,bool>': new TypeInfo(TypeOf.Class, create:() => new Tuple3<String,int,bool>()),
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
    'AuthenticateResponse': new TypeInfo(TypeOf.Class, create:() => new AuthenticateResponse()),
    'AssignRolesResponse': new TypeInfo(TypeOf.Class, create:() => new AssignRolesResponse()),
    'UnAssignRolesResponse': new TypeInfo(TypeOf.Class, create:() => new UnAssignRolesResponse()),
    'ConvertSessionToTokenResponse': new TypeInfo(TypeOf.Class, create:() => new ConvertSessionToTokenResponse()),
    'GetAccessTokenResponse': new TypeInfo(TypeOf.Class, create:() => new GetAccessTokenResponse()),
    'GetApiKeysResponse': new TypeInfo(TypeOf.Class, create:() => new GetApiKeysResponse()),
    'List<UserApiKey>': new TypeInfo(TypeOf.Class, create:() => new List<UserApiKey>()),
    'RegisterResponse': new TypeInfo(TypeOf.Class, create:() => new RegisterResponse()),
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
    'Authenticate': new TypeInfo(TypeOf.Class, create:() => new Authenticate()),
    'AssignRoles': new TypeInfo(TypeOf.Class, create:() => new AssignRoles()),
    'UnAssignRoles': new TypeInfo(TypeOf.Class, create:() => new UnAssignRoles()),
    'ConvertSessionToToken': new TypeInfo(TypeOf.Class, create:() => new ConvertSessionToToken()),
    'GetAccessToken': new TypeInfo(TypeOf.Class, create:() => new GetAccessToken()),
    'GetApiKeys': new TypeInfo(TypeOf.Class, create:() => new GetApiKeys()),
    'RegenerateApiKeys': new TypeInfo(TypeOf.Class, create:() => new RegenerateApiKeys()),
    'Register': new TypeInfo(TypeOf.Class, create:() => new Register()),
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
};
