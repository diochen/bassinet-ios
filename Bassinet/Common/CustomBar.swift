//
//  CustomBar.swift
//  Bassinet
//
//  Created by i_jhuhuchen on 2019/8/21.
//  Copyright © 2019 i_jhuhuchen. All rights reserved.
//

import UIKit

class CustomBar: UIView {
    let CONTENT_XIB_NAME = "CustomBar"
    
    
    @IBOutlet var view: UIView!
    @IBOutlet weak var contentView: UIView!
    
    @IBOutlet weak var memberBtn: UIButton!
    @IBOutlet weak var redeemBtn: UIButton!
    @IBOutlet weak var homeBtn: UIButton!
    @IBOutlet weak var parkingBtn: UIButton!
    @IBOutlet weak var payBtn: UIButton!
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
        
        contentView.frame = view.frame
        contentView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        print(contentView.frame)
        
    }

    @IBAction func clickMemberBtn(_ sender: UIButton) {
        if sender.isSelected { return }
        for case let button as UIButton in self.contentView.subviews {
            button.isSelected = false
        }
        sender.isSelected.toggle()
 
        // TODO(Dio)
        let branchRepo = BranchRepo()
        branchRepo.getBranchList()
    }
    
    @IBAction func clickRedeemBtn(_ sender: UIButton) {
        if sender.isSelected { return }
        for case let button as UIButton in self.contentView.subviews {
            button.isSelected = false
        }
        sender.isSelected.toggle()
    }
    
    @IBAction func clickHomeBtn(_ sender: UIButton) {
        if sender.isSelected { return }
        for case let button as UIButton in self.contentView.subviews {
            button.isSelected = false
        }
        sender.isSelected.toggle()
    }
    
    @IBAction func clickParkingBtn(_ sender: UIButton) {
        if sender.isSelected { return }
        for case let button as UIButton in self.contentView.subviews {
            button.isSelected = false
        }
        sender.isSelected.toggle()
    }
    
    @IBAction func clickPayBtn(_ sender: UIButton) {
        if sender.isSelected { return }
        for case let button as UIButton in self.contentView.subviews {
            button.isSelected = false
        }
        sender.isSelected.toggle()
    }
}
