//
//  SkyBlueViewController.swift
//  PhotoFrame
//
//  Created by Eunjin Kim on 2018. 2. 6..
//  Copyright © 2018년 Eunjin Kim. All rights reserved.
//

import UIKit

class SkyBlueViewController: UIViewController {

    @IBAction func nextButtonTouched(_ sender: Any) {
        if let skyBlueView = self.storyboard?.instantiateViewController(withIdentifier: "YellowViewController") {
            self.navigationController?.pushViewController(skyBlueView, animated: true)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
