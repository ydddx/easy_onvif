import 'dart:convert';

import 'package:args/command_runner.dart';
import 'package:dio/dio.dart';
import 'package:easy_onvif/onvif.dart';

///device management
class OnvifDeviceManagementCommand extends Command {
  @override
  String get description => 'Device management commands.';

  @override
  String get name => 'device-management';

  OnvifDeviceManagementCommand() {
    addSubcommand(OnvifGetCapabilitiesDeviceManagementCommand());
    addSubcommand(OnvifGetDeviceInformationResponseDeviceManagementCommand());
    addSubcommand(OnvifGetHostnameDeviceManagementCommand());
    addSubcommand(OnvifGetNetworkProtocolsDeviceManagementCommand());
    addSubcommand(OnvifGetNtpDeviceManagementCommand());
    addSubcommand(OnvifGetServiceCapabilitiesDeviceManagementCommand());
    addSubcommand(OnvifGetServicesDeviceManagementCommand());
    addSubcommand(OnvifGetSystemDateAndTimeDeviceManagementCommand());
    addSubcommand(OnvifGetSystemUrisDeviceManagementCommand());
    addSubcommand(OnvifGetUsersDeviceManagementCommand());
  }
}

///This method has been replaced by the more generic GetServices method. For
///capabilities of individual services refer to the GetServiceCapabilities
///methods.
class OnvifGetCapabilitiesDeviceManagementCommand extends OnvifHelperCommand {
  @override
  String get description =>
      'This method has been replaced by the more generic GetServices method. For capabilities of individual services refer to the GetServiceCapabilities methods.';

  @override
  String get name => 'get-capabilities';

  @override
  void run() async {
    await initializeOnvif();

    try {
      final capabilities = await deviceManagement.getCapabilities();

      print(capabilities);
    } on DioError catch (err) {
      throw UsageException('API usage error:', err.usage);
    }
  }
}

///This operation gets basic device information from the device.
class OnvifGetDeviceInformationResponseDeviceManagementCommand
    extends OnvifHelperCommand {
  @override
  String get description =>
      'This operation gets basic device information from the device.';

  @override
  String get name => 'get-device-information';

  @override
  void run() async {
    await initializeOnvif();

    try {
      final getDeviceInformationResponse =
          await deviceManagement.getDeviceInformation();

      print(getDeviceInformationResponse);
    } on DioError catch (err) {
      throw UsageException('API usage error:', err.usage);
    }
  }
}

///This operation is used by an endpoint to get the hostname from a device. The
///device shall return its hostname configurations through the GetHostname command.
class OnvifGetHostnameDeviceManagementCommand extends OnvifHelperCommand {
  @override
  String get description =>
      'This operation is used by an endpoint to get the hostname from a device. The device shall return its hostname configurations through the GetHostname command.';

  @override
  String get name => 'get-hostname';

  @override
  void run() async {
    await initializeOnvif();

    try {
      final hostnameInformation = await deviceManagement.getHostname();

      print(hostnameInformation);
    } on DioError catch (err) {
      throw UsageException('API usage error:', err.usage);
    }
  }
}

///This operation gets defined network protocols from a device. The device shall
///support the GetNetworkProtocols command returning configured network
///protocols.
class OnvifGetNetworkProtocolsDeviceManagementCommand
    extends OnvifHelperCommand {
  @override
  String get description =>
      'This operation gets defined network protocols from a device. The device shall support the GetNetworkProtocols command returning configured network protocols.';

  @override
  String get name => 'get-network-protocols';

  @override
  void run() async {
    await initializeOnvif();

    try {
      final networkProtocols = await deviceManagement.getNetworkProtocols();

      print(json.encode(networkProtocols));
    } on DioError catch (err) {
      throw UsageException('API usage error:', err.usage);
    }
  }
}

///This operation gets the NTP settings from a device. If the device supports
///NTP, it shall be possible to get the NTP server settings through the GetNTP
///command.
class OnvifGetNtpDeviceManagementCommand extends OnvifHelperCommand {
  @override
  String get description =>
      'This operation gets defined network protocols from a device. The device shall support This operation gets the NTP settings from a device. If the device supports NTP, it shall be possible to get the NTP server settings through the GetNTP command.';

  @override
  String get name => 'get-ntp';

