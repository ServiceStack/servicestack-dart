/* Options:
Date: 2024-10-23 02:40:10
Version: 8.41
Tip: To override a DTO option, remove "//" prefix before updating
BaseUrl: https://openai.servicestack.net

//GlobalNamespace: 
//AddServiceStackTypes: True
//AddResponseStatus: False
//AddImplicitVersion: 
//AddDescriptionAsComments: True
//IncludeTypes: 
//ExcludeTypes: 
//DefaultImports: package:servicestack/servicestack.dart,dart:typed_data
*/

import 'dart:typed_data';
import '../../lib/servicestack.dart';

// @DataContract
enum AudioFormat
{
    MP3,
    WAV,
    FLAC,
    OGG,
}

abstract class IMediaTransform
{
    String? refId;
    String? tag;
}

abstract class IQueueMediaTransform
{
    String? refId;
    String? tag;
    String? replyTo;
}

abstract class IGeneration
{
    String? refId;
    String? tag;
}

/**
* Base class for queue generation requests
*/
abstract class IQueueGeneration
{
    String? refId;
    String? replyTo;
    String? tag;
    String? state;
}

// @DataContract
enum ImageOutputFormat
{
    Jpg,
    Png,
    Gif,
    Bmp,
    Tiff,
    Webp,
}

enum WatermarkPosition
{
    TopLeft,
    TopRight,
    BottomLeft,
    BottomRight,
    Center,
}

enum AiServiceProvider
{
    Replicate,
    Comfy,
    OpenAi,
}

class MediaType implements IConvertible
{
    String? id;
    String? apiBaseUrl;
    String? apiKeyHeader;
    String? website;
    String? icon;
    Map<String,String?>? apiModels;
    AiServiceProvider? provider;

    MediaType({this.id,this.apiBaseUrl,this.apiKeyHeader,this.website,this.icon,this.apiModels,this.provider});
    MediaType.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        id = json['id'];
        apiBaseUrl = json['apiBaseUrl'];
        apiKeyHeader = json['apiKeyHeader'];
        website = json['website'];
        icon = json['icon'];
        apiModels = JsonConverters.toStringMap(json['apiModels']);
        provider = JsonConverters.fromJson(json['provider'],'AiServiceProvider',context!);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'id': id,
        'apiBaseUrl': apiBaseUrl,
        'apiKeyHeader': apiKeyHeader,
        'website': website,
        'icon': icon,
        'apiModels': apiModels,
        'provider': JsonConverters.toJson(provider,'AiServiceProvider',context!)
    };

    getTypeName() => "MediaType";
    TypeContext? context = _ctx;
}

class MediaProvider implements IConvertible
{
    int? id;
    String? name;
    String? apiKeyVar;
    String? apiUrlVar;
    String? apiKey;
    String? apiKeyHeader;
    String? apiBaseUrl;
    String? heartbeatUrl;
    int? concurrency;
    int? priority;
    bool? enabled;
    DateTime? offlineDate;
    DateTime? createdDate;
    String? mediaTypeId;
    // @ignore()
    MediaType? mediaType;

    List<String>? models;

    MediaProvider({this.id,this.name,this.apiKeyVar,this.apiUrlVar,this.apiKey,this.apiKeyHeader,this.apiBaseUrl,this.heartbeatUrl,this.concurrency,this.priority,this.enabled,this.offlineDate,this.createdDate,this.mediaTypeId,this.mediaType,this.models});
    MediaProvider.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        id = json['id'];
        name = json['name'];
        apiKeyVar = json['apiKeyVar'];
        apiUrlVar = json['apiUrlVar'];
        apiKey = json['apiKey'];
        apiKeyHeader = json['apiKeyHeader'];
        apiBaseUrl = json['apiBaseUrl'];
        heartbeatUrl = json['heartbeatUrl'];
        concurrency = json['concurrency'];
        priority = json['priority'];
        enabled = json['enabled'];
        offlineDate = JsonConverters.fromJson(json['offlineDate'],'DateTime',context!);
        createdDate = JsonConverters.fromJson(json['createdDate'],'DateTime',context!);
        mediaTypeId = json['mediaTypeId'];
        mediaType = JsonConverters.fromJson(json['mediaType'],'MediaType',context!);
        models = JsonConverters.fromJson(json['models'],'List<String>',context!);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'apiKeyVar': apiKeyVar,
        'apiUrlVar': apiUrlVar,
        'apiKey': apiKey,
        'apiKeyHeader': apiKeyHeader,
        'apiBaseUrl': apiBaseUrl,
        'heartbeatUrl': heartbeatUrl,
        'concurrency': concurrency,
        'priority': priority,
        'enabled': enabled,
        'offlineDate': JsonConverters.toJson(offlineDate,'DateTime',context!),
        'createdDate': JsonConverters.toJson(createdDate,'DateTime',context!),
        'mediaTypeId': mediaTypeId,
        'mediaType': JsonConverters.toJson(mediaType,'MediaType',context!),
        'models': JsonConverters.toJson(models,'List<String>',context!)
    };

    getTypeName() => "MediaProvider";
    TypeContext? context = _ctx;
}

class TextToSpeechVoice implements IConvertible
{
    String? id;
    String? model;

    TextToSpeechVoice({this.id,this.model});
    TextToSpeechVoice.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        id = json['id'];
        model = json['model'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'id': id,
        'model': model
    };

    getTypeName() => "TextToSpeechVoice";
    TypeContext? context = _ctx;
}

enum ComfySampler
{
    euler,
    euler_cfg_pp,
    euler_ancestral,
    euler_ancestral_cfg_pp,
    huen,
    huenpp2,
    dpm_2,
    dpm_2_ancestral,
    lms,
    dpm_fast,
    dpm_adaptive,
    dpmpp_2s_ancestral,
    dpmpp_sde,
    dpmpp_sde_gpu,
    dpmpp_2m,
    dpmpp_2m_sde,
    dpmpp_2m_sde_gpu,
    dpmpp_3m_sde,
    dpmpp_3m_sde_gpu,
    ddpm,
    lcm,
    ddim,
    uni_pc,
    uni_pc_bh2,
}

enum AiTaskType
{
    TextToImage,
    ImageToImage,
    ImageUpscale,
    ImageWithMask,
    ImageToText,
    TextToAudio,
    TextToSpeech,
    SpeechToText,
}

enum ComfyMaskSource
{
    red,
    blue,
    green,
    alpha,
}

class GenerationArgs implements IConvertible
{
    String? model;
    int? steps;
    int? batchSize;
    int? seed;
    String? positivePrompt;
    String? negativePrompt;
    Uint8List? imageInput;
    Uint8List? maskInput;
    Uint8List? audioInput;
    ComfySampler? sampler;
    String? scheduler;
    double? cfgScale;
    double? denoise;
    String? upscaleModel;
    int? width;
    int? height;
    AiTaskType? taskType;
    String? clip;
    double? sampleLength;
    ComfyMaskSource? maskChannel;
    String? aspectRatio;
    double? quality;
    String? voice;
    String? language;

    GenerationArgs({this.model,this.steps,this.batchSize,this.seed,this.positivePrompt,this.negativePrompt,this.imageInput,this.maskInput,this.audioInput,this.sampler,this.scheduler,this.cfgScale,this.denoise,this.upscaleModel,this.width,this.height,this.taskType,this.clip,this.sampleLength,this.maskChannel,this.aspectRatio,this.quality,this.voice,this.language});
    GenerationArgs.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        model = json['model'];
        steps = json['steps'];
        batchSize = json['batchSize'];
        seed = json['seed'];
        positivePrompt = json['positivePrompt'];
        negativePrompt = json['negativePrompt'];
        imageInput = JsonConverters.fromJson(json['imageInput'],'Uint8List',context!);
        maskInput = JsonConverters.fromJson(json['maskInput'],'Uint8List',context!);
        audioInput = JsonConverters.fromJson(json['audioInput'],'Uint8List',context!);
        sampler = JsonConverters.fromJson(json['sampler'],'ComfySampler',context!);
        scheduler = json['scheduler'];
        cfgScale = JsonConverters.toDouble(json['cfgScale']);
        denoise = JsonConverters.toDouble(json['denoise']);
        upscaleModel = json['upscaleModel'];
        width = json['width'];
        height = json['height'];
        taskType = JsonConverters.fromJson(json['taskType'],'AiTaskType',context!);
        clip = json['clip'];
        sampleLength = JsonConverters.toDouble(json['sampleLength']);
        maskChannel = JsonConverters.fromJson(json['maskChannel'],'ComfyMaskSource',context!);
        aspectRatio = json['aspectRatio'];
        quality = JsonConverters.toDouble(json['quality']);
        voice = json['voice'];
        language = json['language'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'model': model,
        'steps': steps,
        'batchSize': batchSize,
        'seed': seed,
        'positivePrompt': positivePrompt,
        'negativePrompt': negativePrompt,
        'imageInput': JsonConverters.toJson(imageInput,'Uint8List',context!),
        'maskInput': JsonConverters.toJson(maskInput,'Uint8List',context!),
        'audioInput': JsonConverters.toJson(audioInput,'Uint8List',context!),
        'sampler': JsonConverters.toJson(sampler,'ComfySampler',context!),
        'scheduler': scheduler,
        'cfgScale': cfgScale,
        'denoise': denoise,
        'upscaleModel': upscaleModel,
        'width': width,
        'height': height,
        'taskType': JsonConverters.toJson(taskType,'AiTaskType',context!),
        'clip': clip,
        'sampleLength': sampleLength,
        'maskChannel': JsonConverters.toJson(maskChannel,'ComfyMaskSource',context!),
        'aspectRatio': aspectRatio,
        'quality': quality,
        'voice': voice,
        'language': language
    };

    getTypeName() => "GenerationArgs";
    TypeContext? context = _ctx;
}

enum ModelType
{
    TextToImage,
    TextEncoder,
    ImageUpscale,
    TextToSpeech,
    TextToAudio,
    SpeechToText,
    ImageToText,
    ImageToImage,
    ImageWithMask,
    VAE,
}

class MediaModel implements IConvertible
{
    String? id;
    Map<String,String?>? apiModels;
    String? url;
    double? quality;
    String? aspectRatio;
    double? cfgScale;
    String? scheduler;
    ComfySampler? sampler;
    int? width;
    int? height;
    int? steps;
    String? negativePrompt;
    ModelType? modelType;

    MediaModel({this.id,this.apiModels,this.url,this.quality,this.aspectRatio,this.cfgScale,this.scheduler,this.sampler,this.width,this.height,this.steps,this.negativePrompt,this.modelType});
    MediaModel.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        id = json['id'];
        apiModels = JsonConverters.toStringMap(json['apiModels']);
        url = json['url'];
        quality = JsonConverters.toDouble(json['quality']);
        aspectRatio = json['aspectRatio'];
        cfgScale = JsonConverters.toDouble(json['cfgScale']);
        scheduler = json['scheduler'];
        sampler = JsonConverters.fromJson(json['sampler'],'ComfySampler',context!);
        width = json['width'];
        height = json['height'];
        steps = json['steps'];
        negativePrompt = json['negativePrompt'];
        modelType = JsonConverters.fromJson(json['modelType'],'ModelType',context!);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'id': id,
        'apiModels': apiModels,
        'url': url,
        'quality': quality,
        'aspectRatio': aspectRatio,
        'cfgScale': cfgScale,
        'scheduler': scheduler,
        'sampler': JsonConverters.toJson(sampler,'ComfySampler',context!),
        'width': width,
        'height': height,
        'steps': steps,
        'negativePrompt': negativePrompt,
        'modelType': JsonConverters.toJson(modelType,'ModelType',context!)
    };

    getTypeName() => "MediaModel";
    TypeContext? context = _ctx;
}

enum MediaTransformTaskType
{
    ImageScale,
    VideoScale,
    ImageConvert,
    AudioConvert,
    VideoConvert,
    ImageCrop,
    VideoCrop,
    VideoCut,
    AudioCut,
    WatermarkImage,
    WatermarkVideo,
}

// @DataContract
enum MediaOutputFormat
{
    MP4,
    AVI,
    MKV,
    MOV,
    WebM,
    GIF,
    MP3,
    WAV,
    FLAC,
}

class MediaTransformArgs implements IConvertible
{
    MediaTransformTaskType? taskType;
    Uint8List? videoInput;
    Uint8List? audioInput;
    Uint8List? imageInput;
    Uint8List? watermarkInput;
    String? videoFileName;
    String? audioFileName;
    String? imageFileName;
    String? watermarkFileName;
    MediaOutputFormat? outputFormat;
    ImageOutputFormat? imageOutputFormat;
    int? scaleWidth;
    int? scaleHeight;
    int? cropX;
    int? cropY;
    int? cropWidth;
    int? cropHeight;
    double? cutStart;
    double? cutEnd;
    Uint8List? watermarkFile;
    String? watermarkPosition;
    String? watermarkScale;
    String? audioCodec;
    String? videoCodec;
    String? audioBitrate;
    int? audioSampleRate;

    MediaTransformArgs({this.taskType,this.videoInput,this.audioInput,this.imageInput,this.watermarkInput,this.videoFileName,this.audioFileName,this.imageFileName,this.watermarkFileName,this.outputFormat,this.imageOutputFormat,this.scaleWidth,this.scaleHeight,this.cropX,this.cropY,this.cropWidth,this.cropHeight,this.cutStart,this.cutEnd,this.watermarkFile,this.watermarkPosition,this.watermarkScale,this.audioCodec,this.videoCodec,this.audioBitrate,this.audioSampleRate});
    MediaTransformArgs.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        taskType = JsonConverters.fromJson(json['taskType'],'MediaTransformTaskType',context!);
        videoInput = JsonConverters.fromJson(json['videoInput'],'Uint8List',context!);
        audioInput = JsonConverters.fromJson(json['audioInput'],'Uint8List',context!);
        imageInput = JsonConverters.fromJson(json['imageInput'],'Uint8List',context!);
        watermarkInput = JsonConverters.fromJson(json['watermarkInput'],'Uint8List',context!);
        videoFileName = json['videoFileName'];
        audioFileName = json['audioFileName'];
        imageFileName = json['imageFileName'];
        watermarkFileName = json['watermarkFileName'];
        outputFormat = JsonConverters.fromJson(json['outputFormat'],'MediaOutputFormat',context!);
        imageOutputFormat = JsonConverters.fromJson(json['imageOutputFormat'],'ImageOutputFormat',context!);
        scaleWidth = json['scaleWidth'];
        scaleHeight = json['scaleHeight'];
        cropX = json['cropX'];
        cropY = json['cropY'];
        cropWidth = json['cropWidth'];
        cropHeight = json['cropHeight'];
        cutStart = JsonConverters.toDouble(json['cutStart']);
        cutEnd = JsonConverters.toDouble(json['cutEnd']);
        watermarkFile = JsonConverters.fromJson(json['watermarkFile'],'Uint8List',context!);
        watermarkPosition = json['watermarkPosition'];
        watermarkScale = json['watermarkScale'];
        audioCodec = json['audioCodec'];
        videoCodec = json['videoCodec'];
        audioBitrate = json['audioBitrate'];
        audioSampleRate = json['audioSampleRate'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'taskType': JsonConverters.toJson(taskType,'MediaTransformTaskType',context!),
        'videoInput': JsonConverters.toJson(videoInput,'Uint8List',context!),
        'audioInput': JsonConverters.toJson(audioInput,'Uint8List',context!),
        'imageInput': JsonConverters.toJson(imageInput,'Uint8List',context!),
        'watermarkInput': JsonConverters.toJson(watermarkInput,'Uint8List',context!),
        'videoFileName': videoFileName,
        'audioFileName': audioFileName,
        'imageFileName': imageFileName,
        'watermarkFileName': watermarkFileName,
        'outputFormat': JsonConverters.toJson(outputFormat,'MediaOutputFormat',context!),
        'imageOutputFormat': JsonConverters.toJson(imageOutputFormat,'ImageOutputFormat',context!),
        'scaleWidth': scaleWidth,
        'scaleHeight': scaleHeight,
        'cropX': cropX,
        'cropY': cropY,
        'cropWidth': cropWidth,
        'cropHeight': cropHeight,
        'cutStart': cutStart,
        'cutEnd': cutEnd,
        'watermarkFile': JsonConverters.toJson(watermarkFile,'Uint8List',context!),
        'watermarkPosition': watermarkPosition,
        'watermarkScale': watermarkScale,
        'audioCodec': audioCodec,
        'videoCodec': videoCodec,
        'audioBitrate': audioBitrate,
        'audioSampleRate': audioSampleRate
    };

    getTypeName() => "MediaTransformArgs";
    TypeContext? context = _ctx;
}

class AiModel implements IConvertible
{
    String? id;
    List<String>? tags;
    String? latest;
    String? website;
    String? description;
    String? icon;

    AiModel({this.id,this.tags,this.latest,this.website,this.description,this.icon});
    AiModel.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        id = json['id'];
        tags = JsonConverters.fromJson(json['tags'],'List<String>',context!);
        latest = json['latest'];
        website = json['website'];
        description = json['description'];
        icon = json['icon'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'id': id,
        'tags': JsonConverters.toJson(tags,'List<String>',context!),
        'latest': latest,
        'website': website,
        'description': description,
        'icon': icon
    };

    getTypeName() => "AiModel";
    TypeContext? context = _ctx;
}

enum AiProviderType
{
    OpenAiProvider,
    GoogleAiProvider,
}

class AiType implements IConvertible
{
    String? id;
    AiProviderType? provider;
    String? website;
    String? apiBaseUrl;
    String? heartbeatUrl;
    String? icon;
    Map<String,String?>? apiModels;

    AiType({this.id,this.provider,this.website,this.apiBaseUrl,this.heartbeatUrl,this.icon,this.apiModels});
    AiType.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        id = json['id'];
        provider = JsonConverters.fromJson(json['provider'],'AiProviderType',context!);
        website = json['website'];
        apiBaseUrl = json['apiBaseUrl'];
        heartbeatUrl = json['heartbeatUrl'];
        icon = json['icon'];
        apiModels = JsonConverters.toStringMap(json['apiModels']);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'id': id,
        'provider': JsonConverters.toJson(provider,'AiProviderType',context!),
        'website': website,
        'apiBaseUrl': apiBaseUrl,
        'heartbeatUrl': heartbeatUrl,
        'icon': icon,
        'apiModels': apiModels
    };

    getTypeName() => "AiType";
    TypeContext? context = _ctx;
}

class AiProviderModel implements IConvertible
{
    String? model;
    String? apiModel;

    AiProviderModel({this.model,this.apiModel});
    AiProviderModel.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        model = json['model'];
        apiModel = json['apiModel'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'model': model,
        'apiModel': apiModel
    };

    getTypeName() => "AiProviderModel";
    TypeContext? context = _ctx;
}

class AiProvider implements IConvertible
{
    int? id;
    String? name;
    String? apiBaseUrl;
    String? apiKeyVar;
    String? apiKey;
    String? apiKeyHeader;
    String? heartbeatUrl;
    int? concurrency;
    int? priority;
    bool? enabled;
    DateTime? offlineDate;
    DateTime? createdDate;
    List<AiProviderModel>? models;
    String? aiTypeId;
    // @ignore()
    AiType? aiType;

    // @ignore()
    List<String>? selectedModels;

    AiProvider({this.id,this.name,this.apiBaseUrl,this.apiKeyVar,this.apiKey,this.apiKeyHeader,this.heartbeatUrl,this.concurrency,this.priority,this.enabled,this.offlineDate,this.createdDate,this.models,this.aiTypeId,this.aiType,this.selectedModels});
    AiProvider.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        id = json['id'];
        name = json['name'];
        apiBaseUrl = json['apiBaseUrl'];
        apiKeyVar = json['apiKeyVar'];
        apiKey = json['apiKey'];
        apiKeyHeader = json['apiKeyHeader'];
        heartbeatUrl = json['heartbeatUrl'];
        concurrency = json['concurrency'];
        priority = json['priority'];
        enabled = json['enabled'];
        offlineDate = JsonConverters.fromJson(json['offlineDate'],'DateTime',context!);
        createdDate = JsonConverters.fromJson(json['createdDate'],'DateTime',context!);
        models = JsonConverters.fromJson(json['models'],'List<AiProviderModel>',context!);
        aiTypeId = json['aiTypeId'];
        aiType = JsonConverters.fromJson(json['aiType'],'AiType',context!);
        selectedModels = JsonConverters.fromJson(json['selectedModels'],'List<String>',context!);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'apiBaseUrl': apiBaseUrl,
        'apiKeyVar': apiKeyVar,
        'apiKey': apiKey,
        'apiKeyHeader': apiKeyHeader,
        'heartbeatUrl': heartbeatUrl,
        'concurrency': concurrency,
        'priority': priority,
        'enabled': enabled,
        'offlineDate': JsonConverters.toJson(offlineDate,'DateTime',context!),
        'createdDate': JsonConverters.toJson(createdDate,'DateTime',context!),
        'models': JsonConverters.toJson(models,'List<AiProviderModel>',context!),
        'aiTypeId': aiTypeId,
        'aiType': JsonConverters.toJson(aiType,'AiType',context!),
        'selectedModels': JsonConverters.toJson(selectedModels,'List<String>',context!)
    };

    getTypeName() => "AiProvider";
    TypeContext? context = _ctx;
}

/**
* A list of messages comprising the conversation so far.
*/
// @DataContract
class OpenAiMessage implements IConvertible
{
    /**
    * The contents of the message.
    */
    // @DataMember(Name="content")
    String? content;

    /**
    * The role of the author of this message. Valid values are `system`, `user`, `assistant` and `tool`.
    */
    // @DataMember(Name="role")
    String? role;

    /**
    * An optional name for the participant. Provides the model information to differentiate between participants of the same role.
    */
    // @DataMember(Name="name")
    String? name;

    /**
    * The tool calls generated by the model, such as function calls.
    */
    // @DataMember(Name="tool_calls")
    List<ToolCall>? tool_calls;

    /**
    * Tool call that this message is responding to.
    */
    // @DataMember(Name="tool_call_id")
    String? tool_call_id;

