/* Options:
Date: 2018-04-10 00:30:21
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

abstract class IReturn<T>
{
    String getTypeName();
}

abstract class IReturnVoid
{
    String getTypeName();
}

abstract class IMeta
{
    Map<String,String> meta;
}

abstract class IGet
{
}

abstract class IPost
{
}

abstract class IPut
{
}

abstract class IDelete
{
}

abstract class IPatch
{
}

abstract class IHasSessionId
{
    String sessionId;
}

abstract class IHasVersion
{
    int version;
}

class QueryBase
{
    // @DataMember(Order=1)
    int skip;

    // @DataMember(Order=2)
    int take;

    // @DataMember(Order=3)
    String orderBy;

    // @DataMember(Order=4)
    String orderByDesc;

    // @DataMember(Order=5)
    String include;

    // @DataMember(Order=6)
    String fields;

    // @DataMember(Order=7)
    Map<String,String> meta;

    QueryBase({this.skip,this.take,this.orderBy,this.orderByDesc,this.include,this.fields,this.meta});

    QueryBase fromMap(Map<String, dynamic> map) => new QueryBase.fromJson(map);
    QueryBase.fromJson(Map<String, dynamic> json) :
        skip = json['skip'],
        take = json['take'],
        orderBy = json['orderBy'],
        orderByDesc = json['orderByDesc'],
        include = json['include'],
        fields = json['fields'],
        meta = JsonConverters.get('Dictionary<String,String>').fromJson(json['meta'], () => new Map<String,String>());

    Map<String, dynamic> toJson() => {
        'skip': skip,
        'take': take,
        'orderBy': orderBy,
        'orderByDesc': orderByDesc,
        'include': include,
        'fields': fields,
        'meta': JsonConverters.get('Dictionary<String,String>').toJson(meta)
    };

}

class QueryData<T> extends QueryBase
{
    QueryData();
    QueryData fromMap(Map<String, dynamic> map) => new QueryData.fromJson(map);
    QueryData.fromJson(Map<String, dynamic> json) : super.fromJson(json);
    Map<String, dynamic> toJson() => super.toJson();
}

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
    RequestLogEntry.fromJson(Map<String, dynamic> json) :
        id = json['id'],
        dateTime = JsonConverters.get('DateTime').fromJson(json['dateTime'], () => new DateTime(0)),
        statusCode = json['statusCode'],
        statusDescription = json['statusDescription'],
        httpMethod = json['httpMethod'],
        absoluteUri = json['absoluteUri'],
        pathInfo = json['pathInfo'],
        requestBody = json['requestBody'],
        requestDto = JsonConverters.get('Object').fromJson(json['requestDto'], () => new dynamic()),
        userAuthId = json['userAuthId'],
        sessionId = json['sessionId'],
        ipAddress = json['ipAddress'],
        forwardedFor = json['forwardedFor'],
        referer = json['referer'],
        headers = JsonConverters.get('Dictionary<String,String>').fromJson(json['headers'], () => new Map<String,String>()),
        formData = JsonConverters.get('Dictionary<String,String>').fromJson(json['formData'], () => new Map<String,String>()),
        items = JsonConverters.get('Dictionary<String,String>').fromJson(json['items'], () => new Map<String,String>()),
        session = JsonConverters.get('Object').fromJson(json['session'], () => new dynamic()),
        responseDto = JsonConverters.get('Object').fromJson(json['responseDto'], () => new dynamic()),
        errorResponse = JsonConverters.get('Object').fromJson(json['errorResponse'], () => new dynamic()),
        exceptionSource = json['exceptionSource'],
        exceptionData = JsonConverters.get('IDictionary').fromJson(json['exceptionData'], () => new dynamic()),
        requestDuration = JsonConverters.get('TimeSpan').fromJson(json['requestDuration'], () => new Duration());

    Map<String, dynamic> toJson() => {
        'id': id,
        'dateTime': JsonConverters.get('DateTime').toJson(dateTime),
        'statusCode': statusCode,
        'statusDescription': statusDescription,
        'httpMethod': httpMethod,
        'absoluteUri': absoluteUri,
        'pathInfo': pathInfo,
        'requestBody': requestBody,
        'requestDto': JsonConverters.get('Object').toJson(requestDto),
        'userAuthId': userAuthId,
        'sessionId': sessionId,
        'ipAddress': ipAddress,
        'forwardedFor': forwardedFor,
        'referer': referer,
        'headers': JsonConverters.get('Dictionary<String,String>').toJson(headers),
        'formData': JsonConverters.get('Dictionary<String,String>').toJson(formData),
        'items': JsonConverters.get('Dictionary<String,String>').toJson(items),
        'session': JsonConverters.get('Object').toJson(session),
        'responseDto': JsonConverters.get('Object').toJson(responseDto),
        'errorResponse': JsonConverters.get('Object').toJson(errorResponse),
        'exceptionSource': exceptionSource,
        'exceptionData': JsonConverters.get('IDictionary').toJson(exceptionData),
        'requestDuration': JsonConverters.get('TimeSpan').toJson(requestDuration)
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
    ResponseError.fromJson(Map<String, dynamic> json) :
        errorCode = json['errorCode'],
        fieldName = json['fieldName'],
        message = json['message'],
        meta = JsonConverters.get('Dictionary<String,String>').fromJson(json['meta'], () => new Map<String,String>());

    Map<String, dynamic> toJson() => {
        'errorCode': errorCode,
        'fieldName': fieldName,
        'message': message,
        'meta': JsonConverters.get('Dictionary<String,String>').toJson(meta)
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
    ResponseStatus.fromJson(Map<String, dynamic> json) :
        errorCode = json['errorCode'],
        message = json['message'],
        stackTrace = json['stackTrace'],
        errors = JsonConverters.get('List<ResponseError>').fromJson(json['errors'], () => new List<ResponseError>()),
        meta = JsonConverters.get('Dictionary<String,String>').fromJson(json['meta'], () => new Map<String,String>());

    Map<String, dynamic> toJson() => {
        'errorCode': errorCode,
        'message': message,
        'stackTrace': stackTrace,
        'errors': JsonConverters.get('List<ResponseError>').toJson(errors),
        'meta': JsonConverters.get('Dictionary<String,String>').toJson(meta)
    };

}

class QueryDb1<T> extends QueryBase
{
    QueryDb1();
    QueryDb1 fromMap(Map<String, dynamic> map) => new QueryDb1.fromJson(map);
    QueryDb1.fromJson(Map<String, dynamic> json) : super.fromJson(json);
    Map<String, dynamic> toJson() => super.toJson();
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
    Rockstar.fromJson(Map<String, dynamic> json) :
        id = json['id'],
        firstName = json['firstName'],
        lastName = json['lastName'],
        age = json['age'];

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
    ObjectDesign.fromJson(Map<String, dynamic> json) :
        id = json['id'];

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
    AuthUserSession.fromJson(Map<String, dynamic> json) :
        referrerUrl = json['referrerUrl'],
        id = json['id'],
        userAuthId = json['userAuthId'],
        userAuthName = json['userAuthName'],
        userName = json['userName'],
        twitterUserId = json['twitterUserId'],
        twitterScreenName = json['twitterScreenName'],
        facebookUserId = json['facebookUserId'],
        facebookUserName = json['facebookUserName'],
        firstName = json['firstName'],
        lastName = json['lastName'],
        displayName = json['displayName'],
        company = json['company'],
        email = json['email'],
        primaryEmail = json['primaryEmail'],
        phoneNumber = json['phoneNumber'],
        birthDate = JsonConverters.get('DateTime').fromJson(json['birthDate'], () => new DateTime(0)),
        birthDateRaw = json['birthDateRaw'],
        address = json['address'],
        address2 = json['address2'],
        city = json['city'],
        state = json['state'],
        country = json['country'],
        culture = json['culture'],
        fullName = json['fullName'],
        gender = json['gender'],
        language = json['language'],
        mailAddress = json['mailAddress'],
        nickname = json['nickname'],
        postalCode = json['postalCode'],
        timeZone = json['timeZone'],
        requestTokenSecret = json['requestTokenSecret'],
        createdAt = JsonConverters.get('DateTime').fromJson(json['createdAt'], () => new DateTime(0)),
        lastModified = JsonConverters.get('DateTime').fromJson(json['lastModified'], () => new DateTime(0)),
        roles = JsonConverters.get('List<String>').fromJson(json['roles'], () => new List<String>()),
        permissions = JsonConverters.get('List<String>').fromJson(json['permissions'], () => new List<String>()),
        isAuthenticated = json['isAuthenticated'],
        fromToken = json['fromToken'],
        profileUrl = json['profileUrl'],
        sequence = json['sequence'],
        tag = json['tag'],
        authProvider = json['authProvider'],
        providerOAuthAccess = JsonConverters.get('List<IAuthTokens>').fromJson(json['providerOAuthAccess'], () => new List<IAuthTokens>()),
        meta = JsonConverters.get('Dictionary<String,String>').fromJson(json['meta'], () => new Map<String,String>());

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
        'birthDate': JsonConverters.get('DateTime').toJson(birthDate),
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
        'createdAt': JsonConverters.get('DateTime').toJson(createdAt),
        'lastModified': JsonConverters.get('DateTime').toJson(lastModified),
        'roles': JsonConverters.get('List<String>').toJson(roles),
        'permissions': JsonConverters.get('List<String>').toJson(permissions),
        'isAuthenticated': isAuthenticated,
        'fromToken': fromToken,
        'profileUrl': profileUrl,
        'sequence': sequence,
        'tag': tag,
        'authProvider': authProvider,
        'providerOAuthAccess': JsonConverters.get('List<IAuthTokens>').toJson(providerOAuthAccess),
        'meta': JsonConverters.get('Dictionary<String,String>').toJson(meta)
    };

}

class MetadataTestNestedChild
{
    String name;

    MetadataTestNestedChild({this.name});

    MetadataTestNestedChild fromMap(Map<String, dynamic> map) => new MetadataTestNestedChild.fromJson(map);
    MetadataTestNestedChild.fromJson(Map<String, dynamic> json) :
        name = json['name'];

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
    MetadataTestChild.fromJson(Map<String, dynamic> json) :
        name = json['name'],
        results = JsonConverters.get('List<MetadataTestNestedChild>').fromJson(json['results'], () => new List<MetadataTestNestedChild>());

    Map<String, dynamic> toJson() => {
        'name': name,
        'results': JsonConverters.get('List<MetadataTestNestedChild>').toJson(results)
    };

}

class MenuItemExampleItem
{
    // @DataMember(Order=1)
    // @ApiMember()
    String name1;

    MenuItemExampleItem({this.name1});

    MenuItemExampleItem fromMap(Map<String, dynamic> map) => new MenuItemExampleItem.fromJson(map);
    MenuItemExampleItem.fromJson(Map<String, dynamic> json) :
        name1 = json['name1'];

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
    MenuItemExample.fromJson(Map<String, dynamic> json) :
        name1 = json['name1'],
        menuItemExampleItem = JsonConverters.get('MenuItemExampleItem').fromJson(json['menuItemExampleItem'], () => new MenuItemExampleItem());

    Map<String, dynamic> toJson() => {
        'name1': name1,
        'menuItemExampleItem': JsonConverters.get('MenuItemExampleItem').toJson(menuItemExampleItem)
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
    MenuExample.fromJson(Map<String, dynamic> json) :
        menuItemExample1 = JsonConverters.get('MenuItemExample').fromJson(json['menuItemExample1'], () => new MenuItemExample());

    Map<String, dynamic> toJson() => {
        'menuItemExample1': JsonConverters.get('MenuItemExample').toJson(menuItemExample1)
    };

}

class MetadataTypeName
{
    String name;
    String namespace;
    List<String> genericArgs;

    MetadataTypeName({this.name,this.namespace,this.genericArgs});

    MetadataTypeName fromMap(Map<String, dynamic> map) => new MetadataTypeName.fromJson(map);
    MetadataTypeName.fromJson(Map<String, dynamic> json) :
        name = json['name'],
        namespace = json['namespace'],
        genericArgs = JsonConverters.get('String[]').fromJson(json['genericArgs'], () => new List<String>());

    Map<String, dynamic> toJson() => {
        'name': name,
        'namespace': namespace,
        'genericArgs': JsonConverters.get('String[]').toJson(genericArgs)
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
    MetadataRoute.fromJson(Map<String, dynamic> json) :
        path = json['path'],
        verbs = json['verbs'],
        notes = json['notes'],
        summary = json['summary'];

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
    MetadataDataContract.fromJson(Map<String, dynamic> json) :
        name = json['name'],
        namespace = json['namespace'];

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
    MetadataDataMember.fromJson(Map<String, dynamic> json) :
        name = json['name'],
        order = json['order'],
        isRequired = json['isRequired'],
        emitDefaultValue = json['emitDefaultValue'];

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
    MetadataAttribute.fromJson(Map<String, dynamic> json) :
        name = json['name'],
        constructorArgs = JsonConverters.get('List<MetadataPropertyType>').fromJson(json['constructorArgs'], () => new List<MetadataPropertyType>()),
        args = JsonConverters.get('List<MetadataPropertyType>').fromJson(json['args'], () => new List<MetadataPropertyType>());

    Map<String, dynamic> toJson() => {
        'name': name,
        'constructorArgs': JsonConverters.get('List<MetadataPropertyType>').toJson(constructorArgs),
        'args': JsonConverters.get('List<MetadataPropertyType>').toJson(args)
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
    MetadataPropertyType.fromJson(Map<String, dynamic> json) :
        name = json['name'],
        type = json['type'],
        isValueType = json['isValueType'],
        isSystemType = json['isSystemType'],
        isEnum = json['isEnum'],
        typeNamespace = json['typeNamespace'],
        genericArgs = JsonConverters.get('String[]').fromJson(json['genericArgs'], () => new List<String>()),
        value = json['value'],
        description = json['description'],
        dataMember = JsonConverters.get('MetadataDataMember').fromJson(json['dataMember'], () => new MetadataDataMember()),
        readOnly = json['readOnly'],
        paramType = json['paramType'],
        displayType = json['displayType'],
        isRequired = json['isRequired'],
        allowableValues = JsonConverters.get('String[]').fromJson(json['allowableValues'], () => new List<String>()),
        allowableMin = json['allowableMin'],
        allowableMax = json['allowableMax'],
        attributes = JsonConverters.get('List<MetadataAttribute>').fromJson(json['attributes'], () => new List<MetadataAttribute>());

    Map<String, dynamic> toJson() => {
        'name': name,
        'type': type,
        'isValueType': isValueType,
        'isSystemType': isSystemType,
        'isEnum': isEnum,
        'typeNamespace': typeNamespace,
        'genericArgs': JsonConverters.get('String[]').toJson(genericArgs),
        'value': value,
        'description': description,
        'dataMember': JsonConverters.get('MetadataDataMember').toJson(dataMember),
        'readOnly': readOnly,
        'paramType': paramType,
        'displayType': displayType,
        'isRequired': isRequired,
        'allowableValues': JsonConverters.get('String[]').toJson(allowableValues),
        'allowableMin': allowableMin,
        'allowableMax': allowableMax,
        'attributes': JsonConverters.get('List<MetadataAttribute>').toJson(attributes)
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
    MetadataType.fromJson(Map<String, dynamic> json) :
        name = json['name'],
        namespace = json['namespace'],
        genericArgs = JsonConverters.get('String[]').fromJson(json['genericArgs'], () => new List<String>()),
        inherits = JsonConverters.get('MetadataTypeName').fromJson(json['inherits'], () => new MetadataTypeName()),
        Implements = JsonConverters.get('MetadataTypeName[]').fromJson(json['implements'], () => new List<MetadataTypeName>()),
        displayType = json['displayType'],
        description = json['description'],
        returnVoidMarker = json['returnVoidMarker'],
        isNested = json['isNested'],
        isEnum = json['isEnum'],
        isEnumInt = json['isEnumInt'],
        isInterface = json['isInterface'],
        isAbstract = json['isAbstract'],
        returnMarkerTypeName = JsonConverters.get('MetadataTypeName').fromJson(json['returnMarkerTypeName'], () => new MetadataTypeName()),
        routes = JsonConverters.get('List<MetadataRoute>').fromJson(json['routes'], () => new List<MetadataRoute>()),
        dataContract = JsonConverters.get('MetadataDataContract').fromJson(json['dataContract'], () => new MetadataDataContract()),
        properties = JsonConverters.get('List<MetadataPropertyType>').fromJson(json['properties'], () => new List<MetadataPropertyType>()),
        attributes = JsonConverters.get('List<MetadataAttribute>').fromJson(json['attributes'], () => new List<MetadataAttribute>()),
        innerTypes = JsonConverters.get('List<MetadataTypeName>').fromJson(json['innerTypes'], () => new List<MetadataTypeName>()),
        enumNames = JsonConverters.get('List<String>').fromJson(json['enumNames'], () => new List<String>()),
        enumValues = JsonConverters.get('List<String>').fromJson(json['enumValues'], () => new List<String>()),
        meta = JsonConverters.get('Dictionary<String,String>').fromJson(json['meta'], () => new Map<String,String>());

    Map<String, dynamic> toJson() => {
        'name': name,
        'namespace': namespace,
        'genericArgs': JsonConverters.get('String[]').toJson(genericArgs),
        'inherits': JsonConverters.get('MetadataTypeName').toJson(inherits),
        'implements': JsonConverters.get('MetadataTypeName[]').toJson(Implements),
        'displayType': displayType,
        'description': description,
        'returnVoidMarker': returnVoidMarker,
        'isNested': isNested,
        'isEnum': isEnum,
        'isEnumInt': isEnumInt,
        'isInterface': isInterface,
        'isAbstract': isAbstract,
        'returnMarkerTypeName': JsonConverters.get('MetadataTypeName').toJson(returnMarkerTypeName),
        'routes': JsonConverters.get('List<MetadataRoute>').toJson(routes),
        'dataContract': JsonConverters.get('MetadataDataContract').toJson(dataContract),
        'properties': JsonConverters.get('List<MetadataPropertyType>').toJson(properties),
        'attributes': JsonConverters.get('List<MetadataAttribute>').toJson(attributes),
        'innerTypes': JsonConverters.get('List<MetadataTypeName>').toJson(innerTypes),
        'enumNames': JsonConverters.get('List<String>').toJson(enumNames),
        'enumValues': JsonConverters.get('List<String>').toJson(enumValues),
        'meta': JsonConverters.get('Dictionary<String,String>').toJson(meta)
    };

}

class AutoQueryConvention
{
    String name;
    String value;
    String types;

    AutoQueryConvention({this.name,this.value,this.types});

    AutoQueryConvention fromMap(Map<String, dynamic> map) => new AutoQueryConvention.fromJson(map);
    AutoQueryConvention.fromJson(Map<String, dynamic> json) :
        name = json['name'],
        value = json['value'],
        types = json['types'];

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
    AutoQueryViewerConfig.fromJson(Map<String, dynamic> json) :
        serviceBaseUrl = json['serviceBaseUrl'],
        serviceName = json['serviceName'],
        serviceDescription = json['serviceDescription'],
        serviceIconUrl = json['serviceIconUrl'],
        formats = JsonConverters.get('String[]').fromJson(json['formats'], () => new List<String>()),
        maxLimit = json['maxLimit'],
        isPublic = json['isPublic'],
        onlyShowAnnotatedServices = json['onlyShowAnnotatedServices'],
        implicitConventions = JsonConverters.get('List<AutoQueryConvention>').fromJson(json['implicitConventions'], () => new List<AutoQueryConvention>()),
        defaultSearchField = json['defaultSearchField'],
        defaultSearchType = json['defaultSearchType'],
        defaultSearchText = json['defaultSearchText'],
        brandUrl = json['brandUrl'],
        brandImageUrl = json['brandImageUrl'],
        textColor = json['textColor'],
        linkColor = json['linkColor'],
        backgroundColor = json['backgroundColor'],
        backgroundImageUrl = json['backgroundImageUrl'],
        iconUrl = json['iconUrl'],
        meta = JsonConverters.get('Dictionary<String,String>').fromJson(json['meta'], () => new Map<String,String>());

    Map<String, dynamic> toJson() => {
        'serviceBaseUrl': serviceBaseUrl,
        'serviceName': serviceName,
        'serviceDescription': serviceDescription,
        'serviceIconUrl': serviceIconUrl,
        'formats': JsonConverters.get('String[]').toJson(formats),
        'maxLimit': maxLimit,
        'isPublic': isPublic,
        'onlyShowAnnotatedServices': onlyShowAnnotatedServices,
        'implicitConventions': JsonConverters.get('List<AutoQueryConvention>').toJson(implicitConventions),
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
        'meta': JsonConverters.get('Dictionary<String,String>').toJson(meta)
    };

}

class AutoQueryViewerUserInfo
{
    bool isAuthenticated;
    int queryCount;
    Map<String,String> meta;

    AutoQueryViewerUserInfo({this.isAuthenticated,this.queryCount,this.meta});

    AutoQueryViewerUserInfo fromMap(Map<String, dynamic> map) => new AutoQueryViewerUserInfo.fromJson(map);
    AutoQueryViewerUserInfo.fromJson(Map<String, dynamic> json) :
        isAuthenticated = json['isAuthenticated'],
        queryCount = json['queryCount'],
        meta = JsonConverters.get('Dictionary<String,String>').fromJson(json['meta'], () => new Map<String,String>());

    Map<String, dynamic> toJson() => {
        'isAuthenticated': isAuthenticated,
        'queryCount': queryCount,
        'meta': JsonConverters.get('Dictionary<String,String>').toJson(meta)
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
    AutoQueryOperation.fromJson(Map<String, dynamic> json) :
        request = json['request'],
        from = json['from'],
        to = json['to'],
        meta = JsonConverters.get('Dictionary<String,String>').fromJson(json['meta'], () => new Map<String,String>());

    Map<String, dynamic> toJson() => {
        'request': request,
        'from': from,
        'to': to,
        'meta': JsonConverters.get('Dictionary<String,String>').toJson(meta)
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
    NestedClass.fromJson(Map<String, dynamic> json) :
        value = json['value'];

    Map<String, dynamic> toJson() => {
        'value': value
    };

}

class ListResult
{
    String result;

    ListResult({this.result});

    ListResult fromMap(Map<String, dynamic> map) => new ListResult.fromJson(map);
    ListResult.fromJson(Map<String, dynamic> json) :
        result = json['result'];

    Map<String, dynamic> toJson() => {
        'result': result
    };

}

class OnlyInReturnListArg
{
    String result;

    OnlyInReturnListArg({this.result});

    OnlyInReturnListArg fromMap(Map<String, dynamic> map) => new OnlyInReturnListArg.fromJson(map);
    OnlyInReturnListArg.fromJson(Map<String, dynamic> json) :
        result = json['result'];

    Map<String, dynamic> toJson() => {
        'result': result
    };

}

class ArrayResult
{
    String result;

    ArrayResult({this.result});

    ArrayResult fromMap(Map<String, dynamic> map) => new ArrayResult.fromJson(map);
    ArrayResult.fromJson(Map<String, dynamic> json) :
        result = json['result'];

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
    Poco.fromJson(Map<String, dynamic> json) :
        name = json['name'];

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
    AllCollectionTypes.fromJson(Map<String, dynamic> json) :
        intArray = JsonConverters.get('Int32[]').fromJson(json['intArray'], () => new List<int>()),
        intList = JsonConverters.get('List<Int32>').fromJson(json['intList'], () => new List<int>()),
        stringArray = JsonConverters.get('String[]').fromJson(json['stringArray'], () => new List<String>()),
        stringList = JsonConverters.get('List<String>').fromJson(json['stringList'], () => new List<String>()),
        pocoArray = JsonConverters.get('Poco[]').fromJson(json['pocoArray'], () => new List<Poco>()),
        pocoList = JsonConverters.get('List<Poco>').fromJson(json['pocoList'], () => new List<Poco>()),
        nullableByteArray = JsonConverters.get('Byte[]').fromJson(json['nullableByteArray'], () => new Uint8List(0)),
        nullableByteList = JsonConverters.get('List<Nullable<Byte>>').fromJson(json['nullableByteList'], () => new List<int>()),
        nullableDateTimeArray = JsonConverters.get('DateTime[]').fromJson(json['nullableDateTimeArray'], () => new List<DateTime>()),
        nullableDateTimeList = JsonConverters.get('List<Nullable<DateTime>>').fromJson(json['nullableDateTimeList'], () => new List<DateTime>()),
        pocoLookup = JsonConverters.get('Dictionary<String,List<Poco>>').fromJson(json['pocoLookup'], () => new Map<String,List<Poco>>()),
        pocoLookupMap = JsonConverters.get('Dictionary<String,List<Dictionary<String,Poco>>>').fromJson(json['pocoLookupMap'], () => new Map<String,List<Map<String,Poco>>>());

    Map<String, dynamic> toJson() => {
        'intArray': JsonConverters.get('Int32[]').toJson(intArray),
        'intList': JsonConverters.get('List<Int32>').toJson(intList),
        'stringArray': JsonConverters.get('String[]').toJson(stringArray),
        'stringList': JsonConverters.get('List<String>').toJson(stringList),
        'pocoArray': JsonConverters.get('Poco[]').toJson(pocoArray),
        'pocoList': JsonConverters.get('List<Poco>').toJson(pocoList),
        'nullableByteArray': JsonConverters.get('Byte[]').toJson(nullableByteArray),
        'nullableByteList': JsonConverters.get('List<Nullable<Byte>>').toJson(nullableByteList),
        'nullableDateTimeArray': JsonConverters.get('DateTime[]').toJson(nullableDateTimeArray),
        'nullableDateTimeList': JsonConverters.get('List<Nullable<DateTime>>').toJson(nullableDateTimeList),
        'pocoLookup': JsonConverters.get('Dictionary<String,List<Poco>>').toJson(pocoLookup),
        'pocoLookupMap': JsonConverters.get('Dictionary<String,List<Dictionary<String,Poco>>>').toJson(pocoLookupMap)
    };

}

class SubType
{
    int id;
    String name;

    SubType({this.id,this.name});

    SubType fromMap(Map<String, dynamic> map) => new SubType.fromJson(map);
    SubType.fromJson(Map<String, dynamic> json) :
        id = json['id'],
        name = json['name'];

    Map<String, dynamic> toJson() => {
        'id': id,
        'name': name
    };

}

class HelloBase
{
    int id;

    HelloBase({this.id});

    HelloBase fromMap(Map<String, dynamic> map) => new HelloBase.fromJson(map);
    HelloBase.fromJson(Map<String, dynamic> json) :
        id = json['id'];

    Map<String, dynamic> toJson() => {
        'id': id
    };

}

class HelloResponseBase
{
    int refId;

    HelloResponseBase({this.refId});

    HelloResponseBase fromMap(Map<String, dynamic> map) => new HelloResponseBase.fromJson(map);
    HelloResponseBase.fromJson(Map<String, dynamic> json) :
        refId = json['refId'];

    Map<String, dynamic> toJson() => {
        'refId': refId
    };

}

class HelloBase1<T>
{
    List<T> items;
    List<int> counts;

    HelloBase1({this.items,this.counts});

    HelloBase1 fromMap(Map<String, dynamic> map) => new HelloBase1.fromJson(map);
    HelloBase1.fromJson(Map<String, dynamic> json) :
        items = JsonConverters.get('List<T>').fromJson(json['items'], () => new List<T>()),
        counts = JsonConverters.get('List<Int32>').fromJson(json['counts'], () => new List<int>());

    Map<String, dynamic> toJson() => {
        'items': JsonConverters.get('List<T>').toJson(items),
        'counts': JsonConverters.get('List<Int32>').toJson(counts)
    };

}

class Item
{
    String value;

    Item({this.value});

    Item fromMap(Map<String, dynamic> map) => new Item.fromJson(map);
    Item.fromJson(Map<String, dynamic> json) :
        value = json['value'];

    Map<String, dynamic> toJson() => {
        'value': value
    };

}

class InheritedItem
{
    String name;

    InheritedItem({this.name});

    InheritedItem fromMap(Map<String, dynamic> map) => new InheritedItem.fromJson(map);
    InheritedItem.fromJson(Map<String, dynamic> json) :
        name = json['name'];

    Map<String, dynamic> toJson() => {
        'name': name
    };

}

class HelloWithReturnResponse
{
    String result;

    HelloWithReturnResponse({this.result});

    HelloWithReturnResponse fromMap(Map<String, dynamic> map) => new HelloWithReturnResponse.fromJson(map);
    HelloWithReturnResponse.fromJson(Map<String, dynamic> json) :
        result = json['result'];

    Map<String, dynamic> toJson() => {
        'result': result
    };

}

class HelloType
{
    String result;

    HelloType({this.result});

    HelloType fromMap(Map<String, dynamic> map) => new HelloType.fromJson(map);
    HelloType.fromJson(Map<String, dynamic> json) :
        result = json['result'];

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
    TypeB.fromJson(Map<String, dynamic> json) :
        foo = json['foo'];

    Map<String, dynamic> toJson() => {
        'foo': foo
    };

}

class TypeA
{
    List<TypeB> bar;

    TypeA({this.bar});

    TypeA fromMap(Map<String, dynamic> map) => new TypeA.fromJson(map);
    TypeA.fromJson(Map<String, dynamic> json) :
        bar = JsonConverters.get('List<TypeB>').fromJson(json['bar'], () => new List<TypeB>());

    Map<String, dynamic> toJson() => {
        'bar': JsonConverters.get('List<TypeB>').toJson(bar)
    };

}

class InnerType
{
    int id;
    String name;

    InnerType({this.id,this.name});

    InnerType fromMap(Map<String, dynamic> map) => new InnerType.fromJson(map);
    InnerType.fromJson(Map<String, dynamic> json) :
        id = json['id'],
        name = json['name'];

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
    InnerTypeItem.fromJson(Map<String, dynamic> json) :
        id = json['id'],
        name = json['name'];

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
    Tuple2.fromJson(Map<String, dynamic> json) :
        item1 = json['item1'],
        item2 = json['item2'];

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
    Tuple3.fromJson(Map<String, dynamic> json) :
        item1 = json['item1'],
        item2 = json['item2'],
        item3 = json['item3'];

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
    SwaggerNestedModel.fromJson(Map<String, dynamic> json) :
        nestedProperty = json['nestedProperty'];

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
    SwaggerNestedModel2.fromJson(Map<String, dynamic> json) :
        nestedProperty2 = json['nestedProperty2'],
        multipleValues = json['multipleValues'],
        testRange = json['testRange'];

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
    UserApiKey.fromJson(Map<String, dynamic> json) :
        key = json['key'],
        keyType = json['keyType'],
        expiryDate = JsonConverters.get('DateTime').fromJson(json['expiryDate'], () => new DateTime(0));

    Map<String, dynamic> toJson() => {
        'key': key,
        'keyType': keyType,
        'expiryDate': JsonConverters.get('DateTime').toJson(expiryDate)
    };

}

class PgRockstar extends Rockstar
{
    PgRockstar();
    PgRockstar fromMap(Map<String, dynamic> map) => new PgRockstar.fromJson(map);
    PgRockstar.fromJson(Map<String, dynamic> json) : super.fromJson(json);
    Map<String, dynamic> toJson() => super.toJson();
}

class QueryDb2<From, Into> extends QueryBase
{
    QueryDb2();
    QueryDb2 fromMap(Map<String, dynamic> map) => new QueryDb2.fromJson(map);
    QueryDb2.fromJson(Map<String, dynamic> json) : super.fromJson(json);
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
    CustomRockstar.fromJson(Map<String, dynamic> json) :
        firstName = json['firstName'],
        lastName = json['lastName'],
        age = json['age'],
        rockstarAlbumName = json['rockstarAlbumName'],
        rockstarGenreName = json['rockstarGenreName'];

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
    Movie.fromJson(Map<String, dynamic> json) :
        id = json['id'],
        imdbId = json['imdbId'],
        title = json['title'],
        rating = json['rating'],
        score = json['score'],
        director = json['director'],
        releaseDate = JsonConverters.get('DateTime').fromJson(json['releaseDate'], () => new DateTime(0)),
        tagLine = json['tagLine'],
        genres = JsonConverters.get('List<String>').fromJson(json['genres'], () => new List<String>());

    Map<String, dynamic> toJson() => {
        'id': id,
        'imdbId': imdbId,
        'title': title,
        'rating': rating,
        'score': score,
        'director': director,
        'releaseDate': JsonConverters.get('DateTime').toJson(releaseDate),
        'tagLine': tagLine,
        'genres': JsonConverters.get('List<String>').toJson(genres)
    };

}

class RockstarAlbum
{
    int id;
    int rockstarId;
    String name;

    RockstarAlbum({this.id,this.rockstarId,this.name});

    RockstarAlbum fromMap(Map<String, dynamic> map) => new RockstarAlbum.fromJson(map);
    RockstarAlbum.fromJson(Map<String, dynamic> json) :
        id = json['id'],
        rockstarId = json['rockstarId'],
        name = json['name'];

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
    RockstarReference.fromJson(Map<String, dynamic> json) :
        id = json['id'],
        firstName = json['firstName'],
        lastName = json['lastName'],
        age = json['age'],
        albums = JsonConverters.get('List<RockstarAlbum>').fromJson(json['albums'], () => new List<RockstarAlbum>());

    Map<String, dynamic> toJson() => {
        'id': id,
        'firstName': firstName,
        'lastName': lastName,
        'age': age,
        'albums': JsonConverters.get('List<RockstarAlbum>').toJson(albums)
    };

}

class OnlyDefinedInGenericType
{
    int id;
    String name;

    OnlyDefinedInGenericType({this.id,this.name});

    OnlyDefinedInGenericType fromMap(Map<String, dynamic> map) => new OnlyDefinedInGenericType.fromJson(map);
    OnlyDefinedInGenericType.fromJson(Map<String, dynamic> json) :
        id = json['id'],
        name = json['name'];

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
    OnlyDefinedInGenericTypeFrom.fromJson(Map<String, dynamic> json) :
        id = json['id'],
        name = json['name'];

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
    OnlyDefinedInGenericTypeInto.fromJson(Map<String, dynamic> json) :
        id = json['id'],
        name = json['name'];

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
    QueryResponse.fromJson(Map<String, dynamic> json) :
        offset = json['offset'],
        total = json['total'],
        results = JsonConverters.get('List<T>').fromJson(json['results'], () => new List<T>()),
        meta = JsonConverters.get('Dictionary<String,String>').fromJson(json['meta'], () => new Map<String,String>()),
        responseStatus = JsonConverters.get('ResponseStatus').fromJson(json['responseStatus'], () => new ResponseStatus());

    Map<String, dynamic> toJson() => {
        'offset': offset,
        'total': total,
        'results': JsonConverters.get('List<T>').toJson(results),
        'meta': JsonConverters.get('Dictionary<String,String>').toJson(meta),
        'responseStatus': JsonConverters.get('ResponseStatus').toJson(responseStatus)
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
    ChangeRequestResponse.fromJson(Map<String, dynamic> json) :
        contentType = json['contentType'],
        header = json['header'],
        queryString = json['queryString'],
        form = json['form'],
        responseStatus = JsonConverters.get('ResponseStatus').fromJson(json['responseStatus'], () => new ResponseStatus());

    Map<String, dynamic> toJson() => {
        'contentType': contentType,
        'header': header,
        'queryString': queryString,
        'form': form,
        'responseStatus': JsonConverters.get('ResponseStatus').toJson(responseStatus)
    };

}

class CustomHttpErrorResponse
{
    String custom;
    ResponseStatus responseStatus;

    CustomHttpErrorResponse({this.custom,this.responseStatus});

    CustomHttpErrorResponse fromMap(Map<String, dynamic> map) => new CustomHttpErrorResponse.fromJson(map);
    CustomHttpErrorResponse.fromJson(Map<String, dynamic> json) :
        custom = json['custom'],
        responseStatus = JsonConverters.get('ResponseStatus').fromJson(json['responseStatus'], () => new ResponseStatus());

    Map<String, dynamic> toJson() => {
        'custom': custom,
        'responseStatus': JsonConverters.get('ResponseStatus').toJson(responseStatus)
    };

}

// @Route("/alwaysthrows")
class AlwaysThrows implements IReturn<AlwaysThrows>
{
    AlwaysThrows();
    AlwaysThrows fromMap(Map<String, dynamic> map) => new AlwaysThrows.fromJson(map);
    AlwaysThrows.fromJson(Map<String, dynamic> json) : super();
    Map<String, dynamic> toJson() => {};
    String getTypeName() { return "AlwaysThrows"; }
}

// @Route("/alwaysthrowsfilterattribute")
class AlwaysThrowsFilterAttribute implements IReturn<AlwaysThrowsFilterAttribute>
{
    AlwaysThrowsFilterAttribute();
    AlwaysThrowsFilterAttribute fromMap(Map<String, dynamic> map) => new AlwaysThrowsFilterAttribute.fromJson(map);
    AlwaysThrowsFilterAttribute.fromJson(Map<String, dynamic> json) : super();
    Map<String, dynamic> toJson() => {};
    String getTypeName() { return "AlwaysThrowsFilterAttribute"; }
}

// @Route("/alwaysthrowsglobalfilter")
class AlwaysThrowsGlobalFilter implements IReturn<AlwaysThrowsGlobalFilter>
{
    AlwaysThrowsGlobalFilter();
    AlwaysThrowsGlobalFilter fromMap(Map<String, dynamic> map) => new AlwaysThrowsGlobalFilter.fromJson(map);
    AlwaysThrowsGlobalFilter.fromJson(Map<String, dynamic> json) : super();
    Map<String, dynamic> toJson() => {};
    String getTypeName() { return "AlwaysThrowsGlobalFilter"; }
}

class CustomFieldHttpErrorResponse
{
    String custom;
    ResponseStatus responseStatus;

    CustomFieldHttpErrorResponse({this.custom,this.responseStatus});

    CustomFieldHttpErrorResponse fromMap(Map<String, dynamic> map) => new CustomFieldHttpErrorResponse.fromJson(map);
    CustomFieldHttpErrorResponse.fromJson(Map<String, dynamic> json) :
        custom = json['custom'],
        responseStatus = JsonConverters.get('ResponseStatus').fromJson(json['responseStatus'], () => new ResponseStatus());

    Map<String, dynamic> toJson() => {
        'custom': custom,
        'responseStatus': JsonConverters.get('ResponseStatus').toJson(responseStatus)
    };

}

class NoRepeatResponse
{
    String id;

    NoRepeatResponse({this.id});

    NoRepeatResponse fromMap(Map<String, dynamic> map) => new NoRepeatResponse.fromJson(map);
    NoRepeatResponse.fromJson(Map<String, dynamic> json) :
        id = json['id'];

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
    BatchThrowsResponse.fromJson(Map<String, dynamic> json) :
        result = json['result'],
        responseStatus = JsonConverters.get('ResponseStatus').fromJson(json['responseStatus'], () => new ResponseStatus());

    Map<String, dynamic> toJson() => {
        'result': result,
        'responseStatus': JsonConverters.get('ResponseStatus').toJson(responseStatus)
    };

}

class ObjectDesignResponse
{
    ObjectDesign data;

    ObjectDesignResponse({this.data});

    ObjectDesignResponse fromMap(Map<String, dynamic> map) => new ObjectDesignResponse.fromJson(map);
    ObjectDesignResponse.fromJson(Map<String, dynamic> json) :
        data = JsonConverters.get('ObjectDesign').fromJson(json['data'], () => new ObjectDesign());

    Map<String, dynamic> toJson() => {
        'data': JsonConverters.get('ObjectDesign').toJson(data)
    };

}

class CreateJwtResponse
{
    String token;
    ResponseStatus responseStatus;

    CreateJwtResponse({this.token,this.responseStatus});

    CreateJwtResponse fromMap(Map<String, dynamic> map) => new CreateJwtResponse.fromJson(map);
    CreateJwtResponse.fromJson(Map<String, dynamic> json) :
        token = json['token'],
        responseStatus = JsonConverters.get('ResponseStatus').fromJson(json['responseStatus'], () => new ResponseStatus());

    Map<String, dynamic> toJson() => {
        'token': token,
        'responseStatus': JsonConverters.get('ResponseStatus').toJson(responseStatus)
    };

}

class CreateRefreshJwtResponse
{
    String token;
    ResponseStatus responseStatus;

    CreateRefreshJwtResponse({this.token,this.responseStatus});

    CreateRefreshJwtResponse fromMap(Map<String, dynamic> map) => new CreateRefreshJwtResponse.fromJson(map);
    CreateRefreshJwtResponse.fromJson(Map<String, dynamic> json) :
        token = json['token'],
        responseStatus = JsonConverters.get('ResponseStatus').fromJson(json['responseStatus'], () => new ResponseStatus());

    Map<String, dynamic> toJson() => {
        'token': token,
        'responseStatus': JsonConverters.get('ResponseStatus').toJson(responseStatus)
    };

}

class MetadataTestResponse
{
    int id;
    List<MetadataTestChild> results;

    MetadataTestResponse({this.id,this.results});

    MetadataTestResponse fromMap(Map<String, dynamic> map) => new MetadataTestResponse.fromJson(map);
    MetadataTestResponse.fromJson(Map<String, dynamic> json) :
        id = json['id'],
        results = JsonConverters.get('List<MetadataTestChild>').fromJson(json['results'], () => new List<MetadataTestChild>());

    Map<String, dynamic> toJson() => {
        'id': id,
        'results': JsonConverters.get('List<MetadataTestChild>').toJson(results)
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
    GetExampleResponse.fromJson(Map<String, dynamic> json) :
        responseStatus = JsonConverters.get('ResponseStatus').fromJson(json['responseStatus'], () => new ResponseStatus()),
        menuExample1 = JsonConverters.get('MenuExample').fromJson(json['menuExample1'], () => new MenuExample());

    Map<String, dynamic> toJson() => {
        'responseStatus': JsonConverters.get('ResponseStatus').toJson(responseStatus),
        'menuExample1': JsonConverters.get('MenuExample').toJson(menuExample1)
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
    AutoQueryMetadataResponse.fromJson(Map<String, dynamic> json) :
        config = JsonConverters.get('AutoQueryViewerConfig').fromJson(json['config'], () => new AutoQueryViewerConfig()),
        userInfo = JsonConverters.get('AutoQueryViewerUserInfo').fromJson(json['userInfo'], () => new AutoQueryViewerUserInfo()),
        operations = JsonConverters.get('List<AutoQueryOperation>').fromJson(json['operations'], () => new List<AutoQueryOperation>()),
        types = JsonConverters.get('List<MetadataType>').fromJson(json['types'], () => new List<MetadataType>()),
        responseStatus = JsonConverters.get('ResponseStatus').fromJson(json['responseStatus'], () => new ResponseStatus()),
        meta = JsonConverters.get('Dictionary<String,String>').fromJson(json['meta'], () => new Map<String,String>());

    Map<String, dynamic> toJson() => {
        'config': JsonConverters.get('AutoQueryViewerConfig').toJson(config),
        'userInfo': JsonConverters.get('AutoQueryViewerUserInfo').toJson(userInfo),
        'operations': JsonConverters.get('List<AutoQueryOperation>').toJson(operations),
        'types': JsonConverters.get('List<MetadataType>').toJson(types),
        'responseStatus': JsonConverters.get('ResponseStatus').toJson(responseStatus),
        'meta': JsonConverters.get('Dictionary<String,String>').toJson(meta)
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
    HelloACodeGenTestResponse.fromJson(Map<String, dynamic> json) :
        firstResult = json['firstResult'],
        secondResult = json['secondResult'];

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
    HelloResponse.fromJson(Map<String, dynamic> json) :
        result = json['result'];

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
    HelloAnnotatedResponse.fromJson(Map<String, dynamic> json) :
        result = json['result'];

    Map<String, dynamic> toJson() => {
        'result': result
    };

}

class HelloList implements IReturn<List<ListResult>>
{
    List<String> names;

    HelloList({this.names});

    HelloList fromMap(Map<String, dynamic> map) => new HelloList.fromJson(map);
    HelloList.fromJson(Map<String, dynamic> json) :
        names = JsonConverters.get('List<String>').fromJson(json['names'], () => new List<String>());

    Map<String, dynamic> toJson() => {
        'names': JsonConverters.get('List<String>').toJson(names)
    };

    String getTypeName() { return "HelloList"; }
}

class HelloArray implements IReturn<List<ArrayResult>>
{
    List<String> names;

    HelloArray({this.names});

    HelloArray fromMap(Map<String, dynamic> map) => new HelloArray.fromJson(map);
    HelloArray.fromJson(Map<String, dynamic> json) :
        names = JsonConverters.get('List<String>').fromJson(json['names'], () => new List<String>());

    Map<String, dynamic> toJson() => {
        'names': JsonConverters.get('List<String>').toJson(names)
    };

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
    HelloExistingResponse.fromJson(Map<String, dynamic> json) :
        helloList = JsonConverters.get('HelloList').fromJson(json['helloList'], () => new HelloList()),
        helloArray = JsonConverters.get('HelloArray').fromJson(json['helloArray'], () => new HelloArray()),
        arrayResults = JsonConverters.get('ArrayResult[]').fromJson(json['arrayResults'], () => new List<ArrayResult>()),
        listResults = JsonConverters.get('List<ListResult>').fromJson(json['listResults'], () => new List<ListResult>());

    Map<String, dynamic> toJson() => {
        'helloList': JsonConverters.get('HelloList').toJson(helloList),
        'helloArray': JsonConverters.get('HelloArray').toJson(helloArray),
        'arrayResults': JsonConverters.get('ArrayResult[]').toJson(arrayResults),
        'listResults': JsonConverters.get('List<ListResult>').toJson(listResults)
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
    AllTypes.fromJson(Map<String, dynamic> json) :
        id = json['id'],
        nullableId = json['nullableId'],
        byte = json['byte'],
        short = json['short'],
        Int = json['int'],
        long = json['long'],
        uShort = json['uShort'],
        uInt = json['uInt'],
        uLong = json['uLong'],
        float = json['float'],
        Double = json['double'],
        decimal = json['decimal'],
        string = json['string'],
        dateTime = JsonConverters.get('DateTime').fromJson(json['dateTime'], () => new DateTime(0)),
        timeSpan = JsonConverters.get('TimeSpan').fromJson(json['timeSpan'], () => new Duration()),
        dateTimeOffset = JsonConverters.get('DateTimeOffset').fromJson(json['dateTimeOffset'], () => new DateTime(0)),
        guid = json['guid'],
        char = json['char'],
        keyValuePair = JsonConverters.get('KeyValuePair<String,String>').fromJson(json['keyValuePair'], () => new KeyValuePair<String, String>()),
        nullableDateTime = JsonConverters.get('DateTime').fromJson(json['nullableDateTime'], () => new DateTime(0)),
        nullableTimeSpan = JsonConverters.get('TimeSpan').fromJson(json['nullableTimeSpan'], () => new Duration()),
        stringList = JsonConverters.get('List<String>').fromJson(json['stringList'], () => new List<String>()),
        stringArray = JsonConverters.get('String[]').fromJson(json['stringArray'], () => new List<String>()),
        stringMap = JsonConverters.get('Dictionary<String,String>').fromJson(json['stringMap'], () => new Map<String,String>()),
        intStringMap = JsonConverters.get('Dictionary<Int32,String>').fromJson(json['intStringMap'], () => new Map<int,String>()),
        subType = JsonConverters.get('SubType').fromJson(json['subType'], () => new SubType()),
        point = JsonConverters.get('String').fromJson(json['point'], () => ""),
        originalName = json['originalName'];

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
        'dateTime': JsonConverters.get('DateTime').toJson(dateTime),
        'timeSpan': JsonConverters.get('TimeSpan').toJson(timeSpan),
        'dateTimeOffset': JsonConverters.get('DateTimeOffset').toJson(dateTimeOffset),
        'guid': guid,
        'char': char,
        'keyValuePair': JsonConverters.get('KeyValuePair<String,String>').toJson(keyValuePair),
        'nullableDateTime': JsonConverters.get('DateTime').toJson(nullableDateTime),
        'nullableTimeSpan': JsonConverters.get('TimeSpan').toJson(nullableTimeSpan),
        'stringList': JsonConverters.get('List<String>').toJson(stringList),
        'stringArray': JsonConverters.get('String[]').toJson(stringArray),
        'stringMap': JsonConverters.get('Dictionary<String,String>').toJson(stringMap),
        'intStringMap': JsonConverters.get('Dictionary<Int32,String>').toJson(intStringMap),
        'subType': JsonConverters.get('SubType').toJson(subType),
        'point': JsonConverters.get('String').toJson(point),
        'originalName': originalName
    };

    String getTypeName() { return "AllTypes"; }
}

class HelloAllTypesResponse
{
    String result;
    AllTypes allTypes;
    AllCollectionTypes allCollectionTypes;

    HelloAllTypesResponse({this.result,this.allTypes,this.allCollectionTypes});

    HelloAllTypesResponse fromMap(Map<String, dynamic> map) => new HelloAllTypesResponse.fromJson(map);
    HelloAllTypesResponse.fromJson(Map<String, dynamic> json) :
        result = json['result'],
        allTypes = JsonConverters.get('AllTypes').fromJson(json['allTypes'], () => new AllTypes()),
        allCollectionTypes = JsonConverters.get('AllCollectionTypes').fromJson(json['allCollectionTypes'], () => new AllCollectionTypes());

    Map<String, dynamic> toJson() => {
        'result': result,
        'allTypes': JsonConverters.get('AllTypes').toJson(allTypes),
        'allCollectionTypes': JsonConverters.get('AllCollectionTypes').toJson(allCollectionTypes)
    };

}

// @DataContract
class HelloWithDataContractResponse
{
    // @DataMember(Name="result", Order=1, IsRequired=true, EmitDefaultValue=false)
    String result;

    HelloWithDataContractResponse({this.result});

    HelloWithDataContractResponse fromMap(Map<String, dynamic> map) => new HelloWithDataContractResponse.fromJson(map);
    HelloWithDataContractResponse.fromJson(Map<String, dynamic> json) :
        result = json['result'];

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
    HelloWithDescriptionResponse.fromJson(Map<String, dynamic> json) :
        result = json['result'];

    Map<String, dynamic> toJson() => {
        'result': result
    };

}

class HelloWithInheritanceResponse extends HelloResponseBase
{
    String result;

    HelloWithInheritanceResponse({this.result});

    HelloWithInheritanceResponse fromMap(Map<String, dynamic> map) => new HelloWithInheritanceResponse.fromJson(map);
    HelloWithInheritanceResponse.fromJson(Map<String, dynamic> json) :
        super.fromJson(json),
        result = json['result'];

    Map<String, dynamic> toJson() => super.toJson()..addAll({
        'result': result
    });

}

class HelloWithAlternateReturnResponse extends HelloWithReturnResponse
{
    String altResult;

    HelloWithAlternateReturnResponse({this.altResult});

    HelloWithAlternateReturnResponse fromMap(Map<String, dynamic> map) => new HelloWithAlternateReturnResponse.fromJson(map);
    HelloWithAlternateReturnResponse.fromJson(Map<String, dynamic> json) :
        super.fromJson(json),
        altResult = json['altResult'];

    Map<String, dynamic> toJson() => super.toJson()..addAll({
        'altResult': altResult
    });

}

class HelloWithRouteResponse
{
    String result;

    HelloWithRouteResponse({this.result});

    HelloWithRouteResponse fromMap(Map<String, dynamic> map) => new HelloWithRouteResponse.fromJson(map);
    HelloWithRouteResponse.fromJson(Map<String, dynamic> json) :
        result = json['result'];

    Map<String, dynamic> toJson() => {
        'result': result
    };

}

class HelloWithTypeResponse
{
    HelloType result;

    HelloWithTypeResponse({this.result});

    HelloWithTypeResponse fromMap(Map<String, dynamic> map) => new HelloWithTypeResponse.fromJson(map);
    HelloWithTypeResponse.fromJson(Map<String, dynamic> json) :
        result = JsonConverters.get('HelloType').fromJson(json['result'], () => new HelloType());

    Map<String, dynamic> toJson() => {
        'result': JsonConverters.get('HelloType').toJson(result)
    };

}

class HelloStruct implements IReturn<HelloStruct>
{
    String point;
    String nullablePoint;

    HelloStruct({this.point,this.nullablePoint});

    HelloStruct fromMap(Map<String, dynamic> map) => new HelloStruct.fromJson(map);
    HelloStruct.fromJson(Map<String, dynamic> json) :
        point = JsonConverters.get('String').fromJson(json['point'], () => ""),
        nullablePoint = JsonConverters.get('String').fromJson(json['nullablePoint'], () => "");

    Map<String, dynamic> toJson() => {
        'point': JsonConverters.get('String').toJson(point),
        'nullablePoint': JsonConverters.get('String').toJson(nullablePoint)
    };

    String getTypeName() { return "HelloStruct"; }
}

class HelloSessionResponse
{
    AuthUserSession result;

    HelloSessionResponse({this.result});

    HelloSessionResponse fromMap(Map<String, dynamic> map) => new HelloSessionResponse.fromJson(map);
    HelloSessionResponse.fromJson(Map<String, dynamic> json) :
        result = JsonConverters.get('AuthUserSession').fromJson(json['result'], () => new AuthUserSession());

    Map<String, dynamic> toJson() => {
        'result': JsonConverters.get('AuthUserSession').toJson(result)
    };

}

class HelloImplementsInterface implements IReturn<HelloImplementsInterface>, ImplementsPoco
{
    String name;

    HelloImplementsInterface({this.name});

    HelloImplementsInterface fromMap(Map<String, dynamic> map) => new HelloImplementsInterface.fromJson(map);
    HelloImplementsInterface.fromJson(Map<String, dynamic> json) :
        name = json['name'];

    Map<String, dynamic> toJson() => {
        'name': name
    };

    String getTypeName() { return "HelloImplementsInterface"; }
}

class Request1Response
{
    TypeA test;

    Request1Response({this.test});

    Request1Response fromMap(Map<String, dynamic> map) => new Request1Response.fromJson(map);
    Request1Response.fromJson(Map<String, dynamic> json) :
        test = JsonConverters.get('TypeA').fromJson(json['test'], () => new TypeA());

    Map<String, dynamic> toJson() => {
        'test': JsonConverters.get('TypeA').toJson(test)
    };

}

class Request2Response
{
    TypeA test;

    Request2Response({this.test});

    Request2Response fromMap(Map<String, dynamic> map) => new Request2Response.fromJson(map);
    Request2Response.fromJson(Map<String, dynamic> json) :
        test = JsonConverters.get('TypeA').fromJson(json['test'], () => new TypeA());

    Map<String, dynamic> toJson() => {
        'test': JsonConverters.get('TypeA').toJson(test)
    };

}

class HelloInnerTypesResponse
{
    InnerType innerType;
    InnerEnum innerEnum;
    List<InnerTypeItem> innerList;

    HelloInnerTypesResponse({this.innerType,this.innerEnum,this.innerList});

    HelloInnerTypesResponse fromMap(Map<String, dynamic> map) => new HelloInnerTypesResponse.fromJson(map);
    HelloInnerTypesResponse.fromJson(Map<String, dynamic> json) :
        innerType = JsonConverters.get('TypesGroup.InnerType').fromJson(json['innerType'], () => new InnerType()),
        innerEnum = JsonConverters.getEnum(InnerEnum.values).fromJson(json['innerEnum'], null),
        innerList = JsonConverters.get('List<InnerTypeItem>').fromJson(json['innerList'], () => new List<InnerTypeItem>());

    Map<String, dynamic> toJson() => {
        'innerType': JsonConverters.get('TypesGroup.InnerType').toJson(innerType),
        'innerEnum': JsonConverters.get('TypesGroup.InnerEnum').toJson(innerEnum),
        'innerList': JsonConverters.get('List<InnerTypeItem>').toJson(innerList)
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
    CustomUserSession.fromJson(Map<String, dynamic> json) :
        super.fromJson(json),
        customName = json['customName'],
        customInfo = json['customInfo'];

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
    QueryResponseTemplate.fromJson(Map<String, dynamic> json) :
        offset = json['offset'],
        total = json['total'],
        results = JsonConverters.get('List<T>').fromJson(json['results'], () => new List<T>()),
        meta = JsonConverters.get('Dictionary<String,String>').fromJson(json['meta'], () => new Map<String,String>()),
        responseStatus = JsonConverters.get('ResponseStatus').fromJson(json['responseStatus'], () => new ResponseStatus());

    Map<String, dynamic> toJson() => {
        'offset': offset,
        'total': total,
        'results': JsonConverters.get('List<T>').toJson(results),
        'meta': JsonConverters.get('Dictionary<String,String>').toJson(meta),
        'responseStatus': JsonConverters.get('ResponseStatus').toJson(responseStatus)
    };

}

class HelloVerbResponse
{
    String result;

    HelloVerbResponse({this.result});

    HelloVerbResponse fromMap(Map<String, dynamic> map) => new HelloVerbResponse.fromJson(map);
    HelloVerbResponse.fromJson(Map<String, dynamic> json) :
        result = json['result'];

    Map<String, dynamic> toJson() => {
        'result': result
    };

}

class EnumResponse
{
    ScopeType Operator;

    EnumResponse({this.Operator});

    EnumResponse fromMap(Map<String, dynamic> map) => new EnumResponse.fromJson(map);
    EnumResponse.fromJson(Map<String, dynamic> json) :
        Operator = JsonConverters.getEnum(ScopeType.values).fromJson(json['operator'], null);

    Map<String, dynamic> toJson() => {
        'operator': JsonConverters.get('ScopeType').toJson(Operator)
    };

}

class ExcludeTestNested
{
    int id;

    ExcludeTestNested({this.id});

    ExcludeTestNested fromMap(Map<String, dynamic> map) => new ExcludeTestNested.fromJson(map);
    ExcludeTestNested.fromJson(Map<String, dynamic> json) :
        id = json['id'];

    Map<String, dynamic> toJson() => {
        'id': id
    };

}

class RestrictLocalhost implements IReturn<RestrictLocalhost>
{
    int id;

    RestrictLocalhost({this.id});

    RestrictLocalhost fromMap(Map<String, dynamic> map) => new RestrictLocalhost.fromJson(map);
    RestrictLocalhost.fromJson(Map<String, dynamic> json) :
        id = json['id'];

    Map<String, dynamic> toJson() => {
        'id': id
    };

    String getTypeName() { return "RestrictLocalhost"; }
}

class RestrictInternal implements IReturn<RestrictInternal>
{
    int id;

    RestrictInternal({this.id});

    RestrictInternal fromMap(Map<String, dynamic> map) => new RestrictInternal.fromJson(map);
    RestrictInternal.fromJson(Map<String, dynamic> json) :
        id = json['id'];

    Map<String, dynamic> toJson() => {
        'id': id
    };

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
    HelloTuple.fromJson(Map<String, dynamic> json) :
        tuple2 = JsonConverters.get('Tuple2<String,Int64>').fromJson(json['tuple2'], () => new Tuple2<String, int>()),
        tuple3 = JsonConverters.get('Tuple3<String,Int64,Boolean>').fromJson(json['tuple3'], () => new Tuple3<String, int, bool>()),
        tuples2 = JsonConverters.get('List<Tuple<String,Int64>>').fromJson(json['tuples2'], () => new List<Tuple2<String,int>>()),
        tuples3 = JsonConverters.get('List<Tuple<String,Int64,Boolean>>').fromJson(json['tuples3'], () => new List<Tuple3<String,int,bool>>());

    Map<String, dynamic> toJson() => {
        'tuple2': JsonConverters.get('Tuple2<String,Int64>').toJson(tuple2),
        'tuple3': JsonConverters.get('Tuple3<String,Int64,Boolean>').toJson(tuple3),
        'tuples2': JsonConverters.get('List<Tuple<String,Int64>>').toJson(tuples2),
        'tuples3': JsonConverters.get('List<Tuple<String,Int64,Boolean>>').toJson(tuples3)
    };

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
    HelloAuthenticatedResponse.fromJson(Map<String, dynamic> json) :
        version = json['version'],
        sessionId = json['sessionId'],
        userName = json['userName'],
        email = json['email'],
        isAuthenticated = json['isAuthenticated'],
        responseStatus = JsonConverters.get('ResponseStatus').fromJson(json['responseStatus'], () => new ResponseStatus());

    Map<String, dynamic> toJson() => {
        'version': version,
        'sessionId': sessionId,
        'userName': userName,
        'email': email,
        'isAuthenticated': isAuthenticated,
        'responseStatus': JsonConverters.get('ResponseStatus').toJson(responseStatus)
    };

}

class Echo
{
    String sentence;

    Echo({this.sentence});

    Echo fromMap(Map<String, dynamic> map) => new Echo.fromJson(map);
    Echo.fromJson(Map<String, dynamic> json) :
        sentence = json['sentence'];

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
    ThrowTypeResponse.fromJson(Map<String, dynamic> json) :
        responseStatus = JsonConverters.get('ResponseStatus').fromJson(json['responseStatus'], () => new ResponseStatus());

    Map<String, dynamic> toJson() => {
        'responseStatus': JsonConverters.get('ResponseStatus').toJson(responseStatus)
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
    ThrowValidationResponse.fromJson(Map<String, dynamic> json) :
        age = json['age'],
        required = json['required'],
        email = json['email'],
        responseStatus = JsonConverters.get('ResponseStatus').fromJson(json['responseStatus'], () => new ResponseStatus());

    Map<String, dynamic> toJson() => {
        'age': age,
        'required': required,
        'email': email,
        'responseStatus': JsonConverters.get('ResponseStatus').toJson(responseStatus)
    };

}

class acsprofileResponse
{
    String profileId;

    acsprofileResponse({this.profileId});

    acsprofileResponse fromMap(Map<String, dynamic> map) => new acsprofileResponse.fromJson(map);
    acsprofileResponse.fromJson(Map<String, dynamic> json) :
        profileId = json['profileId'];

    Map<String, dynamic> toJson() => {
        'profileId': profileId
    };

}

class ReturnedDto
{
    int id;

    ReturnedDto({this.id});

    ReturnedDto fromMap(Map<String, dynamic> map) => new ReturnedDto.fromJson(map);
    ReturnedDto.fromJson(Map<String, dynamic> json) :
        id = json['id'];

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
    MatchesHtml.fromJson(Map<String, dynamic> json) :
        name = json['name'];

    Map<String, dynamic> toJson() => {
        'name': name
    };

    String getTypeName() { return "MatchesHtml"; }
}

// @Route("/matchroute/json")
class MatchesJson implements IReturn<MatchesJson>
{
    String name;

    MatchesJson({this.name});

    MatchesJson fromMap(Map<String, dynamic> map) => new MatchesJson.fromJson(map);
    MatchesJson.fromJson(Map<String, dynamic> json) :
        name = json['name'];

    Map<String, dynamic> toJson() => {
        'name': name
    };

    String getTypeName() { return "MatchesJson"; }
}

class TimestampData
{
    int timestamp;

    TimestampData({this.timestamp});

    TimestampData fromMap(Map<String, dynamic> map) => new TimestampData.fromJson(map);
    TimestampData.fromJson(Map<String, dynamic> json) :
        timestamp = json['timestamp'];

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
    TestHtml.fromJson(Map<String, dynamic> json) :
        name = json['name'];

    Map<String, dynamic> toJson() => {
        'name': name
    };

    String getTypeName() { return "TestHtml"; }
}

class ViewResponse
{
    String result;

    ViewResponse({this.result});

    ViewResponse fromMap(Map<String, dynamic> map) => new ViewResponse.fromJson(map);
    ViewResponse.fromJson(Map<String, dynamic> json) :
        result = json['result'];

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
    SwaggerModel.fromJson(Map<String, dynamic> json) :
        Int = json['int'],
        string = json['string'],
        dateTime = JsonConverters.get('DateTime').fromJson(json['dateTime'], () => new DateTime(0)),
        dateTimeOffset = JsonConverters.get('DateTimeOffset').fromJson(json['dateTimeOffset'], () => new DateTime(0)),
        timeSpan = JsonConverters.get('TimeSpan').fromJson(json['timeSpan'], () => new Duration());

    Map<String, dynamic> toJson() => {
        'int': Int,
        'string': string,
        'dateTime': JsonConverters.get('DateTime').toJson(dateTime),
        'dateTimeOffset': JsonConverters.get('DateTimeOffset').toJson(dateTimeOffset),
        'timeSpan': JsonConverters.get('TimeSpan').toJson(timeSpan)
    };

    String getTypeName() { return "SwaggerModel"; }
}

// @Route("/plain-dto")
class PlainDto implements IReturn<PlainDto>
{
    String name;

    PlainDto({this.name});

    PlainDto fromMap(Map<String, dynamic> map) => new PlainDto.fromJson(map);
    PlainDto.fromJson(Map<String, dynamic> json) :
        name = json['name'];

    Map<String, dynamic> toJson() => {
        'name': name
    };

    String getTypeName() { return "PlainDto"; }
}

// @Route("/httpresult-dto")
class HttpResultDto implements IReturn<HttpResultDto>
{
    String name;

    HttpResultDto({this.name});

    HttpResultDto fromMap(Map<String, dynamic> map) => new HttpResultDto.fromJson(map);
    HttpResultDto.fromJson(Map<String, dynamic> json) :
        name = json['name'];

    Map<String, dynamic> toJson() => {
        'name': name
    };

    String getTypeName() { return "HttpResultDto"; }
}

// @Route("/restrict/mq")
class TestMqRestriction implements IReturn<TestMqRestriction>
{
    String name;

    TestMqRestriction({this.name});

    TestMqRestriction fromMap(Map<String, dynamic> map) => new TestMqRestriction.fromJson(map);
    TestMqRestriction.fromJson(Map<String, dynamic> json) :
        name = json['name'];

    Map<String, dynamic> toJson() => {
        'name': name
    };

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
    SetCache.fromJson(Map<String, dynamic> json) :
        eTag = json['eTag'],
        age = JsonConverters.get('TimeSpan').fromJson(json['age'], () => new Duration()),
        maxAge = JsonConverters.get('TimeSpan').fromJson(json['maxAge'], () => new Duration()),
        expires = JsonConverters.get('DateTime').fromJson(json['expires'], () => new DateTime(0)),
        lastModified = JsonConverters.get('DateTime').fromJson(json['lastModified'], () => new DateTime(0)),
        cacheControl = JsonConverters.getEnum(CacheControl.values).fromJson(json['cacheControl'], null);

    Map<String, dynamic> toJson() => {
        'eTag': eTag,
        'age': JsonConverters.get('TimeSpan').toJson(age),
        'maxAge': JsonConverters.get('TimeSpan').toJson(maxAge),
        'expires': JsonConverters.get('DateTime').toJson(expires),
        'lastModified': JsonConverters.get('DateTime').toJson(lastModified),
        'cacheControl': JsonConverters.get('CacheControl').toJson(cacheControl)
    };

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
    SwaggerComplexResponse.fromJson(Map<String, dynamic> json) :
        isRequired = json['isRequired'],
        arrayString = JsonConverters.get('String[]').fromJson(json['arrayString'], () => new List<String>()),
        arrayInt = JsonConverters.get('Int32[]').fromJson(json['arrayInt'], () => new List<int>()),
        listString = JsonConverters.get('List<String>').fromJson(json['listString'], () => new List<String>()),
        listInt = JsonConverters.get('List<Int32>').fromJson(json['listInt'], () => new List<int>()),
        dictionaryString = JsonConverters.get('Dictionary<String,String>').fromJson(json['dictionaryString'], () => new Map<String,String>());

    Map<String, dynamic> toJson() => {
        'isRequired': isRequired,
        'arrayString': JsonConverters.get('String[]').toJson(arrayString),
        'arrayInt': JsonConverters.get('Int32[]').toJson(arrayInt),
        'listString': JsonConverters.get('List<String>').toJson(listString),
        'listInt': JsonConverters.get('List<Int32>').toJson(listInt),
        'dictionaryString': JsonConverters.get('Dictionary<String,String>').toJson(dictionaryString)
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
    GetSwaggerExamples.fromJson(Map<String, dynamic> json) :
        Get = json['get'];

    Map<String, dynamic> toJson() => {
        'get': Get
    };

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
    GetSwaggerExample.fromJson(Map<String, dynamic> json) :
        id = json['id'],
        Get = json['get'];

    Map<String, dynamic> toJson() => {
        'id': id,
        'get': Get
    };

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
    PostSwaggerExamples.fromJson(Map<String, dynamic> json) :
        post = json['post'];

    Map<String, dynamic> toJson() => {
        'post': post
    };

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
    PutSwaggerExample.fromJson(Map<String, dynamic> json) :
        id = json['id'],
        Get = json['get'];

    Map<String, dynamic> toJson() => {
        'id': id,
        'get': Get
    };

    String getTypeName() { return "PutSwaggerExample"; }
}

// @Route("/lists", "GET")
class GetLists implements IReturn<GetLists>
{
    String id;

    GetLists({this.id});

    GetLists fromMap(Map<String, dynamic> map) => new GetLists.fromJson(map);
    GetLists.fromJson(Map<String, dynamic> json) :
        id = json['id'];

    Map<String, dynamic> toJson() => {
        'id': id
    };

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
    AuthenticateResponse.fromJson(Map<String, dynamic> json) :
        userId = json['userId'],
        sessionId = json['sessionId'],
        userName = json['userName'],
        displayName = json['displayName'],
        referrerUrl = json['referrerUrl'],
        bearerToken = json['bearerToken'],
        refreshToken = json['refreshToken'],
        responseStatus = JsonConverters.get('ResponseStatus').fromJson(json['responseStatus'], () => new ResponseStatus()),
        meta = JsonConverters.get('Dictionary<String,String>').fromJson(json['meta'], () => new Map<String,String>());

    Map<String, dynamic> toJson() => {
        'userId': userId,
        'sessionId': sessionId,
        'userName': userName,
        'displayName': displayName,
        'referrerUrl': referrerUrl,
        'bearerToken': bearerToken,
        'refreshToken': refreshToken,
        'responseStatus': JsonConverters.get('ResponseStatus').toJson(responseStatus),
        'meta': JsonConverters.get('Dictionary<String,String>').toJson(meta)
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
    AssignRolesResponse.fromJson(Map<String, dynamic> json) :
        allRoles = JsonConverters.get('List<String>').fromJson(json['allRoles'], () => new List<String>()),
        allPermissions = JsonConverters.get('List<String>').fromJson(json['allPermissions'], () => new List<String>()),
        responseStatus = JsonConverters.get('ResponseStatus').fromJson(json['responseStatus'], () => new ResponseStatus());

    Map<String, dynamic> toJson() => {
        'allRoles': JsonConverters.get('List<String>').toJson(allRoles),
        'allPermissions': JsonConverters.get('List<String>').toJson(allPermissions),
        'responseStatus': JsonConverters.get('ResponseStatus').toJson(responseStatus)
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
    UnAssignRolesResponse.fromJson(Map<String, dynamic> json) :
        allRoles = JsonConverters.get('List<String>').fromJson(json['allRoles'], () => new List<String>()),
        allPermissions = JsonConverters.get('List<String>').fromJson(json['allPermissions'], () => new List<String>()),
        responseStatus = JsonConverters.get('ResponseStatus').fromJson(json['responseStatus'], () => new ResponseStatus());

    Map<String, dynamic> toJson() => {
        'allRoles': JsonConverters.get('List<String>').toJson(allRoles),
        'allPermissions': JsonConverters.get('List<String>').toJson(allPermissions),
        'responseStatus': JsonConverters.get('ResponseStatus').toJson(responseStatus)
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
    ConvertSessionToTokenResponse.fromJson(Map<String, dynamic> json) :
        meta = JsonConverters.get('Dictionary<String,String>').fromJson(json['meta'], () => new Map<String,String>()),
        accessToken = json['accessToken'],
        responseStatus = JsonConverters.get('ResponseStatus').fromJson(json['responseStatus'], () => new ResponseStatus());

    Map<String, dynamic> toJson() => {
        'meta': JsonConverters.get('Dictionary<String,String>').toJson(meta),
        'accessToken': accessToken,
        'responseStatus': JsonConverters.get('ResponseStatus').toJson(responseStatus)
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
    GetAccessTokenResponse.fromJson(Map<String, dynamic> json) :
        accessToken = json['accessToken'],
        responseStatus = JsonConverters.get('ResponseStatus').fromJson(json['responseStatus'], () => new ResponseStatus());

    Map<String, dynamic> toJson() => {
        'accessToken': accessToken,
        'responseStatus': JsonConverters.get('ResponseStatus').toJson(responseStatus)
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
    GetApiKeysResponse.fromJson(Map<String, dynamic> json) :
        results = JsonConverters.get('List<UserApiKey>').fromJson(json['results'], () => new List<UserApiKey>()),
        responseStatus = JsonConverters.get('ResponseStatus').fromJson(json['responseStatus'], () => new ResponseStatus());

    Map<String, dynamic> toJson() => {
        'results': JsonConverters.get('List<UserApiKey>').toJson(results),
        'responseStatus': JsonConverters.get('ResponseStatus').toJson(responseStatus)
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
    RegisterResponse.fromJson(Map<String, dynamic> json) :
        userId = json['userId'],
        sessionId = json['sessionId'],
        userName = json['userName'],
        referrerUrl = json['referrerUrl'],
        bearerToken = json['bearerToken'],
        refreshToken = json['refreshToken'],
        responseStatus = JsonConverters.get('ResponseStatus').fromJson(json['responseStatus'], () => new ResponseStatus()),
        meta = JsonConverters.get('Dictionary<String,String>').fromJson(json['meta'], () => new Map<String,String>());

    Map<String, dynamic> toJson() => {
        'userId': userId,
        'sessionId': sessionId,
        'userName': userName,
        'referrerUrl': referrerUrl,
        'bearerToken': bearerToken,
        'refreshToken': refreshToken,
        'responseStatus': JsonConverters.get('ResponseStatus').toJson(responseStatus),
        'meta': JsonConverters.get('Dictionary<String,String>').toJson(meta)
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
    QueryRequestLogs.fromJson(Map<String, dynamic> json) :
        super.fromJson(json),
        date = JsonConverters.get('DateTime').fromJson(json['date'], () => new DateTime(0)),
        viewErrors = json['viewErrors'];

    Map<String, dynamic> toJson() => super.toJson()..addAll({
        'date': JsonConverters.get('DateTime').toJson(date),
        'viewErrors': viewErrors
    });

    String getTypeName() { return "QueryRequestLogs"; }
}

// @AutoQueryViewer(Name="Today's Logs", Title="Logs from Today")
class TodayLogs extends QueryData<RequestLogEntry> implements IReturn<QueryResponse<RequestLogEntry>>, IMeta
{
    TodayLogs();
    TodayLogs fromMap(Map<String, dynamic> map) => new TodayLogs.fromJson(map);
    TodayLogs.fromJson(Map<String, dynamic> json) : super.fromJson(json);
    Map<String, dynamic> toJson() => super.toJson();
    String getTypeName() { return "TodayLogs"; }
}

class TodayErrorLogs extends QueryData<RequestLogEntry> implements IReturn<QueryResponse<RequestLogEntry>>, IMeta
{
    TodayErrorLogs();
    TodayErrorLogs fromMap(Map<String, dynamic> map) => new TodayErrorLogs.fromJson(map);
    TodayErrorLogs.fromJson(Map<String, dynamic> json) : super.fromJson(json);
    Map<String, dynamic> toJson() => super.toJson();
    String getTypeName() { return "TodayErrorLogs"; }
}

class YesterdayLogs extends QueryData<RequestLogEntry> implements IReturn<QueryResponse<RequestLogEntry>>, IMeta
{
    YesterdayLogs();
    YesterdayLogs fromMap(Map<String, dynamic> map) => new YesterdayLogs.fromJson(map);
    YesterdayLogs.fromJson(Map<String, dynamic> json) : super.fromJson(json);
    Map<String, dynamic> toJson() => super.toJson();
    String getTypeName() { return "YesterdayLogs"; }
}

class YesterdayErrorLogs extends QueryData<RequestLogEntry> implements IReturn<QueryResponse<RequestLogEntry>>, IMeta
{
    YesterdayErrorLogs();
    YesterdayErrorLogs fromMap(Map<String, dynamic> map) => new YesterdayErrorLogs.fromJson(map);
    YesterdayErrorLogs.fromJson(Map<String, dynamic> json) : super.fromJson(json);
    Map<String, dynamic> toJson() => super.toJson();
    String getTypeName() { return "YesterdayErrorLogs"; }
}

// @Route("/query/rockstars")
class QueryRockstars extends QueryDb1<Rockstar> implements IReturn<QueryResponse<Rockstar>>, IMeta
{
    int age;

    QueryRockstars({this.age});

    QueryRockstars fromMap(Map<String, dynamic> map) => new QueryRockstars.fromJson(map);
    QueryRockstars.fromJson(Map<String, dynamic> json) :
        super.fromJson(json),
        age = json['age'];

    Map<String, dynamic> toJson() => super.toJson()..addAll({
        'age': age
    });

    String getTypeName() { return "QueryRockstars"; }
}

// @Route("/query/rockstars/cached")
class QueryRockstarsCached extends QueryDb1<Rockstar> implements IReturn<QueryResponse<Rockstar>>, IMeta
{
    int age;

    QueryRockstarsCached({this.age});

    QueryRockstarsCached fromMap(Map<String, dynamic> map) => new QueryRockstarsCached.fromJson(map);
    QueryRockstarsCached.fromJson(Map<String, dynamic> json) :
        super.fromJson(json),
        age = json['age'];

    Map<String, dynamic> toJson() => super.toJson()..addAll({
        'age': age
    });

    String getTypeName() { return "QueryRockstarsCached"; }
}

// @Route("/changerequest/{Id}")
class ChangeRequest implements IReturn<ChangeRequestResponse>
{
    String id;

    ChangeRequest({this.id});

    ChangeRequest fromMap(Map<String, dynamic> map) => new ChangeRequest.fromJson(map);
    ChangeRequest.fromJson(Map<String, dynamic> json) :
        id = json['id'];

    Map<String, dynamic> toJson() => {
        'id': id
    };

    String getTypeName() { return "ChangeRequest"; }
}

// @Route("/compress/{Path*}")
class CompressFile
{
    String path;

    CompressFile({this.path});

    CompressFile fromMap(Map<String, dynamic> map) => new CompressFile.fromJson(map);
    CompressFile.fromJson(Map<String, dynamic> json) :
        path = json['path'];

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
    LegacyLeadPost.fromJson(Map<String, dynamic> json) :
        leadType = json['leadType'],
        myId = json['myId'];

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
    Info.fromJson(Map<String, dynamic> json) :
        id = json['id'];

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
    CustomHttpError.fromJson(Map<String, dynamic> json) :
        statusCode = json['statusCode'],
        statusDescription = json['statusDescription'];

    Map<String, dynamic> toJson() => {
        'statusCode': statusCode,
        'statusDescription': statusDescription
    };

    String getTypeName() { return "CustomHttpError"; }
}

class CustomFieldHttpError implements IReturn<CustomFieldHttpErrorResponse>
{
    CustomFieldHttpError();
    CustomFieldHttpError fromMap(Map<String, dynamic> map) => new CustomFieldHttpError.fromJson(map);
    CustomFieldHttpError.fromJson(Map<String, dynamic> json) : super();
    Map<String, dynamic> toJson() => {};
    String getTypeName() { return "CustomFieldHttpError"; }
}

class FallbackRoute
{
    String pathInfo;

    FallbackRoute({this.pathInfo});

    FallbackRoute fromMap(Map<String, dynamic> map) => new FallbackRoute.fromJson(map);
    FallbackRoute.fromJson(Map<String, dynamic> json) :
        pathInfo = json['pathInfo'];

    Map<String, dynamic> toJson() => {
        'pathInfo': pathInfo
    };

}

class NoRepeat implements IReturn<NoRepeatResponse>
{
    String id;

    NoRepeat({this.id});

    NoRepeat fromMap(Map<String, dynamic> map) => new NoRepeat.fromJson(map);
    NoRepeat.fromJson(Map<String, dynamic> json) :
        id = json['id'];

    Map<String, dynamic> toJson() => {
        'id': id
    };

    String getTypeName() { return "NoRepeat"; }
}

class BatchThrows implements IReturn<BatchThrowsResponse>
{
    int id;
    String name;

    BatchThrows({this.id,this.name});

    BatchThrows fromMap(Map<String, dynamic> map) => new BatchThrows.fromJson(map);
    BatchThrows.fromJson(Map<String, dynamic> json) :
        id = json['id'],
        name = json['name'];

    Map<String, dynamic> toJson() => {
        'id': id,
        'name': name
    };

    String getTypeName() { return "BatchThrows"; }
}

class BatchThrowsAsync implements IReturn<BatchThrowsResponse>
{
    int id;
    String name;

    BatchThrowsAsync({this.id,this.name});

    BatchThrowsAsync fromMap(Map<String, dynamic> map) => new BatchThrowsAsync.fromJson(map);
    BatchThrowsAsync.fromJson(Map<String, dynamic> json) :
        id = json['id'],
        name = json['name'];

    Map<String, dynamic> toJson() => {
        'id': id,
        'name': name
    };

    String getTypeName() { return "BatchThrowsAsync"; }
}

// @Route("/code/object", "GET")
class ObjectId implements IReturn<ObjectDesignResponse>
{
    String objectName;

    ObjectId({this.objectName});

    ObjectId fromMap(Map<String, dynamic> map) => new ObjectId.fromJson(map);
    ObjectId.fromJson(Map<String, dynamic> json) :
        objectName = json['objectName'];

    Map<String, dynamic> toJson() => {
        'objectName': objectName
    };

    String getTypeName() { return "ObjectId"; }
}

// @Route("/jwt")
class CreateJwt extends AuthUserSession implements IReturn<CreateJwtResponse>, IMeta
{
    DateTime jwtExpiry;

    CreateJwt({this.jwtExpiry});

    CreateJwt fromMap(Map<String, dynamic> map) => new CreateJwt.fromJson(map);
    CreateJwt.fromJson(Map<String, dynamic> json) :
        super.fromJson(json),
        jwtExpiry = JsonConverters.get('DateTime').fromJson(json['jwtExpiry'], () => new DateTime(0));

    Map<String, dynamic> toJson() => super.toJson()..addAll({
        'jwtExpiry': JsonConverters.get('DateTime').toJson(jwtExpiry)
    });

    String getTypeName() { return "CreateJwt"; }
}

// @Route("/jwt-refresh")
class CreateRefreshJwt implements IReturn<CreateRefreshJwtResponse>
{
    String userAuthId;
    DateTime jwtExpiry;

    CreateRefreshJwt({this.userAuthId,this.jwtExpiry});

    CreateRefreshJwt fromMap(Map<String, dynamic> map) => new CreateRefreshJwt.fromJson(map);
    CreateRefreshJwt.fromJson(Map<String, dynamic> json) :
        userAuthId = json['userAuthId'],
        jwtExpiry = JsonConverters.get('DateTime').fromJson(json['jwtExpiry'], () => new DateTime(0));

    Map<String, dynamic> toJson() => {
        'userAuthId': userAuthId,
        'jwtExpiry': JsonConverters.get('DateTime').toJson(jwtExpiry)
    };

    String getTypeName() { return "CreateRefreshJwt"; }
}

class MetadataTest implements IReturn<MetadataTestResponse>
{
    int id;

    MetadataTest({this.id});

    MetadataTest fromMap(Map<String, dynamic> map) => new MetadataTest.fromJson(map);
    MetadataTest.fromJson(Map<String, dynamic> json) :
        id = json['id'];

    Map<String, dynamic> toJson() => {
        'id': id
    };

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
    String getTypeName() { return "GetExample"; }
}

class MetadataRequest implements IReturn<AutoQueryMetadataResponse>
{
    MetadataType metadataType;

    MetadataRequest({this.metadataType});

    MetadataRequest fromMap(Map<String, dynamic> map) => new MetadataRequest.fromJson(map);
    MetadataRequest.fromJson(Map<String, dynamic> json) :
        metadataType = JsonConverters.get('MetadataType').fromJson(json['metadataType'], () => new MetadataType());

    Map<String, dynamic> toJson() => {
        'metadataType': JsonConverters.get('MetadataType').toJson(metadataType)
    };

    String getTypeName() { return "MetadataRequest"; }
}

class ExcludeMetadataProperty
{
    int id;

    ExcludeMetadataProperty({this.id});

    ExcludeMetadataProperty fromMap(Map<String, dynamic> map) => new ExcludeMetadataProperty.fromJson(map);
    ExcludeMetadataProperty.fromJson(Map<String, dynamic> json) :
        id = json['id'];

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
    NamedConnection.fromJson(Map<String, dynamic> json) :
        emailAddresses = json['emailAddresses'];

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
    HelloACodeGenTest.fromJson(Map<String, dynamic> json) :
        firstField = json['firstField'],
        secondFields = JsonConverters.get('List<String>').fromJson(json['secondFields'], () => new List<String>());

    Map<String, dynamic> toJson() => {
        'firstField': firstField,
        'secondFields': JsonConverters.get('List<String>').toJson(secondFields)
    };

    String getTypeName() { return "HelloACodeGenTest"; }
}

class HelloInService implements IReturn<HelloResponse>
{
    String name;

    HelloInService({this.name});

    HelloInService fromMap(Map<String, dynamic> map) => new HelloInService.fromJson(map);
    HelloInService.fromJson(Map<String, dynamic> json) :
        name = json['name'];

    Map<String, dynamic> toJson() => {
        'name': name
    };

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
    Hello.fromJson(Map<String, dynamic> json) :
        name = json['name'],
        title = json['title'];

    Map<String, dynamic> toJson() => {
        'name': name,
        'title': title
    };

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
    HelloAnnotated.fromJson(Map<String, dynamic> json) :
        name = json['name'];

    Map<String, dynamic> toJson() => {
        'name': name
    };

    String getTypeName() { return "HelloAnnotated"; }
}

class HelloWithNestedClass implements IReturn<HelloResponse>
{
    String name;
    NestedClass nestedClassProp;

    HelloWithNestedClass({this.name,this.nestedClassProp});

    HelloWithNestedClass fromMap(Map<String, dynamic> map) => new HelloWithNestedClass.fromJson(map);
    HelloWithNestedClass.fromJson(Map<String, dynamic> json) :
        name = json['name'],
        nestedClassProp = JsonConverters.get('HelloWithNestedClass.NestedClass').fromJson(json['nestedClassProp'], () => new NestedClass());

    Map<String, dynamic> toJson() => {
        'name': name,
        'nestedClassProp': JsonConverters.get('HelloWithNestedClass.NestedClass').toJson(nestedClassProp)
    };

    String getTypeName() { return "HelloWithNestedClass"; }
}

class HelloReturnList implements IReturn<List<OnlyInReturnListArg>>
{
    List<String> names;

    HelloReturnList({this.names});

    HelloReturnList fromMap(Map<String, dynamic> map) => new HelloReturnList.fromJson(map);
    HelloReturnList.fromJson(Map<String, dynamic> json) :
        names = JsonConverters.get('List<String>').fromJson(json['names'], () => new List<String>());

    Map<String, dynamic> toJson() => {
        'names': JsonConverters.get('List<String>').toJson(names)
    };

    String getTypeName() { return "HelloReturnList"; }
}

class HelloExisting implements IReturn<HelloExistingResponse>
{
    List<String> names;

    HelloExisting({this.names});

    HelloExisting fromMap(Map<String, dynamic> map) => new HelloExisting.fromJson(map);
    HelloExisting.fromJson(Map<String, dynamic> json) :
        names = JsonConverters.get('List<String>').fromJson(json['names'], () => new List<String>());

    Map<String, dynamic> toJson() => {
        'names': JsonConverters.get('List<String>').toJson(names)
    };

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
    HelloWithEnum.fromJson(Map<String, dynamic> json) :
        enumProp = JsonConverters.getEnum(EnumType.values).fromJson(json['enumProp'], null),
        enumWithValues = JsonConverters.getEnum(EnumWithValues.values).fromJson(json['enumWithValues'], null),
        nullableEnumProp = JsonConverters.getEnum(EnumType.values).fromJson(json['nullableEnumProp'], null),
        enumFlags = JsonConverters.getEnum(EnumFlags.values).fromJson(json['enumFlags'], null);

    Map<String, dynamic> toJson() => {
        'enumProp': JsonConverters.get('EnumType').toJson(enumProp),
        'enumWithValues': JsonConverters.get('EnumWithValues').toJson(enumWithValues),
        'nullableEnumProp': JsonConverters.get('EnumType').toJson(nullableEnumProp),
        'enumFlags': JsonConverters.get('EnumFlags').toJson(enumFlags)
    };

}

class RestrictedAttributes
{
    int id;
    String name;
    Hello hello;

    RestrictedAttributes({this.id,this.name,this.hello});

    RestrictedAttributes fromMap(Map<String, dynamic> map) => new RestrictedAttributes.fromJson(map);
    RestrictedAttributes.fromJson(Map<String, dynamic> json) :
        id = json['id'],
        name = json['name'],
        hello = JsonConverters.get('Hello').fromJson(json['hello'], () => new Hello());

    Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'hello': JsonConverters.get('Hello').toJson(hello)
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
    AllowedAttributes.fromJson(Map<String, dynamic> json) :
        id = json['id'],
        range = json['range'];

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
    HelloMultiline.fromJson(Map<String, dynamic> json) :
        overflow = json['overflow'];

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
    HelloAllTypes.fromJson(Map<String, dynamic> json) :
        name = json['name'],
        allTypes = JsonConverters.get('AllTypes').fromJson(json['allTypes'], () => new AllTypes()),
        allCollectionTypes = JsonConverters.get('AllCollectionTypes').fromJson(json['allCollectionTypes'], () => new AllCollectionTypes());

    Map<String, dynamic> toJson() => {
        'name': name,
        'allTypes': JsonConverters.get('AllTypes').toJson(allTypes),
        'allCollectionTypes': JsonConverters.get('AllCollectionTypes').toJson(allCollectionTypes)
    };

    String getTypeName() { return "HelloAllTypes"; }
}

class HelloString implements IReturn<String>
{
    String name;

    HelloString({this.name});

    HelloString fromMap(Map<String, dynamic> map) => new HelloString.fromJson(map);
    HelloString.fromJson(Map<String, dynamic> json) :
        name = json['name'];

    Map<String, dynamic> toJson() => {
        'name': name
    };

    String getTypeName() { return "HelloString"; }
}

class HelloVoid implements IReturnVoid
{
    String name;

    HelloVoid({this.name});

    HelloVoid fromMap(Map<String, dynamic> map) => new HelloVoid.fromJson(map);
    HelloVoid.fromJson(Map<String, dynamic> json) :
        name = json['name'];

    Map<String, dynamic> toJson() => {
        'name': name
    };

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
    HelloWithDataContract.fromJson(Map<String, dynamic> json) :
        name = json['name'],
        id = json['id'];

    Map<String, dynamic> toJson() => {
        'name': name,
        'id': id
    };

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
    HelloWithDescription.fromJson(Map<String, dynamic> json) :
        name = json['name'];

    Map<String, dynamic> toJson() => {
        'name': name
    };

    String getTypeName() { return "HelloWithDescription"; }
}

class HelloWithInheritance extends HelloBase implements IReturn<HelloWithInheritanceResponse>
{
    String name;

    HelloWithInheritance({this.name});

    HelloWithInheritance fromMap(Map<String, dynamic> map) => new HelloWithInheritance.fromJson(map);
    HelloWithInheritance.fromJson(Map<String, dynamic> json) :
        super.fromJson(json),
        name = json['name'];

    Map<String, dynamic> toJson() => super.toJson()..addAll({
        'name': name
    });

    String getTypeName() { return "HelloWithInheritance"; }
}

class HelloWithGenericInheritance extends HelloBase1<Poco>
{
    String result;

    HelloWithGenericInheritance({this.result});

    HelloWithGenericInheritance fromMap(Map<String, dynamic> map) => new HelloWithGenericInheritance.fromJson(map);
    HelloWithGenericInheritance.fromJson(Map<String, dynamic> json) :
        super.fromJson(json),
        result = json['result'];

    Map<String, dynamic> toJson() => super.toJson()..addAll({
        'result': result
    });

}

class HelloWithGenericInheritance2 extends HelloBase1<Hello>
{
    String result;

    HelloWithGenericInheritance2({this.result});

    HelloWithGenericInheritance2 fromMap(Map<String, dynamic> map) => new HelloWithGenericInheritance2.fromJson(map);
    HelloWithGenericInheritance2.fromJson(Map<String, dynamic> json) :
        super.fromJson(json),
        result = json['result'];

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
    HelloWithReturn.fromJson(Map<String, dynamic> json) :
        name = json['name'];

    Map<String, dynamic> toJson() => {
        'name': name
    };

    String getTypeName() { return "HelloWithReturn"; }
}

// @Route("/helloroute")
class HelloWithRoute implements IReturn<HelloWithRouteResponse>
{
    String name;

    HelloWithRoute({this.name});

    HelloWithRoute fromMap(Map<String, dynamic> map) => new HelloWithRoute.fromJson(map);
    HelloWithRoute.fromJson(Map<String, dynamic> json) :
        name = json['name'];

    Map<String, dynamic> toJson() => {
        'name': name
    };

    String getTypeName() { return "HelloWithRoute"; }
}

class HelloWithType implements IReturn<HelloWithTypeResponse>
{
    String name;

    HelloWithType({this.name});

    HelloWithType fromMap(Map<String, dynamic> map) => new HelloWithType.fromJson(map);
    HelloWithType.fromJson(Map<String, dynamic> json) :
        name = json['name'];

    Map<String, dynamic> toJson() => {
        'name': name
    };

    String getTypeName() { return "HelloWithType"; }
}

class HelloSession implements IReturn<HelloSessionResponse>
{
    HelloSession();
    HelloSession fromMap(Map<String, dynamic> map) => new HelloSession.fromJson(map);
    HelloSession.fromJson(Map<String, dynamic> json) : super();
    Map<String, dynamic> toJson() => {};
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
    HelloInterface.fromJson(Map<String, dynamic> json) :
        poco = JsonConverters.get('IPoco').fromJson(json['poco'], null),
        emptyInterface = JsonConverters.get('IEmptyInterface').fromJson(json['emptyInterface'], null),
        emptyClass = JsonConverters.get('EmptyClass').fromJson(json['emptyClass'], () => new EmptyClass()),
        value = json['value'];

    Map<String, dynamic> toJson() => {
        'poco': JsonConverters.get('IPoco').toJson(poco),
        'emptyInterface': JsonConverters.get('IEmptyInterface').toJson(emptyInterface),
        'emptyClass': JsonConverters.get('EmptyClass').toJson(emptyClass),
        'value': value
    };

}

class Request1 implements IReturn<Request1Response>
{
    TypeA test;

    Request1({this.test});

    Request1 fromMap(Map<String, dynamic> map) => new Request1.fromJson(map);
    Request1.fromJson(Map<String, dynamic> json) :
        test = JsonConverters.get('TypeA').fromJson(json['test'], () => new TypeA());

    Map<String, dynamic> toJson() => {
        'test': JsonConverters.get('TypeA').toJson(test)
    };

    String getTypeName() { return "Request1"; }
}

class Request2 implements IReturn<Request2Response>
{
    TypeA test;

    Request2({this.test});

    Request2 fromMap(Map<String, dynamic> map) => new Request2.fromJson(map);
    Request2.fromJson(Map<String, dynamic> json) :
        test = JsonConverters.get('TypeA').fromJson(json['test'], () => new TypeA());

    Map<String, dynamic> toJson() => {
        'test': JsonConverters.get('TypeA').toJson(test)
    };

    String getTypeName() { return "Request2"; }
}

class HelloInnerTypes implements IReturn<HelloInnerTypesResponse>
{
    HelloInnerTypes();
    HelloInnerTypes fromMap(Map<String, dynamic> map) => new HelloInnerTypes.fromJson(map);
    HelloInnerTypes.fromJson(Map<String, dynamic> json) : super();
    Map<String, dynamic> toJson() => {};
    String getTypeName() { return "HelloInnerTypes"; }
}

class GetUserSession implements IReturn<CustomUserSession>
{
    GetUserSession();
    GetUserSession fromMap(Map<String, dynamic> map) => new GetUserSession.fromJson(map);
    GetUserSession.fromJson(Map<String, dynamic> json) : super();
    Map<String, dynamic> toJson() => {};
    String getTypeName() { return "GetUserSession"; }
}

class QueryTemplate implements IReturn<QueryResponseTemplate<Poco>>
{
    QueryTemplate();
    QueryTemplate fromMap(Map<String, dynamic> map) => new QueryTemplate.fromJson(map);
    QueryTemplate.fromJson(Map<String, dynamic> json) : super();
    Map<String, dynamic> toJson() => {};
    String getTypeName() { return "QueryTemplate"; }
}

class HelloReserved
{
    String Class;
    String type;
    String extension;

    HelloReserved({this.Class,this.type,this.extension});

    HelloReserved fromMap(Map<String, dynamic> map) => new HelloReserved.fromJson(map);
    HelloReserved.fromJson(Map<String, dynamic> json) :
        Class = json['class'],
        type = json['type'],
        extension = json['extension'];

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
    HelloDictionary.fromJson(Map<String, dynamic> json) :
        key = json['key'],
        value = json['value'];

    Map<String, dynamic> toJson() => {
        'key': key,
        'value': value
    };

    String getTypeName() { return "HelloDictionary"; }
}

class HelloBuiltin
{
    DayOfWeek dayOfWeek;

    HelloBuiltin({this.dayOfWeek});

    HelloBuiltin fromMap(Map<String, dynamic> map) => new HelloBuiltin.fromJson(map);
    HelloBuiltin.fromJson(Map<String, dynamic> json) :
        dayOfWeek = JsonConverters.getEnum(DayOfWeek.values).fromJson(json['dayOfWeek'], null);

    Map<String, dynamic> toJson() => {
        'dayOfWeek': JsonConverters.get('DayOfWeek').toJson(dayOfWeek)
    };

}

class HelloGet implements IReturn<HelloVerbResponse>, IGet
{
    int id;

    HelloGet({this.id});

    HelloGet fromMap(Map<String, dynamic> map) => new HelloGet.fromJson(map);
    HelloGet.fromJson(Map<String, dynamic> json) :
        id = json['id'];

    Map<String, dynamic> toJson() => {
        'id': id
    };

    String getTypeName() { return "HelloGet"; }
}

class HelloPost extends HelloBase implements IReturn<HelloVerbResponse>, IPost
{
    HelloPost();
    HelloPost fromMap(Map<String, dynamic> map) => new HelloPost.fromJson(map);
    HelloPost.fromJson(Map<String, dynamic> json) : super.fromJson(json);
    Map<String, dynamic> toJson() => super.toJson();
    String getTypeName() { return "HelloPost"; }
}

class HelloPut implements IReturn<HelloVerbResponse>, IPut
{
    int id;

    HelloPut({this.id});

    HelloPut fromMap(Map<String, dynamic> map) => new HelloPut.fromJson(map);
    HelloPut.fromJson(Map<String, dynamic> json) :
        id = json['id'];

    Map<String, dynamic> toJson() => {
        'id': id
    };

    String getTypeName() { return "HelloPut"; }
}

class HelloDelete implements IReturn<HelloVerbResponse>, IDelete
{
    int id;

    HelloDelete({this.id});

    HelloDelete fromMap(Map<String, dynamic> map) => new HelloDelete.fromJson(map);
    HelloDelete.fromJson(Map<String, dynamic> json) :
        id = json['id'];

    Map<String, dynamic> toJson() => {
        'id': id
    };

    String getTypeName() { return "HelloDelete"; }
}

class HelloPatch implements IReturn<HelloVerbResponse>, IPatch
{
    int id;

    HelloPatch({this.id});

    HelloPatch fromMap(Map<String, dynamic> map) => new HelloPatch.fromJson(map);
    HelloPatch.fromJson(Map<String, dynamic> json) :
        id = json['id'];

    Map<String, dynamic> toJson() => {
        'id': id
    };

    String getTypeName() { return "HelloPatch"; }
}

class HelloReturnVoid implements IReturnVoid
{
    int id;

    HelloReturnVoid({this.id});

    HelloReturnVoid fromMap(Map<String, dynamic> map) => new HelloReturnVoid.fromJson(map);
    HelloReturnVoid.fromJson(Map<String, dynamic> json) :
        id = json['id'];

    Map<String, dynamic> toJson() => {
        'id': id
    };

    String getTypeName() { return "HelloReturnVoid"; }
}

class EnumRequest implements IReturn<EnumResponse>, IPut
{
    ScopeType Operator;

    EnumRequest({this.Operator});

    EnumRequest fromMap(Map<String, dynamic> map) => new EnumRequest.fromJson(map);
    EnumRequest.fromJson(Map<String, dynamic> json) :
        Operator = JsonConverters.getEnum(ScopeType.values).fromJson(json['operator'], null);

    Map<String, dynamic> toJson() => {
        'operator': JsonConverters.get('ScopeType').toJson(Operator)
    };

    String getTypeName() { return "EnumRequest"; }
}

class ExcludeTest1 implements IReturn<ExcludeTestNested>
{
    ExcludeTest1();
    ExcludeTest1 fromMap(Map<String, dynamic> map) => new ExcludeTest1.fromJson(map);
    ExcludeTest1.fromJson(Map<String, dynamic> json) : super();
    Map<String, dynamic> toJson() => {};
    String getTypeName() { return "ExcludeTest1"; }
}

class ExcludeTest2 implements IReturn<String>
{
    ExcludeTestNested excludeTestNested;

    ExcludeTest2({this.excludeTestNested});

    ExcludeTest2 fromMap(Map<String, dynamic> map) => new ExcludeTest2.fromJson(map);
    ExcludeTest2.fromJson(Map<String, dynamic> json) :
        excludeTestNested = JsonConverters.get('ExcludeTestNested').fromJson(json['excludeTestNested'], () => new ExcludeTestNested());

    Map<String, dynamic> toJson() => {
        'excludeTestNested': JsonConverters.get('ExcludeTestNested').toJson(excludeTestNested)
    };

    String getTypeName() { return "ExcludeTest2"; }
}

class HelloAuthenticated implements IReturn<HelloAuthenticatedResponse>, IHasSessionId
{
    String sessionId;
    int version;

    HelloAuthenticated({this.sessionId,this.version});

    HelloAuthenticated fromMap(Map<String, dynamic> map) => new HelloAuthenticated.fromJson(map);
    HelloAuthenticated.fromJson(Map<String, dynamic> json) :
        sessionId = json['sessionId'],
        version = json['version'];

    Map<String, dynamic> toJson() => {
        'sessionId': sessionId,
        'version': version
    };

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
    Echoes.fromJson(Map<String, dynamic> json) :
        sentence = json['sentence'];

    Map<String, dynamic> toJson() => {
        'sentence': sentence
    };

    String getTypeName() { return "Echoes"; }
}

class CachedEcho implements IReturn<Echo>
{
    bool reload;
    String sentence;

    CachedEcho({this.reload,this.sentence});

    CachedEcho fromMap(Map<String, dynamic> map) => new CachedEcho.fromJson(map);
    CachedEcho.fromJson(Map<String, dynamic> json) :
        reload = json['reload'],
        sentence = json['sentence'];

    Map<String, dynamic> toJson() => {
        'reload': reload,
        'sentence': sentence
    };

    String getTypeName() { return "CachedEcho"; }
}

class AsyncTest implements IReturn<Echo>
{
    AsyncTest();
    AsyncTest fromMap(Map<String, dynamic> map) => new AsyncTest.fromJson(map);
    AsyncTest.fromJson(Map<String, dynamic> json) : super();
    Map<String, dynamic> toJson() => {};
    String getTypeName() { return "AsyncTest"; }
}

// @Route("/throwhttperror/{Status}")
class ThrowHttpError implements IReturn<ThrowHttpErrorResponse>
{
    int status;
    String message;

    ThrowHttpError({this.status,this.message});

    ThrowHttpError fromMap(Map<String, dynamic> map) => new ThrowHttpError.fromJson(map);
    ThrowHttpError.fromJson(Map<String, dynamic> json) :
        status = json['status'],
        message = json['message'];

    Map<String, dynamic> toJson() => {
        'status': status,
        'message': message
    };

    String getTypeName() { return "ThrowHttpError"; }
}

// @Route("/throw404")
// @Route("/throw404/{Message}")
class Throw404
{
    String message;

    Throw404({this.message});

    Throw404 fromMap(Map<String, dynamic> map) => new Throw404.fromJson(map);
    Throw404.fromJson(Map<String, dynamic> json) :
        message = json['message'];

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
    ThrowType.fromJson(Map<String, dynamic> json) :
        type = json['type'],
        message = json['message'];

    Map<String, dynamic> toJson() => {
        'type': type,
        'message': message
    };

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
    ThrowValidation.fromJson(Map<String, dynamic> json) :
        age = json['age'],
        required = json['required'],
        email = json['email'];

    Map<String, dynamic> toJson() => {
        'age': age,
        'required': required,
        'email': email
    };

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
    ACSProfile.fromJson(Map<String, dynamic> json) :
        profileId = json['profileId'],
        shortName = json['shortName'],
        longName = json['longName'],
        regionId = json['regionId'],
        groupId = json['groupId'],
        deviceID = json['deviceID'],
        lastUpdated = JsonConverters.get('DateTime').fromJson(json['lastUpdated'], () => new DateTime(0)),
        enabled = json['enabled'],
        version = json['version'],
        sessionId = json['sessionId'];

    Map<String, dynamic> toJson() => {
        'profileId': profileId,
        'shortName': shortName,
        'longName': longName,
        'regionId': regionId,
        'groupId': groupId,
        'deviceID': deviceID,
        'lastUpdated': JsonConverters.get('DateTime').toJson(lastUpdated),
        'enabled': enabled,
        'version': version,
        'sessionId': sessionId
    };

    String getTypeName() { return "ACSProfile"; }
}

// @Route("/return/string")
class ReturnString implements IReturn<String>
{
    String data;

    ReturnString({this.data});

    ReturnString fromMap(Map<String, dynamic> map) => new ReturnString.fromJson(map);
    ReturnString.fromJson(Map<String, dynamic> json) :
        data = json['data'];

    Map<String, dynamic> toJson() => {
        'data': data
    };

    String getTypeName() { return "ReturnString"; }
}

// @Route("/return/bytes")
class ReturnBytes implements IReturn<Uint8List>
{
    Uint8List data;

    ReturnBytes({this.data});

    ReturnBytes fromMap(Map<String, dynamic> map) => new ReturnBytes.fromJson(map);
    ReturnBytes.fromJson(Map<String, dynamic> json) :
        data = JsonConverters.get('Byte[]').fromJson(json['data'], () => new Uint8List(0));

    Map<String, dynamic> toJson() => {
        'data': JsonConverters.get('Byte[]').toJson(data)
    };

    String getTypeName() { return "ReturnBytes"; }
}

// @Route("/return/stream")
class ReturnStream implements IReturn<Uint8List>
{
    Uint8List data;

    ReturnStream({this.data});

    ReturnStream fromMap(Map<String, dynamic> map) => new ReturnStream.fromJson(map);
    ReturnStream.fromJson(Map<String, dynamic> json) :
        data = JsonConverters.get('Byte[]').fromJson(json['data'], () => new Uint8List(0));

    Map<String, dynamic> toJson() => {
        'data': JsonConverters.get('Byte[]').toJson(data)
    };

    String getTypeName() { return "ReturnStream"; }
}

// @Route("/Request1/", "GET")
class GetRequest1 implements IReturn<List<ReturnedDto>>, IGet
{
    GetRequest1();
    GetRequest1 fromMap(Map<String, dynamic> map) => new GetRequest1.fromJson(map);
    GetRequest1.fromJson(Map<String, dynamic> json) : super();
    Map<String, dynamic> toJson() => {};
    String getTypeName() { return "GetRequest1"; }
}

// @Route("/Request3", "GET")
class GetRequest2 implements IReturn<ReturnedDto>, IGet
{
    GetRequest2();
    GetRequest2 fromMap(Map<String, dynamic> map) => new GetRequest2.fromJson(map);
    GetRequest2.fromJson(Map<String, dynamic> json) : super();
    Map<String, dynamic> toJson() => {};
    String getTypeName() { return "GetRequest2"; }
}

// @Route("/matchlast/{Id}")
class MatchesLastInt
{
    int id;

    MatchesLastInt({this.id});

    MatchesLastInt fromMap(Map<String, dynamic> map) => new MatchesLastInt.fromJson(map);
    MatchesLastInt.fromJson(Map<String, dynamic> json) :
        id = json['id'];

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
    MatchesNotLastInt.fromJson(Map<String, dynamic> json) :
        slug = json['slug'];

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
    MatchesId.fromJson(Map<String, dynamic> json) :
        id = json['id'];

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
    MatchesSlug.fromJson(Map<String, dynamic> json) :
        slug = json['slug'];

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
    SwaggerVersionTest.fromJson(Map<String, dynamic> json) :
        version = json['version'];

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
    TestErrorView.fromJson(Map<String, dynamic> json) :
        id = json['id'];

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
    GetFile.fromJson(Map<String, dynamic> json) :
        path = json['path'];

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
    TestHtml2.fromJson(Map<String, dynamic> json) :
        name = json['name'];

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
    ViewRequest.fromJson(Map<String, dynamic> json) :
        name = json['name'];

    Map<String, dynamic> toJson() => {
        'name': name
    };

    String getTypeName() { return "ViewRequest"; }
}

// @Route("/index")
class IndexPage
{
    String pathInfo;

    IndexPage({this.pathInfo});

    IndexPage fromMap(Map<String, dynamic> map) => new IndexPage.fromJson(map);
    IndexPage.fromJson(Map<String, dynamic> json) :
        pathInfo = json['pathInfo'];

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
    ReturnText.fromJson(Map<String, dynamic> json) :
        text = json['text'];

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
    DownloadGzipFile.fromJson(Map<String, dynamic> json) :
        fileName = json['fileName'];

    Map<String, dynamic> toJson() => {
        'fileName': fileName
    };

    String getTypeName() { return "DownloadGzipFile"; }
}

// @Route("/match/{Language}/{Name*}")
class MatchName implements IReturn<HelloResponse>
{
    String language;
    String name;

    MatchName({this.language,this.name});

    MatchName fromMap(Map<String, dynamic> map) => new MatchName.fromJson(map);
    MatchName.fromJson(Map<String, dynamic> json) :
        language = json['language'],
        name = json['name'];

    Map<String, dynamic> toJson() => {
        'language': language,
        'name': name
    };

    String getTypeName() { return "MatchName"; }
}

// @Route("/match/{Language*}")
class MatchLang implements IReturn<HelloResponse>
{
    String language;

    MatchLang({this.language});

    MatchLang fromMap(Map<String, dynamic> map) => new MatchLang.fromJson(map);
    MatchLang.fromJson(Map<String, dynamic> json) :
        language = json['language'];

    Map<String, dynamic> toJson() => {
        'language': language
    };

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
    SwaggerTest.fromJson(Map<String, dynamic> json) :
        name = json['name'],
        color = JsonConverters.getEnum(MyColor.values).fromJson(json['color'], null),
        original = json['original'],
        notAliased = json['notAliased'],
        password = json['password'],
        myDateBetween = JsonConverters.get('DateTime[]').fromJson(json['myDateBetween'], () => new List<DateTime>()),
        nestedModel1 = JsonConverters.get('SwaggerNestedModel').fromJson(json['nestedModel1'], () => new SwaggerNestedModel()),
        nestedModel2 = JsonConverters.get('SwaggerNestedModel2').fromJson(json['nestedModel2'], () => new SwaggerNestedModel2());

    Map<String, dynamic> toJson() => {
        'name': name,
        'color': JsonConverters.get('MyColor').toJson(color),
        'original': original,
        'notAliased': notAliased,
        'password': password,
        'myDateBetween': JsonConverters.get('DateTime[]').toJson(myDateBetween),
        'nestedModel1': JsonConverters.get('SwaggerNestedModel').toJson(nestedModel1),
        'nestedModel2': JsonConverters.get('SwaggerNestedModel2').toJson(nestedModel2)
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
    SwaggerTest2.fromJson(Map<String, dynamic> json) :
        myEnumProperty = JsonConverters.getEnum(MyEnum.values).fromJson(json['myEnumProperty'], null),
        token = json['token'];

    Map<String, dynamic> toJson() => {
        'myEnumProperty': JsonConverters.get('MyEnum').toJson(myEnumProperty),
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
    SwaggerComplex.fromJson(Map<String, dynamic> json) :
        isRequired = json['isRequired'],
        arrayString = JsonConverters.get('String[]').fromJson(json['arrayString'], () => new List<String>()),
        arrayInt = JsonConverters.get('Int32[]').fromJson(json['arrayInt'], () => new List<int>()),
        listString = JsonConverters.get('List<String>').fromJson(json['listString'], () => new List<String>()),
        listInt = JsonConverters.get('List<Int32>').fromJson(json['listInt'], () => new List<int>()),
        dictionaryString = JsonConverters.get('Dictionary<String,String>').fromJson(json['dictionaryString'], () => new Map<String,String>());

    Map<String, dynamic> toJson() => {
        'isRequired': isRequired,
        'arrayString': JsonConverters.get('String[]').toJson(arrayString),
        'arrayInt': JsonConverters.get('Int32[]').toJson(arrayInt),
        'listString': JsonConverters.get('List<String>').toJson(listString),
        'listInt': JsonConverters.get('List<Int32>').toJson(listInt),
        'dictionaryString': JsonConverters.get('Dictionary<String,String>').toJson(dictionaryString)
    };

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
    SwaggerPostTest.fromJson(Map<String, dynamic> json) :
        required1 = json['required1'],
        optional1 = json['optional1'];

    Map<String, dynamic> toJson() => {
        'required1': required1,
        'optional1': optional1
    };

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
    SwaggerPostTest2.fromJson(Map<String, dynamic> json) :
        required1 = json['required1'],
        required2 = json['required2'],
        optional1 = json['optional1'];

    Map<String, dynamic> toJson() => {
        'required1': required1,
        'required2': required2,
        'optional1': optional1
    };

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
    String getTypeName() { return "SwaggerMultiApiResponseTest"; }
}

// @Route("/dynamically/registered/{Name}")
class DynamicallyRegistered
{
    String name;

    DynamicallyRegistered({this.name});

    DynamicallyRegistered fromMap(Map<String, dynamic> map) => new DynamicallyRegistered.fromJson(map);
    DynamicallyRegistered.fromJson(Map<String, dynamic> json) :
        name = json['name'];

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
    Authenticate.fromJson(Map<String, dynamic> json) :
        provider = json['provider'],
        state = json['state'],
        oauth_token = json['oauth_token'],
        oauth_verifier = json['oauth_verifier'],
        userName = json['userName'],
        password = json['password'],
        rememberMe = json['rememberMe'],
        Continue = json['continue'],
        nonce = json['nonce'],
        uri = json['uri'],
        response = json['response'],
        qop = json['qop'],
        nc = json['nc'],
        cnonce = json['cnonce'],
        useTokenCookie = json['useTokenCookie'],
        accessToken = json['accessToken'],
        accessTokenSecret = json['accessTokenSecret'],
        meta = JsonConverters.get('Dictionary<String,String>').fromJson(json['meta'], () => new Map<String,String>());

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
        'meta': JsonConverters.get('Dictionary<String,String>').toJson(meta)
    };

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
    AssignRoles.fromJson(Map<String, dynamic> json) :
        userName = json['userName'],
        permissions = JsonConverters.get('List<String>').fromJson(json['permissions'], () => new List<String>()),
        roles = JsonConverters.get('List<String>').fromJson(json['roles'], () => new List<String>());

    Map<String, dynamic> toJson() => {
        'userName': userName,
        'permissions': JsonConverters.get('List<String>').toJson(permissions),
        'roles': JsonConverters.get('List<String>').toJson(roles)
    };

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
    UnAssignRoles.fromJson(Map<String, dynamic> json) :
        userName = json['userName'],
        permissions = JsonConverters.get('List<String>').fromJson(json['permissions'], () => new List<String>()),
        roles = JsonConverters.get('List<String>').fromJson(json['roles'], () => new List<String>());

    Map<String, dynamic> toJson() => {
        'userName': userName,
        'permissions': JsonConverters.get('List<String>').toJson(permissions),
        'roles': JsonConverters.get('List<String>').toJson(roles)
    };

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
    ConvertSessionToToken.fromJson(Map<String, dynamic> json) :
        preserveSession = json['preserveSession'];

    Map<String, dynamic> toJson() => {
        'preserveSession': preserveSession
    };

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
    GetAccessToken.fromJson(Map<String, dynamic> json) :
        refreshToken = json['refreshToken'];

    Map<String, dynamic> toJson() => {
        'refreshToken': refreshToken
    };

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
    GetApiKeys.fromJson(Map<String, dynamic> json) :
        environment = json['environment'];

    Map<String, dynamic> toJson() => {
        'environment': environment
    };

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
    RegenerateApiKeys.fromJson(Map<String, dynamic> json) :
        environment = json['environment'];

    Map<String, dynamic> toJson() => {
        'environment': environment
    };

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
    Register.fromJson(Map<String, dynamic> json) :
        userName = json['userName'],
        firstName = json['firstName'],
        lastName = json['lastName'],
        displayName = json['displayName'],
        email = json['email'],
        password = json['password'],
        autoLogin = json['autoLogin'],
        Continue = json['continue'];

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

    String getTypeName() { return "Register"; }
}

// @Route("/pgsql/rockstars")
class QueryPostgresRockstars extends QueryDb1<Rockstar> implements IReturn<QueryResponse<Rockstar>>, IMeta
{
    int age;

    QueryPostgresRockstars({this.age});

    QueryPostgresRockstars fromMap(Map<String, dynamic> map) => new QueryPostgresRockstars.fromJson(map);
    QueryPostgresRockstars.fromJson(Map<String, dynamic> json) :
        super.fromJson(json),
        age = json['age'];

    Map<String, dynamic> toJson() => super.toJson()..addAll({
        'age': age
    });

    String getTypeName() { return "QueryPostgresRockstars"; }
}

// @Route("/pgsql/pgrockstars")
class QueryPostgresPgRockstars extends QueryDb1<PgRockstar> implements IReturn<QueryResponse<PgRockstar>>, IMeta
{
    int age;

    QueryPostgresPgRockstars({this.age});

    QueryPostgresPgRockstars fromMap(Map<String, dynamic> map) => new QueryPostgresPgRockstars.fromJson(map);
    QueryPostgresPgRockstars.fromJson(Map<String, dynamic> json) :
        super.fromJson(json),
        age = json['age'];

    Map<String, dynamic> toJson() => super.toJson()..addAll({
        'age': age
    });

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
    QueryRockstarsConventions.fromJson(Map<String, dynamic> json) :
        super.fromJson(json),
        ids = JsonConverters.get('Int32[]').fromJson(json['ids'], () => new List<int>()),
        ageOlderThan = json['ageOlderThan'],
        ageGreaterThanOrEqualTo = json['ageGreaterThanOrEqualTo'],
        ageGreaterThan = json['ageGreaterThan'],
        greaterThanAge = json['greaterThanAge'],
        firstNameStartsWith = json['firstNameStartsWith'],
        lastNameEndsWith = json['lastNameEndsWith'],
        lastNameContains = json['lastNameContains'],
        rockstarAlbumNameContains = json['rockstarAlbumNameContains'],
        rockstarIdAfter = json['rockstarIdAfter'],
        rockstarIdOnOrAfter = json['rockstarIdOnOrAfter'];

    Map<String, dynamic> toJson() => super.toJson()..addAll({
        'ids': JsonConverters.get('Int32[]').toJson(ids),
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

    String getTypeName() { return "QueryRockstarsConventions"; }
}

// @AutoQueryViewer(Description="Use this option to search for Rockstars!", Title="Search for Rockstars")
class QueryCustomRockstars extends QueryDb2<Rockstar, CustomRockstar> implements IReturn<QueryResponse<CustomRockstar>>, IMeta
{
    int age;

    QueryCustomRockstars({this.age});

    QueryCustomRockstars fromMap(Map<String, dynamic> map) => new QueryCustomRockstars.fromJson(map);
    QueryCustomRockstars.fromJson(Map<String, dynamic> json) :
        super.fromJson(json),
        age = json['age'];

    Map<String, dynamic> toJson() => super.toJson()..addAll({
        'age': age
    });

    String getTypeName() { return "QueryCustomRockstars"; }
}

// @Route("/customrockstars")
class QueryRockstarAlbums extends QueryDb2<Rockstar, CustomRockstar> implements IReturn<QueryResponse<CustomRockstar>>, IMeta
{
    int age;
    String rockstarAlbumName;

    QueryRockstarAlbums({this.age,this.rockstarAlbumName});

    QueryRockstarAlbums fromMap(Map<String, dynamic> map) => new QueryRockstarAlbums.fromJson(map);
    QueryRockstarAlbums.fromJson(Map<String, dynamic> json) :
        super.fromJson(json),
        age = json['age'],
        rockstarAlbumName = json['rockstarAlbumName'];

    Map<String, dynamic> toJson() => super.toJson()..addAll({
        'age': age,
        'rockstarAlbumName': rockstarAlbumName
    });

    String getTypeName() { return "QueryRockstarAlbums"; }
}

class QueryRockstarAlbumsImplicit extends QueryDb2<Rockstar, CustomRockstar> implements IReturn<QueryResponse<CustomRockstar>>, IMeta
{
    QueryRockstarAlbumsImplicit();
    QueryRockstarAlbumsImplicit fromMap(Map<String, dynamic> map) => new QueryRockstarAlbumsImplicit.fromJson(map);
    QueryRockstarAlbumsImplicit.fromJson(Map<String, dynamic> json) : super.fromJson(json);
    Map<String, dynamic> toJson() => super.toJson();
    String getTypeName() { return "QueryRockstarAlbumsImplicit"; }
}

class QueryRockstarAlbumsLeftJoin extends QueryDb2<Rockstar, CustomRockstar> implements IReturn<QueryResponse<CustomRockstar>>, IMeta
{
    int age;
    String albumName;

    QueryRockstarAlbumsLeftJoin({this.age,this.albumName});

    QueryRockstarAlbumsLeftJoin fromMap(Map<String, dynamic> map) => new QueryRockstarAlbumsLeftJoin.fromJson(map);
    QueryRockstarAlbumsLeftJoin.fromJson(Map<String, dynamic> json) :
        super.fromJson(json),
        age = json['age'],
        albumName = json['albumName'];

    Map<String, dynamic> toJson() => super.toJson()..addAll({
        'age': age,
        'albumName': albumName
    });

    String getTypeName() { return "QueryRockstarAlbumsLeftJoin"; }
}

class QueryOverridedRockstars extends QueryDb1<Rockstar> implements IReturn<QueryResponse<Rockstar>>, IMeta
{
    int age;

    QueryOverridedRockstars({this.age});

    QueryOverridedRockstars fromMap(Map<String, dynamic> map) => new QueryOverridedRockstars.fromJson(map);
    QueryOverridedRockstars.fromJson(Map<String, dynamic> json) :
        super.fromJson(json),
        age = json['age'];

    Map<String, dynamic> toJson() => super.toJson()..addAll({
        'age': age
    });

    String getTypeName() { return "QueryOverridedRockstars"; }
}

class QueryOverridedCustomRockstars extends QueryDb2<Rockstar, CustomRockstar> implements IReturn<QueryResponse<CustomRockstar>>, IMeta
{
    int age;

    QueryOverridedCustomRockstars({this.age});

    QueryOverridedCustomRockstars fromMap(Map<String, dynamic> map) => new QueryOverridedCustomRockstars.fromJson(map);
    QueryOverridedCustomRockstars.fromJson(Map<String, dynamic> json) :
        super.fromJson(json),
        age = json['age'];

    Map<String, dynamic> toJson() => super.toJson()..addAll({
        'age': age
    });

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
    QueryFieldRockstars.fromJson(Map<String, dynamic> json) :
        super.fromJson(json),
        firstName = json['firstName'],
        firstNames = JsonConverters.get('String[]').fromJson(json['firstNames'], () => new List<String>()),
        age = json['age'],
        firstNameCaseInsensitive = json['firstNameCaseInsensitive'],
        firstNameStartsWith = json['firstNameStartsWith'],
        lastNameEndsWith = json['lastNameEndsWith'],
        firstNameBetween = JsonConverters.get('String[]').fromJson(json['firstNameBetween'], () => new List<String>()),
        orLastName = json['orLastName'],
        firstNameContainsMulti = JsonConverters.get('String[]').fromJson(json['firstNameContainsMulti'], () => new List<String>());

    Map<String, dynamic> toJson() => super.toJson()..addAll({
        'firstName': firstName,
        'firstNames': JsonConverters.get('String[]').toJson(firstNames),
        'age': age,
        'firstNameCaseInsensitive': firstNameCaseInsensitive,
        'firstNameStartsWith': firstNameStartsWith,
        'lastNameEndsWith': lastNameEndsWith,
        'firstNameBetween': JsonConverters.get('String[]').toJson(firstNameBetween),
        'orLastName': orLastName,
        'firstNameContainsMulti': JsonConverters.get('String[]').toJson(firstNameContainsMulti)
    });

    String getTypeName() { return "QueryFieldRockstars"; }
}

class QueryFieldRockstarsDynamic extends QueryDb1<Rockstar> implements IReturn<QueryResponse<Rockstar>>, IMeta
{
    int age;

    QueryFieldRockstarsDynamic({this.age});

    QueryFieldRockstarsDynamic fromMap(Map<String, dynamic> map) => new QueryFieldRockstarsDynamic.fromJson(map);
    QueryFieldRockstarsDynamic.fromJson(Map<String, dynamic> json) :
        super.fromJson(json),
        age = json['age'];

    Map<String, dynamic> toJson() => super.toJson()..addAll({
        'age': age
    });

    String getTypeName() { return "QueryFieldRockstarsDynamic"; }
}

class QueryRockstarsFilter extends QueryDb1<Rockstar> implements IReturn<QueryResponse<Rockstar>>, IMeta
{
    int age;

    QueryRockstarsFilter({this.age});

    QueryRockstarsFilter fromMap(Map<String, dynamic> map) => new QueryRockstarsFilter.fromJson(map);
    QueryRockstarsFilter.fromJson(Map<String, dynamic> json) :
        super.fromJson(json),
        age = json['age'];

    Map<String, dynamic> toJson() => super.toJson()..addAll({
        'age': age
    });

    String getTypeName() { return "QueryRockstarsFilter"; }
}

class QueryCustomRockstarsFilter extends QueryDb2<Rockstar, CustomRockstar> implements IReturn<QueryResponse<CustomRockstar>>, IMeta
{
    int age;

    QueryCustomRockstarsFilter({this.age});

    QueryCustomRockstarsFilter fromMap(Map<String, dynamic> map) => new QueryCustomRockstarsFilter.fromJson(map);
    QueryCustomRockstarsFilter.fromJson(Map<String, dynamic> json) :
        super.fromJson(json),
        age = json['age'];

    Map<String, dynamic> toJson() => super.toJson()..addAll({
        'age': age
    });

    String getTypeName() { return "QueryCustomRockstarsFilter"; }
}

class QueryRockstarsIFilter extends QueryDb1<Rockstar> implements IReturn<QueryResponse<Rockstar>>, IMeta, IFilterRockstars
{
    int age;

    QueryRockstarsIFilter({this.age});

    QueryRockstarsIFilter fromMap(Map<String, dynamic> map) => new QueryRockstarsIFilter.fromJson(map);
    QueryRockstarsIFilter.fromJson(Map<String, dynamic> json) :
        super.fromJson(json),
        age = json['age'];

    Map<String, dynamic> toJson() => super.toJson()..addAll({
        'age': age
    });

    String getTypeName() { return "QueryRockstarsIFilter"; }
}

// @Route("/OrRockstars")
class QueryOrRockstars extends QueryDb1<Rockstar> implements IReturn<QueryResponse<Rockstar>>, IMeta
{
    int age;
    String firstName;

    QueryOrRockstars({this.age,this.firstName});

    QueryOrRockstars fromMap(Map<String, dynamic> map) => new QueryOrRockstars.fromJson(map);
    QueryOrRockstars.fromJson(Map<String, dynamic> json) :
        super.fromJson(json),
        age = json['age'],
        firstName = json['firstName'];

    Map<String, dynamic> toJson() => super.toJson()..addAll({
        'age': age,
        'firstName': firstName
    });

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
    QueryGetRockstars.fromJson(Map<String, dynamic> json) :
        super.fromJson(json),
        ids = JsonConverters.get('Int32[]').fromJson(json['ids'], () => new List<int>()),
        ages = JsonConverters.get('List<Int32>').fromJson(json['ages'], () => new List<int>()),
        firstNames = JsonConverters.get('List<String>').fromJson(json['firstNames'], () => new List<String>()),
        idsBetween = JsonConverters.get('Int32[]').fromJson(json['idsBetween'], () => new List<int>());

    Map<String, dynamic> toJson() => super.toJson()..addAll({
        'ids': JsonConverters.get('Int32[]').toJson(ids),
        'ages': JsonConverters.get('List<Int32>').toJson(ages),
        'firstNames': JsonConverters.get('List<String>').toJson(firstNames),
        'idsBetween': JsonConverters.get('Int32[]').toJson(idsBetween)
    });

    String getTypeName() { return "QueryGetRockstars"; }
}

class QueryGetRockstarsDynamic extends QueryDb1<Rockstar> implements IReturn<QueryResponse<Rockstar>>, IMeta
{
    QueryGetRockstarsDynamic();
    QueryGetRockstarsDynamic fromMap(Map<String, dynamic> map) => new QueryGetRockstarsDynamic.fromJson(map);
    QueryGetRockstarsDynamic.fromJson(Map<String, dynamic> json) : super.fromJson(json);
    Map<String, dynamic> toJson() => super.toJson();
    String getTypeName() { return "QueryGetRockstarsDynamic"; }
}

// @Route("/movies/search")
class SearchMovies extends QueryDb1<Movie> implements IReturn<QueryResponse<Movie>>, IMeta
{
    SearchMovies();
    SearchMovies fromMap(Map<String, dynamic> map) => new SearchMovies.fromJson(map);
    SearchMovies.fromJson(Map<String, dynamic> json) : super.fromJson(json);
    Map<String, dynamic> toJson() => super.toJson();
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
    QueryMovies.fromJson(Map<String, dynamic> json) :
        super.fromJson(json),
        ids = JsonConverters.get('Int32[]').fromJson(json['ids'], () => new List<int>()),
        imdbIds = JsonConverters.get('String[]').fromJson(json['imdbIds'], () => new List<String>()),
        ratings = JsonConverters.get('String[]').fromJson(json['ratings'], () => new List<String>());

    Map<String, dynamic> toJson() => super.toJson()..addAll({
        'ids': JsonConverters.get('Int32[]').toJson(ids),
        'imdbIds': JsonConverters.get('String[]').toJson(imdbIds),
        'ratings': JsonConverters.get('String[]').toJson(ratings)
    });

    String getTypeName() { return "QueryMovies"; }
}

class StreamMovies extends QueryDb1<Movie> implements IReturn<QueryResponse<Movie>>, IMeta
{
    List<String> ratings;

    StreamMovies({this.ratings});

    StreamMovies fromMap(Map<String, dynamic> map) => new StreamMovies.fromJson(map);
    StreamMovies.fromJson(Map<String, dynamic> json) :
        super.fromJson(json),
        ratings = JsonConverters.get('String[]').fromJson(json['ratings'], () => new List<String>());

    Map<String, dynamic> toJson() => super.toJson()..addAll({
        'ratings': JsonConverters.get('String[]').toJson(ratings)
    });

    String getTypeName() { return "StreamMovies"; }
}

class QueryUnknownRockstars extends QueryDb1<Rockstar> implements IReturn<QueryResponse<Rockstar>>, IMeta
{
    int unknownInt;
    String unknownProperty;

    QueryUnknownRockstars({this.unknownInt,this.unknownProperty});

    QueryUnknownRockstars fromMap(Map<String, dynamic> map) => new QueryUnknownRockstars.fromJson(map);
    QueryUnknownRockstars.fromJson(Map<String, dynamic> json) :
        super.fromJson(json),
        unknownInt = json['unknownInt'],
        unknownProperty = json['unknownProperty'];

    Map<String, dynamic> toJson() => super.toJson()..addAll({
        'unknownInt': unknownInt,
        'unknownProperty': unknownProperty
    });

    String getTypeName() { return "QueryUnknownRockstars"; }
}

// @Route("/query/rockstar-references")
class QueryRockstarsWithReferences extends QueryDb1<RockstarReference> implements IReturn<QueryResponse<RockstarReference>>, IMeta
{
    int age;

    QueryRockstarsWithReferences({this.age});

    QueryRockstarsWithReferences fromMap(Map<String, dynamic> map) => new QueryRockstarsWithReferences.fromJson(map);
    QueryRockstarsWithReferences.fromJson(Map<String, dynamic> json) :
        super.fromJson(json),
        age = json['age'];

    Map<String, dynamic> toJson() => super.toJson()..addAll({
        'age': age
    });

    String getTypeName() { return "QueryRockstarsWithReferences"; }
}

class QueryPocoBase extends QueryDb1<OnlyDefinedInGenericType> implements IReturn<QueryResponse<OnlyDefinedInGenericType>>, IMeta
{
    int id;

    QueryPocoBase({this.id});

    QueryPocoBase fromMap(Map<String, dynamic> map) => new QueryPocoBase.fromJson(map);
    QueryPocoBase.fromJson(Map<String, dynamic> json) :
        super.fromJson(json),
        id = json['id'];

    Map<String, dynamic> toJson() => super.toJson()..addAll({
        'id': id
    });

    String getTypeName() { return "QueryPocoBase"; }
}

class QueryPocoIntoBase extends QueryDb2<OnlyDefinedInGenericTypeFrom, OnlyDefinedInGenericTypeInto> implements IReturn<QueryResponse<OnlyDefinedInGenericTypeInto>>, IMeta
{
    int id;

    QueryPocoIntoBase({this.id});

    QueryPocoIntoBase fromMap(Map<String, dynamic> map) => new QueryPocoIntoBase.fromJson(map);
    QueryPocoIntoBase.fromJson(Map<String, dynamic> json) :
        super.fromJson(json),
        id = json['id'];

    Map<String, dynamic> toJson() => super.toJson()..addAll({
        'id': id
    });

    String getTypeName() { return "QueryPocoIntoBase"; }
}

// @Route("/query/alltypes")
class QueryAllTypes extends QueryDb1<AllTypes> implements IReturn<QueryResponse<AllTypes>>, IMeta
{
    QueryAllTypes();
    QueryAllTypes fromMap(Map<String, dynamic> map) => new QueryAllTypes.fromJson(map);
    QueryAllTypes.fromJson(Map<String, dynamic> json) : super.fromJson(json);
    Map<String, dynamic> toJson() => super.toJson();
    String getTypeName() { return "QueryAllTypes"; }
}

// @Route("/querydata/rockstars")
class QueryDataRockstars extends QueryData<Rockstar> implements IReturn<QueryResponse<Rockstar>>, IMeta
{
    int age;

    QueryDataRockstars({this.age});

    QueryDataRockstars fromMap(Map<String, dynamic> map) => new QueryDataRockstars.fromJson(map);
    QueryDataRockstars.fromJson(Map<String, dynamic> json) :
        super.fromJson(json),
        age = json['age'];

    Map<String, dynamic> toJson() => super.toJson()..addAll({
        'age': age
    });

    String getTypeName() { return "QueryDataRockstars"; }
}