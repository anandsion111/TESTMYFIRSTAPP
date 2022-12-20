//
//  Media.swift
//  TESTMYFIRSTAPP
//
//  Created by Total Solution on 16/11/22.
//

import UIKit
import Foundation
import UserNotifications



public class Media:  UIViewController, UNUserNotificationCenterDelegate {

   public override func viewDidLoad() {
        super.viewDidLoad()
         
    }
 
    
    
    public func getImageUrl(notification: UNNotification)->String{
        let imgUrl = "" as! String?
        if let Response = notification.request.content.userInfo as? [String : Any],
              let myData = Response["aps"] as? [String : Any],
              let imgUrl = myData["imgUrl"] as? String  {
            print("imgUrl --> ", imgUrl)
            if(!imgUrl.isEmpty){
            return imgUrl
            }else{
                return "nil"
            }
         }
        return imgUrl as! String
    }
    public func getIconUrl(notification: UNNotification)->String{
        let iconUrl = "" as! String?
        if let Response = notification.request.content.userInfo as? [String : Any],
              let myData = Response["aps"] as? [String : Any],
              let iconUrl = myData["iconUrl"] as? String  {
            print("iconUrl --> ", iconUrl)
            if(!iconUrl.isEmpty){
            return iconUrl
            }else{
                return "nil"
            }
         }
        return iconUrl as! String
    }
    public func getMediaType(notification: UNNotification)->Int{
        let mediaType = 1
        if let Response = notification.request.content.userInfo as? [String : Any],
              let myData = Response["aps"] as? [String : Any],
              let mediaType = myData["mediaType"] as? Int  {
            return mediaType
        }
        return mediaType as! Int
    }
    
    
}
