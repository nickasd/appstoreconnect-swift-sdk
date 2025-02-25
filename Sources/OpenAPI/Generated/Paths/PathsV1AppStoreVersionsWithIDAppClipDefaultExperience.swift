// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.AppStoreVersions.WithID {
	public var appClipDefaultExperience: AppClipDefaultExperience {
		AppClipDefaultExperience(path: path + "/appClipDefaultExperience")
	}

	public struct AppClipDefaultExperience {
		/// Path: `/v1/appStoreVersions/{id}/appClipDefaultExperience`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.AppClipDefaultExperienceResponse> {
			.get(path, query: parameters?.asQuery)
		}

		public struct GetParameters {
			public var fieldsAppClips: [FieldsAppClips]?
			public var fieldsAppClipAppStoreReviewDetails: [FieldsAppClipAppStoreReviewDetails]?
			public var fieldsAppStoreVersions: [FieldsAppStoreVersions]?
			public var fieldsAppClipDefaultExperiences: [FieldsAppClipDefaultExperiences]?
			public var fieldsAppClipDefaultExperienceLocalizations: [FieldsAppClipDefaultExperienceLocalizations]?
			public var limitAppClipDefaultExperienceLocalizations: Int?
			public var include: [Include]?

			public enum FieldsAppClips: String, Codable, CaseIterable {
				case app
				case appClipAdvancedExperiences
				case appClipDefaultExperiences
				case bundleID = "bundleId"
			}

			public enum FieldsAppClipAppStoreReviewDetails: String, Codable, CaseIterable {
				case appClipDefaultExperience
				case invocationURLs = "invocationUrls"
			}

			public enum FieldsAppStoreVersions: String, Codable, CaseIterable {
				case ageRatingDeclaration
				case app
				case appClipDefaultExperience
				case appStoreReviewDetail
				case appStoreState
				case appStoreVersionExperiments
				case appStoreVersionExperimentsV2
				case appStoreVersionLocalizations
				case appStoreVersionPhasedRelease
				case appStoreVersionSubmission
				case build
				case copyright
				case createdDate
				case customerReviews
				case downloadable
				case earliestReleaseDate
				case platform
				case releaseType
				case routingAppCoverage
				case versionString
			}

			public enum FieldsAppClipDefaultExperiences: String, Codable, CaseIterable {
				case action
				case appClip
				case appClipAppStoreReviewDetail
				case appClipDefaultExperienceLocalizations
				case appClipDefaultExperienceTemplate
				case releaseWithAppStoreVersion
			}

			public enum FieldsAppClipDefaultExperienceLocalizations: String, Codable, CaseIterable {
				case appClipDefaultExperience
				case appClipHeaderImage
				case locale
				case subtitle
			}

			public enum Include: String, Codable, CaseIterable {
				case appClip
				case appClipAppStoreReviewDetail
				case appClipDefaultExperienceLocalizations
				case releaseWithAppStoreVersion
			}

			public init(fieldsAppClips: [FieldsAppClips]? = nil, fieldsAppClipAppStoreReviewDetails: [FieldsAppClipAppStoreReviewDetails]? = nil, fieldsAppStoreVersions: [FieldsAppStoreVersions]? = nil, fieldsAppClipDefaultExperiences: [FieldsAppClipDefaultExperiences]? = nil, fieldsAppClipDefaultExperienceLocalizations: [FieldsAppClipDefaultExperienceLocalizations]? = nil, limitAppClipDefaultExperienceLocalizations: Int? = nil, include: [Include]? = nil) {
				self.fieldsAppClips = fieldsAppClips
				self.fieldsAppClipAppStoreReviewDetails = fieldsAppClipAppStoreReviewDetails
				self.fieldsAppStoreVersions = fieldsAppStoreVersions
				self.fieldsAppClipDefaultExperiences = fieldsAppClipDefaultExperiences
				self.fieldsAppClipDefaultExperienceLocalizations = fieldsAppClipDefaultExperienceLocalizations
				self.limitAppClipDefaultExperienceLocalizations = limitAppClipDefaultExperienceLocalizations
				self.include = include
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(fieldsAppClips, forKey: "fields[appClips]")
				encoder.encode(fieldsAppClipAppStoreReviewDetails, forKey: "fields[appClipAppStoreReviewDetails]")
				encoder.encode(fieldsAppStoreVersions, forKey: "fields[appStoreVersions]")
				encoder.encode(fieldsAppClipDefaultExperiences, forKey: "fields[appClipDefaultExperiences]")
				encoder.encode(fieldsAppClipDefaultExperienceLocalizations, forKey: "fields[appClipDefaultExperienceLocalizations]")
				encoder.encode(limitAppClipDefaultExperienceLocalizations, forKey: "limit[appClipDefaultExperienceLocalizations]")
				encoder.encode(include, forKey: "include")
				return encoder.items
			}
		}
	}
}
