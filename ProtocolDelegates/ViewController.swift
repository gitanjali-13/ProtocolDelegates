//
//  ViewController.swift
//  ProtocolDelegates
//
//  Created by Admin on 13/01/23.
//

import UIKit

class ViewController: UIViewController, DataPass {
   
    
    @IBOutlet weak var lblName: UILabel!
    
    @IBOutlet weak var lblAddress: UILabel!

    @IBOutlet weak var lblCity: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    @IBAction func goToButtonTapped(_ sender: UIButton) {
        
        let secondVC = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        secondVC.delegate = self
        self.navigationController?.pushViewController(secondVC, animated: true)
    }
    
//    func dataPassing(name: String, address: String, city: String) {
//        lblName.text = name
//        lblAddress.text = address
//        lblCity.text = city
//    }
    func data(objec object: [String : String]) {
                lblName.text = object["name"]
                lblAddress.text = object["address"]
                lblCity.text = object["city"]
    }
    
}

