//
//  SecondVC.swift
//  EF25HealthPlanApp
//
//  Created by iKame Elite Fresher 2025 on 3/7/25.
//

import UIKit

class ThirdVC: UIViewController {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var continueBtn: UIButton!
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = "What would you like to achieve?"
        // Do any additional setup after loading the view.
        navigationItem.hidesBackButton = true
        setupButton()
        collectionView.allowsMultipleSelection = true
        collectionView.register(UINib(nibName: "CollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "CollectionViewCell")
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    
    func setupButton() {
        continueBtn.setTitle("Continue", for: .normal)
        continueBtn.setTitleColor(.neutral5, for: .disabled)
        continueBtn.backgroundColor = .neutral3
        continueBtn.tintColor = .neutral5
        continueBtn.layer.cornerRadius = 16
        continueBtn.isEnabled = false
    }
    

    @IBAction func continueBtnTapped(_ sender: UIButton) {
        let vc = FourthVC()
        navigationController?.pushViewController(vc, animated: true)
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
extension ThirdVC: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CollectionViewCell
        let item = item2[indexPath.item]
        cell.configure(title: item.title, image: item.image)
        return cell
    }
}
extension ThirdVC: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        updateButtonState()
    }
    
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
        updateButtonState()
    }
    
    private func updateButtonState() {
        let selectedCount = collectionView.indexPathsForSelectedItems?.count ?? 0
      
        if selectedCount > 0 {
            continueBtn.isEnabled = true
            continueBtn.backgroundColor = .primary1
        } else {
            continueBtn.isEnabled = false
            continueBtn.backgroundColor = .neutral3
        }
    
    }
}
