//
//  ZYViewController.swift
//  ZYNavigationController
//
//  Created by yu zhou on 3/27/17.
//  Copyright © 2017 yu zhou. All rights reserved.
//

import UIKit

class ZYBaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navBarBarTintColor = self.navBarBarTintColor
        self.transitionCoordinator?.animate(alongsideTransition: { (UIViewControllerTransitionCoordinatorContext) in
            self.navBarBgAlpha = self.navBarBgAlpha
            self.navBarBarTintColor = self.navBarBarTintColor
            }, completion: nil)
    }
}