    OpenAiMessage({this.content,this.role,this.name,this.tool_calls,this.tool_call_id});
    OpenAiMessage.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        content = json['content'];
        role = json['role'];
        name = json['name'];
        tool_calls = JsonConverters.fromJson(json['toolCalls'],'List<ToolCall>',context!);
        tool_call_id = json['toolCallId'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'content': content,
        'role': role,
        'name': name,
        'tool_calls': JsonConverters.toJson(tool_calls,'List<ToolCall>',context!),
        'tool_call_id': tool_call_id
    };

    getTypeName() => "OpenAiMessage";
    TypeContext? context = _ctx;
}

enum ResponseFormat
{
    Text,
    JsonObject,
}

// @DataContract
class OpenAiResponseFormat implements IConvertible
{
    /**
    * An object specifying the format that the model must output. Compatible with GPT-4 Turbo and all GPT-3.5 Turbo models newer than gpt-3.5-turbo-1106.
    */
    // @DataMember(Name="response_format")
    ResponseFormat? response_format;

    OpenAiResponseFormat({this.response_format});
    OpenAiResponseFormat.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        response_format = JsonConverters.fromJson(json['type'],'ResponseFormat',context!);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'response_format': JsonConverters.toJson(response_format,'ResponseFormat',context!)
    };

    getTypeName() => "OpenAiResponseFormat";
    TypeContext? context = _ctx;
}

enum OpenAiToolType
{
    Function,
}

// @DataContract
class OpenAiTools implements IConvertible
{
    /**
    * The type of the tool. Currently, only function is supported.
    */
    // @DataMember(Name="type")
    OpenAiToolType? type;

    OpenAiTools({this.type});
    OpenAiTools.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        type = JsonConverters.fromJson(json['type'],'OpenAiToolType',context!);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'type': JsonConverters.toJson(type,'OpenAiToolType',context!)
    };

    getTypeName() => "OpenAiTools";
    TypeContext? context = _ctx;
}

/**
* Given a list of messages comprising a conversation, the model will return a response.
*/
// @DataContract
class OpenAiChat implements IConvertible
{
    /**
    * A list of messages comprising the conversation so far.
    */
    // @DataMember(Name="messages")
    List<OpenAiMessage>? messages;

    /**
    * ID of the model to use. See the model endpoint compatibility table for details on which models work with the Chat API
    */
    // @DataMember(Name="model")
    String? model;

    /**
    * Number between `-2.0` and `2.0`. Positive values penalize new tokens based on their existing frequency in the text so far, decreasing the model's likelihood to repeat the same line verbatim.
    */
    // @DataMember(Name="frequency_penalty")
    double? frequency_penalty;

    /**
    * Modify the likelihood of specified tokens appearing in the completion.
    */
    // @DataMember(Name="logit_bias")
    Map<int,int?>? logit_bias;

    /**
    * Whether to return log probabilities of the output tokens or not. If true, returns the log probabilities of each output token returned in the content of message.
    */
    // @DataMember(Name="logprobs")
    bool? logprobs;

    /**
    * An integer between 0 and 20 specifying the number of most likely tokens to return at each token position, each with an associated log probability. logprobs must be set to true if this parameter is used.
    */
    // @DataMember(Name="top_logprobs")
    int? top_logprobs;

    /**
    * The maximum number of tokens that can be generated in the chat completion.
    */
    // @DataMember(Name="max_tokens")
    int? max_tokens;

    /**
    * How many chat completion choices to generate for each input message. Note that you will be charged based on the number of generated tokens across all of the choices. Keep `n` as `1` to minimize costs.
    */
    // @DataMember(Name="n")
    int? n;

    /**
    * Number between -2.0 and 2.0. Positive values penalize new tokens based on whether they appear in the text so far, increasing the model's likelihood to talk about new topics.
    */
    // @DataMember(Name="presence_penalty")
    double? presence_penalty;

    /**
    * An object specifying the format that the model must output. Compatible with GPT-4 Turbo and all GPT-3.5 Turbo models newer than `gpt-3.5-turbo-1106`. Setting Type to ResponseFormat.JsonObject enables JSON mode, which guarantees the message the model generates is valid JSON.
    */
    // @DataMember(Name="response_format")
    OpenAiResponseFormat? response_format;

    /**
    * This feature is in Beta. If specified, our system will make a best effort to sample deterministically, such that repeated requests with the same seed and parameters should return the same result. Determinism is not guaranteed, and you should refer to the system_fingerprint response parameter to monitor changes in the backend.
    */
    // @DataMember(Name="seed")
    int? seed;

    /**
    * Up to 4 sequences where the API will stop generating further tokens.
    */
    // @DataMember(Name="stop")
    List<String>? stop;

    /**
    * If set, partial message deltas will be sent, like in ChatGPT. Tokens will be sent as data-only server-sent events as they become available, with the stream terminated by a `data: [DONE]` message.
    */
    // @DataMember(Name="stream")
    bool? stream;

    /**
    * What sampling temperature to use, between 0 and 2. Higher values like 0.8 will make the output more random, while lower values like 0.2 will make it more focused and deterministic.
    */
    // @DataMember(Name="temperature")
    double? temperature;

    /**
    * An alternative to sampling with temperature, called nucleus sampling, where the model considers the results of the tokens with top_p probability mass. So 0.1 means only the tokens comprising the top 10% probability mass are considered.
    */
    // @DataMember(Name="top_p")
    double? top_p;

    /**
    * A list of tools the model may call. Currently, only functions are supported as a tool. Use this to provide a list of functions the model may generate JSON inputs for. A max of 128 functions are supported.
    */
    // @DataMember(Name="tools")
    List<OpenAiTools>? tools;

    /**
    * A unique identifier representing your end-user, which can help OpenAI to monitor and detect abuse.
    */
    // @DataMember(Name="user")
    String? user;

    OpenAiChat({this.messages,this.model,this.frequency_penalty,this.logit_bias,this.logprobs,this.top_logprobs,this.max_tokens,this.n,this.presence_penalty,this.response_format,this.seed,this.stop,this.stream,this.temperature,this.top_p,this.tools,this.user});
    OpenAiChat.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        messages = JsonConverters.fromJson(json['messages'],'List<OpenAiMessage>',context!);
        model = json['model'];
        frequency_penalty = JsonConverters.toDouble(json['frequencyPenalty']);
        logit_bias = JsonConverters.fromJson(json['logitBias'],'Map<int,int?>',context!);
        logprobs = json['logProbs'];
        top_logprobs = json['topLogProbs'];
        max_tokens = json['maxTokens'];
        n = json['n'];
        presence_penalty = JsonConverters.toDouble(json['presencePenalty']);
        response_format = JsonConverters.fromJson(json['responseFormat'],'OpenAiResponseFormat',context!);
        seed = json['seed'];
        stop = JsonConverters.fromJson(json['stop'],'List<String>',context!);
        stream = json['stream'];
        temperature = JsonConverters.toDouble(json['temperature']);
        top_p = JsonConverters.toDouble(json['topP']);
        tools = JsonConverters.fromJson(json['tools'],'List<OpenAiTools>',context!);
        user = json['user'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'messages': JsonConverters.toJson(messages,'List<OpenAiMessage>',context!),
        'model': model,
        'frequency_penalty': frequency_penalty,
        'logit_bias': JsonConverters.toJson(logit_bias,'Map<int,int?>',context!),
        'logprobs': logprobs,
        'top_logprobs': top_logprobs,
        'max_tokens': max_tokens,
        'n': n,
        'presence_penalty': presence_penalty,
        'response_format': JsonConverters.toJson(response_format,'OpenAiResponseFormat',context!),
        'seed': seed,
        'stop': JsonConverters.toJson(stop,'List<String>',context!),
        'stream': stream,
        'temperature': temperature,
        'top_p': top_p,
        'tools': JsonConverters.toJson(tools,'List<OpenAiTools>',context!),
        'user': user
    };

    getTypeName() => "OpenAiChat";
    TypeContext? context = _ctx;
}

enum TaskType
{
    OpenAiChat,
    Comfy,
}

class Prompt implements IConvertible
{
    String? id;
    String? name;
    String? value;

    Prompt({this.id,this.name,this.value});
    Prompt.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        id = json['id'];
        name = json['name'];
        value = json['value'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'value': value
    };

    getTypeName() => "Prompt";
    TypeContext? context = _ctx;
}

// @DataContract
enum ConvertVideoOutputFormat
{
    MP4,
    AVI,
    MOV,
}

class PageStats implements IConvertible
{
    String? label;
    int? total;

    PageStats({this.label,this.total});
    PageStats.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        label = json['label'];
        total = json['total'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'label': label,
        'total': total
    };

    getTypeName() => "PageStats";
    TypeContext? context = _ctx;
}

/**
* Output object for generated artifacts
*/
class ArtifactOutput implements IConvertible
{
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

    ArtifactOutput({this.url,this.fileName,this.provider});
    ArtifactOutput.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        url = json['url'];
        fileName = json['fileName'];
        provider = json['provider'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'url': url,
        'fileName': fileName,
        'provider': provider
    };

    getTypeName() => "ArtifactOutput";
    TypeContext? context = _ctx;
}

/**
* Output object for generated text
*/
class TextOutput implements IConvertible
{
    /**
    * The generated text
    */
    // @ApiMember(Description="The generated text")
    String? text;

    TextOutput({this.text});
    TextOutput.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        text = json['text'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'text': text
    };

    getTypeName() => "TextOutput";
    TypeContext? context = _ctx;
}

enum BackgroundJobState
{
    Queued,
    Started,
    Executed,
    Completed,
    Failed,
    Cancelled,
}

class SummaryStats implements IConvertible
{
    String? name;
    int? total;
    int? totalPromptTokens;
    int? totalCompletionTokens;
    double? totalMinutes;
    double? tokensPerSecond;

    SummaryStats({this.name,this.total,this.totalPromptTokens,this.totalCompletionTokens,this.totalMinutes,this.tokensPerSecond});
    SummaryStats.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        name = json['name'];
        total = json['total'];
        totalPromptTokens = json['totalPromptTokens'];
        totalCompletionTokens = json['totalCompletionTokens'];
        totalMinutes = JsonConverters.toDouble(json['totalMinutes']);
        tokensPerSecond = JsonConverters.toDouble(json['tokensPerSecond']);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'name': name,
        'total': total,
        'totalPromptTokens': totalPromptTokens,
        'totalCompletionTokens': totalCompletionTokens,
        'totalMinutes': totalMinutes,
        'tokensPerSecond': tokensPerSecond
    };

    getTypeName() => "SummaryStats";
    TypeContext? context = _ctx;
}

class AiProviderTextOutput implements IConvertible
{
    String? text;

    AiProviderTextOutput({this.text});
    AiProviderTextOutput.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        text = json['text'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'text': text
    };

    getTypeName() => "AiProviderTextOutput";
    TypeContext? context = _ctx;
}

class AiProviderFileOutput implements IConvertible
{
    String? fileName;
    String? url;

    AiProviderFileOutput({this.fileName,this.url});
    AiProviderFileOutput.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        fileName = json['fileName'];
        url = json['url'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'fileName': fileName,
        'url': url
    };

    getTypeName() => "AiProviderFileOutput";
    TypeContext? context = _ctx;
}

class GenerationResult implements IConvertible
{
    List<AiProviderTextOutput>? textOutputs;
    List<AiProviderFileOutput>? outputs;
    String? error;

    GenerationResult({this.textOutputs,this.outputs,this.error});
    GenerationResult.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        textOutputs = JsonConverters.fromJson(json['textOutputs'],'List<AiProviderTextOutput>',context!);
        outputs = JsonConverters.fromJson(json['outputs'],'List<AiProviderFileOutput>',context!);
        error = json['error'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'textOutputs': JsonConverters.toJson(textOutputs,'List<AiProviderTextOutput>',context!),
        'outputs': JsonConverters.toJson(outputs,'List<AiProviderFileOutput>',context!),
        'error': error
    };

    getTypeName() => "GenerationResult";
    TypeContext? context = _ctx;
}

// @DataContract
class OllamaModelDetails implements IConvertible
{
    // @DataMember(Name="parent_model")
    String? parent_model;

    // @DataMember(Name="format")
    String? format;

    // @DataMember(Name="family")
    String? family;

    // @DataMember(Name="families")
    List<String>? families;

    // @DataMember(Name="parameter_size")
    String? parameter_size;

    // @DataMember(Name="quantization_level")
    String? quantization_level;

    OllamaModelDetails({this.parent_model,this.format,this.family,this.families,this.parameter_size,this.quantization_level});
    OllamaModelDetails.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        parent_model = json['parentModel'];
        format = json['format'];
        family = json['family'];
        families = JsonConverters.fromJson(json['families'],'List<String>',context!);
        parameter_size = json['parameterSize'];
        quantization_level = json['quantizationLevel'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'parent_model': parent_model,
        'format': format,
        'family': family,
        'families': JsonConverters.toJson(families,'List<String>',context!),
        'parameter_size': parameter_size,
        'quantization_level': quantization_level
    };

    getTypeName() => "OllamaModelDetails";
    TypeContext? context = _ctx;
}

// @DataContract
class OllamaModel implements IConvertible
{
    // @DataMember(Name="name")
    String? name;

    // @DataMember(Name="model")
    String? model;

    // @DataMember(Name="modified_at")
    DateTime? modified_at;

    // @DataMember(Name="size")
    int? size;

    // @DataMember(Name="digest")
    String? digest;

    // @DataMember(Name="details")
    OllamaModelDetails? details;

    OllamaModel({this.name,this.model,this.modified_at,this.size,this.digest,this.details});
    OllamaModel.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        name = json['name'];
        model = json['model'];
        modified_at = JsonConverters.fromJson(json['modifiedAt'],'DateTime',context!);
        size = json['size'];
        digest = json['digest'];
        details = JsonConverters.fromJson(json['details'],'OllamaModelDetails',context!);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'name': name,
        'model': model,
        'modified_at': JsonConverters.toJson(modified_at,'DateTime',context!),
        'size': size,
        'digest': digest,
        'details': JsonConverters.toJson(details,'OllamaModelDetails',context!)
    };

    getTypeName() => "OllamaModel";
    TypeContext? context = _ctx;
}

// @DataContract
class ChoiceMessage implements IConvertible
{
    /**
    * The contents of the message.
    */
    // @DataMember(Name="content")
    String? content;

    /**
    * The tool calls generated by the model, such as function calls.
    */
    // @DataMember(Name="tool_calls")
    List<ToolCall>? tool_calls;

    /**
    * The role of the author of this message.
    */
    // @DataMember(Name="role")
    String? role;

    ChoiceMessage({this.content,this.tool_calls,this.role});
    ChoiceMessage.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        content = json['content'];
        tool_calls = JsonConverters.fromJson(json['toolCalls'],'List<ToolCall>',context!);
        role = json['role'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'content': content,
        'tool_calls': JsonConverters.toJson(tool_calls,'List<ToolCall>',context!),
        'role': role
    };

    getTypeName() => "ChoiceMessage";
    TypeContext? context = _ctx;
}

class Choice implements IConvertible
{
    /**
    * The reason the model stopped generating tokens. This will be stop if the model hit a natural stop point or a provided stop sequence, length if the maximum number of tokens specified in the request was reached, content_filter if content was omitted due to a flag from our content filters, tool_calls if the model called a tool
    */
    // @DataMember(Name="finish_reason")
    String? finish_reason;

    /**
    * The index of the choice in the list of choices.
    */
    // @DataMember(Name="index")
    int? index;

    /**
    * A chat completion message generated by the model.
    */
    // @DataMember(Name="message")
    ChoiceMessage? message;

    Choice({this.finish_reason,this.index,this.message});
    Choice.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        finish_reason = json['finishReason'];
        index = json['index'];
        message = JsonConverters.fromJson(json['message'],'ChoiceMessage',context!);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'finish_reason': finish_reason,
        'index': index,
        'message': JsonConverters.toJson(message,'ChoiceMessage',context!)
    };

    getTypeName() => "Choice";
    TypeContext? context = _ctx;
}

/**
* Usage statistics for the completion request.
*/
// @DataContract
class OpenAiUsage implements IConvertible
{
    /**
    * Number of tokens in the generated completion.
    */
    // @DataMember(Name="completion_tokens")
    int? completion_tokens;

    /**
    * Number of tokens in the prompt.
    */
    // @DataMember(Name="prompt_tokens")
    int? prompt_tokens;

    /**
    * Total number of tokens used in the request (prompt + completion).
    */
    // @DataMember(Name="total_tokens")
    int? total_tokens;

    OpenAiUsage({this.completion_tokens,this.prompt_tokens,this.total_tokens});
    OpenAiUsage.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        completion_tokens = json['completionTokens'];
        prompt_tokens = json['promptTokens'];
        total_tokens = json['totalTokens'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'completion_tokens': completion_tokens,
        'prompt_tokens': prompt_tokens,
        'total_tokens': total_tokens
    };

    getTypeName() => "OpenAiUsage";
    TypeContext? context = _ctx;
}

/**
* The tool calls generated by the model, such as function calls.
*/
// @DataContract
class ToolCall implements IConvertible
{
    /**
    * The ID of the tool call.
    */
    // @DataMember(Name="id")
    String? id;

    /**
    * The type of the tool. Currently, only `function` is supported.
    */
    // @DataMember(Name="type")
    String? type;

    /**
    * The function that the model called.
    */
    // @DataMember(Name="function")
    String? function;

    ToolCall({this.id,this.type,this.function});
    ToolCall.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        id = json['id'];
        type = json['type'];
        function = json['function'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'id': id,
        'type': type,
        'function': function
    };

    getTypeName() => "ToolCall";
    TypeContext? context = _ctx;
}

class AdminDataResponse implements IConvertible
{
    List<PageStats>? pageStats;

    AdminDataResponse({this.pageStats});
    AdminDataResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        pageStats = JsonConverters.fromJson(json['pageStats'],'List<PageStats>',context!);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'pageStats': JsonConverters.toJson(pageStats,'List<PageStats>',context!)
    };

    getTypeName() => "AdminDataResponse";
    TypeContext? context = _ctx;
}

/**
* Response object for transform requests
*/
class MediaTransformResponse implements IConvertible
{
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

    MediaTransformResponse({this.outputs,this.textOutputs,this.responseStatus});
    MediaTransformResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        outputs = JsonConverters.fromJson(json['outputs'],'List<ArtifactOutput>',context!);
        textOutputs = JsonConverters.fromJson(json['textOutputs'],'List<TextOutput>',context!);
        responseStatus = JsonConverters.fromJson(json['responseStatus'],'ResponseStatus',context!);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'outputs': JsonConverters.toJson(outputs,'List<ArtifactOutput>',context!),
        'textOutputs': JsonConverters.toJson(textOutputs,'List<TextOutput>',context!),
        'responseStatus': JsonConverters.toJson(responseStatus,'ResponseStatus',context!)
    };

    getTypeName() => "MediaTransformResponse";
    TypeContext? context = _ctx;
}

/**
* Base class for queueable transformation requests
*/
class QueueMediaTransformResponse implements IConvertible
{
    /**
    * Unique identifier of the background job
    */
    // @ApiMember(Description="Unique identifier of the background job")
    int? jobId;

    /**
    * Client-provided identifier for the request
    */
    // @ApiMember(Description="Client-provided identifier for the request")
    String? refId;

    /**
    * Current state of the background job
    */
    // @ApiMember(Description="Current state of the background job")
    BackgroundJobState? jobState;

    /**
    * Current status of the transformation request
    */
    // @ApiMember(Description="Current status of the transformation request")
    String? status;

    /**
    * Detailed response status information
    */
    // @ApiMember(Description="Detailed response status information")
    ResponseStatus? responseStatus;

    /**
    * URL to check the status of the request
    */
    // @ApiMember(Description="URL to check the status of the request")
    String? statusUrl;

    QueueMediaTransformResponse({this.jobId,this.refId,this.jobState,this.status,this.responseStatus,this.statusUrl});
    QueueMediaTransformResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        jobId = json['jobId'];
        refId = json['refId'];
        jobState = JsonConverters.fromJson(json['jobState'],'BackgroundJobState',context!);
        status = json['status'];
        responseStatus = JsonConverters.fromJson(json['responseStatus'],'ResponseStatus',context!);
        statusUrl = json['statusUrl'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'jobId': jobId,
        'refId': refId,
        'jobState': JsonConverters.toJson(jobState,'BackgroundJobState',context!),
        'status': status,
        'responseStatus': JsonConverters.toJson(responseStatus,'ResponseStatus',context!),
        'statusUrl': statusUrl
    };

    getTypeName() => "QueueMediaTransformResponse";
    TypeContext? context = _ctx;
}

class GetSummaryStatsResponse implements IConvertible
{
    List<SummaryStats>? providerStats;
    List<SummaryStats>? modelStats;
    List<SummaryStats>? monthStats;

    GetSummaryStatsResponse({this.providerStats,this.modelStats,this.monthStats});
    GetSummaryStatsResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        providerStats = JsonConverters.fromJson(json['providerStats'],'List<SummaryStats>',context!);
        modelStats = JsonConverters.fromJson(json['modelStats'],'List<SummaryStats>',context!);
        monthStats = JsonConverters.fromJson(json['monthStats'],'List<SummaryStats>',context!);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'providerStats': JsonConverters.toJson(providerStats,'List<SummaryStats>',context!),
        'modelStats': JsonConverters.toJson(modelStats,'List<SummaryStats>',context!),
        'monthStats': JsonConverters.toJson(monthStats,'List<SummaryStats>',context!)
    };

    getTypeName() => "GetSummaryStatsResponse";
    TypeContext? context = _ctx;
}

class GetComfyModelsResponse implements IConvertible
{
    List<String>? results;
    ResponseStatus? responseStatus;

    GetComfyModelsResponse({this.results,this.responseStatus});
    GetComfyModelsResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        results = JsonConverters.fromJson(json['results'],'List<String>',context!);
        responseStatus = JsonConverters.fromJson(json['responseStatus'],'ResponseStatus',context!);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'results': JsonConverters.toJson(results,'List<String>',context!),
        'responseStatus': JsonConverters.toJson(responseStatus,'ResponseStatus',context!)
    };

    getTypeName() => "GetComfyModelsResponse";
    TypeContext? context = _ctx;
}

