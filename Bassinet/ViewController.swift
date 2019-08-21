//
//  ViewController.swift
//  Bassinet
//
//  Created by i_jhuhuchen on 2019/8/7.
//  Copyright © 2019 i_jhuhuchen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var barView2: CustomToolbar!
    var barView: CustomBar!
    
    @IBOutlet weak var customView: CustomView!
    
    var customView2: CustomView!
    var customToolbar: CustomToolbar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
//        customView2 = CustomView(frame:  CGRect(x: 0, y: self.view.frame.height - view.safeAreaInsets.bottom-self.view.frame.width*0.1813, width: self.view.frame.width, height:self.view.frame.width*0.1813))
//
//        self.view.addSubview(customView2)
        
        
        barView = CustomBar(frame:  CGRect(x: 0, y: self.view.frame.height - view.safeAreaInsets.bottom-self.view.frame.width*0.1813, width: self.view.frame.width, height:self.view.frame.width*0.1813))
        
        print("===== parent view frame =====")
        print(self.view.frame)
        
        self.view.addSubview(barView)
        
        
        
//        if #available(iOS 11.0, *) {
//            barView = CustomToolbar(frame:  CGRect(x: 0, y: self.view.frame.height - view.safeAreaInsets.bottom-self.view.frame.width*0.1813, width: self.view.frame.width, height:self.view.frame.width*0.1813))
//            let backView = UIView(frame: CGRect(x: 0, y: self.view.frame.height - view.safeAreaInsets.bottom, width: self.view.frame.width, height: view.safeAreaInsets.bottom))
//            backView.backgroundColor = .white
//            //self.view.addSubview(backView)
//        } else {
//            // Fallback on earlier versions
//            barView = CustomToolbar(frame:  CGRect(x: 0, y:self.view.frame.height - self.view.frame.width*0.1813, width: self.view.frame.width, height:self.view.frame.width*0.1813))
//        }
//        ///barView.delegate = self
//        barView.backgroundColor = UIColor.clear
//        self.view.addSubview(barView!)
    }


}

