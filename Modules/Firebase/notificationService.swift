//
//  notificationService.swift
//  TESTMYFIRSTAPP
//
//  Created by Total Solution on 07/12/22.
//
import UIKit
import Foundation
import UserNotifications

public class notificationservice: Codable{
    public init() {}
    
    
    public func notifications(notification: UNNotification){
        let notificationCenter = UNUserNotificationCenter.current()
        notificationCenter.requestAuthorization(options: [.sound,.badge,.alert]){ [self]success, error in
            if success {
                print("Authorization Success")
            } else{
                print("Authorization Failed")
            }
            //Dynamic Action Buttons
            let ActionButton:NSArray = []
            var unaction:Array<UNNotificationAction> = []
            if let Response = notification.request.content.userInfo as? [String : Any],
               let myData = Response["aps"] as? [String : Any],
               let ActionButton1:NSArray = myData["ActionButtons"] as? NSArray  {
                
                print("ActionButton===  \(ActionButton1)")
                var countdata = 0
                var datainarray = ActionButton1.count
                repeat {
                    // Do this
                    countdata += 1
                    if(countdata <= datainarray){
                        let buttonname = ActionButton1.mutableArrayValue(forKey: "buttonName")
                        let buttonurl = ActionButton1.mutableArrayValue(forKey: "buttonUrl")
                        let buttontype = ActionButton1.mutableArrayValue(forKey: "buttonType")
                        let buttoncolor = ActionButton1.mutableArrayValue(forKey: "buttonColor")
                        let btntyp = buttontype[countdata-1] as! String
                        let btncolor = buttoncolor[countdata-1]
                        let btnurl = buttonurl[countdata-1] as! String
                        let btnname = buttonname[countdata-1]
                        let actionparams2 = ",";
                        
                        let actionparams = btnurl + actionparams2  + btntyp
                        if(btncolor as? String == "0"){
                            unaction.append(UNNotificationAction(identifier: actionparams as! String, title: "\(buttonname[countdata-1])", options: .destructive))
                        }else{
                            unaction.append(UNNotificationAction(identifier: actionparams as! String,  title: "\(buttonname[countdata-1])",  options: .foreground))
                        }
                        if(datainarray==countdata){
                            let category = UNNotificationCategory(identifier: "ActionButtons", actions: unaction, intentIdentifiers: [],  options: [])
                            notificationCenter.setNotificationCategories([category])
                        }
                    }
                } while(0 <= datainarray)
             }
           }
    }
    public func getActionUrl(resp: UNNotificationResponse)->String{
        var link = ""
        let Actionr = resp.actionIdentifier as! String
         let ActionButton = Actionr.components(separatedBy: ",")
        if(ActionButton.count == 2){
            if(ActionButton[1] == "1"){
                link.append(ActionButton[0])
            }
            else if(ActionButton[1] == "2"){
                DeepLink().OpenBrowser(deeplink: ActionButton[0])
                link.append(ActionButton[0])
            }
        }
       return link
    }
    public func getActionType(resp: UNNotificationResponse)->String{
        var actiontype = ""
        let Actionr = resp.actionIdentifier
        let ActionButton = Actionr.components(separatedBy: ",")
        if(ActionButton.count == 2){
            actiontype.append(ActionButton[1])
        }
        return actiontype
    }
    
    
}
