//
//  Command+UIImage
//  
//
//  Created by Jacob Ingalls on 6/26/22.
//

import Foundation

#if canImport(UIKit)
import UIKit

public extension ESCPOS.Command {
    static func printMonochromePhoto(image: UIImage) throws -> ESCPOS.Command {
        let cgImage = image.cgImage!

        return try printMonochromePhoto(image: cgImage)
    }
}
#endif
