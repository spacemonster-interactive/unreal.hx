package uhx.build;

@:enum abstract TargetConfiguration(String) from String {
  var Development = "Development";
  var Shipping = "Shipping";
  var Debug = "Debug";
}
