import UIKit
import Foundation
import SnapKit

class FourFlagsVC: UIViewController {
       
    var russianFlag = UIView()
    var russianFlag1 = UIView()
    var russianFlag2 = UIView()
    var russianFlag3 = UIView()
    
    var frenchFlag = UIView()
    var frenchFlag1 = UIView()
    var frenchFlag2 = UIView()
    var frenchFlag3 = UIView()
    
    var polishFlag = UIView()
    var polishFlag1 = UIView()
    var polishFlag2 = UIView()
    
    var slivakianFlag = UIView()
    var slivakianFlag1 = UIView()
    var slivakianFlag2 = UIView()
    var slivakianFlag3 = UIView()
    var slivakianGerbImage = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .darkGray
        
        view.addSubview(russianFlag)
        russianFlag.backgroundColor = .black
        russianFlag.layer.borderWidth = 2
        russianFlag.layer.borderColor = UIColor.black.cgColor
        russianFlag.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(30)
            make.centerX.equalToSuperview()
            make.width.equalToSuperview().dividedBy(1.2)
            make.height.equalToSuperview().dividedBy(4)
        }
        
        russianFlag.addSubview(russianFlag1)
        russianFlag1.backgroundColor = .white
        russianFlag1.snp.makeConstraints { make in
            make.width.top.equalToSuperview()
            make.height.equalToSuperview().dividedBy(3)
        }
        
        russianFlag.addSubview(russianFlag2)
        russianFlag2.backgroundColor = .blue
        russianFlag2.snp.makeConstraints { make in
            make.width.equalToSuperview()
            make.top.equalTo(russianFlag1.snp.bottom)
            make.height.equalToSuperview().dividedBy(3)
        }
        
        russianFlag.addSubview(russianFlag3)
        russianFlag3.backgroundColor = .red
        russianFlag3.snp.makeConstraints { make in
            make.width.equalToSuperview()
            make.top.equalTo(russianFlag2.snp.bottom)
            make.height.equalToSuperview().dividedBy(3)
        }
        
        view.addSubview(frenchFlag)
        frenchFlag.backgroundColor = .black
        frenchFlag.layer.borderWidth = 2
        frenchFlag.layer.borderColor = UIColor.black.cgColor
        frenchFlag.snp.makeConstraints { make in
            make.top.equalTo(russianFlag.snp.bottom).offset(5)
            make.centerX.equalToSuperview()
            make.width.equalToSuperview().dividedBy(1.2)
            make.height.equalToSuperview().dividedBy(5)
        }
        
        frenchFlag.addSubview(frenchFlag1)
        frenchFlag1.backgroundColor = .blue
        frenchFlag1.snp.makeConstraints { make in
            make.height.top.left.equalToSuperview()
            make.width.equalToSuperview().dividedBy(3)
        }
        
        frenchFlag.addSubview(frenchFlag2)
        frenchFlag2.backgroundColor = .white
        frenchFlag2.snp.makeConstraints { make in
            make.height.equalToSuperview()
            make.left.equalTo(frenchFlag1.snp.right)
            make.width.equalToSuperview().dividedBy(3)
        }
        
        frenchFlag.addSubview(frenchFlag3)
        frenchFlag3.backgroundColor = .red
        frenchFlag3.snp.makeConstraints { make in
            make.height.equalToSuperview()
            make.left.equalTo(frenchFlag2.snp.right)
            make.width.equalToSuperview().dividedBy(3)
        }
        
        view.addSubview(polishFlag)
        polishFlag.backgroundColor = .black
        polishFlag.layer.borderWidth = 2
        polishFlag.layer.borderColor = UIColor.black.cgColor
        polishFlag.snp.makeConstraints { make in
            make.top.equalTo(frenchFlag.snp.bottom).offset(5)
            make.centerX.equalToSuperview()
            make.width.equalToSuperview().dividedBy(1.2)
            make.height.equalToSuperview().dividedBy(5)
        }
        
        polishFlag.addSubview(polishFlag1)
        polishFlag1.backgroundColor = .white
        polishFlag1.snp.makeConstraints { make in
            make.width.top.left.equalToSuperview()
            make.height.equalToSuperview().dividedBy(2)
        }
        
        polishFlag.addSubview(polishFlag2)
        polishFlag2.backgroundColor = .red
        polishFlag2.snp.makeConstraints { make in
            make.width.equalToSuperview()
            make.top.equalTo(polishFlag1.snp.bottom)
            make.height.equalToSuperview().dividedBy(2)
        }
        
        view.addSubview(slivakianFlag)
        slivakianFlag.backgroundColor = .black
        slivakianFlag.layer.borderWidth = 2
        slivakianFlag.layer.borderColor = UIColor.black.cgColor
        slivakianFlag.snp.makeConstraints { make in
            make.top.equalTo(polishFlag.snp.bottom).offset(5)
            make.centerX.equalToSuperview()
            make.width.equalToSuperview().dividedBy(1.2)
            make.height.equalToSuperview().dividedBy(5)
        }
        
        slivakianFlag.addSubview(slivakianFlag1)
        slivakianFlag1.backgroundColor = .white
        slivakianFlag1.snp.makeConstraints { make in
            make.width.top.left.equalToSuperview()
            make.height.equalToSuperview().dividedBy(3)
        }
        
        slivakianFlag.addSubview(slivakianFlag2)
        slivakianFlag2.backgroundColor = .blue
        slivakianFlag2.snp.makeConstraints { make in
            make.width.equalToSuperview()
            make.top.equalTo(slivakianFlag1.snp.bottom)
            make.height.equalToSuperview().dividedBy(3)
        }
        
        slivakianFlag.addSubview(slivakianFlag3)
        slivakianFlag3.backgroundColor = .red
        slivakianFlag3.snp.makeConstraints { make in
            make.width.equalToSuperview()
            make.top.equalTo(slivakianFlag2.snp.bottom)
            make.height.equalToSuperview().dividedBy(3)
        }
        
        slivakianFlag.addSubview(slivakianGerbImage)
        slivakianGerbImage.image = UIImage(named: "slovakia")
        slivakianGerbImage.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.left.top.equalToSuperview().offset(20)
            make.height.equalToSuperview().dividedBy(2)
            make.width.equalToSuperview().dividedBy(5)
        }
    }
}
