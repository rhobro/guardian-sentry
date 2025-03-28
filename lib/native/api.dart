import 'dart:ffi';
import 'dart:io';

import 'bridge_generated.dart';

const _base = 'native';
final _path = Platform.isWindows ? '$_base.dll' : 'lib$_base.so';
final _dylib = Platform.isIOS
    ? DynamicLibrary.process()
    : Platform.isMacOS
        ? DynamicLibrary.executable()
        : DynamicLibrary.open(_path);
final api = NativeImpl(_dylib);
