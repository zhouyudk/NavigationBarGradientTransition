//
//  ZYCViewController.swift
//  NavigationBarGradientTransition
//
//  Created by yu zhou on 3/28/17.
//  Copyright © 2017 yu zhou. All rights reserved.
//

import UIKit

class ZYCViewController: ZYBaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navBarBarTintColor = UIColor(colorLiteralRed: 0.3, green: 0.9, blue: 0.2, alpha: 1)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
