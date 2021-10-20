import UIKit

struct MScection: Decodable, Hashable {
    
    let type: String
    let title: String
    let items: [MChat]
}
