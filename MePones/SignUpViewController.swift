//
//  SignUpViewController.swift
//  MePones
//
//  Created by Mañanas on 17/9/24.
//

import UIKit
import FirebaseAuth

class SignUpViewController: UIViewController {

    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
        @IBAction func signUp(_ sender: Any) {
            let username = usernameTextField.text!
            let password = passwordTextField.text!
            Auth.auth().createUser(withEmail: username, password: password) { authResult, error in
                if let error = error{
                    print ("Error al crear usuario")
                    print (error.localizedDescription)
                    return
                }else{
                    print("Regitro Correcto")
                    //self.navigationController?.popToRootViewController(animated: true)
                    self.backToLogin(self)
                }
                // ...
            }
        }
    
    @IBAction func backToLogin(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true)
        
    }
    
}
