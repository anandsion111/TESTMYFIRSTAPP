//
//  DeepLink.swift
//  TESTMYFIRSTAPP
//
//  Created by Total Solution on 15/11/22.
//

import UIKit
import Foundation
import UserNotifications

public class DeepLink:  UIViewController, UNUserNotificationCenterDelegate {

   public override func viewDidLoad() {
        super.viewDidLoad()
         
    }
 
    public func getDeepLink(notification: UNNotification)->String{
        let deeplink = "" as! String?
             
        print("Notification Data => \(notification.request.content.userInfo) ")

        //let userInfo = notification.request.content.userInfo
       // let aps = userInfo[AnyHashable("aps")]
        
        //print("APNS Data", aps )
        
        if let Response = notification.request.content.userInfo as? [String : Any],
              let myData = Response["aps"] as? [String : Any],
              let deeplink = myData["deeplink"] as? String  {
          //  print("deeplink --> ", deeplink)
            if(!deeplink.isEmpty){
               // return deeplink
                let actiontype = DeepLink().getActionType(notification: notification)
              print(actiontype == 1)
                print(actiontype)
                if(actiontype == 1){
                   return deeplink
                }else if(actiontype == 2){
                    DeepLink().OpenBrowser(deeplink: deeplink)
                    return deeplink
                }
                
            }else{
                return "nil"
            }
              
        }
         
        
        return deeplink as! String
    }
    public func getActionType(notification: UNNotification)->Int{
        let actionType = 1
         if let Response = notification.request.content.userInfo as? [String : Any],
              let myData = Response["aps"] as? [String : Any],
              let actionType = myData["actionType"] as? Int  {
            return actionType as! Int
         }
        return actionType as! Int
    }
    public func OpenBrowser(deeplink: String){
        if let requestUrl = NSURL(string: deeplink) {
            UIApplication.shared.openURL(requestUrl as URL)
       }
    }
    public func goToSchene(notification: UNNotification){
   // public func goToSchene(pathval: String){
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc =  storyboard.instantiateViewController(withIdentifier: self.getDeepLink(notification: notification) as! String)
       /* switch pathval {
        case "SignUp":
          let vc = storyboard.instantiateViewController(withIdentifier: pathval) as! SignupViewController
        default:
            
            print("Have you done something new?")
        }
         */
        if let topVC = UIApplication.getTopViewController() {
            topVC.navigationController?.pushViewController(vc, animated: false)
        }
    }
}


public extension UIApplication {
    class func getTopViewController(base: UIViewController? = UIApplication.shared.keyWindow?.rootViewController) -> UIViewController? {

        if let nav = base as? UINavigationController {
            return getTopViewController(base: nav.visibleViewController)

        } else if let tab = base as? UITabBarController, let selected = tab.selectedViewController {
            return getTopViewController(base: selected)

        } else if let presented = base?.presentedViewController {
            return getTopViewController(base: presented)
        }
        return base
    }
}
