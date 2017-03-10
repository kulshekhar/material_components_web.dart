import 'dart:html';

import 'package:angular2/core.dart';

@Component(
  selector: 'mdc-radio-container',
  templateUrl: './radio_container.html',
)
class MDCRadioContainerComponent implements AfterViewInit {
  ElementRef ref;
  List<Element> children = [];

  MDCRadioContainerComponent(this.ref);

  @Input()
  String value = '';
  @Output()
  EventEmitter<String> valueChange = new EventEmitter<String>();

  handleChildChange(bool value, Element e) {}

  onClick(Event e) {
    Element target = e.target;
    if (target.nodeName == 'INPUT') {
      value = (target as InputElement).value;
      valueChange.emit(value);
    }
  }

  @override
  ngAfterViewInit() {
    if (value != null && value != '') {
      Element e = ref.nativeElement;

      ElementList<InputElement> l = e.querySelectorAll('input[type="radio"]');
      for (var i = 0; i < l.length; i++) {
        InputElement ie = l[i];
        if (ie.value == value) {
          ie.click();
          break;
        }
      }
    }
  }
}
