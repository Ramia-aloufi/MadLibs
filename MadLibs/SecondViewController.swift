//
//  SecondViewController.swift
//  MadLibs
//
//  Created by R on 08/05/1443 AH.
//  Copyright © 1443 R. All rights reserved.
//

import UIKit

struct Data {
    let Adjective:String
    let Verb1:String
    let Verb2:String
    let Noun:String
}

protocol PassData {
    func pass(data:Data)
}

class SecondViewController: UIViewController {
    var delegate:PassData?
    
    @IBOutlet var texetFeoldsData: [UITextField]!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Add Data"

        

        // Do any additional setup after loading the view.
    }
    
    @IBAction func submitButton(_ sender: UIButton) {
        if let adj = texetFeoldsData[0].text,
            let verb1 = texetFeoldsData[1].text,
            let verb2 = texetFeoldsData[2].text,
            let noun = texetFeoldsData[3].text{
            delegate?.pass(data: Data(Adjective: adj, Verb1: verb1, Verb2: verb2, Noun: noun))
            navigationController?.popViewController(animated: true)
        }else{
            print("error")
        }
    }
    
}
