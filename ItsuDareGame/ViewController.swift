//
//  ViewController.swift
//  ItsuDareGame
//
//  Created by 伊藤あかり on 2022/08/25.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var ItsuLabel: UILabel!
    @IBOutlet var DokoLabel: UILabel!
    @IBOutlet var DaregaLabel: UILabel!
    @IBOutlet var DoushitaLabel: UILabel!
    
    let ItsuArray:[String] = ["一年前","一週間","昨日","今日"]
    let DokoArray:[String] = ["山の上で","アメリカで","学校で","家で"]
    let DareArray:[String] = ["僕が","大統領が","先生が","友達が"]
    let doushitaArray:[String] = ["叫んだ","演説した","怒った","踊った"]
    
    var index: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func change(){
        //それぞれのラベルに配列の要素を追加する
        ItsuLabel.text = ItsuArray[index]
        DokoLabel.text = DokoArray[index]
        DaregaLabel.text = DareArray[index]
        DoushitaLabel.text = doushitaArray[index]
        
        if index == 3{
            index = 0
        }else{
            index = index + 1
        }
    }
    
    @IBAction func ramdom(){
        
        //乱数を生成してそれぞれのインデックスに入れる
        let itsuIndex = Int.random(in:0...3)
        let dokodeIndex = Int.random(in:0...3)
        let daregaIndex = Int.random(in:0...3)
        let doushitaIndex = Int.random(in:0...3)
        
        //コンソールに出力してそれぞれの値を確かめる
        print("いつ:\(itsuIndex)")
        print("どこで:\(dokodeIndex)")
        print("だれが:\(daregaIndex)")
        print("どうした:\(doushitaIndex)")
        
        //それぞれのラベルに要素を追加する
        ItsuLabel.text = ItsuArray[itsuIndex]
        DokoLabel.text = DokoArray[dokodeIndex]
        DaregaLabel.text = DareArray[daregaIndex]
        DoushitaLabel.text = doushitaArray[doushitaIndex]
    }
    @IBAction func reset(){
        
        ItsuLabel.text = "______"
        DokoLabel.text = "______"
        DaregaLabel.text = "______"
        DoushitaLabel.text = "______"
        
        index = 0
    }

}

