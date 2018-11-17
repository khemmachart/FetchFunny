//
//  PhotosViewPresenter.swift
//  FetchFunny
//
//  Created by Kiattisak Anoochitarom on 14/11/2561 BE.
//  Copyright © 2018 Kiattisak A. All rights reserved.
//

import Foundation

final class PhotosViewPresenter: PhotosViewOutput {

    weak var view: PhotosViewInput?
    var interactor: PhotosViewInteractorInput?
    var router: PhotosViewRouterInput?

    func viewIsReady() {
        
    }

    func fetchPhotos(with string: String) {
        view?.showLoadingView()
        interactor?.loadPhotos(with: string)
    }

    func tapPhoto(at indexPath: IndexPath) {
        
    }

    func refreshPhotos() {

    }
}

extension PhotosViewPresenter: PhotosViewInteractorOutput {
    func didReceivePhotos(photos: [InstagramPhoto]) {
        view?.showPhotos(with: photos)
    }
}
