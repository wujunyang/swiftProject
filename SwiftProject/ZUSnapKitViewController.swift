//
//  ZUSnapKitViewController.swift
//  SwiftProject 关于snapkit布局可以看http://www.jianshu.com/p/f04556e2571e
//
//  Created by wujunyang on 2017/7/4.
//  Copyright © 2017年 wujunyang. All rights reserved.
//

import UIKit
import SnapKit

class ZUSnapKitViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor=UIColor.white;
        // Do any additional setup after loading the view.
        
        let myView = UIView.init();
        myView.backgroundColor=UIColor.red;
        myView.isUserInteractionEnabled=true;
        //手势事件
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(self.tapBlurButton(_:)))
        tapGesture.numberOfTapsRequired=1;
        myView.addGestureRecognizer(tapGesture);
        self.view.addSubview(myView);
        
        myView.snp.makeConstraints { (make) in
            make.width.equalTo(50);
            make.left.equalTo(20);
            make.top.equalTo(100);
            make.height.equalTo(50);
        };
    
        
        let myOtherView=UIView.init();
        myOtherView.backgroundColor=UIColor.yellow;
        self.view.addSubview(myOtherView);
        myOtherView.snp.makeConstraints { (make) in
            make.left.equalTo(myView.snp.right).offset(20);
            make.top.equalTo(myView.snp.bottom).offset(10);
            make.size.equalTo(CGSize(width: 100, height: 100));
        }
    }
    
    func tapBlurButton(_ sender: UITapGestureRecognizer) {
        self.dismiss(animated: true, completion: nil);
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