class GetComfyModelMappingsResponse implements IConvertible
{
    Map<String,String?>? models;

    GetComfyModelMappingsResponse({this.models});
    GetComfyModelMappingsResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        models = JsonConverters.toStringMap(json['models']);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'models': models
    };

    getTypeName() => "GetComfyModelMappingsResponse";
    TypeContext? context = _ctx;
}

class GetJobStatusResponse implements IConvertible
{
    /**
    * Unique identifier of the background job
    */
    // @ApiMember(Description="Unique identifier of the background job")
    int? jobId;

    /**
    * Client-provided identifier for the request
    */
    // @ApiMember(Description="Client-provided identifier for the request")
    String? refId;

    /**
    * Current state of the background job
    */
    // @ApiMember(Description="Current state of the background job")
    BackgroundJobState? jobState;

    /**
    * Current status of the generation request
    */
    // @ApiMember(Description="Current status of the generation request")
    String? status;

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

    GetJobStatusResponse({this.jobId,this.refId,this.jobState,this.status,this.outputs,this.textOutputs,this.responseStatus});
    GetJobStatusResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        jobId = json['jobId'];
        refId = json['refId'];
        jobState = JsonConverters.fromJson(json['jobState'],'BackgroundJobState',context!);
        status = json['status'];
        outputs = JsonConverters.fromJson(json['outputs'],'List<ArtifactOutput>',context!);
        textOutputs = JsonConverters.fromJson(json['textOutputs'],'List<TextOutput>',context!);
        responseStatus = JsonConverters.fromJson(json['responseStatus'],'ResponseStatus',context!);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'jobId': jobId,
        'refId': refId,
        'jobState': JsonConverters.toJson(jobState,'BackgroundJobState',context!),
        'status': status,
        'outputs': JsonConverters.toJson(outputs,'List<ArtifactOutput>',context!),
        'textOutputs': JsonConverters.toJson(textOutputs,'List<TextOutput>',context!),
        'responseStatus': JsonConverters.toJson(responseStatus,'ResponseStatus',context!)
    };

    getTypeName() => "GetJobStatusResponse";
    TypeContext? context = _ctx;
}

/**
* Response object for generation requests
*/
class GenerationResponse implements IConvertible
{
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

    GenerationResponse({this.outputs,this.textOutputs,this.responseStatus});
    GenerationResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        outputs = JsonConverters.fromJson(json['outputs'],'List<ArtifactOutput>',context!);
        textOutputs = JsonConverters.fromJson(json['textOutputs'],'List<TextOutput>',context!);
        responseStatus = JsonConverters.fromJson(json['responseStatus'],'ResponseStatus',context!);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'outputs': JsonConverters.toJson(outputs,'List<ArtifactOutput>',context!),
        'textOutputs': JsonConverters.toJson(textOutputs,'List<TextOutput>',context!),
        'responseStatus': JsonConverters.toJson(responseStatus,'ResponseStatus',context!)
    };

    getTypeName() => "GenerationResponse";
    TypeContext? context = _ctx;
}

class QueueGenerationResponse implements IConvertible
{
    /**
    * Unique identifier of the background job
    */
    // @ApiMember(Description="Unique identifier of the background job")
    int? jobId;

    /**
    * Client-provided identifier for the request
    */
    // @ApiMember(Description="Client-provided identifier for the request")
    String? refId;

    /**
    * Current state of the background job
    */
    // @ApiMember(Description="Current state of the background job")
    BackgroundJobState? jobState;

    /**
    * Current status of the generation request
    */
    // @ApiMember(Description="Current status of the generation request")
    String? status;

    /**
    * Detailed response status information
    */
    // @ApiMember(Description="Detailed response status information")
    ResponseStatus? responseStatus;

    /**
    * URL to check the status of the generation request
    */
    // @ApiMember(Description="URL to check the status of the generation request")
    String? statusUrl;

    QueueGenerationResponse({this.jobId,this.refId,this.jobState,this.status,this.responseStatus,this.statusUrl});
    QueueGenerationResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        jobId = json['jobId'];
        refId = json['refId'];
        jobState = JsonConverters.fromJson(json['jobState'],'BackgroundJobState',context!);
        status = json['status'];
        responseStatus = JsonConverters.fromJson(json['responseStatus'],'ResponseStatus',context!);
        statusUrl = json['statusUrl'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'jobId': jobId,
        'refId': refId,
        'jobState': JsonConverters.toJson(jobState,'BackgroundJobState',context!),
        'status': status,
        'responseStatus': JsonConverters.toJson(responseStatus,'ResponseStatus',context!),
        'statusUrl': statusUrl
    };

    getTypeName() => "QueueGenerationResponse";
    TypeContext? context = _ctx;
}

class CreateGenerationResponse implements IConvertible
{
    int? id;
    String? refId;

    CreateGenerationResponse({this.id,this.refId});
    CreateGenerationResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        id = json['id'];
        refId = json['refId'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'id': id,
        'refId': refId
    };

    getTypeName() => "CreateGenerationResponse";
    TypeContext? context = _ctx;
}

class GetGenerationResponse implements IConvertible
{
    GenerationArgs? request;
    GenerationResult? result;
    List<AiProviderFileOutput>? outputs;
    List<AiProviderTextOutput>? textOutputs;

    GetGenerationResponse({this.request,this.result,this.outputs,this.textOutputs});
    GetGenerationResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        request = JsonConverters.fromJson(json['request'],'GenerationArgs',context!);
        result = JsonConverters.fromJson(json['result'],'GenerationResult',context!);
        outputs = JsonConverters.fromJson(json['outputs'],'List<AiProviderFileOutput>',context!);
        textOutputs = JsonConverters.fromJson(json['textOutputs'],'List<AiProviderTextOutput>',context!);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'request': JsonConverters.toJson(request,'GenerationArgs',context!),
        'result': JsonConverters.toJson(result,'GenerationResult',context!),
        'outputs': JsonConverters.toJson(outputs,'List<AiProviderFileOutput>',context!),
        'textOutputs': JsonConverters.toJson(textOutputs,'List<AiProviderTextOutput>',context!)
    };

    getTypeName() => "GetGenerationResponse";
    TypeContext? context = _ctx;
}

class CreateTransformResponse implements IConvertible
{
    int? id;
    String? refId;

    CreateTransformResponse({this.id,this.refId});
    CreateTransformResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        id = json['id'];
        refId = json['refId'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'id': id,
        'refId': refId
    };

    getTypeName() => "CreateTransformResponse";
    TypeContext? context = _ctx;
}

class HelloResponse implements IConvertible
{
    String? result;

    HelloResponse({this.result});
    HelloResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        result = json['result'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'result': result
    };

    getTypeName() => "HelloResponse";
    TypeContext? context = _ctx;
}

class GetOllamaModelsResponse implements IConvertible
{
    List<OllamaModel>? results;
    ResponseStatus? responseStatus;

    GetOllamaModelsResponse({this.results,this.responseStatus});
    GetOllamaModelsResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        results = JsonConverters.fromJson(json['results'],'List<OllamaModel>',context!);
        responseStatus = JsonConverters.fromJson(json['responseStatus'],'ResponseStatus',context!);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'results': JsonConverters.toJson(results,'List<OllamaModel>',context!),
        'responseStatus': JsonConverters.toJson(responseStatus,'ResponseStatus',context!)
    };

    getTypeName() => "GetOllamaModelsResponse";
    TypeContext? context = _ctx;
}

class GetWorkerStatsResponse implements IConvertible
{
    List<WorkerStats>? results;
    Map<String,int?>? queueCounts;
    ResponseStatus? responseStatus;

    GetWorkerStatsResponse({this.results,this.queueCounts,this.responseStatus});
    GetWorkerStatsResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        results = JsonConverters.fromJson(json['results'],'List<WorkerStats>',context!);
        queueCounts = JsonConverters.fromJson(json['queueCounts'],'Map<String,int?>',context!);
        responseStatus = JsonConverters.fromJson(json['responseStatus'],'ResponseStatus',context!);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'results': JsonConverters.toJson(results,'List<WorkerStats>',context!),
        'queueCounts': JsonConverters.toJson(queueCounts,'Map<String,int?>',context!),
        'responseStatus': JsonConverters.toJson(responseStatus,'ResponseStatus',context!)
    };

    getTypeName() => "GetWorkerStatsResponse";
    TypeContext? context = _ctx;
}

// @DataContract
class OpenAiChatResponse implements IConvertible
{
    /**
    * A unique identifier for the chat completion.
    */
    // @DataMember(Name="id")
    String? id;

    /**
    * A list of chat completion choices. Can be more than one if n is greater than 1.
    */
    // @DataMember(Name="choices")
    List<Choice>? choices;

    /**
    * The Unix timestamp (in seconds) of when the chat completion was created.
    */
    // @DataMember(Name="created")
    int? created;

    /**
    * The model used for the chat completion.
    */
    // @DataMember(Name="model")
    String? model;

    /**
    * This fingerprint represents the backend configuration that the model runs with.
    */
    // @DataMember(Name="system_fingerprint")
    String? system_fingerprint;

    /**
    * The object type, which is always chat.completion.
    */
    // @DataMember(Name="object")
    String? object;

    /**
    * Usage statistics for the completion request.
    */
    // @DataMember(Name="usage")
    OpenAiUsage? usage;

    // @DataMember(Name="responseStatus")
    ResponseStatus? responseStatus;

    OpenAiChatResponse({this.id,this.choices,this.created,this.model,this.system_fingerprint,this.object,this.usage,this.responseStatus});
    OpenAiChatResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        id = json['id'];
        choices = JsonConverters.fromJson(json['choices'],'List<Choice>',context!);
        created = json['created'];
        model = json['model'];
        system_fingerprint = json['systemFingerprint'];
        object = json['object'];
        usage = JsonConverters.fromJson(json['usage'],'OpenAiUsage',context!);
        responseStatus = JsonConverters.fromJson(json['responseStatus'],'ResponseStatus',context!);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'id': id,
        'choices': JsonConverters.toJson(choices,'List<Choice>',context!),
        'created': created,
        'model': model,
        'system_fingerprint': system_fingerprint,
        'object': object,
        'usage': JsonConverters.toJson(usage,'OpenAiUsage',context!),
        'responseStatus': JsonConverters.toJson(responseStatus,'ResponseStatus',context!)
    };

    getTypeName() => "OpenAiChatResponse";
    TypeContext? context = _ctx;
}

class QueueOpenAiChatResponse implements IConvertible
{
    int? id;
    String? refId;
    String? statusUrl;
    ResponseStatus? responseStatus;

    QueueOpenAiChatResponse({this.id,this.refId,this.statusUrl,this.responseStatus});
    QueueOpenAiChatResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        id = json['id'];
        refId = json['refId'];
        statusUrl = json['statusUrl'];
        responseStatus = JsonConverters.fromJson(json['responseStatus'],'ResponseStatus',context!);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'id': id,
        'refId': refId,
        'statusUrl': statusUrl,
        'responseStatus': JsonConverters.toJson(responseStatus,'ResponseStatus',context!)
    };

    getTypeName() => "QueueOpenAiChatResponse";
    TypeContext? context = _ctx;
}

class GetOpenAiChatResponse implements IConvertible
{
    BackgroundJobBase? result;
    ResponseStatus? responseStatus;

    GetOpenAiChatResponse({this.result,this.responseStatus});
    GetOpenAiChatResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        result = JsonConverters.fromJson(json['result'],'BackgroundJobBase',context!);
        responseStatus = JsonConverters.fromJson(json['responseStatus'],'ResponseStatus',context!);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'result': JsonConverters.toJson(result,'BackgroundJobBase',context!),
        'responseStatus': JsonConverters.toJson(responseStatus,'ResponseStatus',context!)
    };

    getTypeName() => "GetOpenAiChatResponse";
    TypeContext? context = _ctx;
}

class GetOpenAiChatStatusResponse implements IConvertible
{
    /**
    * Unique identifier of the background job
    */
    // @ApiMember(Description="Unique identifier of the background job")
    int? jobId;

    /**
    * Client-provided identifier for the request
    */
    // @ApiMember(Description="Client-provided identifier for the request")
    String? refId;

    /**
    * Current state of the background job
    */
    // @ApiMember(Description="Current state of the background job")
    BackgroundJobState? jobState;

    /**
    * Current status of the generation request
    */
    // @ApiMember(Description="Current status of the generation request")
    String? status;

    /**
    * Detailed response status information
    */
    // @ApiMember(Description="Detailed response status information")
    ResponseStatus? responseStatus;

    /**
    * Chat response
    */
    // @ApiMember(Description="Chat response")
    OpenAiChatResponse? chatResponse;

    GetOpenAiChatStatusResponse({this.jobId,this.refId,this.jobState,this.status,this.responseStatus,this.chatResponse});
    GetOpenAiChatStatusResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        jobId = json['jobId'];
        refId = json['refId'];
        jobState = JsonConverters.fromJson(json['jobState'],'BackgroundJobState',context!);
        status = json['status'];
        responseStatus = JsonConverters.fromJson(json['responseStatus'],'ResponseStatus',context!);
        chatResponse = JsonConverters.fromJson(json['chatResponse'],'OpenAiChatResponse',context!);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'jobId': jobId,
        'refId': refId,
        'jobState': JsonConverters.toJson(jobState,'BackgroundJobState',context!),
        'status': status,
        'responseStatus': JsonConverters.toJson(responseStatus,'ResponseStatus',context!),
        'chatResponse': JsonConverters.toJson(chatResponse,'OpenAiChatResponse',context!)
    };

    getTypeName() => "GetOpenAiChatStatusResponse";
    TypeContext? context = _ctx;
}

class GetActiveProvidersResponse implements IConvertible
{
    List<AiProvider>? results;
    ResponseStatus? responseStatus;

    GetActiveProvidersResponse({this.results,this.responseStatus});
    GetActiveProvidersResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        results = JsonConverters.fromJson(json['results'],'List<AiProvider>',context!);
        responseStatus = JsonConverters.fromJson(json['responseStatus'],'ResponseStatus',context!);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'results': JsonConverters.toJson(results,'List<AiProvider>',context!),
        'responseStatus': JsonConverters.toJson(responseStatus,'ResponseStatus',context!)
    };

    getTypeName() => "GetActiveProvidersResponse";
    TypeContext? context = _ctx;
}

class CreateApiKeyResponse implements IConvertible
{
    int? id;
    String? key;
    String? name;
    String? userId;
    String? userName;
    String? visibleKey;
    DateTime? createdDate;
    DateTime? expiryDate;
    DateTime? cancelledDate;
    String? notes;

    CreateApiKeyResponse({this.id,this.key,this.name,this.userId,this.userName,this.visibleKey,this.createdDate,this.expiryDate,this.cancelledDate,this.notes});
    CreateApiKeyResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        id = json['id'];
        key = json['key'];
        name = json['name'];
        userId = json['userId'];
        userName = json['userName'];
        visibleKey = json['visibleKey'];
        createdDate = JsonConverters.fromJson(json['createdDate'],'DateTime',context!);
        expiryDate = JsonConverters.fromJson(json['expiryDate'],'DateTime',context!);
        cancelledDate = JsonConverters.fromJson(json['cancelledDate'],'DateTime',context!);
        notes = json['notes'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'id': id,
        'key': key,
        'name': name,
        'userId': userId,
        'userName': userName,
        'visibleKey': visibleKey,
        'createdDate': JsonConverters.toJson(createdDate,'DateTime',context!),
        'expiryDate': JsonConverters.toJson(expiryDate,'DateTime',context!),
        'cancelledDate': JsonConverters.toJson(cancelledDate,'DateTime',context!),
        'notes': notes
    };

    getTypeName() => "CreateApiKeyResponse";
    TypeContext? context = _ctx;
}

class DeleteFilesResponse implements IConvertible
{
    List<String>? deleted;
    List<String>? missing;
    List<String>? failed;
    ResponseStatus? responseStatus;

    DeleteFilesResponse({this.deleted,this.missing,this.failed,this.responseStatus});
    DeleteFilesResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        deleted = JsonConverters.fromJson(json['deleted'],'List<String>',context!);
        missing = JsonConverters.fromJson(json['missing'],'List<String>',context!);
        failed = JsonConverters.fromJson(json['failed'],'List<String>',context!);
        responseStatus = JsonConverters.fromJson(json['responseStatus'],'ResponseStatus',context!);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'deleted': JsonConverters.toJson(deleted,'List<String>',context!),
        'missing': JsonConverters.toJson(missing,'List<String>',context!),
        'failed': JsonConverters.toJson(failed,'List<String>',context!),
        'responseStatus': JsonConverters.toJson(responseStatus,'ResponseStatus',context!)
    };

    getTypeName() => "DeleteFilesResponse";
    TypeContext? context = _ctx;
}

class MigrateArtifactResponse implements IConvertible
{
    String? filePath;
    ResponseStatus? responseStatus;

    MigrateArtifactResponse({this.filePath,this.responseStatus});
    MigrateArtifactResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        filePath = json['filePath'];
        responseStatus = JsonConverters.fromJson(json['responseStatus'],'ResponseStatus',context!);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'filePath': filePath,
        'responseStatus': JsonConverters.toJson(responseStatus,'ResponseStatus',context!)
    };

    getTypeName() => "MigrateArtifactResponse";
    TypeContext? context = _ctx;
}

class AdminData implements IReturn<AdminDataResponse>, IGet, IConvertible
{
    AdminData();
    AdminData.fromJson(Map<String, dynamic> json) : super();
    fromMap(Map<String, dynamic> json) {
        return this;
    }

    Map<String, dynamic> toJson() => {};
    createResponse() => AdminDataResponse();
    getResponseTypeName() => "AdminDataResponse";
    getTypeName() => "AdminData";
    TypeContext? context = _ctx;
}

/**
* Convert an audio file to a different format
*/
class ConvertAudio implements IReturn<MediaTransformResponse>, IMediaTransform, IConvertible, IPost
{
    /**
    * The desired output format for the converted audio
    */
    // @ApiMember(Description="The desired output format for the converted audio")
    // @required()
    AudioFormat? outputFormat;

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

    ConvertAudio({this.outputFormat,this.audio,this.refId,this.tag});
    ConvertAudio.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        outputFormat = JsonConverters.fromJson(json['outputFormat'],'AudioFormat',context!);
        audio = JsonConverters.fromJson(json['audio'],'Uint8List',context!);
        refId = json['refId'];
        tag = json['tag'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'outputFormat': JsonConverters.toJson(outputFormat,'AudioFormat',context!),
        'audio': JsonConverters.toJson(audio,'Uint8List',context!),
        'refId': refId,
        'tag': tag
    };

    createResponse() => MediaTransformResponse();
    getResponseTypeName() => "MediaTransformResponse";
    getTypeName() => "ConvertAudio";
    TypeContext? context = _ctx;
}

/**
* Convert an audio file to a different format
*/
class QueueConvertAudio implements IReturn<QueueMediaTransformResponse>, IQueueMediaTransform, IConvertible, IPost
{
    /**
    * The desired output format for the converted audio
    */
    // @ApiMember(Description="The desired output format for the converted audio")
    // @required()
    AudioFormat? outputFormat;

    // @required()
    Uint8List? audio;

    /**
    * Optional client-provided identifier for the request
    */
    // @ApiMember(Description="Optional client-provided identifier for the request")
    String? refId;

    /**
    * Optional queue or topic to reply to
    */
    // @ApiMember(Description="Optional queue or topic to reply to")
    String? replyTo;

    /**
    * Tag to identify the request
    */
    // @ApiMember(Description="Tag to identify the request")
    String? tag;

    QueueConvertAudio({this.outputFormat,this.audio,this.refId,this.replyTo,this.tag});
    QueueConvertAudio.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        outputFormat = JsonConverters.fromJson(json['outputFormat'],'AudioFormat',context!);
        audio = JsonConverters.fromJson(json['audio'],'Uint8List',context!);
        refId = json['refId'];
        replyTo = json['replyTo'];
        tag = json['tag'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'outputFormat': JsonConverters.toJson(outputFormat,'AudioFormat',context!),
        'audio': JsonConverters.toJson(audio,'Uint8List',context!),
        'refId': refId,
        'replyTo': replyTo,
        'tag': tag
    };

    createResponse() => QueueMediaTransformResponse();
    getResponseTypeName() => "QueueMediaTransformResponse";
    getTypeName() => "QueueConvertAudio";
    TypeContext? context = _ctx;
}

class GetSummaryStats implements IReturn<GetSummaryStatsResponse>, IGet, IConvertible
{
    DateTime? from;
    DateTime? to;

    GetSummaryStats({this.from,this.to});
    GetSummaryStats.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        from = JsonConverters.fromJson(json['from'],'DateTime',context!);
        to = JsonConverters.fromJson(json['to'],'DateTime',context!);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'from': JsonConverters.toJson(from,'DateTime',context!),
        'to': JsonConverters.toJson(to,'DateTime',context!)
    };

    createResponse() => GetSummaryStatsResponse();
    getResponseTypeName() => "GetSummaryStatsResponse";
    getTypeName() => "GetSummaryStats";
    TypeContext? context = _ctx;
}

class PopulateChatSummary implements IReturn<StringsResponse>, IGet, IConvertible
{
    PopulateChatSummary();
    PopulateChatSummary.fromJson(Map<String, dynamic> json) : super();
    fromMap(Map<String, dynamic> json) {
        return this;
    }

    Map<String, dynamic> toJson() => {};
    createResponse() => StringsResponse();
    getResponseTypeName() => "StringsResponse";
    getTypeName() => "PopulateChatSummary";
    TypeContext? context = _ctx;
}

class GetComfyModels implements IReturn<GetComfyModelsResponse>, IConvertible, IPost
{
    String? apiBaseUrl;
    String? apiKey;

