import UIKit
import SnapKit

class ViewController: UIViewController{
    
    var iiButton = UIButton()
    var iiReverseButton = UIButton()
    var gamepadButton = UIButton()
    var chessButton = UIButton()
    var fourFlagsButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .purple
        
        view.addSubview(iiButton)
        iiButton.backgroundColor = .yellow
        iiButton.setTitleColor(.black, for: .normal)
        iiButton.layer.cornerRadius = 10
        iiButton.titleLabel?.adjustsFontSizeToFitWidth = true
        iiButton.addTarget(nil, action: #selector(VCChanger(sender:)), for: .touchUpInside)
        iiButton.setTitle("Империя Инков", for: .normal)
        
        view.addSubview(iiReverseButton)
        iiReverseButton.setTitle("Развернутая Империя Инков", for: .normal)
        iiReverseButton.titleLabel?.adjustsFontSizeToFitWidth = true
        iiReverseButton.addTarget(nil, action: #selector(VCChanger(sender:)), for: .touchUpInside)
        iiReverseButton.backgroundColor = .yellow
        iiReverseButton.setTitleColor(.black, for: .normal)
        iiReverseButton.layer.cornerRadius = 10
        
        view.addSubview(gamepadButton)
        gamepadButton.setTitle("Джойстик", for: .normal)
        gamepadButton.titleLabel?.adjustsFontSizeToFitWidth = true
        gamepadButton.addTarget(nil, action: #selector(VCChanger(sender:)), for: .touchUpInside)
        gamepadButton.backgroundColor = .yellow
        gamepadButton.setTitleColor(.black, for: .normal)
        gamepadButton.layer.cornerRadius = 10
        
        view.addSubview(chessButton)
        chessButton.setTitle("Шахматы", for: .normal)
        chessButton.titleLabel?.adjustsFontSizeToFitWidth = true
        chessButton.addTarget(nil, action: #selector(VCChanger(sender:)), for: .touchUpInside)
        chessButton.backgroundColor = .yellow
        chessButton.setTitleColor(.black, for: .normal)
        chessButton.layer.cornerRadius = 10
        
        view.addSubview(fourFlagsButton)
        fourFlagsButton.setTitle("4 флага", for: .normal)
        fourFlagsButton.titleLabel?.adjustsFontSizeToFitWidth = true
        fourFlagsButton.addTarget(nil, action: #selector(VCChanger(sender:)), for: .touchUpInside)
        fourFlagsButton.backgroundColor = .yellow
        fourFlagsButton.setTitleColor(.black, for: .normal)
        fourFlagsButton.layer.cornerRadius = 10
        
        iiButton.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(100)
            make.centerX.equalToSuperview()
            make.height.equalTo(50)
            make.width.equalToSuperview().dividedBy(2)
        }
        
        iiReverseButton.snp.makeConstraints { make in
            make.top.equalTo(iiButton.snp.bottom).offset(30)
            make.centerX.equalToSuperview()
            make.height.equalTo(50)
            make.width.equalToSuperview().dividedBy(2)
        }
        
        gamepadButton.snp.makeConstraints { make in
            make.top.equalTo(iiReverseButton.snp.bottom).offset(30)
            make.centerX.equalToSuperview()
            make.height.equalTo(50)
            make.width.equalToSuperview().dividedBy(3)
        }
        
        chessButton.snp.makeConstraints { make in
            make.top.equalTo(gamepadButton.snp.bottom).offset(30)
            make.centerX.equalToSuperview()
            make.height.equalTo(50)
            make.width.equalToSuperview().dividedBy(3)
        }
        
        fourFlagsButton.snp.makeConstraints { make in
            make.top.equalTo(chessButton.snp.bottom).offset(30)
            make.centerX.equalToSuperview()
            make.height.equalTo(50)
            make.width.equalToSuperview().dividedBy(3)
        }
        
    }
    
    @objc func VCChanger(sender: UIButton) {
        if sender.titleLabel?.text == "Империя Инков"{
            navigationController?.pushViewController(EmpireOfInksVC(), animated: true)
        }else if sender.titleLabel?.text == "Развернутая Империя Инков"{
            navigationController?.pushViewController(ReversiveInkVC(), animated: true)
        }else if sender.titleLabel?.text == "Джойстик"{
            navigationController?.pushViewController(GamepadVC(), animated: true)
        }else if sender.titleLabel?.text == "Шахматы"{
            navigationController?.pushViewController(ChessVC(), animated: true)
        }else if sender.titleLabel?.text == "4 флага"{
            navigationController?.pushViewController(FourFlagsVC(), animated: true)
        }
    }
    
}
