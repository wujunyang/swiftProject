//
//  SwiftFuncTest.swift
//  SwiftProject
//
//  Created by wujunyang on 2016/11/30.
//  Copyright © 2016年 wujunyang. All rights reserved.
//

import UIKit

class SwiftFuncTest: NSObject {

    func showInfo() -> Void {
        print("关于函数的运用");
        
        print(greet(person: "wujunyang"));
        
        print(readUserInfo(person: "wujunyang", address: "软件园二期"));
        
        let userAddress=readUserAddress(cityName: "厦门");
        print("用户的信息 "+userAddress.address+userAddress.Code);
        
        readCarInfo(carColor: "红色");
        
        
        showUserYear(workYear:20);
        showUserYear();
        
        
        print(arithmeticMean(numbers:1.2,3.9,8,3.0));
        
        var carNum="8888";
        print(showUserCarInfo(&carNum));
        print("修改后的carNum:"+carNum);
        
        print(chooseStepFunction(backward: false)(10));
    }
    
    func greet(person: String) -> String {
        let greeting = "Hello, " + person + "!"
        return greeting
    }
    

    func readUserInfo(person:String,address:String) ->String
    {
        let result = person + address;
        return result;
    }
    
    func readUserAddress(cityName:String) -> (address:String,Code:String) {
        var myAddress,myCode:String;
        if cityName.isEmpty {
            myAddress=""; myCode="";
            return (myAddress,myCode);
        }
        
        myAddress="当前地址：" + cityName;
        myCode="123456";
        
        return (myAddress,myCode);
    }
    
    func readCarInfo(carColor color:String) -> Void {
        print("当前车色："+color);
    }
    
    //默认值
    func showUserYear(workYear:Int=10) -> Void {
        print("当前工作的年限为：",workYear);
    }
    
    //可变形式参数
    func arithmeticMean(numbers: Double...) -> Double {
        var total: Double = 0
        for number in numbers {
            total += number
        }
        return total / Double(numbers.count)
    }
    
    //前面增加个_ 是为了调用时可以少写参数名 直接省略
    func showUserCarInfo(_ carNum:inout String) -> String {
        let carName="闽D8888";
        carNum=carName+"S";
        
        return carName + "WW";
    }
    
    //函数内包含函数
    func chooseStepFunction(backward: Bool) ->(Int)-> Int {
        func stepForward(input: Int) -> Int { return input + 1 }
        func stepBackward(input: Int) -> Int { return input - 1 }
        return backward ? stepBackward : stepForward
    }
}
