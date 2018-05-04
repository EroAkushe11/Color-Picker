//
//  ColorPickerViewController.swift
//  Color Picker
//
//  Created by Ero Akushe on 5/2/18.
//  Copyright © 2018 Oghenenyerhovwo Akushe. All rights reserved.
//

import UIKit

class ColorPickerViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    @IBOutlet weak var colorPickerLabel: UILabel!
    @IBOutlet weak var colorPickerPicker: UIPickerView!
    


    let colors = [Color(name: "Red", uiColor: UIColor.red), Color(name: "Orange", uiColor: UIColor.orange), Color(name: "Yellow", uiColor: UIColor.yellow), Color(name: "Green", uiColor: UIColor.green), Color(name: "Blue", uiColor: UIColor.blue), Color(name: "Purple", uiColor: UIColor.purple)]
    


    override func viewDidLoad() {
        super.viewDidLoad()
        
colorPickerLabel.text = colors[0].name
        view.backgroundColor = colors[0].uiColor
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
 
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int
    {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
    {
        return colors[row].name
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
    {
        return colors.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        colorPickerLabel.text = colors[row].name
        view.backgroundColor = colors[row].uiColor
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
