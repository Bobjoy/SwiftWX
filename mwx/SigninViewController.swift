//
//  NextViewController.swift
//  mwx
//
//  Created by Vetech on 15/5/12.
//  Copyright (c) 2015年 Vetech. All rights reserved.
//

import UIKit

class SigninViewController: UIViewController, UIAlertViewDelegate {
    
    @IBOutlet weak var signinBtn: UIButton!
    @IBOutlet weak var unameText: UITextField!
    @IBOutlet weak var upassText: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        self.navigationController?.navigationBarHidden = false
        
        //unameText.keyboardType = UIKeyboardType.PhonePad
        
        //signinBtn.enabled = false
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    func showAlert(message: String) {
        let alert = UIAlertView()
        alert.title = "登录成功"
        alert.delegate = self
        alert.message = message
        alert.addButtonWithTitle("取消")
        alert.addButtonWithTitle("确认")
        alert.show()
    }
    
    func alertView(alertView: UIAlertView, clickedButtonAtIndex buttonIndex: Int) {
        println("按钮下标：\(buttonIndex)")
        if buttonIndex == alertView.cancelButtonIndex {
            println("你点击了取消")
        }
        if buttonIndex == 1 {
            println("你点击了确认")
            
            self.performSegueWithIdentifier("dddd", sender: self)
        }
    }
    
    @IBAction func valueChange(sender: UITextField) {
        var uname = unameText.text!
        var upass = upassText.text!
        if !uname.isEmpty && !upass.isEmpty {
            signinBtn.enabled = true
            signinBtn.alpha = 1.0
        } else {
            signinBtn.enabled = false
            signinBtn.alpha = 0.4
        }
    }
    
    @IBAction func signinAction(sender: UIButton) {
        showAlert("您的帐号是：\(unameText.text)\n您的密码是：\(upassText.text)")
    }

}
