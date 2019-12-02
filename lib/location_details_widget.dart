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
      body: _wrapInScrollView(Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: _renderBody(context, _location),
      )),
    );
  }

  Widget _wrapInScrollView(Widget content) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) {
      return SingleChildScrollView(
        child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: viewportConstraints.maxHeight,
            ),
            child: content),
      );
    });

  }



  List<Widget> _renderBody(BuildContext context, Location location) {
    var body = List<Widget>();
    body.add(_bannerImage(location.url, 160.0));
    body.addAll(_renderFacts(location.locationFacts));
    return body;
  }

  List<Widget> _renderFacts(List<LocationFacts> locationfacts) {
    var factsWidgetList = List<Widget>();
    for (int i = 0; i < locationfacts.length; i++) {
      factsWidgetList.add(_sectionTitle(locationfacts[i].title));
      factsWidgetList.add(_sectionText(locationfacts[i].descriptionText));
    }
    return factsWidgetList;
  }

  Widget _sectionTitle(String text) {
    return Container(
      padding: EdgeInsets.fromLTRB(16, 16, 16, 16),
      child: Text(text,
          textAlign: TextAlign.left,
          style: TextStyle(
              fontSize: 22, color: Colors.black, fontWeight: FontWeight.bold)),
    );
  }

  Widget _sectionText(String text) {
    return Container(
      padding: EdgeInsets.fromLTRB(16, 0, 16, 16),
      child: Text(text,
          textAlign: TextAlign.left,
          style: TextStyle(fontSize: 16, color: Colors.black)),
    );
  }

  Widget _bannerImage(String url, double height) {
    return Container(
        constraints: BoxConstraints.tightFor(height: height),
        child: Image.network(url, fit: BoxFit.fitWidth));
  }
}
