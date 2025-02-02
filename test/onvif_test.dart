import 'package:easy_onvif/onvif.dart';
import 'package:test/test.dart';
import 'package:universal_io/io.dart';

void main() {
  test('metadataConfigurationsResponse is not null when doc parsed', () {
    final response = File('test/xml/GetMetadataConfigurationsResponse.xml')
        .readAsStringSync();

    final envelope = Envelope.fromXml(response);

    var configs = envelope.body.metadataConfigurationsResponse?.configurations;

    expect(configs != null && configs.first.name == 'metaData', true);
  });

  test('SetPresetResponse is not null when doc parsed', () {
    final response = File('test/xml/SetPresetResponse.xml').readAsStringSync();

    final envelope = Envelope.fromXml(response);

    var presetResponse = envelope.body.setPresetResponse;

    expect(presetResponse != null && presetResponse.presetToken == '20', true);
  });

  test('GetProfilesResponse is not null when doc parsed', () {
    final response =
        File('test/xml/GetProfilesResponse.xml').readAsStringSync();

    final envelope = Envelope.fromXml(response);

    var profilesResponse = envelope.body.profilesResponse;

    expect(
        profilesResponse != null && profilesResponse.profiles.isNotEmpty, true);
  });

  test('GetServiceCapabilitiesResponse is not null when doc parsed', () {
    final response =
        File('test/xml/GetServiceCapabilitiesResponse.xml').readAsStringSync();

    final envelope = Envelope.fromXml(response);

    var serviceCapabilitiesResponse = envelope.body.serviceCapabilitiesResponse;

    expect(
        serviceCapabilitiesResponse != null &&
            serviceCapabilitiesResponse.capabilities.network.zeroConfiguration,
        true);
  });

  test('GetCompatibleConfigurationsResponse is not null when doc parsed', () {
    final response = File('test/xml/GetCompatibleConfigurationsResponse.xml')
        .readAsStringSync();

    final envelope = Envelope.fromXml(response);

    var compatibleConfigurationsResponse =
        envelope.body.compatibleConfigurationsResponse;

    expect(
        compatibleConfigurationsResponse != null &&
            compatibleConfigurationsResponse.ptzConfigurations.isNotEmpty,
        true);
  });

  test('GetCapabilitiesResponse is not null when doc parsed', () {
    final response =
        File('test/xml/GetCapabilitiesResponse.xml').readAsStringSync();

    final envelope = Envelope.fromXml(response);

    var capabilitiesResponse = envelope.body.capabilitiesResponse;

    expect(
        capabilitiesResponse != null &&
            capabilitiesResponse.capabilities.device != null,
        true);
  });

  test('GetDeviceInformationResponse is not null when doc parsed', () {
    final response =
        File('test/xml/GetDeviceInformationResponse.xml').readAsStringSync();

    final envelope = Envelope.fromXml(response);

    var deviceInformationResponse = envelope.body.deviceInformationResponse;

    expect(
        deviceInformationResponse != null &&
            deviceInformationResponse.model == 'ENP1A14-IR/25X',
        true);
  });

  test('GetHostnameResponse is not null when doc parsed', () {
    final response =
        File('test/xml/GetHostnameResponse.xml').readAsStringSync();

    final envelope = Envelope.fromXml(response);

    var hostnameResponse = envelope.body.hostnameResponse;

    expect(
        hostnameResponse != null &&
            hostnameResponse.hostnameInformation.name == 'localhost',
        true);
  });

  test('GetNetworkProtocolsResponse is not null when doc parsed', () {
    final response =
        File('test/xml/GetNetworkProtocolsResponse.xml').readAsStringSync();

    final envelope = Envelope.fromXml(response);

    var networkProtocolsResponse = envelope.body.networkProtocolsResponse;

    expect(
        networkProtocolsResponse != null &&
            networkProtocolsResponse.networkProtocols.isNotEmpty,
        true);
  });

  test('GetSystemDateAndTimeResponse is not null when doc parsed', () {
    final response =
        File('test/xml/GetSystemDateAndTimeResponse.xml').readAsStringSync();

    final envelope = Envelope.fromXml(response);

    var dateTimeResponse = envelope.body.dateTimeResponse;

    expect(
        dateTimeResponse != null &&
            dateTimeResponse.systemDateAndTime.dateTimeType == 'Manual',
        true);
  });

  test('GetServicesResponse is not null when doc parsed', () {
    final response =
        File('test/xml/GetServicesResponse.xml').readAsStringSync();

    final envelope = Envelope.fromXml(response);

    var servicesResponse = envelope.body.servicesResponse;

    expect(
        servicesResponse != null && servicesResponse.services.isNotEmpty, true);
  });

  test('GetSystemUrisResponse is not null when doc parsed', () {
    final response =
        File('test/xml/GetSystemUrisResponse.xml').readAsStringSync();

    final envelope = Envelope.fromXml(response);

    var systemUrisResponse = envelope.body.systemUrisResponse;

    expect(
        systemUrisResponse != null &&
            systemUrisResponse.systemLogUris.systemLog.type == 'System',
        true);
  });

  test('GetUsersResponse is not null when doc parsed', () {
    final response = File('test/xml/GetUsersResponse.xml').readAsStringSync();

    final envelope = Envelope.fromXml(response);

    var usersResponse = envelope.body.usersResponse;

    expect(usersResponse != null && usersResponse.users.isNotEmpty, true);
  });

  test('GetAudioSourcesResponse is not null when doc parsed', () {
    final response =
        File('test/xml/GetAudioSourcesResponse.xml').readAsStringSync();

    final envelope = Envelope.fromXml(response);

    var audioSourcesResponse = envelope.body.audioSourcesResponse;

    expect(
        audioSourcesResponse != null &&
            audioSourcesResponse.audioSources.isNotEmpty,
        true);
  });

  test('GetSnapshotUriResponse is not null when doc parsed', () {
    final response =
        File('test/xml/GetSnapshotUriResponse.xml').readAsStringSync();

    final envelope = Envelope.fromXml(response);

    var snapshotUriResponse = envelope.body.snapshotUriResponse;

    expect(
        snapshotUriResponse != null && snapshotUriResponse.mediaUri.uri != '',
        true);
  });

  test('GetStreamUriResponse is not null when doc parsed', () {
    final response =
        File('test/xml/GetStreamUriResponse.xml').readAsStringSync();

    final envelope = Envelope.fromXml(response);

    var streamUriResponse = envelope.body.streamUriResponse;

    expect(streamUriResponse != null && streamUriResponse.mediaUri.uri != '',
        true);
  });

  test('GetVideoSourcesResponse is not null when doc parsed', () {
    final response =
        File('test/xml/GetVideoSourcesResponse.xml').readAsStringSync();

    final envelope = Envelope.fromXml(response);

    var videoSourcesResponse = envelope.body.videoSourcesResponse;

    expect(
        videoSourcesResponse != null &&
            videoSourcesResponse.videoSources.isNotEmpty,
        true);
  });

  test('GetConfigurationsResponse is not null when doc parsed', () {
    final response =
        File('test/xml/GetConfigurationsResponse.xml').readAsStringSync();

    final envelope = Envelope.fromXml(response);

    var configurationsResponse = envelope.body.configurationsResponse;

    expect(
        configurationsResponse != null &&
            configurationsResponse.ptzConfigurations.isNotEmpty,
        true);
  });

  test('GetConfigurationResponse is not null when doc parsed', () {
    final response =
        File('test/xml/GetConfigurationResponse.xml').readAsStringSync();

    final envelope = Envelope.fromXml(response);

    var configurationResponse = envelope.body.configurationResponse;

    expect(
        configurationResponse != null &&
            configurationResponse.ptzConfiguration.token == 'PTZToken',
        true);
  });

  test('GetPresetsResponse is not null when doc parsed', () {
    final response = File('test/xml/GetPresetsResponse.xml').readAsStringSync();

    final envelope = Envelope.fromXml(response);

    var getPresetResponse = envelope.body.getPresetResponse;

    expect(getPresetResponse != null && getPresetResponse.presets.isNotEmpty,
        true);
  });

  test('GetStatusResponse is not null when doc parsed', () {
    final response = File('test/xml/GetStatusResponse.xml').readAsStringSync();

    final envelope = Envelope.fromXml(response);

    var statusResponse = envelope.body.statusResponse;

    expect(
        statusResponse != null && statusResponse.ptzStatus.error == 'NO error',
        true);
  });
}
