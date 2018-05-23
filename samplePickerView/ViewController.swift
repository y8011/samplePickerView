//
//  ViewController.swift
//  samplePickerView
//
//  Created by yuka on 2018/05/23.
//  Copyright © 2018年 yuka. All rights reserved.
//

import UIKit

// 1. プロトコルを追加（特定の部品を操る能力）
class ViewController: UIViewController
    ,UIPickerViewDelegate
    ,UIPickerViewDataSource
{

    @IBOutlet weak var myPickerView: UIPickerView!
    
    // データを配列で用意する
    var teaList = ["ダージリン","アールグレイ","アッサム","オレンジペコ"]
    var coffeeList = ["カフェラテ","カプチーノ","エスプレッソ"]

    lazy var all = [teaList,coffeeList]  // 参照されたときに設定される
    var all1 = [[""],[""]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // 5.指示を出しているのがこのViewControllerだと知らせる設定
        myPickerView.delegate = self
        myPickerView.dataSource = self
        
        print(teaList[0])
        print(teaList[1])
        print(teaList[2])
        print(teaList[3])
//        print(teaList[4])　これはエラー

    }
    
    // 2.設定　pickerviewの列数を決定する
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    // 3.設定　pickerviewの行数を決定する
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        print(component,#function)
        
        return teaList.count
    }
    // 4.設定　pickerviewに表示する文字の設定
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return teaList[row]
    }
    
    
    
    // 6.　選択されたときに発動
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print(teaList[row])
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}








