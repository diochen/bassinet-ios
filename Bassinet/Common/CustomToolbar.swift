//
//  CustomToolbar.swift
//  Bassinet
//
//  Created by i_jhuhuchen on 2019/8/19.
//  Copyright © 2019 i_jhuhuchen. All rights reserved.
//

import UIKit

class CustomToolbar: UIView {
    let CONTENT_XIB_NAME = "CustomToolbar"
    
    @IBOutlet var view: UIView!

    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
        //fatalError("init(coder:) has not been implemented")
    }
    

    func commonInit() {
        Bundle.main.loadNibNamed(CONTENT_XIB_NAME, owner: self, options: nil)
        self.addSubview(view)
        view.frame = self.bounds
        print("===== custom toolbar init")
        print(view.frame)
        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
    }
}
