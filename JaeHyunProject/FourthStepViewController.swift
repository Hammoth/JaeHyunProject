//
//  FourthStepViewController.swift
//  JaeHyunProject
//
//  Created by SWUCOMPUTER on 14/04/2019.
//  Copyright © 2019 SWUCOMPUTER. All rights reserved.
//

import UIKit

class FourthStepViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet var fourthStepPicker: UIPickerView!
    @IBOutlet var hintLabel: UILabel!
    
    let array1: Array <String> = ["소", "콜", "한", "이", "트", "가", "초"]
    let array2: Array <String> = ["전", "상", "로", "호", "뭐", "아", "교"]
    let array3: Array <String> = ["돈", "불", "지", "콜", "토", "드", "머"]
    let array4: Array <String> = ["카", "레", "능", "루", "신", "복", "봉"]
    
    @IBAction func fourthStepHintButton(_ sender: UIButton) {
        hintLabel.text = "운영체제와 응용프로그램을 호환되게"
    }
    
    @IBAction func fourthStepCheckButton(_ sender: UIButton) {
        let one: String = array1[self.fourthStepPicker.selectedRow(inComponent: 0)]
        let two: String = array2[self.fourthStepPicker.selectedRow(inComponent: 1)]
        let three: String = array3[self.fourthStepPicker.selectedRow(inComponent: 2)]
        let four: String = array4[self.fourthStepPicker.selectedRow(inComponent: 3)]
        
        if (one == "가" && two == "상" && three == "머" && four == "신") {
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
        return 4
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {
            return array1.count
        } else if component == 1 {
            return array2.count
        } else if component == 2 {
            return array3.count
        } else {
            return array4.count
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0 {
            return array1[row]
        } else if component == 1 {
            return array2[row]
        } else if component == 2 {
            return array3[row]
        } else {
            return array4[row]
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
