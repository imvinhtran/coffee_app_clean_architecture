import 'package:injectable/injectable.dart';
import 'package:shared/shared.dart';

import 'di.config.dart';

@InjectableInit()
void configureInjection() => getIt.init();
