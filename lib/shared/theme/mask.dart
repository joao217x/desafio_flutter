import 'package:mask_input_formatter/mask_input_formatter.dart';

abstract class Mask {
  static MaskInputFormatter none = MaskInputFormatter(mask: '');
  static MaskInputFormatter date = MaskInputFormatter(mask: '##/##/##');
  static MaskInputFormatter time = MaskInputFormatter(mask: '##:##');
}
