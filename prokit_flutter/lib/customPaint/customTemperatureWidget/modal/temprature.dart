import 'package:pradeep_the_developer/customPaint/customTemperatureWidget/modal/ItemModal.dart';

class Temperature extends Item {
  int speed;
  double? value;

  Temperature({
    name,
    iconOn,
    iconOff,
    active,
    color,
    type,
    this.speed = 1,
    this.value = 25,
  }) : super(
          name: name,
          iconOn: iconOn,
          iconOff: iconOff,
          active: active,
          color: color,
          type: type,
        );
}
