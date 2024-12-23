import 'package:get/get.dart';
import 'package:smart_home/app/widget/area_widget.dart';
import 'package:smart_home/app/widget/device_widget.dart';
import 'package:smart_home/app/widget/security_widget.dart';
import 'package:smart_home/app/widget/thermostat_widget.dart';

class DashboardController extends GetxController {
  List<AreaWidget> areas = [
    AreaWidget(
      areaTitle: "Living room",
      tempSensorPresent: true,
      temperature: 24,
      devices: [
        DeviceWidget(
          deviceName: 'Lamp 1',
          deviceState: true,
        ),
        DeviceWidget(
          deviceName: 'Lamp 2',
          deviceState: true,
        ),
        ThermostatWidget(
          temperature: 24,
          thermostatName: "Thermostat",
        )
      ],
    ),
    AreaWidget(
      areaTitle: "Bedroom",
      tempSensorPresent: true,
      temperature: 24,
      devices: [
        DeviceWidget(
          deviceName: 'Lamp 1',
          deviceState: true,
        ),
        DeviceWidget(
          deviceName: 'Lamp 2',
          deviceState: true,
        ),
        DeviceWidget(
          deviceName: 'Lamp 3',
          deviceState: true,
        )
      ],
    ),
    AreaWidget(
      areaTitle: "Kitchen",
      tempSensorPresent: true,
      temperature: 24,
      devices: [
        DeviceWidget(
          deviceName: 'Lamp 1',
          deviceState: true,
        ),
        DeviceWidget(
          deviceName: 'Lamp 2',
          deviceState: true,
        ),
        DeviceWidget(
          deviceName: 'Lamp 3',
          deviceState: true,
        )
      ],
    ),
    AreaWidget(
      areaTitle: 'Security',
      portraitRowItemCount: 1,
      landscapeRowItemCount: 1,
      devices: [
        SecurityWidget(secured: true),
      ],
    )
  ];
}
