

import UIKit

class ViewController: UIViewController {
    //Tarea
    @IBOutlet weak var tipoGesto: UILabel!
    
    func animacion(){
        UIView.animate(withDuration: 3, delay: 0.2, options: [], animations: {
            self.tipoGesto.alpha = 1.0
        }) {_ in
            self.tipoGesto.alpha = 0.0
        }
    }

    @objc func accionGesto(sender: UIGestureRecognizer){
        if sender.isKind(of: UITapGestureRecognizer.self){
            tipoGesto.text = "Tap"
        }
        
        if sender.isKind(of: UISwipeGestureRecognizer.self){
            tipoGesto.text = "Swipe"
        }
        animacion()
    }
    //Tarea
    override func viewDidLoad() {
        
        let gestoTap = UITapGestureRecognizer(target: self, action:#selector(accionGesto(sender:)))
        let gestoSwipe = UISwipeGestureRecognizer(target: self, action:#selector(accionGesto(sender:)))
        self.view.addGestureRecognizer(gestoTap)
        self.view.addGestureRecognizer(gestoSwipe);
    }
      
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.tipoGesto.alpha = 0.0
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
}

