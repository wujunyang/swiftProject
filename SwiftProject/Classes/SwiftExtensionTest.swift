//
//  SwiftExtensionTest.swift
//  SwiftProject
//
//  Created by wujunyang on 2016/11/30.
//  Copyright © 2016年 wujunyang. All rights reserved.
//

import UIKit

class SwiftExtensionTest: NSObject {

    var userName:String="wujunyang";
    
    func showUserInfo() -> Void {
        print("显示的名称为：",self.userName);
    }
    
    func showUserMutatingInfo()
    {
        print("我是原来的值");
    }
}

extension SwiftExtensionTest
{
    //扩展类中的属性不能是读写
    var userWorkYear:String{
        return "工作五年" + self.userName;
    };
    
    func showNewUserInfo()
    {
        print("显示新的名称为：BD-",userName);
    }
}

extension SwiftExtensionTest
{
    func showOtherInfo(name:String) -> String {
        return "new" + name;
    }
}


extension Double {
    var km: Double { return self * 1_000.0 }
    var m: Double { return self }
    var cm: Double { return self / 100.0 }
    var mm: Double { return self / 1_000.0 }
    var ft: Double { return self / 3.28084 }
}
