//
//  SwiftAttributeTest.swift
//  SwiftProject 关于SWIFT属性知识点
//
//  Created by wujunyang on 2016/11/29.
//  Copyright © 2016年 wujunyang. All rights reserved.
//

import UIKit

class SwiftAttributeTest: NSObject {

    //常量和变量
    let userName="wujunyang";
    var workYear=7;
    
    func printUserInfo() {
        workYear+=1;
        print("当前信息内容为：\(userName) 工作的年限为：\(workYear)");
    }
    
    
    //var carNum: String;  在这边写是错误
    var carName:String="菲亚特";

    func printCarInfo(){
        var carNum: String;  //方法内可以定义
        carNum="闽D8888";
        print("当前开的车型为\(carName) 车牌：\(carNum)");
        
        //bool类型跟 if语句
        let isGoodCar:Bool=true;
        if isGoodCar
        {
            print("车牌感觉还行");
        }
        
        //string转int效果
        let curString:String = "1234"
        let changeInt:Int? = Int(curString);
        print("当前被转化的值为：\(changeInt)")
        
        //如果定义属性时用var时 下面没有再对它进行修改赋值时 系统会提醒用let
        if let firstNumber = Int("4") {
            if let secondNumber = Int("42") {
                if firstNumber < secondNumber && secondNumber < 100 {
                    print("\(firstNumber) < \(secondNumber) < 100")
                }
            }
        }
    }
    
    /* 多个属性值 
       跟转换效果  多行注解
     */
    func printCarColor(carNewName:String) -> String {
        var red, green, blue: Double;
        red=1.0; green=0.5;blue=0.8;
        let colorValue:String=String(format: "三色值为：%f %f  %f" ,red,green,blue);
        return carNewName+colorValue;
    }
    
    //元组运用
    func printCarGroundInfo()
    {
        print("--------元组运用知识点运行--------")
        let http404Error = (404, "Not Found")
        let (statusCode, statusMessage) = http404Error
        print("The status code is \(statusCode)")
        // prints "The status code is 404"
        print("The status message is \(statusMessage)")
        
        //可以用_代替 不是很重要的值
        let (justTheStatusCode, _) = http404Error
        print("The status code is \(justTheStatusCode)")
        
        //也可以用索引值
        print("The status code is \(http404Error.0)")
        // prints "The status code is 404"
        print("The status message is \(http404Error.1)")
        
        //单个元素命名
        let http200Status = (statusCode: 200, description: "OK")
        print("The status code is \(http200Status.statusCode)")
        print("The status message is \(http200Status.description)")
        
        print("-------------------------------")
    }
    
    //隐式展开可选项
    func printCarEmptyInfo() {
        var serverResponseCode: Int? = 404
        serverResponseCode = nil
        print("serverResponseCode 可空类型的值： \(serverResponseCode)");
        
        serverResponseCode=500;
        // !=两边的空格
        if serverResponseCode != nil
        {
            print("serverResponseCode 可空类型的值：\(serverResponseCode)");
            //打印：serverResponseCode 可空类型的值：Optional(500)
            //可选项被定义为隐式展开可选项。通过在声明的类型后边添加一个叹号（ int! ）而非问号（  int? ） 来书写隐式展开可选项  %i 要对应后面的类型
            print("serverResponseCode 可空类型的值：\(String(format: "%i",serverResponseCode!))");
            //打印：serverResponseCode 可空类型的值：500
        }
        else
        {
            print("serverResponseCode 可空类型的值为空");
        }
    }
}
