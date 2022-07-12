//
//  ContainerView.swift
//  SwiftUI-VK
//
//  Created by Аня on 12.07.2022.
//

import SwiftUI

struct ContainerView: View {
    @State private var shouldShowMainView: Bool = false
    var body: some View {
        NavigationView  {
            HStack {
                LoginView(isLoggin: $shouldShowMainView)
                NavigationLink(destination: TabBar(), isActive: $shouldShowMainView) {
                        EmptyView()
                }
            }
        }
    }
}

struct ContainerView_Previews: PreviewProvider {
    static var previews: some View {
        ContainerView()
    }
}