    GetComfyModels({this.apiBaseUrl,this.apiKey});
    GetComfyModels.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        apiBaseUrl = json['apiBaseUrl'];
        apiKey = json['apiKey'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'apiBaseUrl': apiBaseUrl,
        'apiKey': apiKey
    };

    createResponse() => GetComfyModelsResponse();
    getResponseTypeName() => "GetComfyModelsResponse";
    getTypeName() => "GetComfyModels";
    TypeContext? context = _ctx;
}

class GetComfyModelMappings implements IReturn<GetComfyModelMappingsResponse>, IConvertible, IPost
{
    GetComfyModelMappings();
    GetComfyModelMappings.fromJson(Map<String, dynamic> json) : super();
    fromMap(Map<String, dynamic> json) {
        return this;
    }

    Map<String, dynamic> toJson() => {};
    createResponse() => GetComfyModelMappingsResponse();
    getResponseTypeName() => "GetComfyModelMappingsResponse";
    getTypeName() => "GetComfyModelMappings";
    TypeContext? context = _ctx;
}

/**
* Get job status
*/
// @Api(Description="Get job status")
class GetJobStatus implements IReturn<GetJobStatusResponse>, IGet, IConvertible
{
    /**
    * Unique identifier of the background job
    */
    // @ApiMember(Description="Unique identifier of the background job")
    int? jobId;

    /**
    * Client-provided identifier for the request
    */
    // @ApiMember(Description="Client-provided identifier for the request")
    String? refId;

    GetJobStatus({this.jobId,this.refId});
    GetJobStatus.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        jobId = json['jobId'];
        refId = json['refId'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'jobId': jobId,
        'refId': refId
    };

    createResponse() => GetJobStatusResponse();
    getResponseTypeName() => "GetJobStatusResponse";
    getTypeName() => "GetJobStatus";
    TypeContext? context = _ctx;
}

/**
* Active Media Worker Models available in AI Server
*/
class ActiveMediaModels implements IReturn<StringsResponse>, IGet, IConvertible
{
    ActiveMediaModels();
    ActiveMediaModels.fromJson(Map<String, dynamic> json) : super();
    fromMap(Map<String, dynamic> json) {
        return this;
    }

    Map<String, dynamic> toJson() => {};
    createResponse() => StringsResponse();
    getResponseTypeName() => "StringsResponse";
    getTypeName() => "ActiveMediaModels";
    TypeContext? context = _ctx;
}

/**
* Generate image from text description
*/
// @Api(Description="Generate image from text description")
class TextToImage implements IReturn<GenerationResponse>, IGeneration, IConvertible, IPost
{
    /**
    * The main prompt describing the desired image
    */
    // @ApiMember(Description="The main prompt describing the desired image")
    // @Validate(Validator="NotEmpty")
    String? positivePrompt;

    /**
    * Optional prompt specifying what should not be in the image
    */
    // @ApiMember(Description="Optional prompt specifying what should not be in the image")
    String? negativePrompt;

    /**
    * Desired width of the generated image
    */
    // @ApiMember(Description="Desired width of the generated image")
    int? width;

    /**
    * Desired height of the generated image
    */
    // @ApiMember(Description="Desired height of the generated image")
    int? height;

    /**
    * Number of images to generate in a single batch
    */
    // @ApiMember(Description="Number of images to generate in a single batch")
    int? batchSize;

    /**
    * The AI model to use for image generation
    */
    // @ApiMember(Description="The AI model to use for image generation")
    String? model;

    /**
    * Optional seed for reproducible results
    */
    // @ApiMember(Description="Optional seed for reproducible results")
    int? seed;

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

    TextToImage({this.positivePrompt,this.negativePrompt,this.width,this.height,this.batchSize,this.model,this.seed,this.refId,this.tag});
    TextToImage.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        positivePrompt = json['positivePrompt'];
        negativePrompt = json['negativePrompt'];
        width = json['width'];
        height = json['height'];
        batchSize = json['batchSize'];
        model = json['model'];
        seed = json['seed'];
        refId = json['refId'];
        tag = json['tag'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'positivePrompt': positivePrompt,
        'negativePrompt': negativePrompt,
        'width': width,
        'height': height,
        'batchSize': batchSize,
        'model': model,
        'seed': seed,
        'refId': refId,
        'tag': tag
    };

    createResponse() => GenerationResponse();
    getResponseTypeName() => "GenerationResponse";
    getTypeName() => "TextToImage";
    TypeContext? context = _ctx;
}

/**
* Generate image from another image
*/
// @Api(Description="Generate image from another image")
class ImageToImage implements IReturn<GenerationResponse>, IGeneration, IConvertible, IPost
{
    /**
    * The image to use as input
    */
    // @ApiMember(Description="The image to use as input")
    // @required()
    Uint8List? image;

    /**
    * Prompt describing the desired output
    */
    // @ApiMember(Description="Prompt describing the desired output")
    // @Validate(Validator="NotEmpty")
    String? positivePrompt;

    /**
    * Negative prompt describing what should not be in the image
    */
    // @ApiMember(Description="Negative prompt describing what should not be in the image")
    String? negativePrompt;

    /**
    * The AI model to use for image generation
    */
    // @ApiMember(Description="The AI model to use for image generation")
    String? model;

    /**
    * Optional specific amount of denoise to apply
    */
    // @ApiMember(Description="Optional specific amount of denoise to apply")
    double? denoise;

    /**
    * Number of images to generate in a single batch
    */
    // @ApiMember(Description="Number of images to generate in a single batch")
    int? batchSize;

    /**
    * Optional seed for reproducible results in image generation
    */
    // @ApiMember(Description="Optional seed for reproducible results in image generation")
    int? seed;

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

    ImageToImage({this.image,this.positivePrompt,this.negativePrompt,this.model,this.denoise,this.batchSize,this.seed,this.refId,this.tag});
    ImageToImage.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        image = JsonConverters.fromJson(json['image'],'Uint8List',context!);
        positivePrompt = json['positivePrompt'];
        negativePrompt = json['negativePrompt'];
        model = json['model'];
        denoise = JsonConverters.toDouble(json['denoise']);
        batchSize = json['batchSize'];
        seed = json['seed'];
        refId = json['refId'];
        tag = json['tag'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'image': JsonConverters.toJson(image,'Uint8List',context!),
        'positivePrompt': positivePrompt,
        'negativePrompt': negativePrompt,
        'model': model,
        'denoise': denoise,
        'batchSize': batchSize,
        'seed': seed,
        'refId': refId,
        'tag': tag
    };

    createResponse() => GenerationResponse();
    getResponseTypeName() => "GenerationResponse";
    getTypeName() => "ImageToImage";
    TypeContext? context = _ctx;
}

/**
* Upscale an image
*/
// @Api(Description="Upscale an image")
class ImageUpscale implements IReturn<GenerationResponse>, IGeneration, IConvertible, IPost
{
    /**
    * The image to upscale
    */
    // @ApiMember(Description="The image to upscale")
    // @required()
    Uint8List? image;

    /**
    * Optional seed for reproducible results in image generation
    */
    // @ApiMember(Description="Optional seed for reproducible results in image generation")
    int? seed;

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

    ImageUpscale({this.image,this.seed,this.refId,this.tag});
    ImageUpscale.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        image = JsonConverters.fromJson(json['image'],'Uint8List',context!);
        seed = json['seed'];
        refId = json['refId'];
        tag = json['tag'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'image': JsonConverters.toJson(image,'Uint8List',context!),
        'seed': seed,
        'refId': refId,
        'tag': tag
    };

    createResponse() => GenerationResponse();
    getResponseTypeName() => "GenerationResponse";
    getTypeName() => "ImageUpscale";
    TypeContext? context = _ctx;
}

/**
* Generate image with masked area
*/
// @Api(Description="Generate image with masked area")
class ImageWithMask implements IReturn<GenerationResponse>, IGeneration, IConvertible, IPost
{
    /**
    * Prompt describing the desired output in the masked area
    */
    // @ApiMember(Description="Prompt describing the desired output in the masked area")
    // @Validate(Validator="NotEmpty")
    String? positivePrompt;

    /**
    * Negative prompt describing what should not be in the masked area
    */
    // @ApiMember(Description="Negative prompt describing what should not be in the masked area")
    String? negativePrompt;

    /**
    * The image to use as input
    */
    // @ApiMember(Description="The image to use as input")
    // @required()
    Uint8List? image;

    /**
    * The mask to use as input
    */
    // @ApiMember(Description="The mask to use as input")
    // @required()
    Uint8List? mask;

    /**
    * Optional specific amount of denoise to apply
    */
    // @ApiMember(Description="Optional specific amount of denoise to apply")
    double? denoise;

    /**
    * Optional seed for reproducible results in image generation
    */
    // @ApiMember(Description="Optional seed for reproducible results in image generation")
    int? seed;

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

    ImageWithMask({this.positivePrompt,this.negativePrompt,this.image,this.mask,this.denoise,this.seed,this.refId,this.tag});
    ImageWithMask.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        positivePrompt = json['positivePrompt'];
        negativePrompt = json['negativePrompt'];
        image = JsonConverters.fromJson(json['image'],'Uint8List',context!);
        mask = JsonConverters.fromJson(json['mask'],'Uint8List',context!);
        denoise = JsonConverters.toDouble(json['denoise']);
        seed = json['seed'];
        refId = json['refId'];
        tag = json['tag'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'positivePrompt': positivePrompt,
        'negativePrompt': negativePrompt,
        'image': JsonConverters.toJson(image,'Uint8List',context!),
        'mask': JsonConverters.toJson(mask,'Uint8List',context!),
        'denoise': denoise,
        'seed': seed,
        'refId': refId,
        'tag': tag
    };

    createResponse() => GenerationResponse();
    getResponseTypeName() => "GenerationResponse";
    getTypeName() => "ImageWithMask";
    TypeContext? context = _ctx;
}

/**
* Convert image to text
*/
// @Api(Description="Convert image to text")
class ImageToText implements IReturn<GenerationResponse>, IGeneration, IConvertible, IPost
{
    /**
    * The image to convert to text
    */
    // @ApiMember(Description="The image to convert to text")
    // @required()
    Uint8List? image;

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

    ImageToText({this.image,this.refId,this.tag});
    ImageToText.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        image = JsonConverters.fromJson(json['image'],'Uint8List',context!);
        refId = json['refId'];
        tag = json['tag'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'image': JsonConverters.toJson(image,'Uint8List',context!),
        'refId': refId,
        'tag': tag
    };

    createResponse() => GenerationResponse();
    getResponseTypeName() => "GenerationResponse";
    getTypeName() => "ImageToText";
    TypeContext? context = _ctx;
}

/**
* Generate image from text description
*/
// @Api(Description="Generate image from text description")
class QueueTextToImage implements IReturn<QueueGenerationResponse>, IQueueGeneration, IConvertible, IPost
{
    /**
    * The main prompt describing the desired image
    */
    // @ApiMember(Description="The main prompt describing the desired image")
    // @Validate(Validator="NotEmpty")
    String? positivePrompt;

    /**
    * Optional prompt specifying what should not be in the image
    */
    // @ApiMember(Description="Optional prompt specifying what should not be in the image")
    String? negativePrompt;

    /**
    * Desired width of the generated image
    */
    // @ApiMember(Description="Desired width of the generated image")
    int? width;

    /**
    * Desired height of the generated image
    */
    // @ApiMember(Description="Desired height of the generated image")
    int? height;

    /**
    * Number of images to generate in a single batch
    */
    // @ApiMember(Description="Number of images to generate in a single batch")
    int? batchSize;

    /**
    * The AI model to use for image generation
    */
    // @ApiMember(Description="The AI model to use for image generation")
    String? model;

    /**
    * Optional seed for reproducible results
    */
    // @ApiMember(Description="Optional seed for reproducible results")
    int? seed;

    /**
    * Optional client-provided identifier for the request
    */
    // @ApiMember(Description="Optional client-provided identifier for the request")
    String? refId;

    /**
    * Optional queue or topic to reply to
    */
    // @ApiMember(Description="Optional queue or topic to reply to")
    String? replyTo;

    /**
    * Tag to identify the request
    */
    // @ApiMember(Description="Tag to identify the request")
    String? tag;

    /**
    * Optional state to associate with the request
    */
    // @ApiMember(Description="Optional state to associate with the request")
    String? state;

    QueueTextToImage({this.positivePrompt,this.negativePrompt,this.width,this.height,this.batchSize,this.model,this.seed,this.refId,this.replyTo,this.tag,this.state});
    QueueTextToImage.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        positivePrompt = json['positivePrompt'];
        negativePrompt = json['negativePrompt'];
        width = json['width'];
        height = json['height'];
        batchSize = json['batchSize'];
        model = json['model'];
        seed = json['seed'];
        refId = json['refId'];
        replyTo = json['replyTo'];
        tag = json['tag'];
        state = json['state'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'positivePrompt': positivePrompt,
        'negativePrompt': negativePrompt,
        'width': width,
        'height': height,
        'batchSize': batchSize,
        'model': model,
        'seed': seed,
        'refId': refId,
        'replyTo': replyTo,
        'tag': tag,
        'state': state
    };

    createResponse() => QueueGenerationResponse();
    getResponseTypeName() => "QueueGenerationResponse";
    getTypeName() => "QueueTextToImage";
    TypeContext? context = _ctx;
}

/**
* Upscale an image
*/
// @Api(Description="Upscale an image")
class QueueImageUpscale implements IReturn<QueueGenerationResponse>, IQueueGeneration, IConvertible, IPost
{
    /**
    * The image to upscale
    */
    // @ApiMember(Description="The image to upscale")
    // @required()
    Uint8List? image;

    /**
    * Optional seed for reproducible results in image generation
    */
    // @ApiMember(Description="Optional seed for reproducible results in image generation")
    int? seed;

    /**
    * Optional client-provided identifier for the request
    */
    // @ApiMember(Description="Optional client-provided identifier for the request")
    String? refId;

    /**
    * Optional queue or topic to reply to
    */
    // @ApiMember(Description="Optional queue or topic to reply to")
    String? replyTo;

    /**
    * Tag to identify the request
    */
    // @ApiMember(Description="Tag to identify the request")
    String? tag;

    /**
    * Optional state to associate with the request
    */
    // @ApiMember(Description="Optional state to associate with the request")
    String? state;

    QueueImageUpscale({this.image,this.seed,this.refId,this.replyTo,this.tag,this.state});
    QueueImageUpscale.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        image = JsonConverters.fromJson(json['image'],'Uint8List',context!);
        seed = json['seed'];
        refId = json['refId'];
        replyTo = json['replyTo'];
        tag = json['tag'];
        state = json['state'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'image': JsonConverters.toJson(image,'Uint8List',context!),
        'seed': seed,
        'refId': refId,
        'replyTo': replyTo,
        'tag': tag,
        'state': state
    };

    createResponse() => QueueGenerationResponse();
    getResponseTypeName() => "QueueGenerationResponse";
    getTypeName() => "QueueImageUpscale";
    TypeContext? context = _ctx;
}

/**
* Generate image from another image
*/
// @Api(Description="Generate image from another image")
class QueueImageToImage implements IReturn<QueueGenerationResponse>, IQueueGeneration, IConvertible, IPost
{
    /**
    * The image to use as input
    */
    // @ApiMember(Description="The image to use as input")
    // @required()
    Uint8List? image;

    /**
    * Prompt describing the desired output
    */
    // @ApiMember(Description="Prompt describing the desired output")
    // @Validate(Validator="NotEmpty")
    String? positivePrompt;

    /**
    * Negative prompt describing what should not be in the image
    */
    // @ApiMember(Description="Negative prompt describing what should not be in the image")
    String? negativePrompt;

    /**
    * The AI model to use for image generation
    */
    // @ApiMember(Description="The AI model to use for image generation")
    String? model;

    /**
    * Optional specific amount of denoise to apply
    */
    // @ApiMember(Description="Optional specific amount of denoise to apply")
    double? denoise;

    /**
    * Number of images to generate in a single batch
    */
    // @ApiMember(Description="Number of images to generate in a single batch")
    int? batchSize;

    /**
    * Optional seed for reproducible results in image generation
    */
    // @ApiMember(Description="Optional seed for reproducible results in image generation")
    int? seed;

    /**
    * Optional client-provided identifier for the request
    */
    // @ApiMember(Description="Optional client-provided identifier for the request")
    String? refId;

    /**
    * Optional queue or topic to reply to
    */
    // @ApiMember(Description="Optional queue or topic to reply to")
    String? replyTo;

    /**
    * Optional state to associate with the request
    */
    // @ApiMember(Description="Optional state to associate with the request")
    String? state;

    /**
    * Tag to identify the request
    */
    // @ApiMember(Description="Tag to identify the request")
    String? tag;

    QueueImageToImage({this.image,this.positivePrompt,this.negativePrompt,this.model,this.denoise,this.batchSize,this.seed,this.refId,this.replyTo,this.state,this.tag});
    QueueImageToImage.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        image = JsonConverters.fromJson(json['image'],'Uint8List',context!);
        positivePrompt = json['positivePrompt'];
        negativePrompt = json['negativePrompt'];
        model = json['model'];
        denoise = JsonConverters.toDouble(json['denoise']);
        batchSize = json['batchSize'];
        seed = json['seed'];
        refId = json['refId'];
        replyTo = json['replyTo'];
        state = json['state'];
        tag = json['tag'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'image': JsonConverters.toJson(image,'Uint8List',context!),
        'positivePrompt': positivePrompt,
        'negativePrompt': negativePrompt,
        'model': model,
        'denoise': denoise,
        'batchSize': batchSize,
        'seed': seed,
        'refId': refId,
        'replyTo': replyTo,
        'state': state,
        'tag': tag
    };

    createResponse() => QueueGenerationResponse();
    getResponseTypeName() => "QueueGenerationResponse";
    getTypeName() => "QueueImageToImage";
    TypeContext? context = _ctx;
}

/**
* Generate image with masked area
*/
// @Api(Description="Generate image with masked area")
class QueueImageWithMask implements IReturn<QueueGenerationResponse>, IQueueGeneration, IConvertible, IPost
{
    /**
    * Prompt describing the desired output in the masked area
    */
    // @ApiMember(Description="Prompt describing the desired output in the masked area")
    // @Validate(Validator="NotEmpty")
    String? positivePrompt;

    /**
    * Negative prompt describing what should not be in the masked area
    */
    // @ApiMember(Description="Negative prompt describing what should not be in the masked area")
    String? negativePrompt;

    /**
    * The image to use as input
    */
    // @ApiMember(Description="The image to use as input")
    // @required()
    Uint8List? image;

    /**
    * The mask to use as input
    */
    // @ApiMember(Description="The mask to use as input")
    // @required()
    Uint8List? mask;

    /**
    * Optional specific amount of denoise to apply
    */
    // @ApiMember(Description="Optional specific amount of denoise to apply")
    double? denoise;

    /**
    * Optional seed for reproducible results in image generation
    */
    // @ApiMember(Description="Optional seed for reproducible results in image generation")
    int? seed;

    /**
    * Optional client-provided identifier for the request
    */
    // @ApiMember(Description="Optional client-provided identifier for the request")
    String? refId;

    /**
    * Optional queue or topic to reply to
    */
    // @ApiMember(Description="Optional queue or topic to reply to")
    String? replyTo;

    /**
    * Tag to identify the request
    */
    // @ApiMember(Description="Tag to identify the request")
    String? tag;

    /**
    * Optional state to associate with the request
    */
    // @ApiMember(Description="Optional state to associate with the request")
    String? state;

    QueueImageWithMask({this.positivePrompt,this.negativePrompt,this.image,this.mask,this.denoise,this.seed,this.refId,this.replyTo,this.tag,this.state});
    QueueImageWithMask.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        positivePrompt = json['positivePrompt'];
        negativePrompt = json['negativePrompt'];
        image = JsonConverters.fromJson(json['image'],'Uint8List',context!);
        mask = JsonConverters.fromJson(json['mask'],'Uint8List',context!);
        denoise = JsonConverters.toDouble(json['denoise']);
        seed = json['seed'];
        refId = json['refId'];
        replyTo = json['replyTo'];
        tag = json['tag'];
        state = json['state'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'positivePrompt': positivePrompt,
        'negativePrompt': negativePrompt,
        'image': JsonConverters.toJson(image,'Uint8List',context!),
        'mask': JsonConverters.toJson(mask,'Uint8List',context!),
        'denoise': denoise,
        'seed': seed,
        'refId': refId,
        'replyTo': replyTo,
        'tag': tag,
        'state': state
    };

    createResponse() => QueueGenerationResponse();
    getResponseTypeName() => "QueueGenerationResponse";
    getTypeName() => "QueueImageWithMask";
    TypeContext? context = _ctx;
}

/**
* Convert image to text
*/
// @Api(Description="Convert image to text")
class QueueImageToText implements IReturn<QueueGenerationResponse>, IQueueGeneration, IConvertible, IPost
{
    /**
    * The image to convert to text
    */
    // @ApiMember(Description="The image to convert to text")
    // @required()
    Uint8List? image;

    /**
    * Optional client-provided identifier for the request
    */
    // @ApiMember(Description="Optional client-provided identifier for the request")
    String? refId;

    /**
    * Optional queue or topic to reply to
    */
    // @ApiMember(Description="Optional queue or topic to reply to")
    String? replyTo;

    /**
    * Tag to identify the request
    */
    // @ApiMember(Description="Tag to identify the request")
    String? tag;

    /**
    * Optional state to associate with the request
    */
    // @ApiMember(Description="Optional state to associate with the request")
    String? state;

    QueueImageToText({this.image,this.refId,this.replyTo,this.tag,this.state});
    QueueImageToText.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        image = JsonConverters.fromJson(json['image'],'Uint8List',context!);
        refId = json['refId'];
        replyTo = json['replyTo'];
        tag = json['tag'];
        state = json['state'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'image': JsonConverters.toJson(image,'Uint8List',context!),
        'refId': refId,
        'replyTo': replyTo,
        'tag': tag,
        'state': state
    };

    createResponse() => QueueGenerationResponse();
    getResponseTypeName() => "QueueGenerationResponse";
    getTypeName() => "QueueImageToText";
    TypeContext? context = _ctx;
}

