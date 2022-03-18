import Foundation

public class StringCalculator {
	func addNumber(_ string: String) -> Int {
		if string == "1" { return 1 }
		if string == "2" { return 2 }
		return 0
	}

	func splitInput(_ input: String) -> [String] {
		let characterSet = CharacterSet(charactersIn: ", #")
		return input.components(separatedBy: characterSet)
	}
}
