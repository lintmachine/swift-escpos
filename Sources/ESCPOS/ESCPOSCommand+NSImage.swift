//
//  ESCPOSCommand+NSImage.swift
//  
//
//  Created by Jacob Ingalls on 6/26/22.
//

import Foundation

#if canImport(AppKit)
import AppKit

public extension ESCPOSCommand {
    static func printMonochromePhoto(image: NSImage) throws -> ESCPOSCommand {
        let cgImage = image.cgImage(forProposedRect: nil, context: nil, hints: nil)!

        return try printMonochromePhoto(image: cgImage)
    }
}
#endif
