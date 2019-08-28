//
//  ViewController.swift
//  Bassinet
//
//  Created by i_jhuhuchen on 2019/8/7.
//  Copyright © 2019 i_jhuhuchen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var barView: CustomBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
//        customView2 = CustomView(frame:  CGRect(x: 0, y: self.view.frame.height - view.safeAreaInsets.bottom-self.view.frame.width*0.1813, width: self.view.frame.width, height:self.view.frame.width*0.1813))
//
//        self.view.addSubview(customView2)
        
        if #available(iOS 11.0, *) {
            barView = CustomBar(frame:  CGRect(x: 0, y: self.view.frame.height - view.safeAreaInsets.bottom-self.view.frame.width*0.1813, width: self.view.frame.width, height:self.view.frame.width*0.1813))
        }else{
            barView = CustomBar(frame:  CGRect(x: 0, y:self.view.frame.height - self.view.frame.width*0.1813, width: self.view.frame.width, height:self.view.frame.width*0.1813))
        }
        barView.backgroundColor = UIColor.clear
        self.view.addSubview(barView)
        
    }

}

