//
//  SecondViewController.swift
//  ProtocolDelegates
//
//  Created by Admin on 13/01/23.
//

import UIKit
//protocol
protocol DataPass {
    //create function for data passing
    //func dataPassing (name: String, address: String, city:String)
    //Here first we create dictionary for dataand after that pass this dictionary to the delegate.
    
    func data(objec: [String: String])
}

class SecondViewController: UIViewController {
    
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtAddress: UITextField!
    @IBOutlet weak var txtCity: UITextField!

    @IBOutlet weak var savebtn: UIButton!
    
    
    var delegate: DataPass!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func saveButtonTapped(_ sender: UIButton) {
        
        if txtName.text == "" {
            alert(title: "Enetr name", message: "", delegate: self)
        } else if txtAddress.text == "" {
            alert(title: "Enetr address", message: "", delegate: self)
        } else if txtCity.text == "" {
            alert(title: "Enetr city", message: "", delegate: self)
        } else {
            //            delegate.dataPassing(name: txtName.text!, address: txtAddress.text!, city: txtCity.text!)
            //        }
            
            let dictionary :[String: String] = ["name": txtName.text!,"address":txtAddress.text!,"city": txtCity.text!]
            
            delegate.data(objec: dictionary)
        }
    }
    
    func alert(title: String,message:String,delegate:AnyObject) {
        let alert = UIAlertView()
        alert.title = title
        alert.message = message
        alert.addButton(withTitle: "ok")
        alert.delegate = delegate
        alert.show()
        
    }
    
    
  

}
