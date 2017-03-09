import 'dart:html';

import 'package:angular2/core.dart';
import 'package:material_components_web/src/base.dart';
import 'package:material_components_web/src/interop.dart';

@Component(
  selector: 'mdc-textfield',
  templateUrl: './textfield.html',
)
class MDCTextfieldComponent extends MDCBase implements OnInit, OnDestroy {
  ElementRef ref;

  MDCTextfieldComponent(this.ref);

  @ViewChild('input1')
  ElementRef input1;

  @Input()
  String label;

  @Input()
  String type = 'text';

  @Input()
  bool required = false;
  @Input()
  bool focus = false;

  @Input()
  String value;
  @Output()
  EventEmitter<String> valueChange = new EventEmitter<String>();

  @override
  ngOnInit() {
    ref.nativeElement.classes.add('mdc-textfield');
    (input1.nativeElement as InputElement).required = required;

    if (focus) (input1.nativeElement as InputElement).autofocus = true;

    mdcComponent = new MDCTextfield(ref.nativeElement);
  }

  handleInputChange(Event e) {
    valueChange.emit((e.target as InputElement).value);
  }
}
