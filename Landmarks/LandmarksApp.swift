//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Chinh on 3/11/24.
//

import SwiftUI


// App sử dụng SwiftUI app life cycle có structre tuân thủ theo App protocol.
// Thuộc thính body có thể trả về 1 hoặc nhiều Scene, từ đó cung cấp nội dung để hiển thị.
// Thuộc tính @main là điểm bắt đầu của ứng dụng.
@main
struct LandmarksApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
