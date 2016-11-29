//
//  wjyElementType.swift
//  SwiftProject
//
//  Created by wujunyang on 2016/11/22.
//  Copyright © 2016年 wujunyang. All rights reserved.
//

import UIKit

class wjyElementType: NSObject {

    func typeTestFunction() {
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
        
        var airports=["DUB":"ABC"];
        
        if let oldValue = airports.updateValue("Dublin Airport", forKey: "DUB") {
            print("The old value for DUB was \(oldValue).")
        }
    }
    
    

    
}
