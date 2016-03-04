//
//  ViewController.swift
//  TestAnimations
//
//  Created by tanson on 16/3/3.
//  Copyright © 2016年 tanson. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,CirCleViewDataSource,CirCleViewDelegate {
    
    var imageNameArray = ["tt1.jpg","tt2.jpg","tt3.jpg","tt4.jpg"]
    var cirView:CirCleView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.edgesForExtendedLayout = UIRectEdge.None
        let circle = CirCleView(frame: CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: 200), dataSource: self)
        circle.delegate = self
        self.view.addSubview(circle)
        self.cirView = circle
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //MARK:- data source
    
    func cirCleViewNumberOfPage(cirCleView: CirCleView) -> Int {
        return self.imageNameArray.count
    }
    
    func cirCleView(cirCleView: CirCleView, willShowView: UIImageView, forIndex: Int) {
        let image = UIImage(named: self.imageNameArray[forIndex] )
        willShowView.image = image
    }
    
    func cirCleViewPageViewTap(cirCleView: CirCleView, tapIndex: Int) {
        print("tap indx :\(tapIndex)")
    }
    
}

