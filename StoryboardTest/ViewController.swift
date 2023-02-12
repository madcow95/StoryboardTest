//
//  ViewController.swift
//  StoryboardTest
//
//  Created by ChoiKwangWoo on 2023/02/09.
//  버튼 누르면 이미지 바뀌는 간단한 앱
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    let symbols: [String] = ["moon", "cloud", "wind", "snowflake", "tornado", "hurricane"]
    
    func reload() {
        let symbol = symbols.randomElement()!
        imageView.image = UIImage(systemName: symbol)
        label.text = symbol
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        reload()
    }

    @IBAction func buttonTapped(_ sender: Any) {
        reload()
    }
    
}

