//
//  wanted_pre_on_2023_2_23UITestsLaunchTests.swift
//  wanted_pre_on_2023_2_23UITests
//
//  Created by seongjun cho on 2023/02/23.
//

import XCTest

final class wanted_pre_on_2023_2_23UITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
