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
        // vc1.frame.size.width = self.view.bounds.width
        // mainView.addSubview(vc1)
    
        vc1.isHidden = false
        vc2.isHidden = true
        vc3.isHidden = true
        
    }

    @IBAction func v2Tapped(sender:UIButton) {
        LOG_METHOD()
        // LOG(msg: "mainView: \(mainView.frame)")
        // self.mainView.removeFromSuperview()
        vc2.frame.size.width = self.view.bounds.width
        mainView.addSubview(vc2)

        vc1.isHidden = true
        vc2.isHidden = false
        vc3.isHidden = true
        
    }

    @IBAction func v3Tapped(sender:UIButton) {
        LOG_METHOD()
        // LOG(msg: "mainView: \(mainView.frame)")
        // self.mainView.removeFromSuperview()
        vc3.frame.size.width = self.view.bounds.width
        mainView.addSubview(vc3)
        
        vc1.isHidden = true
        vc2.isHidden = true
        vc3.isHidden = false
    }

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        LOG_METHOD()

        vc1.isHidden = false
        vc2.isHidden = true
        vc3.isHidden = true

        
        vc3.frame.size.width = self.view.bounds.width
        mainView.addSubview(vc3)

        vc2.frame.size.width = self.view.bounds.width
        mainView.addSubview(vc2)

        vc1.frame.size.width = self.view.bounds.width
        mainView.addSubview(vc1)
        


        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

