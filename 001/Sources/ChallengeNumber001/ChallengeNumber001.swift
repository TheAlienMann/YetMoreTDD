public struct ChallengeNumber001 {
	public private(set) var text = "Hello, World!"

	public init() {}

	func wordSearch(_ str: String, _ arr: [String]) -> [String] {
		guard !arr.isEmpty else { return [] }
		return [str]
	}
}
