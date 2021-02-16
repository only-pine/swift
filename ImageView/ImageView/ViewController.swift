//
//  ViewController.swift
//  ImageView
//
//  Created by hansol on 2021/02/15.
//

import UIKit

class ViewController: UIViewController {
    var isZoom = false      //확대 여부를 나타내는 변수
    var imgOn : UIImage?    //켜진 전구 이미지가 있는 UIImage 타입의 변수
    var imgOff : UIImage?   //꺼진 전구 이미지가 있는 UIImage 타입의 변수
    
    @IBOutlet var imgView: UIImageView!
    @IBOutlet var btnResize: UIButton!
    
    //viewDidLoad함수란?
    //내가 만든 뷰를 불러왔을 때 호출되는 함수로, 부모 클래스인 UIViewController 클래스에 선언되어 있음
    //뷰가 불려진 후 실행하고자 하는 기능이 필요할 때, 이 viewDidLoad 함수내에 코드를 입력하면 됩니다.
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //각 UIImage 타입의 뱐수 imgOn과 imgOff에 이미지 파일명을 입력함
        imgOn = UIImage(named: "lamp_on.png")
        imgOff = UIImage(named: "lamp_off.png")
        
        //스토리보드에 추가한 이미지 뷰의 아웃렛 변수 imgView에 imgOn 이미지를 지정함
        imgView.image = imgOn
    }

    @IBAction func btnResizeImage(_ sender: UIButton) {
    }
    
    @IBAction func switchImageOnOff(_ sender: UISwitch) {
    }
}

