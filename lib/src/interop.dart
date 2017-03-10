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
  external static MDCTextfield attachTo(Element root);
  external MDCTextfield(Element root);
  external destroy();
  external initialSyncWithDom();
  external InputElement get input_;
  external get label_;
  external bool get disabled;
  external set disabled(bool disabled);
}

@JS('mdc.radio.MDCRadio')
class MDCRadio {
  external static MDCRadio attachTo(Element root);
  external MDCRadio(Element root);
  external destroy();
  external initRipple_();
  external InputElement get nativeControl_;
  external get ripple_;
  external bool get checked;
  external set checked(bool checked);
  external bool get disabled;
  external set disabled(bool disabled);
}
