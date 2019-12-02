import 'package:flutter/material.dart';

import 'location_details_widget.dart';
import 'models/location.dart';



void main() {
  return runApp(MaterialApp(
      home:LocationDetails(mockLocation())
  ));
}
