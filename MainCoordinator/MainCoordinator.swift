//
//  ContentView.swift
//  MainCoordinator
//
//  Created by Аня on 29.07.2022.
//

import UIKit
import SwiftUI
import Combine

class MainCoordinator {
    
    let navigationController: UINavigationController
    
    private let session: Session = Session()
    private var cancellables: Set<AnyCancellable> = []
    
    init(navigationController: UINavigationController) {
        let loginView = NetworkLoginScreen(session: session)
        let loginController = UIHostingController(rootView: loginView)
        self.navigationController = UINavigationController(rootViewController: loginController)
    }
    
    func run() {
        session.$isAuthorized.subscribe(on: RunLoop.main).sink { [weak self] isAuthorized in
            guard let self = self else { return }
            if isAuthorized {
                self.navigationController.popToRootViewController(animated: true)
            } else {
                let tabBar = self.showTabBar()
                self.navigationController.pushViewController(tabBar, animated: true)
            }
        }.store(in: &cancellables)
    }
    
    private func showTabBar() -> UIViewController {
        let tabBarView = TabBarView()
        return UIHostingController(rootView: tabBarView)
    }
}
