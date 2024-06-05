//
//  DownloadableModel.swift
//  SwiftDelegatesStudy
//
//  Created by Caio Gomes Piteli on 05/06/24.
//

import Foundation

// Define the Downloadable protocol
protocol Downloadable {
    var delegate: DownloadManager? { get set }

    var fileName: String { get }
    var fileSize: Int { get }
    func download()
}

// Extend the Downloadable protocol to provide default implementations
extension Downloadable {
    func download() {
        Task {
            // Simulate download progress
            for progress in stride(from: 0.0, to: 1.1, by: 0.1) {
                delegate?.updateProgress(for: fileName, progress: progress * 100)
                Thread.sleep(forTimeInterval: 1)
            }
            
            delegate?.completeDownload(for: fileName)
        }
    }
}
