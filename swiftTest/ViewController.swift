//
//  ViewController.swift
//  swiftTest
//
//  Created by 张国兵 on 15/11/19.
//  Copyright © 2015年 zhangguobing. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        /**
        *  下面介绍一个简单的实现swift和oc混编的方法
        *
        *  1.我们创建一个swift的工程，在vc上随便画格btn添加一个点击事件备用
        *  2.创建一个类，里面随便定义一个方法备用，当我们创建这个类的时候xcode会检测到并且提示你创建桥接文件，我们点击是系统就把桥接文件创建好了,如果你闲的蛋疼有强迫症，非要自定义文件的名字，麻烦你改的时候记得把setting下的Object-C Birdging Heads下的头文件名字改成你自己的文件名
        *  3.在桥接文件里面包含你要调用类方法的头文件，在相应的swift文件中调用我们自定义类中的方法就可以
        *  注意：当我们初始化这个头文件的时候可能类中只有一个方法但是当我们动态添加的类方法的时候可能发现找不到方法名，不要着急过一会就找到了，xcode通过桥接文件去查找你的方法名的时候需要时间，还有网上说的Defines Module要设置为YES那事因为之前的xcode还没有现在的这么牛逼需要设置桥接形式，现在xcode会自己查找了所以这个属性对我们来说就是鸡肋了可以不用管它。
        *   oc文件中调用swift文件中的方法
            *swift是没有头文件这一概念的，系统会帮我自动生成一个，所以我们只需要在引用的时候包含一下系统头文件即可
            #import "swiftTest-swift.h"，其中swiftTest是你的设置里面的Product Module Name
            *包含之后你就可以随便调用了，xcode就是这么任性
            *
        *  就是这么简单下面是一个小例子，很简单
        */
        let pay:UIButton = UIButton(type:.Custom)
        pay.backgroundColor = UIColor.orangeColor()
        pay.frame = CGRectMake(100, 100, 100, 40)
        pay.setTitle("swift调oc", forState:UIControlState.Normal)
        pay.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        pay.addTarget(self, action: "toDoSomeThing", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(pay)
        
        let log:UIButton = UIButton(type:.Custom)
        log.backgroundColor = UIColor.orangeColor()
        log.frame = CGRectMake(100, 200, 100, 40)
        log.setTitle("oc调swift", forState:UIControlState.Normal)
        log.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        log.addTarget(self, action: "log", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(log)
        
    }
    func toDoSomeThing() {
        
        Tool.alert()

    }
    func log(){
        
        Tool.helloWord()
        
    }
    func swiftFunc(){
        
        print("hello world");
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

