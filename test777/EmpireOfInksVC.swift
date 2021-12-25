import UIKit
import Foundation
import SnapKit

class EmpireOfInksVC: UIViewController {
    
    private var colorContainer = UIView()
    
    private var color1 = UILabel()
    private var color2 = UILabel()
    private var color3 = UILabel()
    private var color4 = UILabel()
    private var color5 = UILabel()
    private var color6 = UILabel()
    private var color7 = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemCyan
        
        view.addSubview(colorContainer)
        colorContainer.layer.cornerRadius = 15
        colorContainer.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(100)
            make.centerX.equalToSuperview()
            make.height.width.equalToSuperview().dividedBy(2)
        }
        
        colorContainer.addSubview(color1)
        color1.backgroundColor = .red
        color1.snp.makeConstraints { make in
            make.top.left.right.width.equalToSuperview()
            make.height.equalToSuperview().dividedBy(7)
        }
        
        colorContainer.addSubview(color2)
        color2.backgroundColor = .orange
        color2.snp.makeConstraints { make in
            make.top.equalTo(color1.snp.bottom)
            make.left.right.height.width.equalTo(color1)
        }
        
        colorContainer.addSubview(color3)
        color3.backgroundColor = .yellow
        color3.snp.makeConstraints { make in
            make.top.equalTo(color2.snp.bottom)
            make.left.right.height.width.equalTo(color2)
        }
        
        colorContainer.addSubview(color4)
        color4.backgroundColor = .green
        color4.snp.makeConstraints { make in
            make.top.equalTo(color3.snp.bottom)
            make.left.right.height.width.equalTo(color3)
        }
        
        colorContainer.addSubview(color5)
        color5.backgroundColor = .systemBlue
        color5.snp.makeConstraints { make in
            make.top.equalTo(color4.snp.bottom)
            make.left.right.height.width.equalTo(color4)
        }
        
        colorContainer.addSubview(color6)
        color6.backgroundColor = .blue
        color6.snp.makeConstraints { make in
            make.top.equalTo(color5.snp.bottom)
            make.left.right.height.width.equalTo(color5)
        }
        
        colorContainer.addSubview(color7)
        color7.backgroundColor = .purple
        color7.snp.makeConstraints { make in
            make.top.equalTo(color6.snp.bottom)
            make.left.right.height.width.equalTo(color6)
        }
    }
}
