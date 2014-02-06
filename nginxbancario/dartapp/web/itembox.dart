import 'package:polymer/polymer.dart';
import 'dart:html';
import 'domains.dart';
import 'rssfeed.dart';


@CustomTag('item-box')
class ItemBoxElement extends PolymerElement {
  
    @published String imglink;
    @published String title;
    @published String cont;
    
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