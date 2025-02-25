// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.BetaTesters.WithID {
	public var apps: Apps {
		Apps(path: path + "/apps")
	}

	public struct Apps {
		/// Path: `/v1/betaTesters/{id}/apps`
		public let path: String

		public func get(fieldsApps: [FieldsApps]? = nil, limit: Int? = nil) -> Request<AppStoreConnect_Swift_SDK.AppsResponse> {
			.get(path, query: makeGetQuery(fieldsApps, limit))
		}

		private func makeGetQuery(_ fieldsApps: [FieldsApps]?, _ limit: Int?) -> [(String, String?)] {
			let encoder = URLQueryEncoder()
			encoder.encode(fieldsApps, forKey: "fields[apps]", explode: false)
			encoder.encode(limit, forKey: "limit")
			return encoder.items
		}

		public enum FieldsApps: String, Codable, CaseIterable {
			case appAvailability
			case appClips
			case appCustomProductPages
			case appEvents
			case appInfos
			case appPricePoints
			case appPriceSchedule
			case appStoreVersionExperimentsV2
			case appStoreVersions
			case availableInNewTerritories
			case availableTerritories
			case betaAppLocalizations
			case betaAppReviewDetail
			case betaGroups
			case betaLicenseAgreement
			case betaTesters
			case builds
			case bundleID = "bundleId"
			case ciProduct
			case contentRightsDeclaration
			case customerReviews
			case endUserLicenseAgreement
			case gameCenterEnabledVersions
			case inAppPurchases
			case inAppPurchasesV2
			case isOrEverWasMadeForKids
			case name
			case perfPowerMetrics
			case preOrder
			case preReleaseVersions
			case pricePoints
			case prices
			case primaryLocale
			case promotedPurchases
			case reviewSubmissions
			case sku
			case subscriptionGracePeriod
			case subscriptionGroups
			case subscriptionStatusURL = "subscriptionStatusUrl"
			case subscriptionStatusURLForSandbox = "subscriptionStatusUrlForSandbox"
			case subscriptionStatusURLVersion = "subscriptionStatusUrlVersion"
			case subscriptionStatusURLVersionForSandbox = "subscriptionStatusUrlVersionForSandbox"
		}
	}
}
