//
//  WriteViewController.swift
//  Check and Diary
//
//  Created by 共田 恭輔 on 2016/02/20.
//  Copyright © 2016年 共田 恭輔. All rights reserved.
//

import UIKit

var Item = [String]()

class WriteViewController: UIViewController {

    @IBOutlet weak var hitokoto: UITextField!
    @IBAction func toroku(sender: AnyObject) {
        Item.append(hitokoto.text!)
        hitokoto.text = ""
        NSUserDefaults.standardUserDefaults().setObject(Item, forKey: "diary")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
   
    func textFieldShouldReturn(textField: UITextField!) -> Bool {
        hitokoto.resignFirstResponder()
        return true
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

}
