//
//  PhotoDetailsModuleBuilderTests.swift
//  FetchFunnyTests
//
//  Created by Anoochitarom, Kiattisak (Agoda) on 19/11/2561 BE.
//  Copyright © 2561 Anoochitarom, Kiattisak (Agoda). All rights reserved.
//

import XCTest

@testable import FetchFunny

final class PhotoDetailsModuleBuilderTests: XCTestCase {
    func testBuildModule() {
        let builder = PhotoDetailsModuleBuilder()

        guard let viewController = builder.build(
            with: InstagramPhoto.mockInstagramPhoto
        ) as? PhotoDetailsViewController else {
            return XCTFail("Couldn't build PhotoDetailsViewController")
        }

        XCTAssertNotNil(viewController.output)

        guard let presenter = viewController.output as? PhotoDetailsViewPresenter else {
            return XCTFail("PhotosViewPresenter isn't set correctly")
        }

        XCTAssertNotNil(presenter.view)
    }
}
