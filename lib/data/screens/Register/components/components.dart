import 'package:grpc/grpc.dart';
import 'package:refierelo_marketplace/constants.dart';


ClientChannel getChannel(){
  return ClientChannel(
      //'18.188.244.114',
      host,
      port: port,
      options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
    );
}