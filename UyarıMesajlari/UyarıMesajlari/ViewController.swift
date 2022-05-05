//
//  ViewController.swift
//  UyarıMesajlari
//
//  Created by ELİF BEYZA SAĞLAM on 2.05.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var password2TextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func signUpTiklandi(_ sender: Any) {
       
        if emailTextField.text == "" {
         // emailini girmemişsin
            
            alertOlustur(titleGirdisi: "Hata", messageGirdisi: "email eksik")
        
        }else if passwordTextField.text == "" {
            // parolanı gimemişsin
        alertOlustur(titleGirdisi: "Hata", messageGirdisi: "Parola eksik")
            
        }else if passwordTextField.text !=  password2TextField.text {
          //parolalar uyuşmuyor
         alertOlustur(titleGirdisi: "Hata", messageGirdisi: "Parolalar uyuşmuyor")
            
            
        } else {
            //başarılı kayıt ettik seni
            alertOlustur(titleGirdisi:"Tebrikler", messageGirdisi: "Kullanıcı Oluşturuldu")
            
        }
    }
    

    func alertOlustur(titleGirdisi : String , messageGirdisi: String){
        let uyariMesaji = UIAlertController(title: titleGirdisi, message: messageGirdisi, preferredStyle: UIAlertController.Style.alert)
        
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { (UIAlertAction) in
            //ok butonuna tıklanınca olacaklar
            print("ok button tiklandi")
        }
        
        uyariMesaji.addAction(okButton)
        self.present(uyariMesaji, animated: true, completion: nil)
        
        
    }




}

