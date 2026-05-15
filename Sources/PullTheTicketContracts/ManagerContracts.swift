import Foundation
import PullTheTicketModels

public protocol TicketManaging: AnyObject {
    var tickets: [Ticket] { get set }

    func saveTicket(_ ticket: Ticket)
    func updateTicket(oldTicket: Ticket, newTicket: Ticket)
    func deleteTicket(_ ticket: Ticket)
    func clearAllData()
    func loadTickets()
}

public protocol ThemeManaging: AnyObject {
    var themes: [Theme] { get set }
    var isDarkMode: Bool { get set }

    func toggleTheme()
    func saveTheme(_ theme: Theme)
    func updateTheme(oldTheme: Theme, newTheme: Theme)
    func deleteTheme(_ theme: Theme, ticketManager: (any TicketManaging)?)
    func loadThemes()
    func getThemeByName(_ name: String) -> Theme?
    func clearAllThemes()
}

public protocol StatisticsManaging: AnyObject {
    var statistics: [TestStatistics] { get set }

    func loadStatistics()
    func saveStatistics()
    func addTestResult(correctAnswers: Int, totalQuestions: Int, themeName: String)
    func getStatistics(for themeName: String) -> TestStatistics?
    func getAllStatistics() -> [TestStatistics]
    func clearStatistics()
    func clearStatistics(for themeName: String)
    func clearAllStatistics()
    func clearStatisticsForAllThemes()
    func getOverallStatistics() -> (totalTests: Int, averageAccuracy: Double, totalThemes: Int)
    func getBestPerformingTheme() -> TestStatistics?
    func getMostTestedTheme() -> TestStatistics?
    func getRecentTests(limit: Int) -> [TestResult]
}

public protocol OnboardingManaging: AnyObject {
    var isFirstLaunch: Bool { get set }

    func markOnboardingAsCompleted()
    func resetOnboarding()
}