/**
* Convert an image to a different format
*/
class ConvertImage implements IReturn<MediaTransformResponse>, IMediaTransform, IPost, IConvertible
{
    /**
    * The image file to be converted
    */
    // @ApiMember(Description="The image file to be converted")
    // @required()
    Uint8List? image;

    /**
    * The desired output format for the converted image
    */
    // @ApiMember(Description="The desired output format for the converted image")
    // @required()
    ImageOutputFormat? outputFormat;

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

    ConvertImage({this.image,this.outputFormat,this.refId,this.tag});
    ConvertImage.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        image = JsonConverters.fromJson(json['image'],'Uint8List',context!);
        outputFormat = JsonConverters.fromJson(json['outputFormat'],'ImageOutputFormat',context!);
        refId = json['refId'];
        tag = json['tag'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'image': JsonConverters.toJson(image,'Uint8List',context!),
        'outputFormat': JsonConverters.toJson(outputFormat,'ImageOutputFormat',context!),
        'refId': refId,
        'tag': tag
    };

    createResponse() => MediaTransformResponse();
    getResponseTypeName() => "MediaTransformResponse";
    getTypeName() => "ConvertImage";
    TypeContext? context = _ctx;
}

/**
* Crop an image to a specified area
*/
class CropImage implements IReturn<MediaTransformResponse>, IMediaTransform, IPost, IConvertible
{
    /**
    * The X-coordinate of the top-left corner of the crop area
    */
    // @ApiMember(Description="The X-coordinate of the top-left corner of the crop area")
    int? x;

    /**
    * The Y-coordinate of the top-left corner of the crop area
    */
    // @ApiMember(Description="The Y-coordinate of the top-left corner of the crop area")
    int? y;

    /**
    * The width of the crop area
    */
    // @ApiMember(Description="The width of the crop area")
    int? width;

    /**
    * The height of the crop area
    */
    // @ApiMember(Description="The height of the crop area")
    int? height;

    /**
    * The image file to be cropped
    */
    // @ApiMember(Description="The image file to be cropped")
    // @required()
    Uint8List? image;

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

    CropImage({this.x,this.y,this.width,this.height,this.image,this.refId,this.tag});
    CropImage.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        x = json['x'];
        y = json['y'];
        width = json['width'];
        height = json['height'];
        image = JsonConverters.fromJson(json['image'],'Uint8List',context!);
        refId = json['refId'];
        tag = json['tag'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'x': x,
        'y': y,
        'width': width,
        'height': height,
        'image': JsonConverters.toJson(image,'Uint8List',context!),
        'refId': refId,
        'tag': tag
    };

    createResponse() => MediaTransformResponse();
    getResponseTypeName() => "MediaTransformResponse";
    getTypeName() => "CropImage";
    TypeContext? context = _ctx;
}

/**
* Add a watermark to an image
*/
class WatermarkImage implements IReturn<MediaTransformResponse>, IMediaTransform, IPost, IConvertible
{
    /**
    * The image file to be watermarked
    */
    // @ApiMember(Description="The image file to be watermarked")
    // @required()
    Uint8List? image;

    /**
    * The position of the watermark on the image
    */
    // @ApiMember(Description="The position of the watermark on the image")
    WatermarkPosition? position;

    /**
    * Scale of the watermark relative
    */
    // @ApiMember(Description="Scale of the watermark relative")
    double? watermarkScale;

    /**
    * The opacity of the watermark (0.0 to 1.0)
    */
    // @ApiMember(Description="The opacity of the watermark (0.0 to 1.0)")
    double? opacity;

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

    WatermarkImage({this.image,this.position,this.watermarkScale,this.opacity,this.refId,this.tag});
    WatermarkImage.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        image = JsonConverters.fromJson(json['image'],'Uint8List',context!);
        position = JsonConverters.fromJson(json['position'],'WatermarkPosition',context!);
        watermarkScale = JsonConverters.toDouble(json['watermarkScale']);
        opacity = JsonConverters.toDouble(json['opacity']);
        refId = json['refId'];
        tag = json['tag'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'image': JsonConverters.toJson(image,'Uint8List',context!),
        'position': JsonConverters.toJson(position,'WatermarkPosition',context!),
        'watermarkScale': watermarkScale,
        'opacity': opacity,
        'refId': refId,
        'tag': tag
    };

    createResponse() => MediaTransformResponse();
    getResponseTypeName() => "MediaTransformResponse";
    getTypeName() => "WatermarkImage";
    TypeContext? context = _ctx;
}

/**
* Scale an image to a specified size
*/
class ScaleImage implements IReturn<MediaTransformResponse>, IMediaTransform, IPost, IConvertible
{
    /**
    * The image file to be scaled
    */
    // @ApiMember(Description="The image file to be scaled")
    // @required()
    Uint8List? image;

    /**
    * Desired width of the scaled image
    */
    // @ApiMember(Description="Desired width of the scaled image")
    int? width;

    /**
    * Desired height of the scaled image
    */
    // @ApiMember(Description="Desired height of the scaled image")
    int? height;

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

    ScaleImage({this.image,this.width,this.height,this.refId,this.tag});
    ScaleImage.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        image = JsonConverters.fromJson(json['image'],'Uint8List',context!);
        width = json['width'];
        height = json['height'];
        refId = json['refId'];
        tag = json['tag'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'image': JsonConverters.toJson(image,'Uint8List',context!),
        'width': width,
        'height': height,
        'refId': refId,
        'tag': tag
    };

    createResponse() => MediaTransformResponse();
    getResponseTypeName() => "MediaTransformResponse";
    getTypeName() => "ScaleImage";
    TypeContext? context = _ctx;
}

/**
* Crop an image to a specified area
*/
class QueueCropImage implements IReturn<QueueMediaTransformResponse>, IQueueMediaTransform, IPost, IConvertible
{
    /**
    * The X-coordinate of the top-left corner of the crop area
    */
    // @ApiMember(Description="The X-coordinate of the top-left corner of the crop area")
    int? x;

    /**
    * The Y-coordinate of the top-left corner of the crop area
    */
    // @ApiMember(Description="The Y-coordinate of the top-left corner of the crop area")
    int? y;

    /**
    * The width of the crop area
    */
    // @ApiMember(Description="The width of the crop area")
    int? width;

    /**
    * The height of the crop area
    */
    // @ApiMember(Description="The height of the crop area")
    int? height;

    /**
    * The image file to be cropped
    */
    // @ApiMember(Description="The image file to be cropped")
    // @required()
    Uint8List? image;

    /**
    * Optional client-provided identifier for the request
    */
    // @ApiMember(Description="Optional client-provided identifier for the request")
    String? refId;

    /**
    * Optional queue or topic to reply to
    */
    // @ApiMember(Description="Optional queue or topic to reply to")
    String? replyTo;

    /**
    * Tag to identify the request
    */
    // @ApiMember(Description="Tag to identify the request")
    String? tag;

    QueueCropImage({this.x,this.y,this.width,this.height,this.image,this.refId,this.replyTo,this.tag});
    QueueCropImage.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        x = json['x'];
        y = json['y'];
        width = json['width'];
        height = json['height'];
        image = JsonConverters.fromJson(json['image'],'Uint8List',context!);
        refId = json['refId'];
        replyTo = json['replyTo'];
        tag = json['tag'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'x': x,
        'y': y,
        'width': width,
        'height': height,
        'image': JsonConverters.toJson(image,'Uint8List',context!),
        'refId': refId,
        'replyTo': replyTo,
        'tag': tag
    };

    createResponse() => QueueMediaTransformResponse();
    getResponseTypeName() => "QueueMediaTransformResponse";
    getTypeName() => "QueueCropImage";
    TypeContext? context = _ctx;
}

/**
* Scale an image to a specified size
*/
class QueueScaleImage implements IReturn<MediaTransformResponse>, IQueueMediaTransform, IPost, IConvertible
{
    /**
    * The image file to be scaled
    */
    // @ApiMember(Description="The image file to be scaled")
    // @required()
    Uint8List? image;

    /**
    * Desired width of the scaled image
    */
    // @ApiMember(Description="Desired width of the scaled image")
    int? width;

    /**
    * Desired height of the scaled image
    */
    // @ApiMember(Description="Desired height of the scaled image")
    int? height;

    /**
    * Optional client-provided identifier for the request
    */
    // @ApiMember(Description="Optional client-provided identifier for the request")
    String? refId;

    /**
    * Optional queue or topic to reply to
    */
    // @ApiMember(Description="Optional queue or topic to reply to")
    String? replyTo;

    /**
    * Tag to identify the request
    */
    // @ApiMember(Description="Tag to identify the request")
    String? tag;

    QueueScaleImage({this.image,this.width,this.height,this.refId,this.replyTo,this.tag});
    QueueScaleImage.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        image = JsonConverters.fromJson(json['image'],'Uint8List',context!);
        width = json['width'];
        height = json['height'];
        refId = json['refId'];
        replyTo = json['replyTo'];
        tag = json['tag'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'image': JsonConverters.toJson(image,'Uint8List',context!),
        'width': width,
        'height': height,
        'refId': refId,
        'replyTo': replyTo,
        'tag': tag
    };

    createResponse() => MediaTransformResponse();
    getResponseTypeName() => "MediaTransformResponse";
    getTypeName() => "QueueScaleImage";
    TypeContext? context = _ctx;
}

/**
* Add a watermark to an image
*/
class QueueWatermarkImage implements IReturn<QueueMediaTransformResponse>, IQueueMediaTransform, IPost, IConvertible
{
    /**
    * The image file to be watermarked
    */
    // @ApiMember(Description="The image file to be watermarked")
    // @required()
    Uint8List? image;

    /**
    * The position of the watermark on the image
    */
    // @ApiMember(Description="The position of the watermark on the image")
    WatermarkPosition? position;

    /**
    * The opacity of the watermark (0.0 to 1.0)
    */
    // @ApiMember(Description="The opacity of the watermark (0.0 to 1.0)")
    double? opacity;

    /**
    * Scale of the watermark relative
    */
    // @ApiMember(Description="Scale of the watermark relative")
    double? watermarkScale;

    /**
    * Optional client-provided identifier for the request
    */
    // @ApiMember(Description="Optional client-provided identifier for the request")
    String? refId;

    /**
    * Optional queue or topic to reply to
    */
    // @ApiMember(Description="Optional queue or topic to reply to")
    String? replyTo;

    /**
    * Tag to identify the request
    */
    // @ApiMember(Description="Tag to identify the request")
    String? tag;

    QueueWatermarkImage({this.image,this.position,this.opacity,this.watermarkScale,this.refId,this.replyTo,this.tag});
    QueueWatermarkImage.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        image = JsonConverters.fromJson(json['image'],'Uint8List',context!);
        position = JsonConverters.fromJson(json['position'],'WatermarkPosition',context!);
        opacity = JsonConverters.toDouble(json['opacity']);
        watermarkScale = JsonConverters.toDouble(json['watermarkScale']);
        refId = json['refId'];
        replyTo = json['replyTo'];
        tag = json['tag'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'image': JsonConverters.toJson(image,'Uint8List',context!),
        'position': JsonConverters.toJson(position,'WatermarkPosition',context!),
        'opacity': opacity,
        'watermarkScale': watermarkScale,
        'refId': refId,
        'replyTo': replyTo,
        'tag': tag
    };

    createResponse() => QueueMediaTransformResponse();
    getResponseTypeName() => "QueueMediaTransformResponse";
    getTypeName() => "QueueWatermarkImage";
    TypeContext? context = _ctx;
}

/**
* Convert an image to a different format
*/
class QueueConvertImage implements IReturn<QueueMediaTransformResponse>, IQueueMediaTransform, IPost, IConvertible
{
    /**
    * The image file to be converted
    */
    // @ApiMember(Description="The image file to be converted")
    // @required()
    Uint8List? image;

    /**
    * The desired output format for the converted image
    */
    // @ApiMember(Description="The desired output format for the converted image")
    // @required()
    ImageOutputFormat? outputFormat;

    /**
    * Optional client-provided identifier for the request
    */
    // @ApiMember(Description="Optional client-provided identifier for the request")
    String? refId;

    /**
    * Optional queue or topic to reply to
    */
    // @ApiMember(Description="Optional queue or topic to reply to")
    String? replyTo;

    /**
    * Tag to identify the request
    */
    // @ApiMember(Description="Tag to identify the request")
    String? tag;

    QueueConvertImage({this.image,this.outputFormat,this.refId,this.replyTo,this.tag});
    QueueConvertImage.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        image = JsonConverters.fromJson(json['image'],'Uint8List',context!);
        outputFormat = JsonConverters.fromJson(json['outputFormat'],'ImageOutputFormat',context!);
        refId = json['refId'];
        replyTo = json['replyTo'];
        tag = json['tag'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'image': JsonConverters.toJson(image,'Uint8List',context!),
        'outputFormat': JsonConverters.toJson(outputFormat,'ImageOutputFormat',context!),
        'refId': refId,
        'replyTo': replyTo,
        'tag': tag
    };

    createResponse() => QueueMediaTransformResponse();
    getResponseTypeName() => "QueueMediaTransformResponse";
    getTypeName() => "QueueConvertImage";
    TypeContext? context = _ctx;
}

class QueryMediaTypes extends QueryDb<MediaType> implements IReturn<QueryResponse<MediaType>>, IConvertible, IGet
{
    QueryMediaTypes();
    QueryMediaTypes.fromJson(Map<String, dynamic> json) : super.fromJson(json);
    fromMap(Map<String, dynamic> json) {
        super.fromMap(json);
        return this;
    }

    Map<String, dynamic> toJson() => super.toJson();
    createResponse() => QueryResponse<MediaType>();
    getResponseTypeName() => "QueryResponse<MediaType>";
    getTypeName() => "QueryMediaTypes";
    TypeContext? context = _ctx;
}

/**
* Media Providers
*/
class QueryMediaProviders extends QueryDb<MediaProvider> implements IReturn<QueryResponse<MediaProvider>>, IConvertible, IGet
{
    int? id;
    String? name;

    QueryMediaProviders({this.id,this.name});
    QueryMediaProviders.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        super.fromMap(json);
        id = json['id'];
        name = json['name'];
        return this;
    }

    Map<String, dynamic> toJson() => super.toJson()..addAll({
        'id': id,
        'name': name
    });

    createResponse() => QueryResponse<MediaProvider>();
    getResponseTypeName() => "QueryResponse<MediaProvider>";
    getTypeName() => "QueryMediaProviders";
    TypeContext? context = _ctx;
}

/**
* Text to Speech Voice models
*/
class QueryTextToSpeechVoices extends QueryDb<TextToSpeechVoice> implements IReturn<QueryResponse<TextToSpeechVoice>>, IConvertible, IGet
{
    QueryTextToSpeechVoices();
    QueryTextToSpeechVoices.fromJson(Map<String, dynamic> json) : super.fromJson(json);
    fromMap(Map<String, dynamic> json) {
        super.fromMap(json);
        return this;
    }

    Map<String, dynamic> toJson() => super.toJson();
    createResponse() => QueryResponse<TextToSpeechVoice>();
    getResponseTypeName() => "QueryResponse<TextToSpeechVoice>";
    getTypeName() => "QueryTextToSpeechVoices";
    TypeContext? context = _ctx;
}

// @Route("/generate", "POST")
class CreateGeneration implements IReturn<CreateGenerationResponse>, IConvertible, IPost
{
    // @Validate(Validator="NotNull")
    GenerationArgs? request;

    String? provider;
    String? state;
    String? replyTo;
    String? refId;

    CreateGeneration({this.request,this.provider,this.state,this.replyTo,this.refId});
    CreateGeneration.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        request = JsonConverters.fromJson(json['request'],'GenerationArgs',context!);
        provider = json['provider'];
        state = json['state'];
        replyTo = json['replyTo'];
        refId = json['refId'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'request': JsonConverters.toJson(request,'GenerationArgs',context!),
        'provider': provider,
        'state': state,
        'replyTo': replyTo,
        'refId': refId
    };

    createResponse() => CreateGenerationResponse();
    getResponseTypeName() => "CreateGenerationResponse";
    getTypeName() => "CreateGeneration";
    TypeContext? context = _ctx;
}

/**
* Media Models
*/
class QueryMediaModels extends QueryDb<MediaModel> implements IReturn<QueryResponse<MediaModel>>, IConvertible, IGet
{
    String? id;

    QueryMediaModels({this.id});
    QueryMediaModels.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        super.fromMap(json);
        id = json['id'];
        return this;
    }

    Map<String, dynamic> toJson() => super.toJson()..addAll({
        'id': id
    });

    createResponse() => QueryResponse<MediaModel>();
    getResponseTypeName() => "QueryResponse<MediaModel>";
    getTypeName() => "QueryMediaModels";
    TypeContext? context = _ctx;
}

// @Route("/generation/{Id}", "GET")
// @Route("/generation/ref/{RefId}", "GET")
class GetGeneration implements IReturn<GetGenerationResponse>, IConvertible, IGet
{
    int? id;
    String? refId;

    GetGeneration({this.id,this.refId});
    GetGeneration.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        id = json['id'];
        refId = json['refId'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'id': id,
        'refId': refId
    };

    createResponse() => GetGenerationResponse();
    getResponseTypeName() => "GetGenerationResponse";
    getTypeName() => "GetGeneration";
    TypeContext? context = _ctx;
}

/**
* Update a Generation API Provider
*/
class UpdateMediaProvider implements IReturn<IdResponse>, IPatchDb<MediaProvider>, IConvertible, IPatch
{
    int? id;
    /**
    * The API Key to use for this Provider
    */
    String? apiKey;
    /**
    * Send the API Key in the Header instead of Authorization Bearer
    */
    String? apiKeyHeader;
    /**
    * Override Base URL for the Generation Provider
    */
    String? apiBaseUrl;
    /**
    * Url to check if the API is online
    */
    String? heartbeatUrl;
    /**
    * How many requests should be made concurrently
    */
    int? concurrency;
    /**
    * What priority to give this Provider to use for processing models
    */
    int? priority;
    /**
    * Whether the Provider is enabled
    */
    bool? enabled;
    /**
    * The models this API Provider should process
    */
    List<String>? models;

    UpdateMediaProvider({this.id,this.apiKey,this.apiKeyHeader,this.apiBaseUrl,this.heartbeatUrl,this.concurrency,this.priority,this.enabled,this.models});
    UpdateMediaProvider.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        id = json['id'];
        apiKey = json['apiKey'];
        apiKeyHeader = json['apiKeyHeader'];
        apiBaseUrl = json['apiBaseUrl'];
        heartbeatUrl = json['heartbeatUrl'];
        concurrency = json['concurrency'];
        priority = json['priority'];
        enabled = json['enabled'];
        models = JsonConverters.fromJson(json['models'],'List<String>',context!);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'id': id,
        'apiKey': apiKey,
        'apiKeyHeader': apiKeyHeader,
        'apiBaseUrl': apiBaseUrl,
        'heartbeatUrl': heartbeatUrl,
        'concurrency': concurrency,
        'priority': priority,
        'enabled': enabled,
        'models': JsonConverters.toJson(models,'List<String>',context!)
    };

    createResponse() => IdResponse();
    getResponseTypeName() => "IdResponse";
    getTypeName() => "UpdateMediaProvider";
    TypeContext? context = _ctx;
}

/**
* Add an API Provider to Generation API Providers
*/
class CreateMediaProvider implements IReturn<IdResponse>, ICreateDb<MediaProvider>, IConvertible, IPost
{
    /**
    * The name of the API Provider
    */
    String? name;
    /**
    * The API Key to use for this Provider
    */
    String? apiKey;
    /**
    * Send the API Key in the Header instead of Authorization Bearer
    */
    String? apiKeyHeader;
    /**
    * Base URL for the Generation Provider
    */
    String? apiBaseUrl;
    /**
    * Url to check if the API is online
    */
    String? heartbeatUrl;
    /**
    * How many requests should be made concurrently
    */
    int? concurrency;
    /**
    * What priority to give this Provider to use for processing models
    */
    int? priority;
    /**
    * Whether the Provider is enabled
    */
    bool? enabled;
    /**
    * The date the Provider was last online
    */
    DateTime? offlineDate;
    /**
    * Models this API Provider should process
    */
    List<String>? models;
    String? mediaTypeId;

    CreateMediaProvider({this.name,this.apiKey,this.apiKeyHeader,this.apiBaseUrl,this.heartbeatUrl,this.concurrency,this.priority,this.enabled,this.offlineDate,this.models,this.mediaTypeId});
    CreateMediaProvider.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        name = json['name'];
        apiKey = json['apiKey'];
        apiKeyHeader = json['apiKeyHeader'];
        apiBaseUrl = json['apiBaseUrl'];
        heartbeatUrl = json['heartbeatUrl'];
        concurrency = json['concurrency'];
        priority = json['priority'];
        enabled = json['enabled'];
        offlineDate = JsonConverters.fromJson(json['offlineDate'],'DateTime',context!);
        models = JsonConverters.fromJson(json['models'],'List<String>',context!);
        mediaTypeId = json['mediaTypeId'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'name': name,
        'apiKey': apiKey,
        'apiKeyHeader': apiKeyHeader,
        'apiBaseUrl': apiBaseUrl,
        'heartbeatUrl': heartbeatUrl,
        'concurrency': concurrency,
        'priority': priority,
        'enabled': enabled,
        'offlineDate': JsonConverters.toJson(offlineDate,'DateTime',context!),
        'models': JsonConverters.toJson(models,'List<String>',context!),
        'mediaTypeId': mediaTypeId
    };

    createResponse() => IdResponse();
    getResponseTypeName() => "IdResponse";
    getTypeName() => "CreateMediaProvider";
    TypeContext? context = _ctx;
}

class CreateMediaTransform implements IReturn<CreateTransformResponse>, IConvertible, IPost
{
    // @Validate(Validator="NotNull")
    MediaTransformArgs? request;

    String? provider;
    String? state;
    String? replyTo;
    String? refId;

