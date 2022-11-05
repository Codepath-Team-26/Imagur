//
//  StoryViewController.swift
//  Imagur
//
//  Created by Asarel Castellanos on 10/28/22.
//

import UIKit
import Parse
class StoryViewController: UIViewController {
    let pictureUrls = ["https://bella-volen.com/images/bodypainting-3-hares-2020.jpg?crc=18688584","https://bella-volen.com/images/bodypainting-animal-symbol-3-hares.jpg?crc=3976544061","https://bella-volen.com/images/fine-art-bodypainting-cd-cover.jpg?crc=3973467808","https://bella-volen.com/images/amazon-on-fire-brazil-burning-rainforest-fire-art-project.jpg?crc=3886403102"]
    @IBOutlet weak var photoCollectionView: UICollectionView!
    @IBOutlet weak var userAvator: CostumView!
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var userIDLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let currentUser = PFUser.current()
        if currentUser != nil {
            userNameLabel.text = currentUser?.username
            userIDLabel.text = "UserID:"+currentUser!.username!
        }
        // Do any additional setup after loading the view.
        self.photoCollectionView.delegate = self
        self.photoCollectionView.dataSource = self
        userAvator.cornerRadius = 25
        userAvator.layer.masksToBounds = true

    }
    
    @IBAction func onLogOut(_ sender: Any) {
        PFUser.logOut()
        
        let main = UIStoryboard(name: "Main", bundle: nil)
        let loginViewController = main.instantiateViewController(withIdentifier: "LoginViewController")
        guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene, let delegate = windowScene.delegate as? SceneDelegate else { return }
        delegate.window?.rootViewController = loginViewController
    }
    
}
extension StoryViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "photoCell", for: indexPath)
        cell.layer.masksToBounds = false
        return cell
    }
    
}
