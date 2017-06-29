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


    //patch测试
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        //调用SwiftAttributeTest的方法
        let swiftAttributeTest=SwiftAttributeTest();
        swiftAttributeTest.printUserInfo();
        swiftAttributeTest.printCarInfo();
        print("当前车辆色值内容：\(swiftAttributeTest.printCarColor(carNewName: "菲亚特"))");
        swiftAttributeTest.printCarGroundInfo();
        swiftAttributeTest.printCarEmptyInfo();
        
        print("\n\n");
        //集合运用
        let swiftArrayTest=SwiftArrayTest();
        swiftArrayTest.arrayInfoTest();
        swiftArrayTest.setInfoTest();
        swiftArrayTest.DictionaryInfoTest();
        
        print("\n\n");
        let swiftConditionTest=SwiftConditionTest();
        swiftConditionTest.forFuncTest();
        swiftConditionTest.WhileFuncTest();
        swiftConditionTest.ifFuncTest();
        swiftConditionTest.switchFuncTest();
        
        print("\n\n");
        let swiftFuncTest=SwiftFuncTest();
        swiftFuncTest.showInfo();
        
        
        let swiftEnumTest=SwiftEnumTest();
        swiftEnumTest.showEnumInfo();
        
        
        let swiftObjectOrientedTest=SwiftObjectOrientedTest();
        swiftObjectOrientedTest.objectOrientedShow();
        
        print("\n\n扩展类");
        let swiftExtensionTest=SwiftExtensionTest();
        swiftExtensionTest.showUserInfo();
        swiftExtensionTest.showNewUserInfo();
        print("当前内容：",swiftExtensionTest.userWorkYear);
        
        print("\n\n Double扩展类");
        let oneInch = 25.4.mm
        print("One inch is \(oneInch) meters")
        
        print("\n\n 协议运用");
        let swiftProtocolTest=SwiftProtocolTest(name:"myName");
        swiftProtocolTest.showUserName();
        print("协议",swiftProtocolTest.random());
        print("协议扩展",swiftProtocolTest.randomBool())
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
}

