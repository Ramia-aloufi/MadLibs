//
//  ViewController.swift
//  MadLibs
//
//  Created by R on 08/05/1443 AH.
//  Copyright © 1443 R. All rights reserved.
//

import UIKit

class ViewController: UIViewController,PassData {

    
    @IBOutlet weak var lbl: UILabel!
    
    func pass(data: Data) {
        lbl.text = "We are having a perfectly \(data.Adjective) right now. Later we will \(data.Verb1) and \(data.Verb2) in the \(data.Noun)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "MadLibs"
        self.navigationController?.setToolbarHidden(false, animated: false)


        // Do any additional setup after loading the view.
    }
    


    @IBAction func goToSecondView(_ sender: UIBarButtonItem) {
        let secondVC = storyboard?.instantiateViewController(identifier: "secondVC") as! SecondViewController
        secondVC.delegate  = self
        navigationController?.pushViewController(secondVC, animated: true)
    }
    
    @IBAction func goBack(_ unwindSegue : UIStoryboardSegue) {
    }
    
    
}

