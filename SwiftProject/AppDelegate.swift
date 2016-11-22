//
//  AppDelegate.swift
//  SwiftProject
//
//  Created by wujunyang on 2016/11/21.
//  Copyright © 2016年 wujunyang. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        self.stringFunction();
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


    func stringFunction() {
        //初始化变量
        var userName:String;
        userName="wujunyang";
        print("当前的内容为："+userName+"");
        
        //初始化多个变量，及占位符的运用
        var password,age,sex:String;
        password="123456";
        age="10";
        sex="男";
        print("当前信息为：\(password) 年龄：\(age) 性别:\(sex) ");
        
        //初始化常量
        let workYear=20;
        print("工作的年龄为：\(workYear)");
        
        //初始化Int型
        let myAge:Int=20;
        print("当Int前值：\(myAge)");
        
        let myOtherAge:UInt=10;
        print("当UInt前值：\(myOtherAge)");
        
        //元组
        let http404Error=("404","找不到");
        print("当前错误的内容为：\(http404Error.0) \(http404Error.1)");
        
        let(errorCode,errorMessage)=http404Error;
        print("当前错误的内容为：\(errorCode) \(errorMessage)");
        
        let(errorNewCode,_)=http404Error;
        print("当前错误的内容为：\(errorNewCode)");
        
        //元组 名称
        let http200Status = (statusCode: 200, description: "OK")
        print("The status code is \(http200Status.statusCode)")
        print("The status message is \(http200Status.description)")
    }
}

