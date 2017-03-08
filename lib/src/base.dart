import 'package:angular2/core.dart';

abstract class MDCBase implements OnInit, OnDestroy {
  var mdcComponent;

  @override
  ngOnDestroy() {
    mdcComponent.destroy();
  }
}
