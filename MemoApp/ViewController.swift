//
//  ViewController.swift
//  MemoApp
//
//  Created by 森園王 on 2021/10/31.
//

import UIKit

class ViewController: UIViewController,UITextViewDelegate {
    
    @IBOutlet weak var textView: UITextView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        textView.delegate = self
   
        // SceneDelegateが持っている前回の内容を呼び出してTextViewに表示されるようにします。
        let sceneDelegate = UIApplication.shared.connectedScenes.first?.delegate as! SceneDelegate
        textView.text = sceneDelegate.lastText
    }
    
    func textViewDidChange(_ tetView: UITextView)
    {
        let sceneDelegate = UIApplication.shared.connectedScenes.first?.delegate as! SceneDelegate
        sceneDelegate.lastText = textView.text
    }
 

}

