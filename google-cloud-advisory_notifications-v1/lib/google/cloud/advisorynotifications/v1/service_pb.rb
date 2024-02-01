# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/advisorynotifications/v1/service.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n3google/cloud/advisorynotifications/v1/service.proto\x12%google.cloud.advisorynotifications.v1\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\x97\x04\n\x0cNotification\x12\x0c\n\x04name\x18\x01 \x01(\t\x12?\n\x07subject\x18\x02 \x01(\x0b\x32..google.cloud.advisorynotifications.v1.Subject\x12@\n\x08messages\x18\x03 \x03(\x0b\x32..google.cloud.advisorynotifications.v1.Message\x12\x35\n\x0b\x63reate_time\x18\x04 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x04\xe2\x41\x01\x03\x12R\n\x11notification_type\x18\x0c \x01(\x0e\x32\x37.google.cloud.advisorynotifications.v1.NotificationType:\xea\x01\xea\x41\xe6\x01\n1advisorynotifications.googleapis.com/Notification\x12Norganizations/{organization}/locations/{location}/notifications/{notification}\x12\x44projects/{project}/locations/{location}/notifications/{notification}*\rnotifications2\x0cnotification\"\x85\x01\n\x04Text\x12\x0f\n\x07\x65n_text\x18\x01 \x01(\t\x12\x16\n\x0elocalized_text\x18\x02 \x01(\t\x12T\n\x12localization_state\x18\x03 \x01(\x0e\x32\x38.google.cloud.advisorynotifications.v1.LocalizationState\"D\n\x07Subject\x12\x39\n\x04text\x18\x01 \x01(\x0b\x32+.google.cloud.advisorynotifications.v1.Text\"\xbf\x02\n\x07Message\x12\x41\n\x04\x62ody\x18\x01 \x01(\x0b\x32\x33.google.cloud.advisorynotifications.v1.Message.Body\x12\x46\n\x0b\x61ttachments\x18\x02 \x03(\x0b\x32\x31.google.cloud.advisorynotifications.v1.Attachment\x12/\n\x0b\x63reate_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12\x35\n\x11localization_time\x18\x04 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x1a\x41\n\x04\x42ody\x12\x39\n\x04text\x18\x01 \x01(\x0b\x32+.google.cloud.advisorynotifications.v1.Text\"e\n\nAttachment\x12\x39\n\x03\x63sv\x18\x02 \x01(\x0b\x32*.google.cloud.advisorynotifications.v1.CsvH\x00\x12\x14\n\x0c\x64isplay_name\x18\x01 \x01(\tB\x06\n\x04\x64\x61ta\"w\n\x03\x43sv\x12\x0f\n\x07headers\x18\x01 \x03(\t\x12\x44\n\tdata_rows\x18\x02 \x03(\x0b\x32\x31.google.cloud.advisorynotifications.v1.Csv.CsvRow\x1a\x19\n\x06\x43svRow\x12\x0f\n\x07\x65ntries\x18\x01 \x03(\t\"\xeb\x01\n\x18ListNotificationsRequest\x12J\n\x06parent\x18\x01 \x01(\tB:\xe2\x41\x01\x02\xfa\x41\x33\x12\x31\x61\x64visorynotifications.googleapis.com/Notification\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\x12\x45\n\x04view\x18\x04 \x01(\x0e\x32\x37.google.cloud.advisorynotifications.v1.NotificationView\x12\x15\n\rlanguage_code\x18\x05 \x01(\t\"\x94\x01\n\x19ListNotificationsResponse\x12J\n\rnotifications\x18\x01 \x03(\x0b\x32\x33.google.cloud.advisorynotifications.v1.Notification\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\x12\x12\n\ntotal_size\x18\x03 \x01(\x05\"y\n\x16GetNotificationRequest\x12H\n\x04name\x18\x01 \x01(\tB:\xe2\x41\x01\x02\xfa\x41\x33\n1advisorynotifications.googleapis.com/Notification\x12\x15\n\rlanguage_code\x18\x05 \x01(\t\"\x8c\x03\n\x08Settings\x12\x12\n\x04name\x18\x01 \x01(\tB\x04\xe2\x41\x01\x03\x12n\n\x15notification_settings\x18\x02 \x03(\x0b\x32I.google.cloud.advisorynotifications.v1.Settings.NotificationSettingsEntryB\x04\xe2\x41\x01\x02\x12\x12\n\x04\x65tag\x18\x03 \x01(\tB\x04\xe2\x41\x01\x02\x1ax\n\x19NotificationSettingsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12J\n\x05value\x18\x02 \x01(\x0b\x32;.google.cloud.advisorynotifications.v1.NotificationSettings:\x02\x38\x01:n\xea\x41k\n-advisorynotifications.googleapis.com/Settings\x12:organizations/{organization}/locations/{location}/settings\"\'\n\x14NotificationSettings\x12\x0f\n\x07\x65nabled\x18\x01 \x01(\x08\"Z\n\x12GetSettingsRequest\x12\x44\n\x04name\x18\x01 \x01(\tB6\xe2\x41\x01\x02\xfa\x41/\n-advisorynotifications.googleapis.com/Settings\"`\n\x15UpdateSettingsRequest\x12G\n\x08settings\x18\x01 \x01(\x0b\x32/.google.cloud.advisorynotifications.v1.SettingsB\x04\xe2\x41\x01\x02*J\n\x10NotificationView\x12!\n\x1dNOTIFICATION_VIEW_UNSPECIFIED\x10\x00\x12\t\n\x05\x42\x41SIC\x10\x01\x12\x08\n\x04\x46ULL\x10\x02*\xa0\x01\n\x11LocalizationState\x12\"\n\x1eLOCALIZATION_STATE_UNSPECIFIED\x10\x00\x12%\n!LOCALIZATION_STATE_NOT_APPLICABLE\x10\x01\x12\x1e\n\x1aLOCALIZATION_STATE_PENDING\x10\x02\x12 \n\x1cLOCALIZATION_STATE_COMPLETED\x10\x03*\xda\x01\n\x10NotificationType\x12!\n\x1dNOTIFICATION_TYPE_UNSPECIFIED\x10\x00\x12/\n+NOTIFICATION_TYPE_SECURITY_PRIVACY_ADVISORY\x10\x01\x12\'\n#NOTIFICATION_TYPE_SENSITIVE_ACTIONS\x10\x02\x12\"\n\x1eNOTIFICATION_TYPE_SECURITY_MSA\x10\x03\x12%\n!NOTIFICATION_TYPE_THREAT_HORIZONS\x10\x04\x32\xa8\x08\n\x1c\x41\x64visoryNotificationsService\x12\x94\x02\n\x11ListNotifications\x12?.google.cloud.advisorynotifications.v1.ListNotificationsRequest\x1a@.google.cloud.advisorynotifications.v1.ListNotificationsResponse\"|\xda\x41\x06parent\x82\xd3\xe4\x93\x02m\x12\x36/v1/{parent=organizations/*/locations/*}/notificationsZ3\x12\x31/v1/{parent=projects/*/locations/*}/notifications\x12\x81\x02\n\x0fGetNotification\x12=.google.cloud.advisorynotifications.v1.GetNotificationRequest\x1a\x33.google.cloud.advisorynotifications.v1.Notification\"z\xda\x41\x04name\x82\xd3\xe4\x93\x02m\x12\x36/v1/{name=organizations/*/locations/*/notifications/*}Z3\x12\x31/v1/{name=projects/*/locations/*/notifications/*}\x12\xb9\x01\n\x0bGetSettings\x12\x39.google.cloud.advisorynotifications.v1.GetSettingsRequest\x1a/.google.cloud.advisorynotifications.v1.Settings\">\xda\x41\x04name\x82\xd3\xe4\x93\x02\x31\x12//v1/{name=organizations/*/locations/*/settings}\x12\xd6\x01\n\x0eUpdateSettings\x12<.google.cloud.advisorynotifications.v1.UpdateSettingsRequest\x1a/.google.cloud.advisorynotifications.v1.Settings\"U\xda\x41\x08settings\x82\xd3\xe4\x93\x02\x44\x32\x38/v1/{settings.name=organizations/*/locations/*/settings}:\x08settings\x1aX\xca\x41$advisorynotifications.googleapis.com\xd2\x41.https://www.googleapis.com/auth/cloud-platformB\xa6\x03\n)com.google.cloud.advisorynotifications.v1B\x0cServiceProtoP\x01Z_cloud.google.com/go/advisorynotifications/apiv1/advisorynotificationspb;advisorynotificationspb\xaa\x02%Google.Cloud.AdvisoryNotifications.V1\xca\x02%Google\\Cloud\\AdvisoryNotifications\\V1\xea\x02(Google::Cloud::AdvisoryNotifications::V1\xea\x41\x8b\x01\n-advisorynotifications.googleapis.com/Location\x12\x31organizations/{organization}/locations/{location}\x12\'projects/{project}/locations/{location}b\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool

