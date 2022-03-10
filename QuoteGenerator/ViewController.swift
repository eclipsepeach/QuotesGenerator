//
//  ViewController.swift
//  QuoteGenerator
//
//  Created by Gahyun Song on 2022/03/08.
//

import UIKit

class ViewController: UIViewController {
  
    @IBOutlet weak var quoteLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    let quotes = [
        Quote(contents: "열정을 잃지 않고 실패에서 실패로 걸어가는 것이 성공이다.", name: "박선재"),
        Quote(contents: "성공한 사람이 되려고 노력하기보다 가치있는 사람이 되려고 노력하라.", name: "송가현"),
        Quote(contents: "지옥을 겪고 있다면 계속 겪어 나가라.", name: "윈스턴 처칠"),
        Quote(contents: "간단하게 설명할 수 없으면 제대로 이해하지 못하는 것이다. ", name: "알버트 아인슈타인"),
        Quote(contents: "나는 내가 더 노력할수록 운이 더 좋아진다는 걸 발견했다. ", name: "토마스 제퍼슨"),
        Quote(contents: "우리는 우리가 늘 생각하는 것이 된다. 그것이 가장 묘한 비밀이다.", name: "얼 나이팅게일")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tapQuoteGeneratorButton(_ sender: Any) {
        let random = Int.random(in: 0...4) // 0~4 사이의 난수를
        let quote = quotes[random]
        self.quoteLabel.text = quote.contents
        self.nameLabel.text = quote.name
            
        
    }
    
}

