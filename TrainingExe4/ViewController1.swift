//
//  ViewController1.swift
//  TrainingExe4
//
//  Created by mac on 8/8/17.
//  Copyright © 2017 mac. All rights reserved.
//

import UIKit

class ViewController1: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        imgview.image = UIImage(named: name)
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var imgview: UIImageView!
    var name: String = ""

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