    CreateMediaTransform({this.request,this.provider,this.state,this.replyTo,this.refId});
    CreateMediaTransform.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        request = JsonConverters.fromJson(json['request'],'MediaTransformArgs',context!);
        provider = json['provider'];
        state = json['state'];
        replyTo = json['replyTo'];
        refId = json['refId'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'request': JsonConverters.toJson(request,'MediaTransformArgs',context!),
        'provider': provider,
        'state': state,
        'replyTo': replyTo,
        'refId': refId
    };

    createResponse() => CreateTransformResponse();
    getResponseTypeName() => "CreateTransformResponse";
    getTypeName() => "CreateMediaTransform";
    TypeContext? context = _ctx;
}

// @Route("/hello/{Name}")
class Hello implements IReturn<HelloResponse>, IGet, IConvertible
{
    String? name;

    Hello({this.name});
    Hello.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        name = json['name'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'name': name
    };

    createResponse() => HelloResponse();
    getResponseTypeName() => "HelloResponse";
    getTypeName() => "Hello";
    TypeContext? context = _ctx;
}

class GetOllamaModels implements IReturn<GetOllamaModelsResponse>, IGet, IConvertible
{
    // @Validate(Validator="NotEmpty")
    String? apiBaseUrl;

    GetOllamaModels({this.apiBaseUrl});
    GetOllamaModels.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        apiBaseUrl = json['apiBaseUrl'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'apiBaseUrl': apiBaseUrl
    };

    createResponse() => GetOllamaModelsResponse();
    getResponseTypeName() => "GetOllamaModelsResponse";
    getTypeName() => "GetOllamaModels";
    TypeContext? context = _ctx;
}

/**
* Different Models available in AI Server
*/
class QueryAiModels extends QueryDb<AiModel> implements IReturn<QueryResponse<AiModel>>, IConvertible, IGet
{
    QueryAiModels();
    QueryAiModels.fromJson(Map<String, dynamic> json) : super.fromJson(json);
    fromMap(Map<String, dynamic> json) {
        super.fromMap(json);
        return this;
    }

    Map<String, dynamic> toJson() => super.toJson();
    createResponse() => QueryResponse<AiModel>();
    getResponseTypeName() => "QueryResponse<AiModel>";
    getTypeName() => "QueryAiModels";
    TypeContext? context = _ctx;
}

/**
* The Type and behavior of different API Providers
*/
class QueryAiTypes extends QueryDb<AiType> implements IReturn<QueryResponse<AiType>>, IConvertible, IGet
{
    QueryAiTypes();
    QueryAiTypes.fromJson(Map<String, dynamic> json) : super.fromJson(json);
    fromMap(Map<String, dynamic> json) {
        super.fromMap(json);
        return this;
    }

    Map<String, dynamic> toJson() => super.toJson();
    createResponse() => QueryResponse<AiType>();
    getResponseTypeName() => "QueryResponse<AiType>";
    getTypeName() => "QueryAiTypes";
    TypeContext? context = _ctx;
}

/**
* Active AI Worker Models available in AI Server
*/
class ActiveAiModels implements IReturn<StringsResponse>, IGet, IConvertible
{
    ActiveAiModels();
    ActiveAiModels.fromJson(Map<String, dynamic> json) : super();
    fromMap(Map<String, dynamic> json) {
        return this;
    }

    Map<String, dynamic> toJson() => {};
    createResponse() => StringsResponse();
    getResponseTypeName() => "StringsResponse";
    getTypeName() => "ActiveAiModels";
    TypeContext? context = _ctx;
}

/**
* AI Providers
*/
class QueryAiProviders extends QueryDb<AiProvider> implements IReturn<QueryResponse<AiProvider>>, IConvertible, IGet
{
    String? name;

    QueryAiProviders({this.name});
    QueryAiProviders.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        super.fromMap(json);
        name = json['name'];
        return this;
    }

    Map<String, dynamic> toJson() => super.toJson()..addAll({
        'name': name
    });

    createResponse() => QueryResponse<AiProvider>();
    getResponseTypeName() => "QueryResponse<AiProvider>";
    getTypeName() => "QueryAiProviders";
    TypeContext? context = _ctx;
}

class GetWorkerStats implements IReturn<GetWorkerStatsResponse>, IGet, IConvertible
{
    GetWorkerStats();
    GetWorkerStats.fromJson(Map<String, dynamic> json) : super();
    fromMap(Map<String, dynamic> json) {
        return this;
    }

    Map<String, dynamic> toJson() => {};
    createResponse() => GetWorkerStatsResponse();
    getResponseTypeName() => "GetWorkerStatsResponse";
    getTypeName() => "GetWorkerStats";
    TypeContext? context = _ctx;
}

class CancelWorker implements IReturn<EmptyResponse>, IConvertible, IPost
{
    // @Validate(Validator="NotEmpty")
    String? worker;

    CancelWorker({this.worker});
    CancelWorker.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        worker = json['worker'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'worker': worker
    };

    createResponse() => EmptyResponse();
    getResponseTypeName() => "EmptyResponse";
    getTypeName() => "CancelWorker";
    TypeContext? context = _ctx;
}

// @Route("/icons/models/{Model}", "GET")
class GetModelImage implements IReturn<Uint8List>, IGet, IConvertible
{
    String? model;

    GetModelImage({this.model});
    GetModelImage.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        model = json['model'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'model': model
    };

    createResponse() => Uint8List(0);
    getResponseTypeName() => "Uint8List";
    getTypeName() => "GetModelImage";
    TypeContext? context = _ctx;
}

/**
* Given a list of messages comprising a conversation, the model will return a response.
*/
// @Route("/v1/chat/completions", "POST")
class OpenAiChatCompletion extends OpenAiChat implements IReturn<OpenAiChatResponse>, IPost, IConvertible
{
    /**
    * Provide a unique identifier to track requests
    */
    String? refId;
    /**
    * Specify which AI Provider to use
    */
    String? provider;
    /**
    * Categorize like requests under a common group
    */
    String? tag;

    OpenAiChatCompletion({this.refId,this.provider,this.tag});
    OpenAiChatCompletion.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        super.fromMap(json);
        refId = json['refId'];
        provider = json['provider'];
        tag = json['tag'];
        return this;
    }

    Map<String, dynamic> toJson() => super.toJson()..addAll({
        'refId': refId,
        'provider': provider,
        'tag': tag
    });

    createResponse() => OpenAiChatResponse();
    getResponseTypeName() => "OpenAiChatResponse";
    getTypeName() => "OpenAiChatCompletion";
    TypeContext? context = _ctx;
}

class QueueOpenAiChatCompletion implements IReturn<QueueOpenAiChatResponse>, IConvertible, IPost
{
    String? refId;
    String? provider;
    String? replyTo;
    String? tag;
    OpenAiChat? request;

    QueueOpenAiChatCompletion({this.refId,this.provider,this.replyTo,this.tag,this.request});
    QueueOpenAiChatCompletion.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        refId = json['refId'];
        provider = json['provider'];
        replyTo = json['replyTo'];
        tag = json['tag'];
        request = JsonConverters.fromJson(json['request'],'OpenAiChat',context!);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'refId': refId,
        'provider': provider,
        'replyTo': replyTo,
        'tag': tag,
        'request': JsonConverters.toJson(request,'OpenAiChat',context!)
    };

    createResponse() => QueueOpenAiChatResponse();
    getResponseTypeName() => "QueueOpenAiChatResponse";
    getTypeName() => "QueueOpenAiChatCompletion";
    TypeContext? context = _ctx;
}

class WaitForOpenAiChat implements IReturn<GetOpenAiChatResponse>, IGet, IConvertible
{
    int? id;
    String? refId;

    WaitForOpenAiChat({this.id,this.refId});
    WaitForOpenAiChat.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        id = json['id'];
        refId = json['refId'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'id': id,
        'refId': refId
    };

    createResponse() => GetOpenAiChatResponse();
    getResponseTypeName() => "GetOpenAiChatResponse";
    getTypeName() => "WaitForOpenAiChat";
    TypeContext? context = _ctx;
}

class GetOpenAiChat implements IReturn<GetOpenAiChatResponse>, IGet, IConvertible
{
    int? id;
    String? refId;

    GetOpenAiChat({this.id,this.refId});
    GetOpenAiChat.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        id = json['id'];
        refId = json['refId'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'id': id,
        'refId': refId
    };

    createResponse() => GetOpenAiChatResponse();
    getResponseTypeName() => "GetOpenAiChatResponse";
    getTypeName() => "GetOpenAiChat";
    TypeContext? context = _ctx;
}

class GetOpenAiChatStatus implements IReturn<GetOpenAiChatStatusResponse>, IGet, IConvertible
{
    int? jobId;
    String? refId;

    GetOpenAiChatStatus({this.jobId,this.refId});
    GetOpenAiChatStatus.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        jobId = json['jobId'];
        refId = json['refId'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'jobId': jobId,
        'refId': refId
    };

    createResponse() => GetOpenAiChatStatusResponse();
    getResponseTypeName() => "GetOpenAiChatStatusResponse";
    getTypeName() => "GetOpenAiChatStatus";
    TypeContext? context = _ctx;
}

class GetActiveProviders implements IReturn<GetActiveProvidersResponse>, IGet, IConvertible
{
    GetActiveProviders();
    GetActiveProviders.fromJson(Map<String, dynamic> json) : super();
    fromMap(Map<String, dynamic> json) {
        return this;
    }

    Map<String, dynamic> toJson() => {};
    createResponse() => GetActiveProvidersResponse();
    getResponseTypeName() => "GetActiveProvidersResponse";
    getTypeName() => "GetActiveProviders";
    TypeContext? context = _ctx;
}

class ChatAiProvider implements IReturn<OpenAiChatResponse>, IPost, IConvertible
{
    String? provider;
    String? model;
    OpenAiChat? request;
    String? prompt;

    ChatAiProvider({this.provider,this.model,this.request,this.prompt});
    ChatAiProvider.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        provider = json['provider'];
        model = json['model'];
        request = JsonConverters.fromJson(json['request'],'OpenAiChat',context!);
        prompt = json['prompt'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'provider': provider,
        'model': model,
        'request': JsonConverters.toJson(request,'OpenAiChat',context!),
        'prompt': prompt
    };

    createResponse() => OpenAiChatResponse();
    getResponseTypeName() => "OpenAiChatResponse";
    getTypeName() => "ChatAiProvider";
    TypeContext? context = _ctx;
}

class CreateApiKey implements IReturn<CreateApiKeyResponse>, IPost, IConvertible
{
    String? key;
    String? name;
    String? userId;
    String? userName;
    List<String>? scopes;
    String? notes;
    int? refId;
    String? refIdStr;
    Map<String,String?>? meta;

    CreateApiKey({this.key,this.name,this.userId,this.userName,this.scopes,this.notes,this.refId,this.refIdStr,this.meta});
    CreateApiKey.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        key = json['key'];
        name = json['name'];
        userId = json['userId'];
        userName = json['userName'];
        scopes = JsonConverters.fromJson(json['scopes'],'List<String>',context!);
        notes = json['notes'];
        refId = json['refId'];
        refIdStr = json['refIdStr'];
        meta = JsonConverters.toStringMap(json['meta']);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'key': key,
        'name': name,
        'userId': userId,
        'userName': userName,
        'scopes': JsonConverters.toJson(scopes,'List<String>',context!),
        'notes': notes,
        'refId': refId,
        'refIdStr': refIdStr,
        'meta': meta
    };

    createResponse() => CreateApiKeyResponse();
    getResponseTypeName() => "CreateApiKeyResponse";
    getTypeName() => "CreateApiKey";
    TypeContext? context = _ctx;
}

/**
* Add an AI Provider to process AI Requests
*/
class CreateAiProvider implements IReturn<IdResponse>, ICreateDb<AiProvider>, IConvertible, IPost
{
    /**
    * The Type of this API Provider
    */
    // @Validate(Validator="GreaterThan(0)")
    String? aiTypeId;

    /**
    * The Base URL for the API Provider
    */
    String? apiBaseUrl;
    /**
    * The unique name for this API Provider
    */
    // @Validate(Validator="NotEmpty")
    String? name;

    /**
    * The API Key to use for this Provider
    */
    String? apiKeyVar;
    /**
    * The API Key to use for this Provider
    */
    String? apiKey;
    /**
    * Send the API Key in the Header instead of Authorization Bearer
    */
    String? apiKeyHeader;
    /**
    * The URL to check if the API Provider is still online
    */
    String? heartbeatUrl;
    /**
    * Override API Paths for different AI Requests
    */
    Map<TaskType,String?>? taskPaths;
    /**
    * How many requests should be made concurrently
    */
    int? concurrency;
    /**
    * What priority to give this Provider to use for processing models
    */
    int? priority;
    /**
    * Whether the Provider is enabled
    */
    bool? enabled;
    /**
    * The models this API Provider should process
    */
    List<AiProviderModel>? models;
    /**
    * The selected models this API Provider should process
    */
    List<String>? selectedModels;

    CreateAiProvider({this.aiTypeId,this.apiBaseUrl,this.name,this.apiKeyVar,this.apiKey,this.apiKeyHeader,this.heartbeatUrl,this.taskPaths,this.concurrency,this.priority,this.enabled,this.models,this.selectedModels});
    CreateAiProvider.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        aiTypeId = json['aiTypeId'];
        apiBaseUrl = json['apiBaseUrl'];
        name = json['name'];
        apiKeyVar = json['apiKeyVar'];
        apiKey = json['apiKey'];
        apiKeyHeader = json['apiKeyHeader'];
        heartbeatUrl = json['heartbeatUrl'];
        taskPaths = JsonConverters.fromJson(json['taskPaths'],'Map<TaskType,String?>',context!);
        concurrency = json['concurrency'];
        priority = json['priority'];
        enabled = json['enabled'];
        models = JsonConverters.fromJson(json['models'],'List<AiProviderModel>',context!);
        selectedModels = JsonConverters.fromJson(json['selectedModels'],'List<String>',context!);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'aiTypeId': aiTypeId,
        'apiBaseUrl': apiBaseUrl,
        'name': name,
        'apiKeyVar': apiKeyVar,
        'apiKey': apiKey,
        'apiKeyHeader': apiKeyHeader,
        'heartbeatUrl': heartbeatUrl,
        'taskPaths': JsonConverters.toJson(taskPaths,'Map<TaskType,String?>',context!),
        'concurrency': concurrency,
        'priority': priority,
        'enabled': enabled,
        'models': JsonConverters.toJson(models,'List<AiProviderModel>',context!),
        'selectedModels': JsonConverters.toJson(selectedModels,'List<String>',context!)
    };

    createResponse() => IdResponse();
    getResponseTypeName() => "IdResponse";
    getTypeName() => "CreateAiProvider";
    TypeContext? context = _ctx;
}

class UpdateAiProvider implements IReturn<IdResponse>, IPatchDb<AiProvider>, IConvertible, IPatch
{
    int? id;
    /**
    * The Type of this API Provider
    */
    String? aiTypeId;
    /**
    * The Base URL for the API Provider
    */
    String? apiBaseUrl;
    /**
    * The unique name for this API Provider
    */
    String? name;
    /**
    * The API Key to use for this Provider
    */
    String? apiKeyVar;
    /**
    * The API Key to use for this Provider
    */
    String? apiKey;
    /**
    * Send the API Key in the Header instead of Authorization Bearer
    */
    String? apiKeyHeader;
    /**
    * The URL to check if the API Provider is still online
    */
    String? heartbeatUrl;
    /**
    * Override API Paths for different AI Requests
    */
    Map<TaskType,String?>? taskPaths;
    /**
    * How many requests should be made concurrently
    */
    int? concurrency;
    /**
    * What priority to give this Provider to use for processing models
    */
    int? priority;
    /**
    * Whether the Provider is enabled
    */
    bool? enabled;
    /**
    * The models this API Provider should process
    */
    List<AiProviderModel>? models;
    /**
    * The selected models this API Provider should process
    */
    List<String>? selectedModels;

    UpdateAiProvider({this.id,this.aiTypeId,this.apiBaseUrl,this.name,this.apiKeyVar,this.apiKey,this.apiKeyHeader,this.heartbeatUrl,this.taskPaths,this.concurrency,this.priority,this.enabled,this.models,this.selectedModels});
    UpdateAiProvider.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        id = json['id'];
        aiTypeId = json['aiTypeId'];
        apiBaseUrl = json['apiBaseUrl'];
        name = json['name'];
        apiKeyVar = json['apiKeyVar'];
        apiKey = json['apiKey'];
        apiKeyHeader = json['apiKeyHeader'];
        heartbeatUrl = json['heartbeatUrl'];
        taskPaths = JsonConverters.fromJson(json['taskPaths'],'Map<TaskType,String?>',context!);
        concurrency = json['concurrency'];
        priority = json['priority'];
        enabled = json['enabled'];
        models = JsonConverters.fromJson(json['models'],'List<AiProviderModel>',context!);
        selectedModels = JsonConverters.fromJson(json['selectedModels'],'List<String>',context!);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'id': id,
        'aiTypeId': aiTypeId,
        'apiBaseUrl': apiBaseUrl,
        'name': name,
        'apiKeyVar': apiKeyVar,
        'apiKey': apiKey,
        'apiKeyHeader': apiKeyHeader,
        'heartbeatUrl': heartbeatUrl,
        'taskPaths': JsonConverters.toJson(taskPaths,'Map<TaskType,String?>',context!),
        'concurrency': concurrency,
        'priority': priority,
        'enabled': enabled,
        'models': JsonConverters.toJson(models,'List<AiProviderModel>',context!),
        'selectedModels': JsonConverters.toJson(selectedModels,'List<String>',context!)
    };

    createResponse() => IdResponse();
    getResponseTypeName() => "IdResponse";
    getTypeName() => "UpdateAiProvider";
    TypeContext? context = _ctx;
}

/**
* Delete API Provider
*/
class DeleteAiProvider implements IReturnVoid, IDeleteDb<AiProvider>, IConvertible, IDelete
{
    int? id;

    DeleteAiProvider({this.id});
    DeleteAiProvider.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        id = json['id'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'id': id
    };

    createResponse() {}
    getTypeName() => "DeleteAiProvider";
    TypeContext? context = _ctx;
}

class QueryPrompts extends QueryData<Prompt> implements IReturn<QueryResponse<Prompt>>, IConvertible, IGet
{
    QueryPrompts();
    QueryPrompts.fromJson(Map<String, dynamic> json) : super.fromJson(json);
    fromMap(Map<String, dynamic> json) {
        super.fromMap(json);
        return this;
    }

    Map<String, dynamic> toJson() => super.toJson();
    createResponse() => QueryResponse<Prompt>();
    getResponseTypeName() => "QueryResponse<Prompt>";
    getTypeName() => "QueryPrompts";
    TypeContext? context = _ctx;
}

class Reload implements IReturn<EmptyResponse>, IPost, IConvertible
{
    Reload();
    Reload.fromJson(Map<String, dynamic> json) : super();
    fromMap(Map<String, dynamic> json) {
        return this;
    }

    Map<String, dynamic> toJson() => {};
    createResponse() => EmptyResponse();
    getResponseTypeName() => "EmptyResponse";
    getTypeName() => "Reload";
    TypeContext? context = _ctx;
}

class ChangeAiProviderStatus implements IReturn<StringResponse>, IPost, IConvertible
{
    String? provider;
    bool? online;

    ChangeAiProviderStatus({this.provider,this.online});
    ChangeAiProviderStatus.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        provider = json['provider'];
        online = json['online'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'provider': provider,
        'online': online
    };

    createResponse() => StringResponse();
    getResponseTypeName() => "StringResponse";
    getTypeName() => "ChangeAiProviderStatus";
    TypeContext? context = _ctx;
}

/**
* Convert text to speech
*/
// @Api(Description="Convert text to speech")
class QueueTextToSpeech implements IReturn<QueueGenerationResponse>, IQueueGeneration, IConvertible, IPost
{
    /**
    * The text to be converted to speech
    */
    // @ApiMember(Description="The text to be converted to speech")
    // @required()
    String? text;

    /**
    * Optional seed for reproducible results in speech generation
    */
    // @ApiMember(Description="Optional seed for reproducible results in speech generation")
    int? seed;

    /**
    * The AI model to use for speech generation
    */
    // @ApiMember(Description="The AI model to use for speech generation")
    String? model;

    /**
    * Optional client-provided identifier for the request
    */
    // @ApiMember(Description="Optional client-provided identifier for the request")
    String? refId;

    /**
    * Optional queue or topic to reply to
    */
    // @ApiMember(Description="Optional queue or topic to reply to")
    String? replyTo;

    /**
    * Tag to identify the request
    */
    // @ApiMember(Description="Tag to identify the request")
    String? tag;

    /**
    * Optional state to associate with the request
    */
    // @ApiMember(Description="Optional state to associate with the request")
    String? state;

    QueueTextToSpeech({this.text,this.seed,this.model,this.refId,this.replyTo,this.tag,this.state});
    QueueTextToSpeech.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        text = json['text'];
        seed = json['seed'];
        model = json['model'];
        refId = json['refId'];
        replyTo = json['replyTo'];
        tag = json['tag'];
        state = json['state'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'text': text,
        'seed': seed,
        'model': model,
        'refId': refId,
        'replyTo': replyTo,
        'tag': tag,
        'state': state
    };

    createResponse() => QueueGenerationResponse();
    getResponseTypeName() => "QueueGenerationResponse";
    getTypeName() => "QueueTextToSpeech";
    TypeContext? context = _ctx;
}

/**
* Convert speech to text
*/
// @Api(Description="Convert speech to text")
class QueueSpeechToText implements IReturn<QueueGenerationResponse>, IQueueGeneration, IConvertible, IPost
{
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
    * Optional queue or topic to reply to
    */
    // @ApiMember(Description="Optional queue or topic to reply to")
    String? replyTo;

    /**
    * Tag to identify the request
    */
    // @ApiMember(Description="Tag to identify the request")
    String? tag;

    /**
    * Optional state to associate with the request
    */
    // @ApiMember(Description="Optional state to associate with the request")
    String? state;

