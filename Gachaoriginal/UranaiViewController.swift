//
//  UranaiViewController.swift
//  Gachaoriginal
//
//  Created by Maho Misumi on 2017/10/24.
//  Copyright © 2017年 Maho Misumi. All rights reserved.
//

import UIKit

class UranaiViewController: UIViewController {
    var number: Int!
    @IBOutlet var uranaiImageView: UIImageView!
    @IBOutlet var resultLabel: UILabel!
    @IBOutlet var commentLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        number = Int(arc4random_uniform(10))
        if number == 9 {
            uranaiImageView.image = UIImage(named: "大吉.png")
            resultLabel.text = "おめでとう！"
            commentLabel.text = "何かいいことあるよ"
        } else if number > 7{
            uranaiImageView.image = UIImage(named: "中吉.png")
            resultLabel.text = "まあまあだね！"
            commentLabel.text = "何かいいことあるかもね"
        } else {
            uranaiImageView.image = UIImage(named: "小吉.png")
            resultLabel.text = "残念！"
            commentLabel.text = "今すぐ家に帰った方が良さそう！"
        }

        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func back() {
        self.dismiss(animated: true, completion: nil)
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
