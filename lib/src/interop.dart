@JS()
library mdc;

import 'dart:html';
import 'package:js/js.dart';

@JS()
class mdc {
  external static autoInit();
}

@JS('mdc.textfield.MDCTextfield')
class MDCTextfield {
  external MDCTextfield(Element root);
  external destroy();
  external InputElement get input_;
  external get label_;
}
