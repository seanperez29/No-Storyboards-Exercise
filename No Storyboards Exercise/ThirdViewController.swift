//
//  ThirdViewController.swift
//  No Storyboards Exercise
//
//  Created by Sean Perez on 4/24/16.
//  Copyright © 2016 Awsome. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    
    var secondVC: SecondViewController!
    var firstVC: FirstViewController!
    
    @IBAction func secondViewController(sender: AnyObject) {
        secondVC = SecondViewController(printMe: "Fuck My Neighbor")
        self.presentViewController(secondVC, animated: true, completion: nil)
    }
    
    @IBAction func loadFirstViewController(sender: AnyObject) {
        firstVC = FirstViewController(printMe: "We are coming from the Third View!")
        self.presentViewController(firstVC, animated: true, completion: nil)
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
