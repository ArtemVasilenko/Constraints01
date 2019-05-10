import UIKit

class ViewController: UIViewController {
    
    var square: UIView = {
        let myView = UIView()
        myView.frame = CGRect(x: 0, y: 0, width: 20, height: 20)
        myView.translatesAutoresizingMaskIntoConstraints = false
        
        return myView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    func createSquareWithConstraints() {
        
    }
    
}

