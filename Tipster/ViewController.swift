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
    @IBOutlet weak var tp: UISlider!
    @IBOutlet weak var gs: UISlider!
    var tot:Double=0
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
            ptot.text="\(String(describing: ptot.text))."
            tot=Double(ptot.text!) ?? 0
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
        ptot.text="\(String(describing: ptot.text))0"
        tot=Double(ptot.text!) ?? 0
        calc()
        }
    }
    @IBAction func n1(_ sender: UIButton) {
        ptot.text="\(String(describing: ptot.text))1"
        tot=Double(ptot.text!) ?? 0
        calc()
    }
    @IBAction func n2(_ sender: UIButton) {
        ptot.text="\(String(describing: ptot.text))2"
        tot=Double(ptot.text!) ?? 0
        calc()
    }
    @IBAction func n3(_ sender: UIButton) {
        ptot.text="\(String(describing: ptot.text))3"
        tot=Double(ptot.text!) ?? 0
        calc()
    }
    @IBAction func n4(_ sender: UIButton) {
        ptot.text="\(String(describing: ptot.text))4"
        tot=Double(ptot.text!) ?? 0
        calc()
    }
    @IBAction func n5(_ sender: UIButton) {
        ptot.text="\(String(describing: ptot.text))5"
        tot=Double(ptot.text!) ?? 0
        calc()
    }
    @IBAction func n6(_ sender: UIButton) {
        ptot.text="\(String(describing: ptot.text))6"
        tot=Double(ptot.text!) ?? 0
        calc()
    }
    @IBAction func n7(_ sender: UIButton) {
        ptot.text="\(String(describing: ptot.text))7"
        tot=Double(ptot.text!) ?? 0
        calc()
    }
    @IBAction func n8(_ sender: UIButton) {
        ptot.text="\(String(describing: ptot.text))8"
        tot=Double(ptot.text!) ?? 0
        calc()
    }
    @IBAction func n9(_ sender: UIButton) {
        ptot.text="\(String(describing: ptot.text))9"
        tot=Double(ptot.text!) ?? 0
        calc()
    }
    @IBAction func tipslid(_ sender: UISlider) {
        calc()
        
    }
    @IBAction func groupslid(_ sender: UISlider) {
        group.text="Group Size:\(Int(gs.value))"
    }
    
    
    func calc(){
        p0.text="\(String((round(tp.value*100)/100)*100))%"
        p5.text="\(String(((round(tp.value*100)/100)+5)*100))%"
        p10.text="\(String(((round(tp.value*100)/100)+10)*100))%"
        p0tip.text=String(tot*Double(p0.text/100))
        p5tip.text=String(tot*Double(p5.text/100))
        p10tip.text=String(tot*Double(p10.text/100))
        p0tot.text=String(round(gs.value)*Double(p0tip.text)+tot)
        p5tot.text=String(round(gs.value)*Double(p5tip.text)+tot)
        p10tot.text=String(round(gs.value)*Double(p10tip.text)+tot)
    }
    
}

