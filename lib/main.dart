import 'package:flutter/material.dart';
import 'package:flutter_crash_course_app/models/location.dart';
import 'location_details_widget.dart';


void main() {
  return runApp(MaterialApp(
      home:LocationDetails(mockLocation())
  ));
}

