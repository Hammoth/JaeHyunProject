//
//  PlayerNameViewController.swift
//  JaeHyunProject
//
//  Created by SWUCOMPUTER on 14/04/2019.
//  Copyright © 2019 SWUCOMPUTER. All rights reserved.
//

import UIKit

class PlayerNameViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var playerNameText: UITextField!

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    @IBAction func playerNameButton(_ sender: UIButton) {
        let name = String?(playerNameText.text!)!

        if name != "" || name != " " {
            let nameCheck = UIAlertController(title: name + " 님, 어서오세요.", message: "환영합니다.", preferredStyle: .alert)
            nameCheck.addAction(UIAlertAction(title: "확인", style: .default))
            self.present(nameCheck, animated: true, completion: nil)
        } else {
            let nameCheck = UIAlertController(title: "이름없음 님, 어서오세요.", message: "환영합니다.", preferredStyle: .alert)
            nameCheck.addAction(UIAlertAction(title: "확인", style: .default))
            self.present(nameCheck, animated: true, completion: nil)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toLevelSelect" {
            let destVC = segue.destination as? LevelSelectViewController
            
            destVC?.nameData = playerNameText.text
        }
    }
    
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

}
