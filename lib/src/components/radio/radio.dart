import 'dart:html';

import 'package:angular2/core.dart';
import 'package:material_components_web/src/base.dart';
import 'package:material_components_web/src/interop.dart';

@Component(
  selector: 'mdc-radio',
  templateUrl: './radio.html',
)
class MDCRadioComponent extends MDCBase implements OnInit, OnDestroy {
  ElementRef ref;

  MDCRadioComponent(this.ref);

  @ViewChild('input1')
  ElementRef input1;
  @ViewChild('wrapper1')
  ElementRef wrapper1;

  @Input()
  String label;
  @Input()
  String name;
  @Input()
  String value;

  @Input()
  bool disabled = false;

  @Input()
  bool checked = false;
  @Output()
  EventEmitter<bool> checkedChange = new EventEmitter<bool>();

  @override
  ngOnInit() {
    ref.nativeElement.classes.add('mdc-form-field');
    (input1.nativeElement as InputElement).checked = checked;

    if (disabled) {
      (input1.nativeElement as InputElement).disabled = true;
      (wrapper1.nativeElement as DivElement).classes.add('mdc-radio--disabled');
    } else {
      (wrapper1.nativeElement as DivElement)
          .classes
          .remove('mdc-radio--disabled');
    }

    mdcComponent = new MDCRadio(ref.nativeElement);
  }

  handleInputChange(Event e) {
    checkedChange.emit((e.target as InputElement).checked);
  }

  handleLabelClick() {
    input1.nativeElement.click();
  }
}
