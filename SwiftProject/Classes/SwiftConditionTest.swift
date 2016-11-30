//
//  SwiftConditionTest.swift
//  SwiftProject swift语句语法
//
//  Created by wujunyang on 2016/11/29.
//  Copyright © 2016年 wujunyang. All rights reserved.
//

import UIKit

class SwiftConditionTest: NSObject {

    func forFuncTest(){
        
        print("\n for语句的运用");
        for item in 1...10
        {
            print("当前的值为：",item);
        }
        
        //如果下面没用到可以用_代替
        let base = 3
        let power = 2
        var answer = 1
        for _ in 1...power {
            answer *= base
        }
        print("\(base) 的 \(power) 次方是 \(answer)")
        
        //字典
        let numberOfLegs = ["spider": 8, "ant": 6, "cat": 4]
        for (animalName, legCount) in numberOfLegs {
            print("\(animalName)有 \(legCount) 气球")
        }
        
        /*
          ant有 6 气球
          spider有 8 气球
          cat有 4 气球 */
    }
    
    func WhileFuncTest()
    {
        print("\n while语句的运用");
        
        var userAge:Int=1;
        while userAge<5 {
            
            userAge+=1;
            print("当前值为",userAge);
        }
        
        /*
        while语句的运用
        当前值为 2
        当前值为 3
        当前值为 4
        当前值为 5 */
        
        //Repeat-While  先执行一次代码再判断
        print("\n Repeat-While语句的运用");
        var carYear:Int=1;
        repeat {
            carYear+=1;
            print("车当前值为",carYear);
        } while carYear<5
    }
    
    func ifFuncTest() -> Void {
        
        print("\n if else语句的运用");
        let temperatureInFahrenheit = 90
        if temperatureInFahrenheit <= 32 {
            print("小于32");
        } else if temperatureInFahrenheit >= 86 {
            print("大于等于86");
        } else {
            print("32跟86之间");
        }
    }
    
    func switchFuncTest()
    {
        //switch默认只能执行一个 最先执行后就返回 就算下面有符合要求也不会再执行
        print("\n switch语句的运用");
        let anotherCharacter: Character = "a"
        switch anotherCharacter {
        case "b":
            print("字母B")
        case "a","A":
            print("字母A")
        default:
            print("没有字母A B")
        }
        
        print("\n switch语句区间匹配的运用");
        let approximateCount = 62
        let countedThings = "moons orbiting Saturn"
        var naturalCount: String
        switch approximateCount {
        case 1:
            naturalCount = "no";
        case 2..<5:
            naturalCount = "a few";
        case 5..<12:
            naturalCount = "several";
        case 12..<100:
            naturalCount = "dozens of";
        case 100..<1000:
            naturalCount = "hundreds of";
        default:
            naturalCount = "many";
        }
        print("There are \(naturalCount) \(countedThings).");
        
        
        print("\n switch语句元组的运用");
        let somePoint = (1, 1)
        switch somePoint {
        case (0, 0):
            print("(0, 0) is at the origin")
        case (_, 0):
            print("(\(somePoint.0), 0) is on the x-axis")
        case (0, _):
            print("(0, \(somePoint.1)) is on the y-axis")
        case (-2...2, -2...2):
            print("(\(somePoint.0), \(somePoint.1)) is inside the box")
        default:
            print("(\(somePoint.0), \(somePoint.1)) is outside of the box")
        }
        
        print("\n switch语句元组值绑定的运用");
        let anotherPoint = (2, 0)
        switch anotherPoint {
        case (let x, 0):
            print("on the x-axis with an x value of \(x)")
        case (0, let y):
            print("on the y-axis with a y value of \(y)")
        case let (x, y):
            print("somewhere else at (\(x), \(y))")
        }
        
        print("\n switch语句结合where的运用");
        //switch 情况可以使用 where 分句来检查额外的情况
        let carNewNum=6;
        switch carNewNum {
        case 1:
            print("当前值1");
        case 2..<5:
            print("2到5之间");
        case 5..<12 where carNewNum>8:
            print("5到12之间");
        default:
            print("另外的情况");
        }
        
        
        print("\n switch语句fallthrough的运用");
        //fallthrough 关键字只是使代码执行直接移动到下一个情况
        let integerToDescribe = 5
        var description = "The number \(integerToDescribe) is"
        switch integerToDescribe {
        case 2, 3, 5, 7, 11, 13, 17, 19:
            description += " a prime number, and also"
            fallthrough
        default:
            description += " an integer."
        }
        print(description)
    }
}
