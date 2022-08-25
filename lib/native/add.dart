import 'api.dart';

Future<int> adder(int a, int b) async {
  return api.adder(a: a, b: b);
}
