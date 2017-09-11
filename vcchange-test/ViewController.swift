//
//  ViewController.swift
//  vcchange-test
//
//  Created by KOBAYASHI Jun on 2017/09/11.
//  Copyright © 2017年 KOBAYASHI Jun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
    @IBOutlet var vc1: v1View!
    @IBOutlet var vc2: v2View!
    @IBOutlet var vc3: v3View!
    
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var v1button: UIButton!
    @IBOutlet weak var v2button: UIButton!
    @IBOutlet weak var v3button: UIButton!
    
    @IBAction func v1Tapped(sender:UIButton) {
        LOG_METHOD()
        // LOG(msg: "mainView: \(mainView.frame)")
        // self.mainView.removeFromSuperview()
        vc1.frame.size.width = self.view.bounds.width
        mainView.addSubview(vc1)
    
    }

    @IBAction func v2Tapped(sender:UIButton) {
        LOG_METHOD()
        // LOG(msg: "mainView: \(mainView.frame)")
        // self.mainView.removeFromSuperview()
        vc2.frame.size.width = self.view.bounds.width
        mainView.addSubview(vc2)
        
    }

    @IBAction func v3Tapped(sender:UIButton) {
        LOG_METHOD()
        // LOG(msg: "mainView: \(mainView.frame)")
        // self.mainView.removeFromSuperview()
        vc3.frame.size.width = self.view.bounds.width
        mainView.addSubview(vc3)
        
    }

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        LOG_METHOD()
        
        let x = self.mainView.frame.origin.x
        let y = self.mainView.frame.origin.y
        let width = self.mainView.frame.size.width
        let height = self.mainView.frame.size.height
        
        LOG(msg: "mainView: \(mainView.frame)")
        vc1.frame.size.width = self.view.bounds.width
        mainView.addSubview(vc1)
        LOG(msg: "vc1     : \(vc1.frame)")
        LOG(msg: "mainView: \(mainView.frame)")
        self.mainView.frame.origin.x = x
        self.mainView.frame.origin.y = y
        self.mainView.frame.size.width = width
        self.mainView.frame.size.height = height
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

