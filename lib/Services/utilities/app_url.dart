import 'package:flutter/material.dart';

class AppUrl {
  //this is our base url
  static const String baseUrl = 'https://disease.sh/v3/covid-19/';
  //fetch world covid states
  static const String worldStatesApi = baseUrl + 'all' ;
  //fetch countries list
  static const String countriesList = baseUrl + 'countries';

}