import 'package:test/test.dart';
import 'dart:io';
import 'dart:typed_data';

import '../lib/client.dart';
import 'utils.dart';
import 'dtos/aiserver.dtos.dart';

// Helper function to create AI server test client
JsonServiceClient createAiServerTestClient() {
  var url = Platform.environment['AI_SERVER_URL'];
  var apiKey = Platform.environment['AI_SERVER_API_KEY'];

  if (url == null || apiKey == null) {
    throw StateError(
        'AI_SERVER_URL and AI_SERVER_API_KEY environment variables are required. '
            'Please set these before running the AI server tests.');
  }

  var client = JsonServiceClient(url);
  client.bearerToken = apiKey;
  return client;
}

void main() {
  // Skip all tests if RUN_AI_TESTS is not set
  var runTests = Platform.environment['RUN_AI_TESTS'];
  if (runTests == null) {
    print('Skipping AI Server tests. Set RUN_AI_TESTS=1 to run these tests.');
    return;
  }

  late JsonServiceClient client;

  setUp(() {
    client = createAiServerTestClient();
  });

  test('Can upload file with speech to text request', () async {
    var file = File('test_resources/files/test_audio.wav');
    var request = SpeechToText();

    var bytes = await file.readAsBytes();
    var files = [
      {
        'fieldName': 'audio',
        'fileName': 'test_audio.wav',
        'contentType': 'audio/wav',
        'stream': bytes
      }
    ];

    var response = await client.postFilesWithRequest<GenerationResponse>(
        '/api/SpeechToText',
        request,
        files
    );

    // Verify response is not null
    expect(response, isNotNull);

    // Verify textOutputs exists and has correct length
    expect(response.textOutputs, isNotNull);
    expect(response.textOutputs!.length, equals(2));

    // Get both text outputs
    var textWithTimestamps = response.textOutputs![1].text;
    var textOnly = response.textOutputs![0].text;

    // Basic validation of outputs
    expect(textWithTimestamps, isNotNull);
    expect(textOnly, isNotNull);

    // Print results
    print('\nSpeech to Text Results:');
    print('Text with timestamps: $textWithTimestamps');
    print('Text only: $textOnly');
  });


  test('Should handle errors when file upload fails', () async {
    var request = SpeechToText();

    // Empty file list should throw error
    var files = <Map<String, dynamic>>[];

    try {
      await client.postFilesWithRequest<GenerationResponse>(
          '/api/SpeechToText',
          request,
          files
      );
      fail('Expected exception was not thrown');
    } on WebServiceException catch (e) {
      expect(e.statusCode, equals(400));
    }
  });


  test('Should handle request filters', () async {
    var file = File('test_resources/files/test_audio.wav');
    var request = SpeechToText();
    var filtersCalled = <String>[];

    var bytes = await file.readAsBytes();
    var files = [
      {
        'fieldName': 'audio',
        'fileName': 'test_audio.wav',
        'contentType': 'audio/wav',
        'stream': bytes
      }
    ];

    client.requestFilter = (req) => filtersCalled.add('requestFilter');
    client.responseFilter = (res) => filtersCalled.add('responseFilter');

    var response = await client.postFilesWithRequest<GenerationResponse>(
        '/api/SpeechToText',
        request,
        files
    );

    expect(response, isNotNull);
    expect(filtersCalled, contains('requestFilter'));
    expect(filtersCalled, contains('responseFilter'));
  });
}