    QueueSpeechToText({this.audio,this.refId,this.replyTo,this.tag,this.state});
    QueueSpeechToText.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        audio = JsonConverters.fromJson(json['audio'],'Uint8List',context!);
        refId = json['refId'];
        replyTo = json['replyTo'];
        tag = json['tag'];
        state = json['state'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'audio': JsonConverters.toJson(audio,'Uint8List',context!),
        'refId': refId,
        'replyTo': replyTo,
        'tag': tag,
        'state': state
    };

    createResponse() => QueueGenerationResponse();
    getResponseTypeName() => "QueueGenerationResponse";
    getTypeName() => "QueueSpeechToText";
    TypeContext? context = _ctx;
}

/**
* Convert text to speech
*/
// @Api(Description="Convert text to speech")
class TextToSpeech implements IReturn<GenerationResponse>, IGeneration, IConvertible, IPost
{
    /**
    * The text to be converted to speech
    */
    // @ApiMember(Description="The text to be converted to speech")
    // @Validate(Validator="NotEmpty")
    String? input;

    /**
    * Optional specific model and voice to use for speech generation
    */
    // @ApiMember(Description="Optional specific model and voice to use for speech generation")
    String? model;

    /**
    * Optional seed for reproducible results in speech generation
    */
    // @ApiMember(Description="Optional seed for reproducible results in speech generation")
    int? seed;

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

    TextToSpeech({this.input,this.model,this.seed,this.refId,this.tag});
    TextToSpeech.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        input = json['input'];
        model = json['model'];
        seed = json['seed'];
        refId = json['refId'];
        tag = json['tag'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'input': input,
        'model': model,
        'seed': seed,
        'refId': refId,
        'tag': tag
    };

    createResponse() => GenerationResponse();
    getResponseTypeName() => "GenerationResponse";
    getTypeName() => "TextToSpeech";
    TypeContext? context = _ctx;
}

/**
* Convert speech to text
*/
// @Api(Description="Convert speech to text")
class SpeechToText implements IReturn<GenerationResponse>, IGeneration, IConvertible, IPost
{
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

    SpeechToText({this.audio,this.refId,this.tag});
    SpeechToText.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        audio = JsonConverters.fromJson(json['audio'],'Uint8List',context!);
        refId = json['refId'];
        tag = json['tag'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'audio': JsonConverters.toJson(audio,'Uint8List',context!),
        'refId': refId,
        'tag': tag
    };

    createResponse() => GenerationResponse();
    getResponseTypeName() => "GenerationResponse";
    getTypeName() => "SpeechToText";
    TypeContext? context = _ctx;
}

/**
* Scale video
*/
// @Api(Description="Scale video")
class ScaleVideo implements IReturn<MediaTransformResponse>, IMediaTransform, IConvertible, IPost
{
    /**
    * The video file to be scaled
    */
    // @ApiMember(Description="The video file to be scaled")
    // @required()
    Uint8List? video;

    /**
    * Desired width of the scaled video
    */
    // @ApiMember(Description="Desired width of the scaled video")
    int? width;

    /**
    * Desired height of the scaled video
    */
    // @ApiMember(Description="Desired height of the scaled video")
    int? height;

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

    ScaleVideo({this.video,this.width,this.height,this.refId,this.tag});
    ScaleVideo.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        video = JsonConverters.fromJson(json['video'],'Uint8List',context!);
        width = json['width'];
        height = json['height'];
        refId = json['refId'];
        tag = json['tag'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'video': JsonConverters.toJson(video,'Uint8List',context!),
        'width': width,
        'height': height,
        'refId': refId,
        'tag': tag
    };

    createResponse() => MediaTransformResponse();
    getResponseTypeName() => "MediaTransformResponse";
    getTypeName() => "ScaleVideo";
    TypeContext? context = _ctx;
}

/**
* Watermark video
*/
// @Api(Description="Watermark video")
class WatermarkVideo implements IReturn<MediaTransformResponse>, IMediaTransform, IConvertible, IPost
{
    /**
    * The video file to be watermarked
    */
    // @ApiMember(Description="The video file to be watermarked")
    // @required()
    Uint8List? video;

    /**
    * The image file to use as a watermark
    */
    // @ApiMember(Description="The image file to use as a watermark")
    // @required()
    Uint8List? watermark;

    /**
    * Position of the watermark
    */
    // @ApiMember(Description="Position of the watermark")
    WatermarkPosition? position;

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

    WatermarkVideo({this.video,this.watermark,this.position,this.refId,this.tag});
    WatermarkVideo.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        video = JsonConverters.fromJson(json['video'],'Uint8List',context!);
        watermark = JsonConverters.fromJson(json['watermark'],'Uint8List',context!);
        position = JsonConverters.fromJson(json['position'],'WatermarkPosition',context!);
        refId = json['refId'];
        tag = json['tag'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'video': JsonConverters.toJson(video,'Uint8List',context!),
        'watermark': JsonConverters.toJson(watermark,'Uint8List',context!),
        'position': JsonConverters.toJson(position,'WatermarkPosition',context!),
        'refId': refId,
        'tag': tag
    };

    createResponse() => MediaTransformResponse();
    getResponseTypeName() => "MediaTransformResponse";
    getTypeName() => "WatermarkVideo";
    TypeContext? context = _ctx;
}

/**
* Convert a video to a different format
*/
class ConvertVideo implements IReturn<MediaTransformResponse>, IMediaTransform, IConvertible, IPost
{
    /**
    * The desired output format for the converted video
    */
    // @ApiMember(Description="The desired output format for the converted video")
    // @required()
    ConvertVideoOutputFormat? outputFormat;

    // @required()
    Uint8List? video;

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

    ConvertVideo({this.outputFormat,this.video,this.refId,this.tag});
    ConvertVideo.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        outputFormat = JsonConverters.fromJson(json['outputFormat'],'ConvertVideoOutputFormat',context!);
        video = JsonConverters.fromJson(json['video'],'Uint8List',context!);
        refId = json['refId'];
        tag = json['tag'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'outputFormat': JsonConverters.toJson(outputFormat,'ConvertVideoOutputFormat',context!),
        'video': JsonConverters.toJson(video,'Uint8List',context!),
        'refId': refId,
        'tag': tag
    };

    createResponse() => MediaTransformResponse();
    getResponseTypeName() => "MediaTransformResponse";
    getTypeName() => "ConvertVideo";
    TypeContext? context = _ctx;
}

/**
* Crop a video to a specified area
*/
class CropVideo implements IReturn<MediaTransformResponse>, IMediaTransform, IConvertible, IPost
{
    /**
    * The X-coordinate of the top-left corner of the crop area
    */
    // @ApiMember(Description="The X-coordinate of the top-left corner of the crop area")
    // @Validate(Validator="GreaterThan(0)")
    // @required()
    int? x;

    /**
    * The Y-coordinate of the top-left corner of the crop area
    */
    // @ApiMember(Description="The Y-coordinate of the top-left corner of the crop area")
    // @Validate(Validator="GreaterThan(0)")
    // @required()
    int? y;

    /**
    * The width of the crop area
    */
    // @ApiMember(Description="The width of the crop area")
    // @Validate(Validator="GreaterThan(0)")
    // @required()
    int? width;

    /**
    * The height of the crop area
    */
    // @ApiMember(Description="The height of the crop area")
    // @Validate(Validator="GreaterThan(0)")
    // @required()
    int? height;

    // @required()
    Uint8List? video;

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

    CropVideo({this.x,this.y,this.width,this.height,this.video,this.refId,this.tag});
    CropVideo.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        x = json['x'];
        y = json['y'];
        width = json['width'];
        height = json['height'];
        video = JsonConverters.fromJson(json['video'],'Uint8List',context!);
        refId = json['refId'];
        tag = json['tag'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'x': x,
        'y': y,
        'width': width,
        'height': height,
        'video': JsonConverters.toJson(video,'Uint8List',context!),
        'refId': refId,
        'tag': tag
    };

    createResponse() => MediaTransformResponse();
    getResponseTypeName() => "MediaTransformResponse";
    getTypeName() => "CropVideo";
    TypeContext? context = _ctx;
}

/**
* Trim a video to a specified duration via start and end times
*/
class TrimVideo implements IReturn<MediaTransformResponse>, IMediaTransform, IConvertible, IPost
{
    /**
    * The start time of the trimmed video (format: MM:SS)
    */
    // @ApiMember(Description="The start time of the trimmed video (format: MM:SS)")
    // @required()
    String? startTime;

    /**
    * The end time of the trimmed video (format: MM:SS)
    */
    // @ApiMember(Description="The end time of the trimmed video (format: MM:SS)")
    String? endTime;

    // @required()
    Uint8List? video;

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

    TrimVideo({this.startTime,this.endTime,this.video,this.refId,this.tag});
    TrimVideo.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        startTime = json['startTime'];
        endTime = json['endTime'];
        video = JsonConverters.fromJson(json['video'],'Uint8List',context!);
        refId = json['refId'];
        tag = json['tag'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'startTime': startTime,
        'endTime': endTime,
        'video': JsonConverters.toJson(video,'Uint8List',context!),
        'refId': refId,
        'tag': tag
    };

    createResponse() => MediaTransformResponse();
    getResponseTypeName() => "MediaTransformResponse";
    getTypeName() => "TrimVideo";
    TypeContext? context = _ctx;
}

/**
* Scale video
*/
// @Api(Description="Scale video")
class QueueScaleVideo implements IReturn<QueueMediaTransformResponse>, IQueueMediaTransform, IConvertible, IPost
{
    /**
    * The video file to be scaled
    */
    // @ApiMember(Description="The video file to be scaled")
    // @required()
    Uint8List? video;

    /**
    * Desired width of the scaled video
    */
    // @ApiMember(Description="Desired width of the scaled video")
    int? width;

    /**
    * Desired height of the scaled video
    */
    // @ApiMember(Description="Desired height of the scaled video")
    int? height;

    /**
    * Optional client-provided identifier for the request
    */
    // @ApiMember(Description="Optional client-provided identifier for the request")
    String? refId;

    /**
    * Optional queue or topic to reply to
    */
    // @ApiMember(Description="Optional queue or topic to reply to")
    String? replyTo;

    /**
    * Tag to identify the request
    */
    // @ApiMember(Description="Tag to identify the request")
    String? tag;

    QueueScaleVideo({this.video,this.width,this.height,this.refId,this.replyTo,this.tag});
    QueueScaleVideo.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        video = JsonConverters.fromJson(json['video'],'Uint8List',context!);
        width = json['width'];
        height = json['height'];
        refId = json['refId'];
        replyTo = json['replyTo'];
        tag = json['tag'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'video': JsonConverters.toJson(video,'Uint8List',context!),
        'width': width,
        'height': height,
        'refId': refId,
        'replyTo': replyTo,
        'tag': tag
    };

    createResponse() => QueueMediaTransformResponse();
    getResponseTypeName() => "QueueMediaTransformResponse";
    getTypeName() => "QueueScaleVideo";
    TypeContext? context = _ctx;
}

/**
* Watermark video
*/
// @Api(Description="Watermark video")
class QueueWatermarkVideo implements IReturn<QueueMediaTransformResponse>, IQueueMediaTransform, IConvertible, IPost
{
    /**
    * The video file to be watermarked
    */
    // @ApiMember(Description="The video file to be watermarked")
    // @required()
    Uint8List? video;

    /**
    * The image file to use as a watermark
    */
    // @ApiMember(Description="The image file to use as a watermark")
    // @required()
    Uint8List? watermark;

    /**
    * Position of the watermark
    */
    // @ApiMember(Description="Position of the watermark")
    WatermarkPosition? position;

    /**
    * Optional client-provided identifier for the request
    */
    // @ApiMember(Description="Optional client-provided identifier for the request")
    String? refId;

    /**
    * Optional queue or topic to reply to
    */
    // @ApiMember(Description="Optional queue or topic to reply to")
    String? replyTo;

    /**
    * Tag to identify the request
    */
    // @ApiMember(Description="Tag to identify the request")
    String? tag;

    QueueWatermarkVideo({this.video,this.watermark,this.position,this.refId,this.replyTo,this.tag});
    QueueWatermarkVideo.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        video = JsonConverters.fromJson(json['video'],'Uint8List',context!);
        watermark = JsonConverters.fromJson(json['watermark'],'Uint8List',context!);
        position = JsonConverters.fromJson(json['position'],'WatermarkPosition',context!);
        refId = json['refId'];
        replyTo = json['replyTo'];
        tag = json['tag'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'video': JsonConverters.toJson(video,'Uint8List',context!),
        'watermark': JsonConverters.toJson(watermark,'Uint8List',context!),
        'position': JsonConverters.toJson(position,'WatermarkPosition',context!),
        'refId': refId,
        'replyTo': replyTo,
        'tag': tag
    };

    createResponse() => QueueMediaTransformResponse();
    getResponseTypeName() => "QueueMediaTransformResponse";
    getTypeName() => "QueueWatermarkVideo";
    TypeContext? context = _ctx;
}

/**
* Convert a video to a different format
*/
class QueueConvertVideo implements IReturn<QueueMediaTransformResponse>, IQueueMediaTransform, IConvertible, IPost
{
    /**
    * The desired output format for the converted video
    */
    // @ApiMember(Description="The desired output format for the converted video")
    // @required()
    ConvertVideoOutputFormat? outputFormat;

    // @required()
    Uint8List? video;

    /**
    * Optional client-provided identifier for the request
    */
    // @ApiMember(Description="Optional client-provided identifier for the request")
    String? refId;

    /**
    * Optional queue or topic to reply to
    */
    // @ApiMember(Description="Optional queue or topic to reply to")
    String? replyTo;

    /**
    * Tag to identify the request
    */
    // @ApiMember(Description="Tag to identify the request")
    String? tag;

    QueueConvertVideo({this.outputFormat,this.video,this.refId,this.replyTo,this.tag});
    QueueConvertVideo.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        outputFormat = JsonConverters.fromJson(json['outputFormat'],'ConvertVideoOutputFormat',context!);
        video = JsonConverters.fromJson(json['video'],'Uint8List',context!);
        refId = json['refId'];
        replyTo = json['replyTo'];
        tag = json['tag'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'outputFormat': JsonConverters.toJson(outputFormat,'ConvertVideoOutputFormat',context!),
        'video': JsonConverters.toJson(video,'Uint8List',context!),
        'refId': refId,
        'replyTo': replyTo,
        'tag': tag
    };

    createResponse() => QueueMediaTransformResponse();
    getResponseTypeName() => "QueueMediaTransformResponse";
    getTypeName() => "QueueConvertVideo";
    TypeContext? context = _ctx;
}

/**
* Crop a video to a specified area
*/
class QueueCropVideo implements IReturn<QueueMediaTransformResponse>, IQueueMediaTransform, IConvertible, IPost
{
    /**
    * The X-coordinate of the top-left corner of the crop area
    */
    // @ApiMember(Description="The X-coordinate of the top-left corner of the crop area")
    // @Validate(Validator="GreaterThan(0)")
    // @required()
    int? x;

    /**
    * The Y-coordinate of the top-left corner of the crop area
    */
    // @ApiMember(Description="The Y-coordinate of the top-left corner of the crop area")
    // @Validate(Validator="GreaterThan(0)")
    // @required()
    int? y;

    /**
    * The width of the crop area
    */
    // @ApiMember(Description="The width of the crop area")
    // @Validate(Validator="GreaterThan(0)")
    // @required()
    int? width;

    /**
    * The height of the crop area
    */
    // @ApiMember(Description="The height of the crop area")
    // @Validate(Validator="GreaterThan(0)")
    // @required()
    int? height;

    // @required()
    Uint8List? video;

    /**
    * Optional client-provided identifier for the request
    */
    // @ApiMember(Description="Optional client-provided identifier for the request")
    String? refId;

    /**
    * Optional queue or topic to reply to
    */
    // @ApiMember(Description="Optional queue or topic to reply to")
    String? replyTo;

    /**
    * Tag to identify the request
    */
    // @ApiMember(Description="Tag to identify the request")
    String? tag;

    QueueCropVideo({this.x,this.y,this.width,this.height,this.video,this.refId,this.replyTo,this.tag});
    QueueCropVideo.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        x = json['x'];
        y = json['y'];
        width = json['width'];
        height = json['height'];
        video = JsonConverters.fromJson(json['video'],'Uint8List',context!);
        refId = json['refId'];
        replyTo = json['replyTo'];
        tag = json['tag'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'x': x,
        'y': y,
        'width': width,
        'height': height,
        'video': JsonConverters.toJson(video,'Uint8List',context!),
        'refId': refId,
        'replyTo': replyTo,
        'tag': tag
    };

    createResponse() => QueueMediaTransformResponse();
    getResponseTypeName() => "QueueMediaTransformResponse";
    getTypeName() => "QueueCropVideo";
    TypeContext? context = _ctx;
}

/**
* Trim a video to a specified duration via start and end times
*/
class QueueTrimVideo implements IReturn<QueueMediaTransformResponse>, IQueueMediaTransform, IConvertible, IPost
{
    /**
    * The start time of the trimmed video (format: HH:MM:SS)
    */
    // @ApiMember(Description="The start time of the trimmed video (format: HH:MM:SS)")
    // @required()
    String? startTime;

    /**
    * The end time of the trimmed video (format: HH:MM:SS)
    */
    // @ApiMember(Description="The end time of the trimmed video (format: HH:MM:SS)")
    String? endTime;

    // @required()
    Uint8List? video;

    /**
    * Optional client-provided identifier for the request
    */
    // @ApiMember(Description="Optional client-provided identifier for the request")
    String? refId;

    /**
    * Optional queue or topic to reply to
    */
    // @ApiMember(Description="Optional queue or topic to reply to")
    String? replyTo;

    /**
    * Tag to identify the request
    */
    // @ApiMember(Description="Tag to identify the request")
    String? tag;

    QueueTrimVideo({this.startTime,this.endTime,this.video,this.refId,this.replyTo,this.tag});
    QueueTrimVideo.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        startTime = json['startTime'];
        endTime = json['endTime'];
        video = JsonConverters.fromJson(json['video'],'Uint8List',context!);
        refId = json['refId'];
        replyTo = json['replyTo'];
        tag = json['tag'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'startTime': startTime,
        'endTime': endTime,
        'video': JsonConverters.toJson(video,'Uint8List',context!),
        'refId': refId,
        'replyTo': replyTo,
        'tag': tag
    };

    createResponse() => QueueMediaTransformResponse();
    getResponseTypeName() => "QueueMediaTransformResponse";
    getTypeName() => "QueueTrimVideo";
    TypeContext? context = _ctx;
}

// @Route("/artifacts/{**Path}")
class GetArtifact implements IReturn<Uint8List>, IGet, IConvertible
{
    // @Validate(Validator="NotEmpty")
    String? path;

    bool? download;

    GetArtifact({this.path,this.download});
    GetArtifact.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        path = json['path'];
        download = json['download'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'path': path,
        'download': download
    };

    createResponse() => Uint8List(0);
    getResponseTypeName() => "Uint8List";
    getTypeName() => "GetArtifact";
    TypeContext? context = _ctx;
}

// @Route("/files/{**Path}")
class DeleteFile implements IReturn<EmptyResponse>, IDelete, IConvertible
{
    // @Validate(Validator="NotEmpty")
    String? path;

    DeleteFile({this.path});
    DeleteFile.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        path = json['path'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'path': path
    };

    createResponse() => EmptyResponse();
    getResponseTypeName() => "EmptyResponse";
    getTypeName() => "DeleteFile";
    TypeContext? context = _ctx;
}

class DeleteFiles implements IReturn<DeleteFilesResponse>, IPost, IConvertible
{
    List<String>? paths;

    DeleteFiles({this.paths});
    DeleteFiles.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        paths = JsonConverters.fromJson(json['paths'],'List<String>',context!);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'paths': JsonConverters.toJson(paths,'List<String>',context!)
    };

    createResponse() => DeleteFilesResponse();
    getResponseTypeName() => "DeleteFilesResponse";
    getTypeName() => "DeleteFiles";
    TypeContext? context = _ctx;
}

// @Route("/variants/{Variant}/{**Path}")
class GetVariant implements IReturn<Uint8List>, IGet, IConvertible
{
    // @Validate(Validator="NotEmpty")
    String? variant;

    // @Validate(Validator="NotEmpty")
    String? path;

    GetVariant({this.variant,this.path});
    GetVariant.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        variant = json['variant'];
        path = json['path'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'variant': variant,
        'path': path
    };

    createResponse() => Uint8List(0);
    getResponseTypeName() => "Uint8List";
    getTypeName() => "GetVariant";
    TypeContext? context = _ctx;
}

class MigrateArtifact implements IReturn<MigrateArtifactResponse>, IPost, IConvertible
{
    String? path;
    DateTime? date;

    MigrateArtifact({this.path,this.date});
    MigrateArtifact.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        path = json['path'];
        date = JsonConverters.fromJson(json['date'],'DateTime',context!);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'path': path,
        'date': JsonConverters.toJson(date,'DateTime',context!)
    };

    createResponse() => MigrateArtifactResponse();
    getResponseTypeName() => "MigrateArtifactResponse";
    getTypeName() => "MigrateArtifact";
    TypeContext? context = _ctx;
}

class QueryMediaTypesData extends QueryData<MediaType> implements IReturn<QueryResponse<MediaType>>, IConvertible, IGet
{
    QueryMediaTypesData();
    QueryMediaTypesData.fromJson(Map<String, dynamic> json) : super.fromJson(json);
    fromMap(Map<String, dynamic> json) {
        super.fromMap(json);
        return this;
    }

    Map<String, dynamic> toJson() => super.toJson();
    createResponse() => QueryResponse<MediaType>();
    getResponseTypeName() => "QueryResponse<MediaType>";
    getTypeName() => "QueryMediaTypesData";
    TypeContext? context = _ctx;
}

class QueryTextToSpeechVoicesData extends QueryData<TextToSpeechVoice> implements IReturn<QueryResponse<TextToSpeechVoice>>, IConvertible, IGet
{
    QueryTextToSpeechVoicesData();
    QueryTextToSpeechVoicesData.fromJson(Map<String, dynamic> json) : super.fromJson(json);
    fromMap(Map<String, dynamic> json) {
        super.fromMap(json);
        return this;
    }

