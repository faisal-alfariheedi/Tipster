//
//  ViewController.swift
//  Tipster
//
//  Created by faisal on 23/04/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var ptot: UILabel!
    @IBOutlet weak var p0: UILabel!
    @IBOutlet weak var p0tip: UILabel!
    @IBOutlet weak var p0tot: UILabel!
    @IBOutlet weak var p5: UILabel!
    @IBOutlet weak var p5tip: UILabel!
    @IBOutlet weak var p5tot: UILabel!
    @IBOutlet weak var p10: UILabel!
    @IBOutlet weak var p10tip: UILabel!
    @IBOutlet weak var p10tot: UILabel!
    @IBOutlet weak var group: UILabel!
    
    var tp = Float(0)
    var gs = Float(0)
    var tot:Double=0
    var tott:String = "0"
    var con:Bool=true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        p0.text="0%"
        p0tip.text="0"
        p0tot.text="0"
        p5.text="5%"
        p5tip.text="0"
        p5tot.text="0"
        p10.text="10%"
        p10tip.text="0"
        p10tot.text="0"
        
        
        // Do any additional setup after loading the view.
    }
    @IBAction func ndot(_ sender: UIButton) {
        if(con){
            tott="\(tott)."
            ptot.text=tott
            tot=Double(tott) ?? 0
            con=false
            calc()
        }
    }
    @IBAction func nc(_ sender: UIButton) {
        ptot.text="0"
        tot=0
        con=true
        calc()
    }
    @IBAction func n0(_ sender: UIButton) {
        if(tot != 0 || con != true ){
            tott="\(tott)0"
            ptot.text=tott
            tot=Double(tott) ?? 0
        calc()
        }
    }
    @IBAction func n1(_ sender: UIButton) {
        if(tot != 0){
        tott="\(tott)1"
        }else {tott = tott.replacingOccurrences(of: "0", with: "1")}
        ptot.text=tott
        tot=Double(tott) ?? 0
        calc()
    }
    @IBAction func n2(_ sender: UIButton) {
        if(tot != 0){
        tott="\(tott)2"
        }else {tott = tott.replacingOccurrences(of: "0", with: "2")}
            
            ptot.text=tott
            tot=Double(tott) ?? 0
        calc()
    }
    @IBAction func n3(_ sender: UIButton) {
        if(tot != 0){
        tott="\(tott)3"
        }else {tott = tott.replacingOccurrences(of: "0", with: "3")}
        ptot.text=tott
        tot=Double(tott) ?? 0
        calc()
    }
    @IBAction func n4(_ sender: UIButton) {
        if(tot != 0){
        tott="\(tott)4"
        }else {tott = tott.replacingOccurrences(of: "0", with: "4")}
        ptot.text=tott
        tot=Double(tott) ?? 0
        calc()
    }
    @IBAction func n5(_ sender: UIButton) {
        if(tot != 0){
        tott="\(tott)5"
        }else {tott = tott.replacingOccurrences(of: "0", with: "5")}
        ptot.text=tott
        tot=Double(tott) ?? 0
        calc()
    }
    @IBAction func n6(_ sender: UIButton) {
        if(tot != 0){
        tott="\(tott)6"
        }else {tott = tott.replacingOccurrences(of: "0", with: "6")}
        ptot.text=tott
        tot=Double(tott) ?? 0
        calc()
    }
    @IBAction func n7(_ sender: UIButton) {
        if(tot != 0){
        tott="\(tott)7"
        }else {tott = tott.replacingOccurrences(of: "0", with: "7")}
        ptot.text=tott
        tot=Double(tott) ?? 0
        calc()
    }
    @IBAction func n8(_ sender: UIButton) {
        if(tot != 0){
        tott="\(tott)8"
        }else {tott = tott.replacingOccurrences(of: "0", with: "8")}
            ptot.text=tott
            tot=Double(tott) ?? 0
        calc()
    }
    @IBAction func n9(_ sender: UIButton) {
        if(tot != 0){
        tott="\(tott)9"
        }else {tott = tott.replacingOccurrences(of: "0", with: "9")}
        ptot.text=tott
        tot=Double(tott) ?? 0
        calc()
    }
    @IBAction func slidetip(_ sender: UISlider) {
        tp = round(sender.value*100)/100
        calc()
    }
    @IBAction func slidegroup(_ sender: UISlider) {
        group.text="Group Size:\(Int(sender.value))"
        gs = round(sender.value)
        calc()
    }
   
    
    
    func calc(){
        var grp=Double(round(gs))
        var tip=(round(tp*100)/100)
        p0.text="\(tp)%"
        p5.text = "\(tp+5)%"
        p10.text = "\(tp+10)%"
        var pp0 : Double = Double(p0.text!.replacingOccurrences(of: "%", with: ""))!
        var pp5 : Double = Double(p5.text!.replacingOccurrences(of: "%", with: ""))!
        var pp10 : Double = Double(p10.text!.replacingOccurrences(of: "%", with: ""))!
        
        
        p0tip.text = String(tot * pp0/100)
        p5tip.text = String(tot * pp5/100)
        p10tip.text = String(tot * pp10/100)
        p0tot.text = String(Double(gs) * Double(p0tip.text!)!+tot)
        p5tot.text = String(Double(gs) * Double(p5tip.text!)!+tot)
        p10tot.text = String(Double(gs) * Double(p10tip.text!)!+tot)
    }
    
}

