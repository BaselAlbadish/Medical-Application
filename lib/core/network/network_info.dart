import 'package:connectivity_plus/connectivity_plus.dart';

abstract class NetworkInfo {
  Future<bool> get isConnected;
}

class NetworkInfoConnectivity implements NetworkInfo {
  final Connectivity connectivity;

  NetworkInfoConnectivity(this.connectivity);

// note that currently this function returns only network status, not 
// active requests.
  @override
  Future<bool> get isConnected async {
      final connectivityResult = await connectivity.checkConnectivity();
      if(connectivityResult == ConnectivityResult.none) {
        return false;
      }
      else {
        return true;
      }
  }
}
