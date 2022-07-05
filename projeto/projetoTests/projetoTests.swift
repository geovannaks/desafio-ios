//
//  projetoTests.swift
//  projetoTests
//
//  Created by Geovanna Kasemirinski da Silva on 05/07/22.
//

import XCTest
@testable import projeto

class projetoTests: XCTestCase {
    
   
    
    func testViewControllerShouldHaveNavigationController() {
        let viewController = CadView()
        let navigation = LoginView()
        navigation.viewControllers = [viewController]
        XCTAssertNotNil(viewController.navigationController)
    }
    
    

}
