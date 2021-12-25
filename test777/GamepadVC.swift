import UIKit
import Foundation
import SnapKit

class GamepadVC: UIViewController {
    
    var leftHandle = UIView()
    var rightHandle = UIView()
    var middleHandle = UIView()
    var middleHandleImage = UIImageView()
    var middleHandleStartImage = UIImageView()
    var middleHandleStartLabel = UILabel()
    var middleHandleReturnView = UIView()
    var middleHandleReturnLabel = UILabel()
    var leftCircle = UIView()
    var rightCircle = UIView()
    var middleLeftCircle = UIView()
    var middleRightCircle = UIView()
    var smallLeftCircle = UIView()
    var smallLeftCircleImage = UIImageView()
    var smallRightCircle = UIView()
    var smallRightCircleImage = UIImageView()
    var smallMiddleLeftCircle = UIView()
    var smallMiddleRightCircle = UIView()
    var leftTopButton = UIView()
    var rightTopButton = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .darkGray
        
        view.addSubview(leftHandle)
        leftHandle.backgroundColor = .systemBlue
        leftHandle.layer.cornerRadius = 30
        leftHandle.layer.borderWidth = 2
        leftHandle.layer.borderColor = UIColor.black.cgColor
        leftHandle.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.left.equalToSuperview().offset(40)
            make.height.equalTo(150)
            make.width.equalTo(70)
        }
        
        view.addSubview(rightHandle)
        rightHandle.backgroundColor = .systemBlue
        rightHandle.layer.cornerRadius = 30
        rightHandle.layer.borderWidth = 2
        rightHandle.layer.borderColor = UIColor.black.cgColor
        rightHandle.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.left.equalTo(leftHandle.snp.right).offset(100)
            make.height.equalTo(150)
            make.width.equalTo(70)
        }
        
        view.addSubview(middleHandle)
        middleHandle.backgroundColor = .systemBlue
        middleHandle.layer.cornerRadius = 30
        middleHandle.layer.borderWidth = 2
        middleHandle.layer.borderColor = UIColor.black.cgColor
        middleHandle.snp.makeConstraints { make in
            make.top.equalTo(leftHandle)
            make.left.equalTo(leftHandle.snp.right).offset(-35)
            make.height.equalTo(70)
            make.width.equalTo(170)
        }
        
        view.addSubview(middleHandleImage)
        middleHandleImage.image = UIImage(systemName: "logo.playstation")
        middleHandleImage.tintColor = .black
        middleHandleImage.snp.makeConstraints { make in
            make.top.equalTo(middleHandle).offset(5)
            make.centerX.equalTo(middleHandle)
            make.height.width.equalTo(30)
        }
        
        view.addSubview(middleHandleStartImage)
        middleHandleStartImage.image = UIImage(systemName: "arrowtriangle.forward.fill")
        middleHandleStartImage.tintColor = .black
        middleHandleStartImage.snp.makeConstraints { make in
            make.top.equalTo(middleHandleImage.snp.bottom)
            make.left.equalTo(middleHandleImage).offset(-30)
            make.height.equalTo(15)
            make.width.equalTo(20)
        }
        
        view.addSubview(middleHandleStartLabel)
        middleHandleStartLabel.textColor = .black
        middleHandleStartLabel.font = UIFont.boldSystemFont(ofSize: 5)
        middleHandleStartLabel.text = "START"
        middleHandleStartLabel.snp.makeConstraints { make in
            make.bottom.equalTo(middleHandleStartImage.snp.top)
            make.left.equalTo(middleHandleStartImage)
            make.height.equalTo(15)
            make.width.equalTo(40)
        }
        
        view.addSubview(middleHandleReturnView)
        middleHandleReturnView.backgroundColor = .black
        middleHandleReturnView.snp.makeConstraints { make in
            make.top.equalTo(middleHandleImage.snp.bottom)
            make.right.equalTo(middleHandleImage).offset(30)
            make.height.equalTo(10)
            make.width.equalTo(20)
        }
        
        view.addSubview(middleHandleReturnLabel)
        middleHandleReturnLabel.textColor = .black
        middleHandleReturnLabel.font = UIFont.boldSystemFont(ofSize: 5)
        middleHandleReturnLabel.text = "RETURN"
        middleHandleReturnLabel.snp.makeConstraints { make in
            make.bottom.equalTo(middleHandleReturnView.snp.top)
            make.left.equalTo(middleHandleReturnView)
            make.height.equalTo(15)
            make.width.equalTo(40)
        }
        
        view.addSubview(leftTopButton)
        leftTopButton.backgroundColor = .systemBlue
        leftTopButton.layer.cornerRadius = 15
        leftTopButton.layer.borderWidth = 2
        leftTopButton.layer.borderColor = UIColor.black.cgColor
        leftTopButton.snp.makeConstraints { make in
            make.top.equalTo(leftHandle).offset(-10)
            make.left.equalTo(leftHandle).offset(5)
            make.height.equalTo(18)
            make.width.equalTo(50)
        }
        
        view.addSubview(rightTopButton)
        rightTopButton.backgroundColor = .systemBlue
        rightTopButton.layer.cornerRadius = 15
        rightTopButton.layer.borderWidth = 2
        rightTopButton.layer.borderColor = UIColor.black.cgColor
        rightTopButton.snp.makeConstraints { make in
            make.top.equalTo(rightHandle).offset(-10)
            make.right.equalTo(rightHandle).offset(-5)
            make.height.equalTo(18)
            make.width.equalTo(50)
        }
        
        view.addSubview(leftCircle)
        leftCircle.backgroundColor = .systemBlue
        leftCircle.layer.cornerRadius = 25
        leftCircle.layer.borderWidth = 2
        leftCircle.layer.borderColor = UIColor.black.cgColor
        leftCircle.snp.makeConstraints { make in
            make.top.equalTo(leftHandle).offset(10)
            make.left.equalTo(leftHandle).offset(10)
            make.height.equalTo(50)
            make.width.equalTo(50)
        }
        
        view.addSubview(rightCircle)
        rightCircle.backgroundColor = .systemBlue
        rightCircle.layer.cornerRadius = 25
        rightCircle.layer.borderWidth = 2
        rightCircle.layer.borderColor = UIColor.black.cgColor
        rightCircle.snp.makeConstraints { make in
            make.top.equalTo(rightHandle).offset(10)
            make.left.equalTo(rightHandle).offset(10)
            make.height.equalTo(50)
            make.width.equalTo(50)
        }
        
        view.addSubview(middleLeftCircle)
        middleLeftCircle.backgroundColor = .systemBlue
        middleLeftCircle.layer.cornerRadius = 20
        middleLeftCircle.layer.borderWidth = 2
        middleLeftCircle.layer.borderColor = UIColor.black.cgColor
        middleLeftCircle.snp.makeConstraints { make in
            make.top.equalTo(middleHandle.snp.bottom).offset(-15)
            make.left.equalTo(middleHandle).offset(30)
            make.height.equalTo(40)
            make.width.equalTo(40)
        }
        
        view.addSubview(middleRightCircle)
        middleRightCircle.backgroundColor = .systemBlue
        middleRightCircle.layer.cornerRadius = 20
        middleRightCircle.layer.borderWidth = 2
        middleRightCircle.layer.borderColor = UIColor.black.cgColor
        middleRightCircle.snp.makeConstraints { make in
            make.top.equalTo(middleHandle.snp.bottom).offset(-15)
            make.right.equalTo(middleHandle).offset(-30)
            make.height.equalTo(40)
            make.width.equalTo(40)
        }
        
        view.addSubview(smallLeftCircle)
        smallLeftCircle.backgroundColor = .systemBlue
        smallLeftCircle.layer.cornerRadius = 20
        smallLeftCircle.layer.borderWidth = 2
        smallLeftCircle.layer.borderColor = UIColor.black.cgColor
        smallLeftCircle.snp.makeConstraints { make in
            make.center.equalTo(leftCircle)
            make.height.equalTo(40)
            make.width.equalTo(40)
        }
        
        view.addSubview(smallLeftCircleImage)
        smallLeftCircleImage.image = UIImage(systemName: "dpad")
        smallLeftCircleImage.tintColor = .black
        smallLeftCircleImage.snp.makeConstraints { make in
            make.center.equalTo(smallLeftCircle)
            make.height.width.equalTo(30)
        }
        
        view.addSubview(smallRightCircle)
        smallRightCircle.backgroundColor = .systemBlue
        smallRightCircle.layer.cornerRadius = 20
        smallRightCircle.layer.borderWidth = 2
        smallRightCircle.layer.borderColor = UIColor.black.cgColor
        smallRightCircle.snp.makeConstraints { make in
            make.center.equalTo(rightCircle)
            make.height.equalTo(40)
            make.width.equalTo(40)
        }
        
        view.addSubview(smallRightCircleImage)
        smallRightCircleImage.image = UIImage(systemName: "circle.grid.cross")
        smallRightCircleImage.tintColor = .black
        smallRightCircleImage.snp.makeConstraints { make in
            make.center.equalTo(smallRightCircle)
            make.height.width.equalTo(30)
        }
        
        view.addSubview(smallMiddleLeftCircle)
        smallMiddleLeftCircle.backgroundColor = .systemBlue
        smallMiddleLeftCircle.layer.cornerRadius = 15
        smallMiddleLeftCircle.layer.borderWidth = 2
        smallMiddleLeftCircle.layer.borderColor = UIColor.black.cgColor
        smallMiddleLeftCircle.snp.makeConstraints { make in
            make.center.equalTo(middleLeftCircle)
            make.height.equalTo(30)
            make.width.equalTo(30)
        }
        
        view.addSubview(smallMiddleRightCircle)
        smallMiddleRightCircle.backgroundColor = .systemBlue
        smallMiddleRightCircle.layer.cornerRadius = 15
        smallMiddleRightCircle.layer.borderWidth = 2
        smallMiddleRightCircle.layer.borderColor = UIColor.black.cgColor
        smallMiddleRightCircle.snp.makeConstraints { make in
            make.center.equalTo(middleRightCircle)
            make.height.equalTo(30)
            make.width.equalTo(30)
        }
        
    }
}
