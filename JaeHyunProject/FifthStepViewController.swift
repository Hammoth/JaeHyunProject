//
//  FifthStepViewController.swift
//  JaeHyunProject
//
//  Created by SWUCOMPUTER on 14/04/2019.
//  Copyright © 2019 SWUCOMPUTER. All rights reserved.
//

import UIKit

class FifthStepViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet var hintLabel: UILabel!
    @IBOutlet var fifthStepPicker: UIPickerView!
    
    let array1: Array <String> = ["소", "헤", "한", "이", "트", "프", "초"]
    let array2: Array <String> = ["전", "법", "로", "호", "르", "아", "교"]
    let array3: Array <String> = ["돈", "불", "지", "중", "츠", "드", "가"]
    
    @IBAction func fifthStepHintButton(_ sender: UIButton) {
        hintLabel.text = "클록틱 속도 단위"
    }
    
    @IBAction func fifthStepCheckButton(_ sender: UIButton) {
        let one: String = array1[self.fifthStepPicker.selectedRow(inComponent: 0)]
        let two: String = array2[self.fifthStepPicker.selectedRow(inComponent: 1)]
        let three: String = array3[self.fifthStepPicker.selectedRow(inComponent: 2)]
        
        if (one == "헤" && two == "르" && three == "츠") {
            let alertCheck = UIAlertController(title: "축하합니다.", message: "정답입니다.", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "확인", style: .default) { (ACTION: UIAlertAction!) -> Void in
                self.navigationController!.popViewController(animated: true)
            }
            alertCheck.addAction(okAction)
            self.present(alertCheck, animated: true, completion: nil)
        } else {
            let alertCheck = UIAlertController(title: "오답입니다.", message: "다시 해보세요.", preferredStyle: .alert)
            alertCheck.addAction(UIAlertAction(title: "확인", style: .default))
            self.present(alertCheck, animated: true, completion: nil)
        }
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 3
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {
            return array1.count
        } else if component == 1 {
            return array2.count
        } else {
            return array3.count
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0 {
            return array1[row]
        } else if component == 1 {
            return array2[row]
        } else {
            return array3[row]
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
