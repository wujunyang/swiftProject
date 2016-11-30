//
//  SwiftEnumTest.swift
//  SwiftProject
//
//  Created by wujunyang on 2016/11/30.
//  Copyright © 2016年 wujunyang. All rights reserved.
//

import UIKit

enum GroldCompassPoint {
    case x
    case y
}

class SwiftEnumTest: NSObject {

    enum CompassPoint {
        case north
        case south
        case east
        case west
    }
    
    
    enum CarType:String {
        case redCar="红色的车"
        case bludCar="蓝色的车"
        case whiteCar="白色的车"
    }
    
    enum AddressType:Int {
        case leftAddress=1
        case rightAddress
    }
    
    func showEnumInfo() -> Void {
        
        let directionToHead=CompassPoint.north;
        switch directionToHead {
        case .north:
            print("Lots of planets have a north")
        case .south:
            print("Watch out for penguins")
        case .east:
            print("Where the sun rises")
        case .west:
            print("Where the skies are blue")
        }
        
        //.rawValue 获取初始值
        print("当前为：",CarType.bludCar.rawValue);
        
        
        print("当前为：",AddressType.leftAddress.rawValue);
        print("当前为：",AddressType.rightAddress.rawValue);
    }
}
