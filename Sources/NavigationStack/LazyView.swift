//
//  LazyView.swift
//  BreakingBadApp
//
//  Created by Андрей on 29.06.2022.
//

import SwiftUI

public struct LazyView<Content: View>: View {
	
	private let build: () -> Content
	
	public init(_ content: @autoclosure @escaping () -> Content) {
		self.build = content
	}
	
	public var body: some View {
        build()
    }
}

struct LazyView_Previews: PreviewProvider {
    static var previews: some View {
        LazyView(Text("LazyView"))
    }
}
