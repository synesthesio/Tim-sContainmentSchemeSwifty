//
//  AppViewController.swift
//  containmentViewTemplate
//
//  Created by synesthesia on 4/15/16.
//  Copyright © 2016 synesthesia. All rights reserved.
//

import Foundation
import UIKit



class appViewController : UIViewController {

	@IBOutlet weak var containerView: UIView!
	
	let boolForUser = NSUserDefaults.standardUserDefaults().boolForKey("loggedIn")
	
	override func viewDidLoad() {
		//override code for vDL
		print("appVC called")
		
	
//
//		if (boolForUser == false) {
////
//			let viewController:UIViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier(Constants.LogoutViewControllerStoryboardID) as UIViewController
//			self.presentViewController(viewController, animated: false, completion: nil)
//			
//
//		} else {
//			let viewController:UIViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier(Constants.LoginViewControllerStoryboardID) as UIViewController
//			self.presentViewController(viewController, animated: false, completion: nil)
//		}

	}



	override func viewDidAppear(animated: Bool) {
	
	print("viewDidAppear called")
		if (boolForUser == false) {
			let viewController:UIViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier(Constants.LogoutViewControllerStoryboardID) as UIViewController
			self.presentViewController(viewController, animated: false, completion: nil)
			
			
		} else {
			let viewController:UIViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier(Constants.LoginViewControllerStoryboardID) as UIViewController
			self.presentViewController(viewController, animated: false, completion: nil)
		}

	}



//
	func setEmbeddedViewController(controller:UIViewController?) {
		
		if let vc = controller {
		
			if(self.childViewControllers.contains(vc)){
				return
			}
		}
		let vc:UIViewController = UIViewController()
		
		for i in 0..<self.childViewControllers.count {
		
		vc.willMoveToParentViewController(nil)
		
			if (vc.isViewLoaded()){
				vc.view.removeFromSuperview()
			}
		vc.removeFromParentViewController()
		}
		
		if let vc = controller {
			if(vc.isEqual(nil)) {
				return;
			}
			
			if let vc = controller {
			
				self.addChildViewController(vc)
				self.containerView.addSubview(vc.view)
				//handle constraints here
				self.containerView.leadingAnchor.constraintEqualToAnchor(self.view.leadingAnchor, constant: 10)

				vc.didMoveToParentViewController(self)
			}
		}
	}
	
	
}