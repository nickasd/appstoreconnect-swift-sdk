// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V2.AppStoreVersionExperiments {
	public func id(_ id: String) -> WithID {
		WithID(path: "\(path)/\(id)")
	}

	public struct WithID {
		/// Path: `/v2/appStoreVersionExperiments/{id}`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.AppStoreVersionExperimentV2Response> {
			.get(path, query: parameters?.asQuery)
		}

		public struct GetParameters {
			public var fieldsAppStoreVersionExperiments: [FieldsAppStoreVersionExperiments]?
			public var include: [Include]?
			public var fieldsAppStoreVersionExperimentTreatments: [FieldsAppStoreVersionExperimentTreatments]?
			public var limitAppStoreVersionExperimentTreatments: Int?
			public var limitControlVersions: Int?

			public enum FieldsAppStoreVersionExperiments: String, Codable, CaseIterable {
				case app
				case appStoreVersionExperimentTreatments
				case controlVersions
				case endDate
				case latestControlVersion
				case name
				case platform
				case reviewRequired
				case startDate
				case started
				case state
				case trafficProportion
			}

			public enum Include: String, Codable, CaseIterable {
				case app
				case appStoreVersionExperimentTreatments
				case controlVersions
				case latestControlVersion
			}

			public enum FieldsAppStoreVersionExperimentTreatments: String, Codable, CaseIterable {
				case appIcon
				case appIconName
				case appStoreVersionExperiment
				case appStoreVersionExperimentTreatmentLocalizations
				case appStoreVersionExperimentV2
				case name
				case promotedDate
			}

			public init(fieldsAppStoreVersionExperiments: [FieldsAppStoreVersionExperiments]? = nil, include: [Include]? = nil, fieldsAppStoreVersionExperimentTreatments: [FieldsAppStoreVersionExperimentTreatments]? = nil, limitAppStoreVersionExperimentTreatments: Int? = nil, limitControlVersions: Int? = nil) {
				self.fieldsAppStoreVersionExperiments = fieldsAppStoreVersionExperiments
				self.include = include
				self.fieldsAppStoreVersionExperimentTreatments = fieldsAppStoreVersionExperimentTreatments
				self.limitAppStoreVersionExperimentTreatments = limitAppStoreVersionExperimentTreatments
				self.limitControlVersions = limitControlVersions
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(fieldsAppStoreVersionExperiments, forKey: "fields[appStoreVersionExperiments]")
				encoder.encode(include, forKey: "include")
				encoder.encode(fieldsAppStoreVersionExperimentTreatments, forKey: "fields[appStoreVersionExperimentTreatments]")
				encoder.encode(limitAppStoreVersionExperimentTreatments, forKey: "limit[appStoreVersionExperimentTreatments]")
				encoder.encode(limitControlVersions, forKey: "limit[controlVersions]")
				return encoder.items
			}
		}

		public func patch(_ body: AppStoreConnect_Swift_SDK.AppStoreVersionExperimentV2UpdateRequest) -> Request<AppStoreConnect_Swift_SDK.AppStoreVersionExperimentV2Response> {
			.patch(path, body: body)
		}

		public var delete: Request<Void> {
			.delete(path)
		}
	}
}