    Map<String, dynamic> toJson() => super.toJson();
    createResponse() => QueryResponse<TextToSpeechVoice>();
    getResponseTypeName() => "QueryResponse<TextToSpeechVoice>";
    getTypeName() => "QueryTextToSpeechVoicesData";
    TypeContext? context = _ctx;
}

class QueryAiModelsData extends QueryData<AiModel> implements IReturn<QueryResponse<AiModel>>, IConvertible, IGet
{
    QueryAiModelsData();
    QueryAiModelsData.fromJson(Map<String, dynamic> json) : super.fromJson(json);
    fromMap(Map<String, dynamic> json) {
        super.fromMap(json);
        return this;
    }

    Map<String, dynamic> toJson() => super.toJson();
    createResponse() => QueryResponse<AiModel>();
    getResponseTypeName() => "QueryResponse<AiModel>";
    getTypeName() => "QueryAiModelsData";
    TypeContext? context = _ctx;
}

class QueryAiTypesData extends QueryData<AiType> implements IReturn<QueryResponse<AiType>>, IConvertible, IGet
{
    QueryAiTypesData();
    QueryAiTypesData.fromJson(Map<String, dynamic> json) : super.fromJson(json);
    fromMap(Map<String, dynamic> json) {
        super.fromMap(json);
        return this;
    }

    Map<String, dynamic> toJson() => super.toJson();
    createResponse() => QueryResponse<AiType>();
    getResponseTypeName() => "QueryResponse<AiType>";
    getTypeName() => "QueryAiTypesData";
    TypeContext? context = _ctx;
}

/**
* Delete a Generation API Provider
*/
class DeleteMediaProvider implements IReturn<IdResponse>, IDeleteDb<MediaProvider>, IConvertible, IDelete
{
    int? id;
    String? name;

    DeleteMediaProvider({this.id,this.name});
    DeleteMediaProvider.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        id = json['id'];
        name = json['name'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'id': id,
        'name': name
    };

    createResponse() => IdResponse();
    getResponseTypeName() => "IdResponse";
    getTypeName() => "DeleteMediaProvider";
    TypeContext? context = _ctx;
}

TypeContext _ctx = TypeContext(library: 'openai.servicestack.net', types: <String, TypeInfo> {
    'AudioFormat': TypeInfo(TypeOf.Enum, enumValues:AudioFormat.values),
    'IMediaTransform': TypeInfo(TypeOf.Interface),
    'IQueueMediaTransform': TypeInfo(TypeOf.Interface),
    'IGeneration': TypeInfo(TypeOf.Interface),
    'IQueueGeneration': TypeInfo(TypeOf.Interface),
    'ImageOutputFormat': TypeInfo(TypeOf.Enum, enumValues:ImageOutputFormat.values),
    'WatermarkPosition': TypeInfo(TypeOf.Enum, enumValues:WatermarkPosition.values),
    'AiServiceProvider': TypeInfo(TypeOf.Enum, enumValues:AiServiceProvider.values),
    'MediaType': TypeInfo(TypeOf.Class, create:() => MediaType()),
    'MediaProvider': TypeInfo(TypeOf.Class, create:() => MediaProvider()),
    'TextToSpeechVoice': TypeInfo(TypeOf.Class, create:() => TextToSpeechVoice()),
    'ComfySampler': TypeInfo(TypeOf.Enum, enumValues:ComfySampler.values),
    'AiTaskType': TypeInfo(TypeOf.Enum, enumValues:AiTaskType.values),
    'ComfyMaskSource': TypeInfo(TypeOf.Enum, enumValues:ComfyMaskSource.values),
    'GenerationArgs': TypeInfo(TypeOf.Class, create:() => GenerationArgs()),
    'Uint8List': TypeInfo(TypeOf.Class, create:() => Uint8List(0)),
    'ModelType': TypeInfo(TypeOf.Enum, enumValues:ModelType.values),
    'MediaModel': TypeInfo(TypeOf.Class, create:() => MediaModel()),
    'MediaTransformTaskType': TypeInfo(TypeOf.Enum, enumValues:MediaTransformTaskType.values),
    'MediaOutputFormat': TypeInfo(TypeOf.Enum, enumValues:MediaOutputFormat.values),
    'MediaTransformArgs': TypeInfo(TypeOf.Class, create:() => MediaTransformArgs()),
    'AiModel': TypeInfo(TypeOf.Class, create:() => AiModel()),
    'AiProviderType': TypeInfo(TypeOf.Enum, enumValues:AiProviderType.values),
    'AiType': TypeInfo(TypeOf.Class, create:() => AiType()),
    'AiProviderModel': TypeInfo(TypeOf.Class, create:() => AiProviderModel()),
    'AiProvider': TypeInfo(TypeOf.Class, create:() => AiProvider()),
    'List<AiProviderModel>': TypeInfo(TypeOf.Class, create:() => <AiProviderModel>[]),
    'OpenAiMessage': TypeInfo(TypeOf.Class, create:() => OpenAiMessage()),
    'List<ToolCall>': TypeInfo(TypeOf.Class, create:() => <ToolCall>[]),
    'ToolCall': TypeInfo(TypeOf.Class, create:() => ToolCall()),
    'ResponseFormat': TypeInfo(TypeOf.Enum, enumValues:ResponseFormat.values),
    'OpenAiResponseFormat': TypeInfo(TypeOf.Class, create:() => OpenAiResponseFormat()),
    'OpenAiToolType': TypeInfo(TypeOf.Enum, enumValues:OpenAiToolType.values),
    'OpenAiTools': TypeInfo(TypeOf.Class, create:() => OpenAiTools()),
    'OpenAiChat': TypeInfo(TypeOf.Class, create:() => OpenAiChat()),
    'List<OpenAiMessage>': TypeInfo(TypeOf.Class, create:() => <OpenAiMessage>[]),
    'Map<int,int?>': TypeInfo(TypeOf.Class, create:() => Map<int,int?>()),
    'List<OpenAiTools>': TypeInfo(TypeOf.Class, create:() => <OpenAiTools>[]),
    'TaskType': TypeInfo(TypeOf.Enum, enumValues:TaskType.values),
    'Prompt': TypeInfo(TypeOf.Class, create:() => Prompt()),
    'ConvertVideoOutputFormat': TypeInfo(TypeOf.Enum, enumValues:ConvertVideoOutputFormat.values),
    'PageStats': TypeInfo(TypeOf.Class, create:() => PageStats()),
    'ArtifactOutput': TypeInfo(TypeOf.Class, create:() => ArtifactOutput()),
    'TextOutput': TypeInfo(TypeOf.Class, create:() => TextOutput()),
    'BackgroundJobState': TypeInfo(TypeOf.Enum, enumValues:BackgroundJobState.values),
    'SummaryStats': TypeInfo(TypeOf.Class, create:() => SummaryStats()),
    'AiProviderTextOutput': TypeInfo(TypeOf.Class, create:() => AiProviderTextOutput()),
    'AiProviderFileOutput': TypeInfo(TypeOf.Class, create:() => AiProviderFileOutput()),
    'GenerationResult': TypeInfo(TypeOf.Class, create:() => GenerationResult()),
    'List<AiProviderTextOutput>': TypeInfo(TypeOf.Class, create:() => <AiProviderTextOutput>[]),
    'List<AiProviderFileOutput>': TypeInfo(TypeOf.Class, create:() => <AiProviderFileOutput>[]),
    'OllamaModelDetails': TypeInfo(TypeOf.Class, create:() => OllamaModelDetails()),
    'OllamaModel': TypeInfo(TypeOf.Class, create:() => OllamaModel()),
    'ChoiceMessage': TypeInfo(TypeOf.Class, create:() => ChoiceMessage()),
    'Choice': TypeInfo(TypeOf.Class, create:() => Choice()),
    'OpenAiUsage': TypeInfo(TypeOf.Class, create:() => OpenAiUsage()),
    'AdminDataResponse': TypeInfo(TypeOf.Class, create:() => AdminDataResponse()),
    'List<PageStats>': TypeInfo(TypeOf.Class, create:() => <PageStats>[]),
    'MediaTransformResponse': TypeInfo(TypeOf.Class, create:() => MediaTransformResponse()),
    'List<ArtifactOutput>': TypeInfo(TypeOf.Class, create:() => <ArtifactOutput>[]),
    'List<TextOutput>': TypeInfo(TypeOf.Class, create:() => <TextOutput>[]),
    'QueueMediaTransformResponse': TypeInfo(TypeOf.Class, create:() => QueueMediaTransformResponse()),
    'GetSummaryStatsResponse': TypeInfo(TypeOf.Class, create:() => GetSummaryStatsResponse()),
    'List<SummaryStats>': TypeInfo(TypeOf.Class, create:() => <SummaryStats>[]),
    'GetComfyModelsResponse': TypeInfo(TypeOf.Class, create:() => GetComfyModelsResponse()),
    'GetComfyModelMappingsResponse': TypeInfo(TypeOf.Class, create:() => GetComfyModelMappingsResponse()),
    'GetJobStatusResponse': TypeInfo(TypeOf.Class, create:() => GetJobStatusResponse()),
    'GenerationResponse': TypeInfo(TypeOf.Class, create:() => GenerationResponse()),
    'QueueGenerationResponse': TypeInfo(TypeOf.Class, create:() => QueueGenerationResponse()),
    'CreateGenerationResponse': TypeInfo(TypeOf.Class, create:() => CreateGenerationResponse()),
    'GetGenerationResponse': TypeInfo(TypeOf.Class, create:() => GetGenerationResponse()),
    'CreateTransformResponse': TypeInfo(TypeOf.Class, create:() => CreateTransformResponse()),
    'HelloResponse': TypeInfo(TypeOf.Class, create:() => HelloResponse()),
    'GetOllamaModelsResponse': TypeInfo(TypeOf.Class, create:() => GetOllamaModelsResponse()),
    'List<OllamaModel>': TypeInfo(TypeOf.Class, create:() => <OllamaModel>[]),
    'GetWorkerStatsResponse': TypeInfo(TypeOf.Class, create:() => GetWorkerStatsResponse()),
    'List<WorkerStats>': TypeInfo(TypeOf.Class, create:() => <WorkerStats>[]),
    'WorkerStats': TypeInfo(TypeOf.Class, create:() => WorkerStats()),
    'Map<String,int?>': TypeInfo(TypeOf.Class, create:() => Map<String,int?>()),
    'OpenAiChatResponse': TypeInfo(TypeOf.Class, create:() => OpenAiChatResponse()),
    'List<Choice>': TypeInfo(TypeOf.Class, create:() => <Choice>[]),
    'QueueOpenAiChatResponse': TypeInfo(TypeOf.Class, create:() => QueueOpenAiChatResponse()),
    'GetOpenAiChatResponse': TypeInfo(TypeOf.Class, create:() => GetOpenAiChatResponse()),
    'BackgroundJobBase': TypeInfo(TypeOf.Class, create:() => BackgroundJobBase()),
    'GetOpenAiChatStatusResponse': TypeInfo(TypeOf.Class, create:() => GetOpenAiChatStatusResponse()),
    'GetActiveProvidersResponse': TypeInfo(TypeOf.Class, create:() => GetActiveProvidersResponse()),
    'List<AiProvider>': TypeInfo(TypeOf.Class, create:() => <AiProvider>[]),
    'CreateApiKeyResponse': TypeInfo(TypeOf.Class, create:() => CreateApiKeyResponse()),
    'DeleteFilesResponse': TypeInfo(TypeOf.Class, create:() => DeleteFilesResponse()),
    'MigrateArtifactResponse': TypeInfo(TypeOf.Class, create:() => MigrateArtifactResponse()),
    'AdminData': TypeInfo(TypeOf.Class, create:() => AdminData()),
    'ConvertAudio': TypeInfo(TypeOf.Class, create:() => ConvertAudio()),
    'QueueConvertAudio': TypeInfo(TypeOf.Class, create:() => QueueConvertAudio()),
    'GetSummaryStats': TypeInfo(TypeOf.Class, create:() => GetSummaryStats()),
    'PopulateChatSummary': TypeInfo(TypeOf.Class, create:() => PopulateChatSummary()),
    'GetComfyModels': TypeInfo(TypeOf.Class, create:() => GetComfyModels()),
    'GetComfyModelMappings': TypeInfo(TypeOf.Class, create:() => GetComfyModelMappings()),
    'GetJobStatus': TypeInfo(TypeOf.Class, create:() => GetJobStatus()),
    'ActiveMediaModels': TypeInfo(TypeOf.Class, create:() => ActiveMediaModels()),
    'TextToImage': TypeInfo(TypeOf.Class, create:() => TextToImage()),
    'ImageToImage': TypeInfo(TypeOf.Class, create:() => ImageToImage()),
    'ImageUpscale': TypeInfo(TypeOf.Class, create:() => ImageUpscale()),
    'ImageWithMask': TypeInfo(TypeOf.Class, create:() => ImageWithMask()),
    'ImageToText': TypeInfo(TypeOf.Class, create:() => ImageToText()),
    'QueueTextToImage': TypeInfo(TypeOf.Class, create:() => QueueTextToImage()),
    'QueueImageUpscale': TypeInfo(TypeOf.Class, create:() => QueueImageUpscale()),
    'QueueImageToImage': TypeInfo(TypeOf.Class, create:() => QueueImageToImage()),
    'QueueImageWithMask': TypeInfo(TypeOf.Class, create:() => QueueImageWithMask()),
    'QueueImageToText': TypeInfo(TypeOf.Class, create:() => QueueImageToText()),
    'ConvertImage': TypeInfo(TypeOf.Class, create:() => ConvertImage()),
    'CropImage': TypeInfo(TypeOf.Class, create:() => CropImage()),
    'WatermarkImage': TypeInfo(TypeOf.Class, create:() => WatermarkImage()),
    'ScaleImage': TypeInfo(TypeOf.Class, create:() => ScaleImage()),
    'QueueCropImage': TypeInfo(TypeOf.Class, create:() => QueueCropImage()),
    'QueueScaleImage': TypeInfo(TypeOf.Class, create:() => QueueScaleImage()),
    'QueueWatermarkImage': TypeInfo(TypeOf.Class, create:() => QueueWatermarkImage()),
    'QueueConvertImage': TypeInfo(TypeOf.Class, create:() => QueueConvertImage()),
    'QueryResponse<MediaType>': TypeInfo(TypeOf.Class, create:() => QueryResponse<MediaType>()),
    'QueryMediaTypes': TypeInfo(TypeOf.Class, create:() => QueryMediaTypes()),
    'List<MediaType>': TypeInfo(TypeOf.Class, create:() => <MediaType>[]),
    'QueryResponse<MediaProvider>': TypeInfo(TypeOf.Class, create:() => QueryResponse<MediaProvider>()),
    'QueryMediaProviders': TypeInfo(TypeOf.Class, create:() => QueryMediaProviders()),
    'List<MediaProvider>': TypeInfo(TypeOf.Class, create:() => <MediaProvider>[]),
    'QueryResponse<TextToSpeechVoice>': TypeInfo(TypeOf.Class, create:() => QueryResponse<TextToSpeechVoice>()),
    'QueryTextToSpeechVoices': TypeInfo(TypeOf.Class, create:() => QueryTextToSpeechVoices()),
    'List<TextToSpeechVoice>': TypeInfo(TypeOf.Class, create:() => <TextToSpeechVoice>[]),
    'CreateGeneration': TypeInfo(TypeOf.Class, create:() => CreateGeneration()),
    'QueryResponse<MediaModel>': TypeInfo(TypeOf.Class, create:() => QueryResponse<MediaModel>()),
    'QueryMediaModels': TypeInfo(TypeOf.Class, create:() => QueryMediaModels()),
    'List<MediaModel>': TypeInfo(TypeOf.Class, create:() => <MediaModel>[]),
    'GetGeneration': TypeInfo(TypeOf.Class, create:() => GetGeneration()),
    'UpdateMediaProvider': TypeInfo(TypeOf.Class, create:() => UpdateMediaProvider()),
    'CreateMediaProvider': TypeInfo(TypeOf.Class, create:() => CreateMediaProvider()),
    'CreateMediaTransform': TypeInfo(TypeOf.Class, create:() => CreateMediaTransform()),
    'Hello': TypeInfo(TypeOf.Class, create:() => Hello()),
    'GetOllamaModels': TypeInfo(TypeOf.Class, create:() => GetOllamaModels()),
    'QueryResponse<AiModel>': TypeInfo(TypeOf.Class, create:() => QueryResponse<AiModel>()),
    'QueryAiModels': TypeInfo(TypeOf.Class, create:() => QueryAiModels()),
    'List<AiModel>': TypeInfo(TypeOf.Class, create:() => <AiModel>[]),
    'QueryResponse<AiType>': TypeInfo(TypeOf.Class, create:() => QueryResponse<AiType>()),
    'QueryAiTypes': TypeInfo(TypeOf.Class, create:() => QueryAiTypes()),
    'List<AiType>': TypeInfo(TypeOf.Class, create:() => <AiType>[]),
    'ActiveAiModels': TypeInfo(TypeOf.Class, create:() => ActiveAiModels()),
    'QueryResponse<AiProvider>': TypeInfo(TypeOf.Class, create:() => QueryResponse<AiProvider>()),
    'QueryAiProviders': TypeInfo(TypeOf.Class, create:() => QueryAiProviders()),
    'GetWorkerStats': TypeInfo(TypeOf.Class, create:() => GetWorkerStats()),
    'CancelWorker': TypeInfo(TypeOf.Class, create:() => CancelWorker()),
    'GetModelImage': TypeInfo(TypeOf.Class, create:() => GetModelImage()),
    'OpenAiChatCompletion': TypeInfo(TypeOf.Class, create:() => OpenAiChatCompletion()),
    'QueueOpenAiChatCompletion': TypeInfo(TypeOf.Class, create:() => QueueOpenAiChatCompletion()),
    'WaitForOpenAiChat': TypeInfo(TypeOf.Class, create:() => WaitForOpenAiChat()),
    'GetOpenAiChat': TypeInfo(TypeOf.Class, create:() => GetOpenAiChat()),
    'GetOpenAiChatStatus': TypeInfo(TypeOf.Class, create:() => GetOpenAiChatStatus()),
    'GetActiveProviders': TypeInfo(TypeOf.Class, create:() => GetActiveProviders()),
    'ChatAiProvider': TypeInfo(TypeOf.Class, create:() => ChatAiProvider()),
    'CreateApiKey': TypeInfo(TypeOf.Class, create:() => CreateApiKey()),
    'CreateAiProvider': TypeInfo(TypeOf.Class, create:() => CreateAiProvider()),
    'Map<TaskType,String?>': TypeInfo(TypeOf.Class, create:() => Map<TaskType,String?>()),
    'UpdateAiProvider': TypeInfo(TypeOf.Class, create:() => UpdateAiProvider()),
    'DeleteAiProvider': TypeInfo(TypeOf.Class, create:() => DeleteAiProvider()),
    'QueryResponse<Prompt>': TypeInfo(TypeOf.Class, create:() => QueryResponse<Prompt>()),
    'QueryPrompts': TypeInfo(TypeOf.Class, create:() => QueryPrompts()),
    'List<Prompt>': TypeInfo(TypeOf.Class, create:() => <Prompt>[]),
    'Reload': TypeInfo(TypeOf.Class, create:() => Reload()),
    'ChangeAiProviderStatus': TypeInfo(TypeOf.Class, create:() => ChangeAiProviderStatus()),
    'QueueTextToSpeech': TypeInfo(TypeOf.Class, create:() => QueueTextToSpeech()),
    'QueueSpeechToText': TypeInfo(TypeOf.Class, create:() => QueueSpeechToText()),
    'TextToSpeech': TypeInfo(TypeOf.Class, create:() => TextToSpeech()),
    'SpeechToText': TypeInfo(TypeOf.Class, create:() => SpeechToText()),
    'ScaleVideo': TypeInfo(TypeOf.Class, create:() => ScaleVideo()),
    'WatermarkVideo': TypeInfo(TypeOf.Class, create:() => WatermarkVideo()),
    'ConvertVideo': TypeInfo(TypeOf.Class, create:() => ConvertVideo()),
    'CropVideo': TypeInfo(TypeOf.Class, create:() => CropVideo()),
    'TrimVideo': TypeInfo(TypeOf.Class, create:() => TrimVideo()),
    'QueueScaleVideo': TypeInfo(TypeOf.Class, create:() => QueueScaleVideo()),
    'QueueWatermarkVideo': TypeInfo(TypeOf.Class, create:() => QueueWatermarkVideo()),
    'QueueConvertVideo': TypeInfo(TypeOf.Class, create:() => QueueConvertVideo()),
    'QueueCropVideo': TypeInfo(TypeOf.Class, create:() => QueueCropVideo()),
    'QueueTrimVideo': TypeInfo(TypeOf.Class, create:() => QueueTrimVideo()),
    'GetArtifact': TypeInfo(TypeOf.Class, create:() => GetArtifact()),
    'DeleteFile': TypeInfo(TypeOf.Class, create:() => DeleteFile()),
    'DeleteFiles': TypeInfo(TypeOf.Class, create:() => DeleteFiles()),
    'GetVariant': TypeInfo(TypeOf.Class, create:() => GetVariant()),
    'MigrateArtifact': TypeInfo(TypeOf.Class, create:() => MigrateArtifact()),
    'QueryMediaTypesData': TypeInfo(TypeOf.Class, create:() => QueryMediaTypesData()),
    'QueryTextToSpeechVoicesData': TypeInfo(TypeOf.Class, create:() => QueryTextToSpeechVoicesData()),
    'QueryAiModelsData': TypeInfo(TypeOf.Class, create:() => QueryAiModelsData()),
    'QueryAiTypesData': TypeInfo(TypeOf.Class, create:() => QueryAiTypesData()),
    'DeleteMediaProvider': TypeInfo(TypeOf.Class, create:() => DeleteMediaProvider()),
});

