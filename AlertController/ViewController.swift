//
//  ViewController.swift
//  AlertController
//
//  Created by Furkan Eruçar on 26.03.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var emailTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var password2TextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    
    
    @IBAction func signUpClicked(_ sender: Any) {
        
        if emailTextField.text == "" {
            // email'ini girilmemiş
            alertOlustur(titleGirdisi: "Hata", messageGirdisi: "E-mail Girilmemiş")
        } else if passwordTextField.text == "" {
            // parola girilmemiş
            alertOlustur(titleGirdisi: "Hata", messageGirdisi: "Parola Girilmemiş!")
        } else if passwordTextField.text != password2TextField.text {
            // parolalar uyuşmuyor
            alertOlustur(titleGirdisi: "Hata", messageGirdisi: "Parolalar Uyuşmuyor!")
        } else {
            //başarılı kayıt ettik seni
            alertOlustur(titleGirdisi: "Tebrikler", messageGirdisi: "Kayıt Başarılı!")
        }
    }
    
    func alertOlustur(titleGirdisi: String, messageGirdisi: String) { // Aşağıdaki kodlardaki title ve message'a string verirsek her ihtimalde aynı şeyi göstericek. Bundan kurtulmak için olasılığa göre farklı mesajlar verdirtmek istiyoruz. Bunun için fonksiyonun içine "()" kullanıcıdan input alıcaz. Aşağıdaki title ve message'ı olasılığa göre çıktı verdirtmek için fonksiyon içine parametre verelim. titleGirdisi: String, messageGirdisi: String dersek if kısmında hangi olasılığa denk geliyorsa onu yazdırıcak.
        
        let uyariMesaji = UIAlertController(title: titleGirdisi, message: messageGirdisi, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { (UIAlertAction) in
            // Ok butonuna tıklanınca olacaklar kısmı
            print("ok button tiklandi")
        }
        
        uyariMesaji.addAction(okButton)
        
        self.present(uyariMesaji, animated: true, completion: nil)
    }
    
}
