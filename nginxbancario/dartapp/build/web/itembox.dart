import 'package:polymer/polymer.dart';
import 'dart:html';
import 'domains.dart';
import 'rssfeed.dart';


@CustomTag('item-box')
class ItemBoxElement extends PolymerElement with ChangeNotifier  {
  
    @reflectable @published String get imglink => __$imglink; String __$imglink; @reflectable set imglink(String value) { __$imglink = notifyPropertyChange(#imglink, __$imglink, value); }
    @reflectable @published String get title => __$title; String __$title; @reflectable set title(String value) { __$title = notifyPropertyChange(#title, __$title, value); }
    @reflectable @published String get cont => __$cont; String __$cont; @reflectable set cont(String value) { __$cont = notifyPropertyChange(#cont, __$cont, value); }
    
    bool get applyAuthorStyles => true;
    
    RssFeed rssFedd;
  
  ItemBoxElement.created() : super.created() {
      
      this.hidden = true;
      rssFedd = querySelector('#rssfeed');
      
  }
      
  void showItem(RssFeedItem rssFeedItem ){
     
    imglink = rssFeedItem.imglink;
    title = rssFeedItem.title;
    cont = rssFeedItem.content;
    
    this.hidden = false;
    
  }    
  
  void closeItem(Event e){
       
     this.hidden = true;
//     centralBoxElement.showArticles(e);
     rssFedd.showItems(e);
        
   }
 
}