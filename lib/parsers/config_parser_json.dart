library config_parser_json;

import 'dart:async';
import 'dart:json' as JSON;

import '../config.dart';

class JsonConfigParser implements ConfigParser {
  
  Future<Map> parse(String configText) {
    var completer = new Completer<Map>();
    
    var map = JSON.parse(configText);
    completer.complete(map);
    
    return completer.future;
  }
}