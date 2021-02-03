import Foundation

extension Bundle {
  func decode<T: Codable>(_ file: String) -> T {

    guard let url = self.url(forResource: file, withExtension: nil) else {
      fatalError("Unable to locate \(file) in the bundle.")
    }

    guard let data = try? Data(contentsOf: url) else {
      fatalError("Unable to load \(file) in the bundle.")
    }

    guard let decodedData = try? JSONDecoder().decode(T.self, from: data) else {
      fatalError("Unable to decode \(file) in the bundle.")
    }

    return decodedData
  }
}
