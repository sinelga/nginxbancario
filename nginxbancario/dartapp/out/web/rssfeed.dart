import 'package:polymer/polymer.dart';
//import 'dart:html';
import 'domains.dart';
import 'dart:async';
import "package:js/js.dart" as js;
import "package:jsonp/jsonp.dart" as jsonp;

//@observable 
//List<RssFeedItem> rssFeedItemArr;


@CustomTag('rss-feed')
class RssFeed extends PolymerElement with ObservableMixin, ChangeNotifier{
    
//  @observable List count;
  @reflectable @observable List get rssfeedarr => __$rssfeedarr; List __$rssfeedarr; @reflectable set rssfeedarr(List value) { __$rssfeedarr = notifyPropertyChange(#rssfeedarr, __$rssfeedarr, value); }
//  @observable bool start=false;
//  @observable int count = 0;
//  List<RssFeedItem> rssFeedItemArr = new List<RssFeedItem>();
//  
//  
//  
//  void increment() {
//    count++;
//  }
  
  void setUp(List<RssFeedItem> rssFeedItemArr) {
    
//    count = rssFeedItemArr;
//    print(count.length);
//    print(count);
//  Future<js.Proxy> result = jsonp.fetch(
//      uri: "http://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20rss%20where%20url%20%3D%20%22http%3A%2F%2Fquotidianohome.feedsportal.com%2Fc%2F33327%2Ff%2F565662%2Findex.rss%22&format=json&diagnostics=true&env=store%3A%2F%2Fdatatables.org%2Falltableswithkeys&callback=?"
//        
//  );
//  result.then((js.Proxy proxy) {
//
//    rssFeedItemArr = new List<RssFeedItem>();   
//    var items = proxy["query"]["results"]["item"];
//
//    for (var i=0;i < items.length;i++){
//      
//      RssFeedItem rssFeedItem =new RssFeedItem();
//      
//      rssFeedItem.title = items[i]["title"];
//      rssFeedItem.link = items[i]["link"];
//      rssFeedItem.pubDate = items[i]["pubDate"];
//      rssFeedItem.description = items[i]["description "];
//      rssFeedItemArr.add(rssFeedItem);
//      count++;
//    }
//       
//    js.release(proxy);
//    start = true;
//    print(count);
//  });
//  
//  
  }

  bool get applyAuthorStyles => true;
}