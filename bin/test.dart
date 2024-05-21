
import 'package:busrt_client/busrt_client.dart';

void main(List<String> args) async {
  final bus = Bus('test.bus.client');
  await bus.connect('192.168.100.9:7777');
  bus.subscribe(['ST/LOC/sensor/test1/sens1']);

  bus.onFrame = (f) {
    print([f.topic, f.primarySender, f.payload]);
  };
}
