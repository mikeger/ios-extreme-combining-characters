//
//  ViewController.swift
//  TestExtremeCombiningCharacters
//
//  Created by Mihail Gerasimenko on 3/17/17.
//  Copyright © 2017 Wire Swiss GmbH. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let textView = UITextView()
        textView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(textView)

        self.view.addConstraint(NSLayoutConstraint(item: textView, attribute: .left, relatedBy: .equal, toItem: view, attribute: .left, multiplier: 1, constant: 0))
        self.view.addConstraint(NSLayoutConstraint(item: textView, attribute: .right, relatedBy: .equal, toItem: view, attribute: .right, multiplier: 1, constant: 0))
        self.view.addConstraint(NSLayoutConstraint(item: textView, attribute: .bottom, relatedBy: .equal, toItem: view, attribute: .bottom, multiplier: 1, constant: 0))
        self.view.addConstraint(NSLayoutConstraint(item: textView, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1, constant: 0))
        
        let filePath = Bundle.main.path(forResource: "excessive_diacritics", ofType: "txt")!
        var string = String(data: try! Data(contentsOf: URL(fileURLWithPath: filePath)), encoding: .utf8)!
        
        for _ in 1...4 {
            string = string + string
        }
        
        textView.text = string
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