begin
  pool.add_serialized_file(descriptor_data)
rescue TypeError
  # Compatibility code: will be removed in the next major version.
  require 'google/protobuf/descriptor_pb'
  parsed = Google::Protobuf::FileDescriptorProto.decode(descriptor_data)
  parsed.clear_dependency
  serialized = parsed.class.encode(parsed)
  file = pool.add_serialized_file(serialized)
  warn "Warning: Protobuf detected an import path issue while loading generated file #{__FILE__}"
  imports = [
    ["google.protobuf.Timestamp", "google/protobuf/timestamp.proto"],
  ]
  imports.each do |type_name, expected_filename|
    import_file = pool.lookup(type_name).file_descriptor
    if import_file.name != expected_filename
      warn "- #{file.name} imports #{expected_filename}, but that import was loaded as #{import_file.name}"
    end
  end
  warn "Each proto file must use a consistent fully-qualified name."
  warn "This will become an error in the next major version."
end

module Google
  module Cloud
    module AdvisoryNotifications
      module V1
        Notification = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.advisorynotifications.v1.Notification").msgclass
        Text = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.advisorynotifications.v1.Text").msgclass
        Subject = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.advisorynotifications.v1.Subject").msgclass
        Message = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.advisorynotifications.v1.Message").msgclass
        Message::Body = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.advisorynotifications.v1.Message.Body").msgclass
        Attachment = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.advisorynotifications.v1.Attachment").msgclass
        Csv = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.advisorynotifications.v1.Csv").msgclass
        Csv::CsvRow = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.advisorynotifications.v1.Csv.CsvRow").msgclass
        ListNotificationsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.advisorynotifications.v1.ListNotificationsRequest").msgclass
        ListNotificationsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.advisorynotifications.v1.ListNotificationsResponse").msgclass
        GetNotificationRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.advisorynotifications.v1.GetNotificationRequest").msgclass
        Settings = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.advisorynotifications.v1.Settings").msgclass
        NotificationSettings = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.advisorynotifications.v1.NotificationSettings").msgclass
        GetSettingsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.advisorynotifications.v1.GetSettingsRequest").msgclass
        UpdateSettingsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.advisorynotifications.v1.UpdateSettingsRequest").msgclass
        NotificationView = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.advisorynotifications.v1.NotificationView").enummodule
        LocalizationState = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.advisorynotifications.v1.LocalizationState").enummodule
        NotificationType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.advisorynotifications.v1.NotificationType").enummodule
      end
    end
  end
end
