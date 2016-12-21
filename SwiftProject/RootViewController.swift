//
//  RootViewController.swift
//  SwiftProject
//
//  Created by wujunyang on 2016/11/21.
//  Copyright © 2016年 wujunyang. All rights reserved.
//

import UIKit

class RootViewController: UIViewController, UIPageViewControllerDelegate,UITableViewDelegate,UITableViewDataSource {

    var pageViewController: UIPageViewController?
    var nameArr = ["嘿嘿嘿1","哈哈哈2","啦啦啦3","哈哈哈4","啦啦啦5"]
    let myTableView=UITableView();

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // Configure the page view controller and add it as a child view controller.
//        self.pageViewController = UIPageViewController(transitionStyle: .pageCurl, navigationOrientation: .horizontal, options: nil)
//        self.pageViewController!.delegate = self
//
//        let startingViewController: DataViewController = self.modelController.viewControllerAtIndex(0, storyboard: self.storyboard!)!
//        let viewControllers = [startingViewController]
//        self.pageViewController!.setViewControllers(viewControllers, direction: .forward, animated: false, completion: {done in })
//
//        self.pageViewController!.dataSource = self.modelController
//
//        self.addChildViewController(self.pageViewController!)
//        self.view.addSubview(self.pageViewController!.view)
//
//        // Set the page view controller's bounds using an inset rect so that self's view is visible around the edges of the pages.
//        var pageViewRect = self.view.bounds
//        if UIDevice.current.userInterfaceIdiom == .pad {
//            pageViewRect = pageViewRect.insetBy(dx: 40.0, dy: 40.0)
//        }
//        self.pageViewController!.view.frame = pageViewRect
//
//        self.pageViewController!.didMove(toParentViewController: self)
        
