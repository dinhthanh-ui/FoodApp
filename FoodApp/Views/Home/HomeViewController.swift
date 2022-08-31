//
//  HomeViewController.swift
//  FoodApp
//
//  Created by Macbook Pro on 01/09/2022.
//

import UIKit

class HomeViewController: UIViewController {
    
     
    @IBOutlet weak var categoryCollectionView: UICollectionView!
    @IBOutlet weak var popularCollectionView: UICollectionView!
    
    
    var categories: [DishCategory] = [
        .init(id: "id1", name: "Africa Dish",  image: "https://i.picsum.photos/id/42/100/200.jpg?hmac=v4oiOFv09eI-2-V_fDM1eOZyPEiZz1qcA3hehp-U0Uk"),
        .init(id: "id1", name: "Africa Dish2", image: "https://i.picsum.photos/id/42/100/200.jpg?hmac=v4oiOFv09eI-2-V_fDM1eOZyPEiZz1qcA3hehp-U0Uk"),
        .init(id: "id1", name: "Africa Dish3", image: "https://i.picsum.photos/id/42/100/200.jpg?hmac=v4oiOFv09eI-2-V_fDM1eOZyPEiZz1qcA3hehp-U0Uk"),
        .init(id: "id1", name: "Africa Dish4", image: "https://i.picsum.photos/id/42/100/200.jpg?hmac=v4oiOFv09eI-2-V_fDM1eOZyPEiZz1qcA3hehp-U0Uk"),
        .init(id: "id1", name: "Africa Dish5", image: "https://i.picsum.photos/id/42/100/200.jpg?hmac=v4oiOFv09eI-2-V_fDM1eOZyPEiZz1qcA3hehp-U0Uk"),
        .init(id: "id1", name: "Africa Dish5", image: "https://i.picsum.photos/id/42/100/200.jpg?hmac=v4oiOFv09eI-2-V_fDM1eOZyPEiZz1qcA3hehp-U0Uk"),
        .init(id: "id1", name: "Africa Dish5", image: "https://i.picsum.photos/id/42/100/200.jpg?hmac=v4oiOFv09eI-2-V_fDM1eOZyPEiZz1qcA3hehp-U0Uk"),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        registerCells()
    }
    
    private func registerCells(){
        categoryCollectionView.register(UINib(nibName: CategoryCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: CategoryCollectionViewCell.identifier)
        popularCollectionView.register(UINib(nibName: CategoryCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: CategoryCollectionViewCell.identifier)
    }

    
}
extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return categories.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CategoryCollectionViewCell.identifier, for: indexPath) as! CategoryCollectionViewCell
        cell.setup(category: categories[indexPath.row])
        return cell
    }
}
