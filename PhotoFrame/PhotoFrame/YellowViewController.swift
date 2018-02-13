//
//  YellowViewController.swift
//  PhotoFrame
//
//  Created by Eunjin Kim on 2018. 2. 6..
//  Copyright © 2018년 Eunjin Kim. All rights reserved.
//

import UIKit

class YellowViewController: UIViewController {

    @IBAction func closeButtonTouched(_ sender: Any) {
        print("close button")
        self.navigationController?.popViewController(animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool){
        super.viewWillAppear(animated)
        print(#file, #line, #function, #column)
    }
    
    override func viewDidAppear(_ animated: Bool){
        super.viewWillAppear(animated)
        print(#file, #line, #function, #column)
    }
    
    override func viewWillDisappear(_ animated: Bool){
        super.viewWillAppear(animated)
        print(#file, #line, #function, #column)
    }
    
    override func viewDidDisappear(_ animated: Bool){
        super.viewWillAppear(animated)
        print(#file, #line, #function, #column)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
