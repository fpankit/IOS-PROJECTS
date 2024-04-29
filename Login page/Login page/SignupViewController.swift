//
//  SignupViewController.swift
//  Lg page attempt 99
//
//  Created by Students on 4/16/24.
//

import UIKit

class SignupViewController: UIViewController, UITextFieldDelegate{
    
    @IBOutlet weak var forgetpassword: UILabel!
    @IBOutlet weak var Submit: UIButton!
    @IBOutlet weak var passwordd: UITextField!
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var loginpage: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

        
        @IBAction func crtButtonPressed(_ sender: Any) {
            if username.text == ""{
                
                let alert = UIAlertController(title: "Alert", message: "Please fill user name", preferredStyle: UIAlertController.Style.alert)
                
                alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
                self.present(alert, animated: true, completion: nil)
                
                
                
            }else  if passwordd.text == ""{
                
                let alert = UIAlertController(title: "Alert", message: "Please fill user name", preferredStyle: UIAlertController.Style.alert)
                
                alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
                self.present(alert, animated: true, completion: nil)
                
            }else if !self.isValidEmail(username.text!){
                
            }else{
                let controller  = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "registrationViewController")
                self.navigationController?.pushViewController(controller, animated: true)
            }
        }
        func isValidEmail(_ email: String) -> Bool {
            let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
            
            let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
            return emailPred.evaluate(with: email)
        }
    }
    
    
    
  

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


