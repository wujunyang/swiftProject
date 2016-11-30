//
//  SwiftArrayTest.swift
//  SwiftProject 关于swift 集合跟数组的运用 （数组、集合还有字典）
//
//  Created by wujunyang on 2016/11/29.
//  Copyright © 2016年 wujunyang. All rights reserved.
//

import UIKit

class SwiftArrayTest: NSObject {

    //数组操作
    func arrayInfoTest() -> Void {
        //初始化数组
        var someInts = [Int]();
        
        //增加值
        someInts.append(10);
        someInts.append(15);
        
        print("当前数组someInts个数为：\(someInts.count)");
        for item in someInts {
            print(String (format:"当前值为：%i",item));
        }
        
        //清空数组
        someInts=[];
        print("清空后的数组someInts个数为：\(someInts.count)");
        if someInts.isEmpty
        {
            print("当前数组为空了");
        }
        
        //初始化带有默认值
        print("\n初始化带有默认值");
        var threeDoubles = Array(repeating: 1.3, count: 3);
        threeDoubles.append(5);
        
        threeDoubles[2]=1.5;
        
        for item in threeDoubles {
            print(String (format:"当前值为：%f",item));
        }
        
        //两个数组之合
        print("\n两个数组之合");
        let anotherDoubles=[1.8,1.9];
        let anotherThreeDoubles=anotherDoubles+threeDoubles;
        for item in anotherThreeDoubles {
            print(String (format:"当前值为：%f",item));
        }
        
        //字符串数组
        print("\n字符串数组");
        var shoppingList: [String] = ["wujunyang", "Milk"];
        shoppingList.append("cnblogs");
        for item in shoppingList
        {
            print("当前字符串值内容："+item);
        }
        
        print("\n字符串数组 简便初始化");
        var shoppingOtherList=["cocoaChina","code4App"];
        for item in shoppingOtherList
        {
            print("当前字符串值内容："+item);
        }
        
        
        print("\n字符串数组 删除操作");
        //能增加 删除的数组是可变数组 也就是var定义类型
        shoppingOtherList.remove(at: 0);
        for item in shoppingOtherList
        {
            print("当前字符串值内容："+item);
        }
        
        
        shoppingOtherList.append("newCocoaChina");
        shoppingOtherList.removeFirst();
        for item in shoppingOtherList
        {
            print("当前字符串值内容："+item);
        }
        
        
        shoppingOtherList.append("newCode4App");
        shoppingOtherList.append("newCnblogs");
        shoppingOtherList.removeLast();
        for item in shoppingOtherList
        {
            print("当前字符串值内容："+item);
        }
        
        
        shoppingOtherList.removeAll();
        
        
        print("\n替换数组操作");
        //替换数组
        var changeArrayList=["a","b","c","d","e","f"];
        changeArrayList[0]="x";
        
        print("当前changeArrayList个数为:"+String (format:"当前值为:",changeArrayList.count));
        
        changeArrayList[3...5]=["w","s"];
        print("当前changeArrayList个数为:"+String (format:"当前值为:",changeArrayList.count));
        for item in changeArrayList
        {
            print("当前字符串值内容："+item);
        }
        
        print("\n遍历数组的另外一种方式");
        for (index, value) in changeArrayList.enumerated() {
            print("当前值为 \(index + 1): \(value)")
        }
    }
    
    //集合操作
    func setInfoTest() -> Void {
        
        print("\n set集合操作");
        var letters = Set<Character>();
        letters.insert("a");
        letters.insert("c");
        print("当前letters个数为:"+String (format:"当前值为：",letters.count));
        for item in letters{
            print("当前字符串值内容:",item);
        }
        
        print("\n set移除某值")
        var favoriteGenres: Set<String> = ["cnblogs", "Classical", "cocoaChaing"];
        if let removedGenre = favoriteGenres.remove("cocoaChaing") {
            print("\(removedGenre) 被删除了")
        } else {
            print("没有找到要删除的项")
        }
        
        print("\n set是否包含某值")
        var favoriteOtherGenres: Set = ["Rock", "Classical", "Hip hop","cnblogs"];
        if favoriteOtherGenres.contains("cnblogs") {
            print("包含项值cnblogs")
        } else {
            print("项值不存在")
        }
        
        //set是无序 可以用sorted进行排序 大写前面
        print("\n set排序")
        for genre in favoriteOtherGenres.sorted() {
            print("\(genre)")
        }
        
        print("\n 删除操作")
        favoriteOtherGenres.removeFirst();
        for item in favoriteOtherGenres{
            print("当前字符串值内容:",item);
        }
        
        favoriteOtherGenres.removeAll();
        if favoriteOtherGenres.isEmpty
        {
            print("favoriteOtherGenres被删除了");
        }
    }
    
    func DictionaryInfoTest() -> Void {
        
        print("\n Dictionary字典操作");
        var namesOfIntegers = [Int: String]();
        namesOfIntegers[0]="wujunyang";
        namesOfIntegers[1]="cnblogs";
        for (myKey, myName) in namesOfIntegers {
            print("\(myKey): \(myName)")
        }
        
        //清空
        namesOfIntegers = [:];
        if namesOfIntegers.isEmpty
        {
            print("namesOfIntegers被清空了");
        }
        
        print("\n字典的操作");
        var airports: [String: String] = ["YYZ": "Toronto Pearson", "DUB": "Dublin"];
        airports["YYZ"]="XM";
        for airportName in airports.values {
            print("机场的名字: \(airportName)")
        }
        for airportCode in airports.keys {
            print("机场的代码: \(airportCode)")
        }
        if let removedValue = airports.removeValue(forKey: "DUB") {
            print("删除DUB的值 \(removedValue).")
        } else {
            print("字典没有找到DUB")
        }
        
        print("\n字典的更新操作");
        var otherAirports = ["YYZ": "Toronto Pearson", "DUB": "Dublin"];
        if let oldValue = otherAirports.updateValue("F Z", forKey: "DUB") {
            print("DUB旧值为： \(oldValue).")
        }
        if let airportName = otherAirports["DUB"] {
            print("DUB被修改后的值：\(airportName).")
        } else {
            print("在字典没有找到DUB内容");
        }
        
        //拿到数组的值
        print("\n字典的KEY转化成数组操作");
        let airportCodes = [String](otherAirports.keys);
        for item in airportCodes
        {
            print("当前机场的代码："+item);
        }
        let airportNames = [String](otherAirports.values);
        for item in airportNames
        {
            print("当前机场的名字："+item);
        }
    }
}
