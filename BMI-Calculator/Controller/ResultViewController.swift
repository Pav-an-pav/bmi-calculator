import UIKit

class ResultViewController: UIViewController {
    
    var bmiValue: String?
    var advice: String?
    var colorValue: UIColor?

    @IBOutlet weak var bmiLabel: UILabel!
    
    @IBOutlet weak var adviceLabel: UILabel!
    
    @IBOutlet weak var recalculateButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = bmiValue
        recalculateButton.layer.cornerRadius = 20
        recalculateButton.clipsToBounds = true
        bmiLabel.textColor = colorValue ?? .black
        adviceLabel.text = advice ?? "Again"
    }
    

    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
