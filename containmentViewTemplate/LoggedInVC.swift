//
//  LoggedInVC.swift
//  containmentViewTemplate
//
//  Created by synesthesia on 4/15/16.
//  Copyright © 2016 synesthesia. All rights reserved.
//

import Foundation
import UIKit

class loggedInVC:UIViewController {
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		let rectForFrame:CGRect = CGRectMake(0, 0, self.view.frame.width, self.view.frame.height)
		
		
		let viewForVC:UIView = UIView(frame: rectForFrame)
		viewForVC.backgroundColor = UIColor.blueColor()
		viewForVC.topAnchor.constraintEqualToAnchor(self.view.topAnchor, constant: 10)
		viewForVC.bottomAnchor.constraintEqualToAnchor(self.view.bottomAnchor, constant: 10)
		viewForVC.leadingAnchor.constraintEqualToAnchor(self.view.leadingAnchor, constant: 10)
		viewForVC.trailingAnchor.constraintEqualToAnchor(self.view.trailingAnchor, constant: 10)
		self.view.addSubview(viewForVC)

	}
}