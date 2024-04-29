//
//  SignuppViewController.swift
//  Lg page attempt 99
//
//  Created by Students on 4/16/24.
//

import UIKit

class SignuppViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var Emailid: UITextField!
    
    @IBOutlet weak var haveaccBtn: UIButton!
    @IBOutlet weak var confirmpassword: UITextField!
    @IBOutlet weak var password: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
//        
//        func haveaccBtn(_ sender: Any){
//            let controller = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "viewController")
//            self.navigationController?.pushViewController(controller, animated: true)
//                
//            }
        
    @IBAction func loginBnpressed(_ sender: Any) {
        
        let controller = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "loginViewController")
        self.navigationController?.pushViewController(controller, animated: true)
    }
    @IBAction func haveaccBtn(_ sender: Any){
            if Emailid.text == ""{
                
                let alert = UIAlertController(title: "Alert", message: "Please Fill The Details", preferredStyle: UIAlertController.Style.alert)
                
                alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                
                self.present(alert, animated: true, completion: nil)
                
                
            }
            else if !self.isValidEmail(Emailid.text!){
                let alert = UIAlertController(title: "Alert", message: "Enter Valid Email", preferredStyle: UIAlertController.Style.alert)
                
                alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                
                self.present(alert, animated: true, completion: nil)
                
            }
            else if !self.isvalidpass(){
                let alert = UIAlertController(title: "Alert", message: "Enter Valid Password", preferredStyle: UIAlertController.Style.alert)
                
                alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                
                self.present(alert, animated: true, completion: nil)
                
            }
            else if password.text != confirmpassword.text {
                let alert = UIAlertController(title: "Alert", message: "Passwords do not match", preferredStyle: UIAlertController.Style.alert)
                alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                self.present(alert, animated: true, completion: nil)
                
            }
            
            else{
                let controller = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "welcomeViewController")
                self.navigationController?.pushViewController(controller, animated: true)
            }
        }
        func isvalidpass() -> Bool {
            
            if password.text != confirmpassword.text{
                let alert = UIAlertController(title: "Alert", message: "Password Mismatch", preferredStyle: UIAlertController.Style.alert)
                
                alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                
                self.present(alert, animated: true, completion: nil)
                return false
            }
            return true
        }

        func isValidEmail(_ email: String) -> Bool {
            let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
            
            let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
            return emailPred.evaluate(with: email)
        }
        func isValidPassword(_ password: String) -> Bool {
            // least one uppercase,
            // least one digit
            // least one lowercase
            // least one symbol
            // min 8 characters total
            let passwordRegx = "^(?=.?[A-Z])(?=.?[a-z])(?=.?[0-9])(?=.?[#?!@$%^&<>*~:`\\-]).{8,}$"
            let passwordCheck = NSPredicate(format: "SELF MATCHES %@", passwordRegx)
            return passwordCheck.evaluate(with: password)
        }
        
        /*
              // MARK: - Navigation
              
              // In a storyboard-based application, you will often want to do a little preparation before navigation
              override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
              // Get the new view controller using segue.destination.
              // Pass the selected object to the new view controller.
              }
              */
        
    }

        // Do any additional setup after loading the view.
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


