//
//  PhotosViewController.swift
//  FetchFunny
//
//  Created by Kiattisak Anoochitarom on 14/11/2561 BE.
//  Copyright © 2018 Kiattisak A. All rights reserved.
//

import UIKit

final class PhotosViewController: UIViewController, PhotosViewInput, NibLoadable {
    typealias NibRootType = PhotosViewController

    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var loadingView: UIView!

    var output: PhotosViewOutput?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        output?.viewIsReady()
    }

    func showPhotos(with photos: [Photo]) {

    }

    func showLoadingView() {
        loadingView.isHidden = false
    }

    func hideLoadingView() {
        loadingView.isHidden = true
    }

    // MARK: - Private
    private func setupView() {
        hideLoadingView()
    }
}