  @override
  void run() async {
    await initializeOnvif();

    try {
      final ntpInformation = await deviceManagement.getNtp();

      print(ntpInformation);
    } on DioError catch (err) {
      throw UsageException('API usage error:', err.usage);
    }
  }
}

///Returns the capabilities of the device service. The result is returned in a typed answer.
class OnvifGetServiceCapabilitiesDeviceManagementCommand
    extends OnvifHelperCommand {
  @override
  String get description =>
      'Returns the capabilities of the device service. The result is returned in a typed answer.';

  @override
  String get name => 'get-service-capabilities';

  @override
  void run() async {
    await initializeOnvif();

    try {
      final deviceServiceCapabilities =
          await deviceManagement.getServiceCapabilities();

      print(json.encode(deviceServiceCapabilities));
    } on DioError catch (err) {
      throw UsageException('API usage error:', err.usage);
    }
  }
}

///Returns information about services on the device.
class OnvifGetServicesDeviceManagementCommand extends OnvifHelperCommand {
  @override
  String get description => 'Returns information about services on the device.';

  @override
  String get name => 'get-services';

  OnvifGetServicesDeviceManagementCommand() {
    argParser.addFlag('include-capability',
        abbr: 'i',
        defaultsTo: false,
        help:
            'Indicates if the service capabilities (untyped) should be included in the response.');
  }

  @override
  void run() async {
    await initializeOnvif();

    try {
      final services = await deviceManagement.getServices(
          includeCapability: argResults!['include-capability']);

      print(json.encode(services));
    } on DioError catch (err) {
      throw UsageException('API usage error:', err.usage);
    }
  }
}

///This operation gets the device system date and time. The device shall support
///the return of the daylight saving setting and of the manual system date and
///time (if applicable) or indication of NTP time (if applicable) through the
///GetSystemDateAndTime command.
///
///A device shall provide the UTCDateTime information.
class OnvifGetSystemDateAndTimeDeviceManagementCommand
    extends OnvifHelperCommand {
  @override
  String get description =>
      '''This operation gets the device system date and time. The device shall support the return of the daylight saving setting and of the manual system date and time (if applicable) or indication of NTP time (if applicable) through the GetSystemDateAndTime command.

A device shall provide the UTCDateTime information.''';

  @override
  String get name => 'get-system-date-and-time';

  @override
  void run() async {
    await initializeOnvif();

    try {
      final systemDateAndTime = await deviceManagement.getSystemDateAndTime();

      print(systemDateAndTime);
    } on DioError catch (err) {
      throw UsageException('API usage error:', err.usage);
    }
  }
}

///This operation is used to retrieve URIs from which system information may be
///downloaded using HTTP. URIs may be returned for the following system
///information:
///
///System Logs. Multiple system logs may be returned, of different types. The
///exact format of the system logs is outside the scope of this specification.
///
///Support Information. This consists of arbitrary device diagnostics
///information from a device. The exact format of the diagnostic information is
///outside the scope of this specification.
///
///System Backup. The received file is a backup file that can be used to restore
///the current device configuration at a later date. The exact format of the
///backup configuration file is outside the scope of this specification.
///
///If the device allows retrieval of system logs, support information or system
///backup data, it should make them available via HTTP GET. If it does, it shall
///support the GetSystemUris command.
class OnvifGetSystemUrisDeviceManagementCommand extends OnvifHelperCommand {
  @override
  String get description =>
      'This operation is used to retrieve URIs from which system information may be downloaded using HTTP';

  @override
  String get name => 'get-system-uris';

  @override
  void run() async {
    await initializeOnvif();

    try {
      final getSystemUrisResponse = await deviceManagement.getSystemUris();

      print(getSystemUrisResponse);
    } on DioError catch (err) {
      throw UsageException('API usage error:', err.usage);
    }
  }
}

///This operation lists the registered users and corresponding credentials on a
///device. The device shall support retrieval of registered device users and
///their credentials for the user token through the GetUsers command.
class OnvifGetUsersDeviceManagementCommand extends OnvifHelperCommand {
  @override
  String get description =>
      'This operation lists the registered users and corresponding credentials on a device. The device shall support retrieval of registered device users and their credentials for the user token through the GetUsers command.';

  @override
  String get name => 'get-users';

  @override
  void run() async {
    await initializeOnvif();

    try {
      final users = await deviceManagement.getUsers();

      print(json.encode(users));
    } on DioError catch (err) {
      throw UsageException('API usage error:', err.usage);
    }
  }
}