        //UI测试布局
        //self.loayTestUI();
        self.loayTableViewUI();
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func loayTableViewUI()
    {
        myTableView.frame=CGRect(x:0,y:0,width:UIScreen.main.bounds.size.width,height:UIScreen.main.bounds.size.height);
        myTableView.translatesAutoresizingMaskIntoConstraints=true;
        myTableView.delegate=self;
        myTableView.dataSource=self;
        myTableView.backgroundColor=UIColor.blue;
        myTableView.tableFooterView=UIView.init();
        myTableView.tableHeaderView=self.addTableHeaderView();
        self.view.addSubview(myTableView);
    }
    
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        print("当前选中的内容为：",indexPath.row);
    }
    
    public func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        return 44;
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        var cell=tableView.dequeueReusableCell(withIdentifier: "reuse")
        
        if cell == nil {
            cell = UITableViewCell(style: .default, reuseIdentifier:"reuse")
            
        }
        cell?.textLabel?.text=nameArr[indexPath.row];
        return cell!;
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return nameArr.count;
    }
    
    public func numberOfSections(in tableView: UITableView) -> Int
    {
        return 1;
    }
    
    func addTableHeaderView() -> UIView
    {
        let headerView=UIView.init(frame: CGRect(x:0,y:0,width:UIScreen.main.bounds.size.width,height:100));
        headerView.backgroundColor=UIColor.red;
        return headerView;
    }
    
    
    func loayTestUI() -> Void {
        //创建一个视图
        let myView=UIView.init();
        myView.frame=CGRect(x:20,y:40,width:260,height:50);
        myView.backgroundColor=UIColor.red;
        self.view.addSubview(myView);
        
        print("当前的中心点为：",myView.center);
        
        //创建一个视图
        let myOneView=UIView.init(frame: CGRect(x:20,y:100,width:260,height:40));
        myOneView.backgroundColor=UIColor.blue;
        self.view.addSubview(myOneView);
        
        //创建一个BUGGON
        let myButton=UIButton.init(frame: CGRect(x:20,y:150,width:50,height:40));
        myButton.setTitle("保存", for: UIControlState.normal);
        myButton.setTitle("点击", for: UIControlState.highlighted);
        myButton.backgroundColor=UIColor.blue;
        myButton.titleLabel?.font=UIFont.systemFont(ofSize: 19);
        myButton.setTitleColor(UIColor.yellow, for: UIControlState.normal);
        myButton.addTarget(self, action:#selector(RootViewController.buttonSave), for: UIControlEvents.touchDown);
        self.view.addSubview(myButton);
        
        //创建一个UILABEL
        let myLabel=UILabel.init(frame: CGRect(x:20,y:200,width:260,height:40));
        myLabel.backgroundColor=UIColor.black;
        myLabel.textAlignment=NSTextAlignment.center;
        myLabel.font=UIFont.systemFont(ofSize: 12);
        myLabel.textColor=UIColor.white;
        myLabel.text="这是一个文本内容的控件";
        self.view.addSubview(myLabel);
        
        //创建一个UITextField
        let myTextField=UITextField.init(frame: CGRect(x:20,y:250,width:260,height:40));
        myTextField.borderStyle=UITextBorderStyle.line;
        myTextField.backgroundColor=UIColor.gray;
        myTextField.placeholder="请输入内容";
        myTextField.font=UIFont.systemFont(ofSize: 16);
        myTextField.textColor=UIColor.black;
        myTextField.clearButtonMode=UITextFieldViewMode.always;
        myTextField.returnKeyType=UIReturnKeyType.done;
        myTextField.keyboardType=UIKeyboardType.numbersAndPunctuation;
        self.view.addSubview(myTextField);
        
        //创建一个指示器
        let myActivity=UIActivityIndicatorView.init(frame: CGRect(x:20,y:300,width:260,height:40));
        self.view.addSubview(myActivity);
        myActivity.startAnimating();
        myActivity.activityIndicatorViewStyle=UIActivityIndicatorViewStyle.whiteLarge;
        
        //分段
        let mySegement=UISegmentedControl.init(items: ["一年级","二年级","三年级","四年级"]);
        mySegement.frame=CGRect(x:20,y:350,width:260,height:40);
        mySegement.selectedSegmentIndex=2;
        mySegement.tintColor=UIColor.blue;
        mySegement.addTarget(self, action:#selector(RootViewController.mySegementAction(segement:)), for: UIControlEvents.valueChanged);
        self.view.addSubview(mySegement);
    }
    
    func buttonSave()
    {
        print("保存成功");
    }
    
    func mySegementAction(segement:UISegmentedControl)
    {
        print("当前选中的值为",segement.selectedSegmentIndex);
    }

    var modelController: ModelController {
        // Return the model controller object, creating it if necessary.
        // In more complex implementations, the model controller may be passed to the view controller.
        if _modelController == nil {
            _modelController = ModelController()
        }
        return _modelController!
    }

    var _modelController: ModelController? = nil

    // MARK: - UIPageViewController delegate methods

    func pageViewController(_ pageViewController: UIPageViewController, spineLocationFor orientation: UIInterfaceOrientation) -> UIPageViewControllerSpineLocation {
        if (orientation == .portrait) || (orientation == .portraitUpsideDown) || (UIDevice.current.userInterfaceIdiom == .phone) {
            // In portrait orientation or on iPhone: Set the spine position to "min" and the page view controller's view controllers array to contain just one view controller. Setting the spine position to 'UIPageViewControllerSpineLocationMid' in landscape orientation sets the doubleSided property to true, so set it to false here.
            let currentViewController = self.pageViewController!.viewControllers![0]
            let viewControllers = [currentViewController]
            self.pageViewController!.setViewControllers(viewControllers, direction: .forward, animated: true, completion: {done in })

            self.pageViewController!.isDoubleSided = false
            return .min
        }

        // In landscape orientation: Set set the spine location to "mid" and the page view controller's view controllers array to contain two view controllers. If the current page is even, set it to contain the current and next view controllers; if it is odd, set the array to contain the previous and current view controllers.
        let currentViewController = self.pageViewController!.viewControllers![0] as! DataViewController
        var viewControllers: [UIViewController]

        let indexOfCurrentViewController = self.modelController.indexOfViewController(currentViewController)
        if (indexOfCurrentViewController == 0) || (indexOfCurrentViewController % 2 == 0) {
            let nextViewController = self.modelController.pageViewController(self.pageViewController!, viewControllerAfter: currentViewController)
            viewControllers = [currentViewController, nextViewController!]
        } else {
            let previousViewController = self.modelController.pageViewController(self.pageViewController!, viewControllerBefore: currentViewController)
            viewControllers = [previousViewController!, currentViewController]
        }
        self.pageViewController!.setViewControllers(viewControllers, direction: .forward, animated: true, completion: {done in })

        return .mid
    }


}

