import 'dart:html';
import 'dart:core';
//import 'rssfeed.dart';
import 'domains.dart';
import 'dart:async';
import "package:js/js.dart" as js;
import "package:jsonp/jsonp.dart" as jsonp;


List<RssFeedItem> rssFeedItemArr;
main() {
 
//  RssFeed rssFeed = new RssFeed();
//  List fruits = ['apples', 'oranges', 'pears'];
//  query('#tmpl').model = fruits;
  
  Future<js.Proxy> result = jsonp.fetch(
      uri: "http://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20rss%20where%20url%20%3D%20%22http%3A%2F%2Fquotidianohome.feedsportal.com%2Fc%2F33327%2Ff%2F565662%2Findex.rss%22&format=json&diagnostics=true&env=store%3A%2F%2Fdatatables.org%2Falltableswithkeys&callback=?"
        
  );
  result.then((js.Proxy proxy) {

    rssFeedItemArr = new List<RssFeedItem>();   
    var items = proxy["query"]["results"]["item"];

    for (var i=0;i < items.length;i++){
      
      RssFeedItem rssFeedItem =new RssFeedItem();
      
      rssFeedItem.title = items[i]["title"];
      rssFeedItem.link = items[i]["link"];
      rssFeedItem.pubDate = items[i]["pubDate"];
      
      var string = items[i]["description"];
      var found = string.indexOf('<img') != -1;
      if (found) {
      var foundpos = string.indexOf('<img');       
        rssFeedItem.description = string.substring(0, foundpos);
      }
      rssFeedItemArr.add(rssFeedItem);
//      count++;
    }
       
    js.release(proxy);
    print(rssFeedItemArr.length);
//    rssFeed.setUp(rssFeedItemArr);
//    query('#rss').model = rssFeedItemArr;
    
    query('#rss').model = rssFeedItemArr;
    
//    query('#tmpl');
    
//    start = true;
//    print(count);
  });
  
  
//  rssFeed.setUp();
//  query('#tmpl').model = 5;
//  query('#rss');
}