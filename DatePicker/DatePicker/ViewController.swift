//
//  ViewController.swift
//  DatePicker
//
//  Created by hansol on 2021/02/18.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var lblCurrentTime: UILabel!  //현재시간
    @IBOutlet var lblPickerTime: UILabel!   //선택시간
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    //데이트 피커를 선택할 때 발생하는 액션 함수
    @IBAction func changeDatePicker(_ sender: UIDatePicker) {
        //UIDatePicker 자료형의 인수가 sender를 통해 전달되고, datePickerView에 저장됨
        let datePickerView = sender
        
        let formatter = DateFormatter() //날짜 출력을 위해 DateFormatter라는 클래스 상수 선언
        formatter.dateFormat = "yyyy-MM-dd HH:mm EEE"   //dateFormat 속성 설정
        //선택된 날짜를 문자열로 변환함 후?...
        lblPickerTime.text = "선택시간 : " + formatter.string(from: datePickerView.date)
        
    }
    
}

