import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_crash_course_app/models/location.dart';
import 'package:flutter_crash_course_app/models/location_facts.dart';

class LocationDetails extends StatelessWidget {

  final Location _location;
  LocationDetails(this._location);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_location.name),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: _renderFacts(_location.locationFacts),
      ),
    );
  }

  Widget _section(String title, Color _color){
    return Container(
      decoration: BoxDecoration(color: _color),
      child: Text(title),
    );
  }

  List<Widget> _renderFacts(List<LocationFacts> locationfacts) {
    var factsWidgetList = List<Widget>();
    for(int i=0; i<locationfacts.length;i++){
      factsWidgetList.add(_sectionTitle(locationfacts[i].title));
      factsWidgetList.add(_sectionText(locationfacts[i].descriptionText));
    }
    return factsWidgetList;
  }

  Widget _sectionTitle(String text){
    return Text(text);
  }

  Widget _sectionText(String text){
    return Text(text);
  }

}