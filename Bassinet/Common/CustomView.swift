//
//  CustomView.swift
//  Bassinet
//
//  Created by i_jhuhuchen on 2019/8/20.
//  Copyright © 2019 i_jhuhuchen. All rights reserved.
//

import UIKit

class CustomView: UIView {
    let CONTENT_XIB_NAME = "CustomView"
    @IBOutlet var view: UIView!
    @IBOutlet weak var mainLabel: UILabel!
    
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
        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
    }

}
