import 'package:polymer/polymer.dart';
import 'dart:html';
import 'domains.dart';
import 'dart:async';
import "package:js/js.dart" as js;
import "package:jsonp/jsonp.dart" as jsonp;
import 'itembox.dart';



@CustomTag('rss-feed')
class RssFeed extends PolymerElement {
   
  bool get applyAuthorStyles => true;
  
  final List<RssFeedItem> rssFeedItemArr = toObservable(new List<RssFeedItem>());
  DivElement bigspinnerElement;
  DivElement itemsElement;
  ItemBoxElement itemBoxElement;
  
  
  RssFeed .created() : super.created() {
    
    bigspinnerElement =this.shadowRoot.querySelector('#bigspinner');
    itemsElement = this.shadowRoot.querySelector('#items');
 
    Future<js.Proxy> result = jsonp.fetch(
        
//        uri: "http://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20rss%20where%20url%20%3D%20%22http%3A%2F%2Fquotidianohome.feedsportal.com%2Fc%2F33327%2Ff%2F565662%2Findex.rss%22&format=json&diagnostics=true&env=store%3A%2F%2Fdatatables.org%2Falltableswithkeys&callback=?"
        uri: "http://146.185.151.26/redis?redisid=it_IT:news:Home&callback=?"
    );
    result.then((js.Proxy proxy) {

      this.hidden = false;      
      display(proxy);
      
    });
    
  }
  
  
  void display(var data) {
    
    bigspinnerElement.hidden = true;
    itemBoxElement = querySelector('#itembox'); 
        
    for (var i=0;i < data.length;i++){
      
      RssFeedItem rssFeedItem =new RssFeedItem();
      
      rssFeedItem.id = i;
      rssFeedItem.title = data[i]["Title"];
      rssFeedItem.imglink = data[i]["ImgLink"];
//      rssFeedItem.pubDate = data[i]["PubDate"];
//      rssFeedItem.description = data[i]["description"];
      rssFeedItem.content = data[i]["Cont"];
      rssFeedItemArr.add(rssFeedItem);
      
    }
   
  }
  
  void selectItem(Event e){
    
    var id =  int.parse((e.currentTarget as Element).id);
    RssFeedItem rssFeedItem = rssFeedItemArr[id];

    itemsElement.hidden = true;
    itemBoxElement.showItem(rssFeedItem);
     
  }
 
  void showItems(Event e){
 
     bigspinnerElement.hidden = true;  
     itemsElement.hidden = false;
         
   }
     
 
}