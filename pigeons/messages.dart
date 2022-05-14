import 'package:pigeon/pigeon.dart';

class Version {
  String? string;
}

class Battery {
  int? level;
}

class Drone {
  String? status;
  double? batteryPercent;
  double? altitude;
  double? latitude;
  double? longitude;
  double? speed;
  double? roll;
  double? pitch;
  double? yaw;
}

class Media {
  String? fileName;
  String? fileUrl;
  int? fileIndex;
}

class FlightControlData {
  double? pitch;
  double? roll;
  double? yaw;
  double? verticalThrottle;
}

@HostApi()
abstract class DjiHostApi {
  Version getPlatformVersion();
  Battery getBatteryLevel();
  FlightControlData getFlightControlData();
  void registerApp();
  void connectDrone();
  void disconnectDrone();
  void delegateDrone();
  void takeOff();
  void land();
  void start(String flightJson);
  void setVirtualStickMode(bool enabled);
  void sendStickControl(
      double roll, double pitch, double yaw, double throttle);
  // void setFlightMode(String flightMode);
  // void setFlightSpeed(double speed);
  // void setFlightAltitude(double altitude);
  // void setFlightHeading(double heading);
  // void setFlightDirection(double direction);
  // void setFlightVerticalSpeed(double speed);
  // void setFlightHorizontalSpeed(double speed);
  // void setFlightVerticalDistance(double distance);
  // void setFlightHorizontalDistance(double distance);
  // void setFlightVerticalDirection(double direction);
  // void setFlightHorizontalDirection(double direction);
  // void setFlightGimbalPitch(double pitch);
  // void setFlightGimbalYaw(double yaw);
  // void setFlightGimbalRoll(double roll);
  // void setFlightGimbalPitchSpeed(double speed);
  // void setFlightGimbalYawSpeed(double speed);
  // void setFlightGimbalRollSpeed(double speed);
  // void setFlightGimbalPitchDirection(double direction);
  // void setFlightGimbalYawDirection(double direction);

  List<Media> getMediaList();
  String downloadMedia(int fileIndex);
  bool deleteMedia(int fileIndex);
}

@FlutterApi()
abstract class DjiFlutterApi {
  void setStatus(Drone drone);
}
