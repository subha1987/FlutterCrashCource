
import './location_facts.dart';

class Location{
  final String name;
  final String url;
  final List<LocationFacts> locationFacts;
  Location({this.name,this.url,this.locationFacts});
}


Location mockLocation() {
  return Location(
      name: "Historical Kyoto",
      url:
      "https://lh5.googleusercontent.com/p/AF1QipMCaE-wu816t_TgLJxq55mb6C0koPj8Y1ep8x7z=w426-h240-k-no",
      locationFacts: <LocationFacts>[
        LocationFacts(
            title: "Quick facts",
            descriptionText:
            "Kyoto, once the capital of Japan, is a city on the island of Honshu. It's famous for its numerous classical Buddhist temples, as well as gardens, imperial palaces, Shinto shrines and traditional wooden houses. It?s also known for formal traditions such as kaiseki dining, consisting of multiple courses of precise dishes, and geisha, female entertainers often found in the Gion district.")
      ]);
}