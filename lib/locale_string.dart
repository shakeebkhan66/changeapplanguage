import 'package:get/get.dart';

class LocalString extends Translations{
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
      'en_US':{
        'hello': 'HELLO WORLD',
        'subscribe': 'Subscribe Us',
        'changelanguage': 'Change Language',
        'changeapplang': 'Change App Language'
      },
    // Pakistan Urdu Language
    'ur_PK':{
        'hello': 'ہیلو دنیا',
        'subscribe': 'ہمیں سبسکرائب کریں',
        'changelanguage': 'زبان تبدیل کریں',
        'changeapplang': 'ایپ کی زبان تبدیل کریں'
    }

  };

}