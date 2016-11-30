//
//  SwiftProtocolTest.swift
//  SwiftProject 协议的运用
//
//  Created by wujunyang on 2016/11/30.
//  Copyright © 2016年 wujunyang. All rights reserved.
//

import UIKit

class SwiftProtocolTest: NSObject,SomeProtocol,RandomNumberGenerator,CounterDataSource {

    var name="wujunyang";
    var mustBeSettable=2;
    var doesNotNeedToBeSettable=1;
    
    init(name:String){
        
        self.name=name;
        print("当前的name为：",name);
        print("当前的mustBeSettable为：",mustBeSettable);
        print("当前的doesNotNeedToBeSettable为：",doesNotNeedToBeSettable);
    }
    
    func showUserName() -> Void {
        print("当前用户名：",self.name);
    }
    
    func random() -> Double
    {
        print("方法协议方法random返回的值：");
        
        return 10.0;
    }
}


protocol SomeProtocol {
    var mustBeSettable: Int { get set }
    var doesNotNeedToBeSettable: Int { get }
}

protocol RandomNumberGenerator {
    func random() -> Double

}
//协议扩展
extension RandomNumberGenerator {
    func randomBool() -> Bool {
        return random() > 0.5
    }
}

//@objc 可选协议
@objc protocol CounterDataSource {
    @objc optional func increment(forCount count: Int) -> Int
    @objc optional var fixedIncrement: Int { get }
}
