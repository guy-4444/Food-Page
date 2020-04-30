import UIKit

class SecondViewController: UIViewController {

    // MARK: IBOutlets
    @IBOutlet weak var second_IMG_icon: UIImageView!
    @IBOutlet weak var second_LBL_title: UILabel!
    
    // MARK: Parameters
    var food: Food?

    // MARK: Life cycle functions
    override func viewDidLoad() {
        super.viewDidLoad()
        
        second_LBL_title.text = food?.name
        
        var imageName: String = food?.name!.lowercased() ?? ""
        imageName = "ic_\(imageName)"
        second_IMG_icon.image = UIImage(named: imageName)
    }
    


}
