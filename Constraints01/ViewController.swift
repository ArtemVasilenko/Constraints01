import UIKit

class ViewController: UIViewController {
    
    var square: UIView = {
        let myView = UIView()
        myView.frame = CGRect(x: 0, y: 0, width: 20, height: 20)
        myView.backgroundColor = .blue
        myView.translatesAutoresizingMaskIntoConstraints = false
        
        return myView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(square)
        
        
//        createSquareWithConstraintsCenter()

        createSquareWithConstraints()

    }
    
    func createSquareWithConstraints() {
        NSLayoutConstraint(item: square,
                           attribute: .leading,
                           relatedBy: .equal,
                           toItem: self.view,
                           attribute: .leadingMargin,
                           multiplier: 1,
                           constant: 0).isActive = true
        
        NSLayoutConstraint(item: square,
                           attribute: .trailing,
                           relatedBy: .equal,
                           toItem: self.view,
                           attribute: .trailingMargin,
                           multiplier: 1,
                           constant: 0).isActive = true
        
         NSLayoutConstraint(item: square,
                            attribute: .topMargin,
                            relatedBy: .equal,
                            toItem: self.view,
                            attribute: .topMargin,
                            multiplier: 1,
                            constant: 20).isActive = true
        
         NSLayoutConstraint(item: square,
                            attribute: .height,
                            relatedBy: .equal,
                            toItem: square,
                            attribute: .width,
                            multiplier: 1,
                            constant: 0).isActive = true
    }
    
    
    func createSquareWithConstraintsCenter() {
        NSLayoutConstraint(item: square,
                           attribute: .centerX,
                           relatedBy: .equal,
                           toItem: self.view,
                           attribute: .centerX,
                           multiplier: 1,
                           constant: 0).isActive = true
        
        NSLayoutConstraint(item: square,
                           attribute: .centerY,
                           relatedBy: .equal,
                           toItem: self.view,
                           attribute: .centerY,
                           multiplier: 1,
                           constant: 0).isActive = true
        
        NSLayoutConstraint(item: square,
                           attribute: .height,
                           relatedBy: .equal,
                           toItem: nil,
                           attribute: .notAnAttribute,
                           multiplier: 1,
                           constant: 200).isActive = true
        
        NSLayoutConstraint(item: square,
                           attribute: .width,
                           relatedBy: .equal,
                           toItem: nil,
                           attribute: .notAnAttribute,
                           multiplier: 1,
                           constant: 200).isActive = true
    }
    
}

