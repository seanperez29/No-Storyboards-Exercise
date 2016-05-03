//
//  SecondViewController.swift
//  No Storyboards Exercise
//
//  Created by Sean Perez on 4/24/16.
//  Copyright © 2016 Awsome. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var thirdVC: ThirdViewController!
    var firstVC: FirstViewController!
    @IBOutlet weak var printLbl: UILabel!
    var printTxt = ""
    
    convenience init(printMe: String) {
        self.init(nibName: "SecondViewController", bundle: nil)
        printTxt = printMe
    }
    
    
    @IBAction func thirdViewController(sender: AnyObject) {
        thirdVC = ThirdViewController(nibName: "ThirdViewController", bundle: nil)
        self.presentViewController(thirdVC, animated: true, completion: nil)
    }
    
    @IBAction func firstViewController(sender: AnyObject) {
        firstVC = FirstViewController(nibName: "FirstViewController", bundle: nil)
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
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        printLbl.text = printTxt
    }

}
