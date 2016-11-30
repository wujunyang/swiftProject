//
//  SwiftObjectOrientedTest.swift
//  SwiftProject 面向对象相关内容
//
//  Created by wujunyang on 2016/11/30.
//  Copyright © 2016年 wujunyang. All rights reserved.
//

import UIKit

class SwiftObjectOrientedTest: NSObject {

    func objectOrientedShow() -> Void {
        
        print("\n 狗狗对象");
        let dog=Dog();
        dog.name="狗狗琪琪";
        dog.showName();
        dog.dogShow();
        dog.makeNoise();
        print(dog.animalDescription);
        
        print("\n 狗狗对象初始化赋值");
        let otherDog=Dog(dogName:"小丽");
        print("当前狗狗的名称：",otherDog.curDogName);
    
        
        print("\n 猫对象");
        let cat=Cat();
        cat.name="小美";
        cat.makeNoise();
        cat.currentSpeed=10;
        cat.memProperty=15;
        print("get set属性值",cat.memProperty);
        print(cat.animalDescription);
        
        Cat.catMyInfo="类属性";
        Cat.showStatic();
    }
}

class Animal: NSObject  {
    var name:String="";
    
    //只读属性
    var animalDescription: String {
        return "这是一只叫 \(name) 的动物"
    }
    
    func showName() -> Void {
        print("当前动物的名字叫：",self.name);
    }
    
    
    //如果要阻止重写可以加final 形容 方法 属性都适用
    func makeNoise() {
        // 准备让子类重写，不要有内容
    }
    
}

class Dog: Animal {
    
    override init() {
        print("Dog对象初始化了");
    }
    
    var curDogName:String="";
    init(dogName:String) {
        self.curDogName=dogName;
    }
    
    func dogShow() -> Void {
        let curName=super.name;
        
        print("就是叫",curName);
    }
    
    //重写
    override func makeNoise() {
        print("狗狗 汪汪叫");
    }
    
    // deinit 反初始化器不接收任何形式参数，并且不需要写圆括号 当实例不再被需要的时候 Swift会自动将其释放掉
    deinit {
        print("狗狗对象结束了");
    }
}

class Cat: Animal {
    
    //get set写法
    private var member = 0
    public var memProperty: Int {
        
        set(i) {
            print("This is a setter!")
            member = i
        }
        
        get {
            print("This is a getter")
            return member
        }
    }
    
    //类属性 类方法
    static var catMyInfo="9999";
    
    static func showStatic()
    {
        print("当前的内容为："+self.catMyInfo);
    }
    
    //重写方法
    override func makeNoise() {
        print("猫 喵喵叫");
    }
    
    //重写属性
    override var animalDescription: String {
        return super.animalDescription + "被重写了";
    }
    
    //willSet 会在该值被存储之前被调用。
    //didSet 会在一个新值被存储后被调用。
    var currentSpeed: Double=0.0 {
        willSet(newTotalSteps) {
            print("被存储之前被调用 \(newTotalSteps)")
        }
        didSet {
            print("当前速度：",Int(currentSpeed / 10.0) + 1);
        }
    }
}
