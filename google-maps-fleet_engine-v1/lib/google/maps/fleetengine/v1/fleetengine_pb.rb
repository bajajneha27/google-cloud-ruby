# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/maps/fleetengine/v1/fleetengine.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/maps/fleetengine/v1/traffic_pb'
require 'google/protobuf/duration_pb'
require 'google/protobuf/timestamp_pb'
require 'google/protobuf/wrappers_pb'
require 'google/type/latlng_pb'


descriptor_data = "\n,google/maps/fleetengine/v1/fleetengine.proto\x12\x13maps.fleetengine.v1\x1a\x1fgoogle/api/field_behavior.proto\x1a(google/maps/fleetengine/v1/traffic.proto\x1a\x1egoogle/protobuf/duration.proto\x1a\x1fgoogle/protobuf/timestamp.proto\x1a\x1egoogle/protobuf/wrappers.proto\x1a\x18google/type/latlng.proto\"b\n\x0fTerminalPointId\x12\x16\n\x08place_id\x18\x02 \x01(\tB\x02\x18\x01H\x00\x12\x1a\n\x0cgenerated_id\x18\x03 \x01(\tB\x02\x18\x01H\x00\x12\x11\n\x05value\x18\x04 \x01(\tB\x02\x18\x01:\x02\x18\x01\x42\x04\n\x02Id\"\xf9\x01\n\x10TerminalLocation\x12\'\n\x05point\x18\x01 \x01(\x0b\x32\x13.google.type.LatLngB\x03\xe0\x41\x02\x12\x43\n\x11terminal_point_id\x18\x02 \x01(\x0b\x32$.maps.fleetengine.v1.TerminalPointIdB\x02\x18\x01\x12\x1b\n\x0f\x61\x63\x63\x65ss_point_id\x18\x03 \x01(\tB\x02\x18\x01\x12\x13\n\x07trip_id\x18\x04 \x01(\tB\x02\x18\x01\x12\x45\n\x16terminal_location_type\x18\x05 \x01(\x0e\x32!.maps.fleetengine.v1.WaypointTypeB\x02\x18\x01\"\xbc\x03\n\x0cTripWaypoint\x12\x37\n\x08location\x18\x01 \x01(\x0b\x32%.maps.fleetengine.v1.TerminalLocation\x12\x0f\n\x07trip_id\x18\x02 \x01(\t\x12\x38\n\rwaypoint_type\x18\x03 \x01(\x0e\x32!.maps.fleetengine.v1.WaypointType\x12-\n\x10path_to_waypoint\x18\x04 \x03(\x0b\x32\x13.google.type.LatLng\x12 \n\x18\x65ncoded_path_to_waypoint\x18\x05 \x01(\t\x12K\n\x13traffic_to_waypoint\x18\n \x01(\x0b\x32..maps.fleetengine.v1.ConsumableTrafficPolyline\x12\x34\n\x0f\x64istance_meters\x18\x06 \x01(\x0b\x32\x1b.google.protobuf.Int32Value\x12\'\n\x03\x65ta\x18\x07 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12+\n\x08\x64uration\x18\x08 \x01(\x0b\x32\x19.google.protobuf.Duration\"\x8f\x01\n\x10VehicleAttribute\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t\x12\x16\n\x0cstring_value\x18\x03 \x01(\tH\x00\x12\x14\n\nbool_value\x18\x04 \x01(\x08H\x00\x12\x16\n\x0cnumber_value\x18\x05 \x01(\x01H\x00\x42\x19\n\x17vehicle_attribute_value\"\xa4\x0c\n\x0fVehicleLocation\x12%\n\x08location\x18\x01 \x01(\x0b\x32\x13.google.type.LatLng\x12=\n\x13horizontal_accuracy\x18\x08 \x01(\x0b\x32\x1c.google.protobuf.DoubleValueB\x02\x18\x01\x12\x35\n\x0flatlng_accuracy\x18\x16 \x01(\x0b\x32\x1c.google.protobuf.DoubleValue\x12,\n\x07heading\x18\x02 \x01(\x0b\x32\x1b.google.protobuf.Int32Value\x12:\n\x10\x62\x65\x61ring_accuracy\x18\n \x01(\x0b\x32\x1c.google.protobuf.DoubleValueB\x02\x18\x01\x12\x36\n\x10heading_accuracy\x18\x17 \x01(\x0b\x32\x1c.google.protobuf.DoubleValue\x12.\n\x08\x61ltitude\x18\x05 \x01(\x0b\x32\x1c.google.protobuf.DoubleValue\x12;\n\x11vertical_accuracy\x18\t \x01(\x0b\x32\x1c.google.protobuf.DoubleValueB\x02\x18\x01\x12\x37\n\x11\x61ltitude_accuracy\x18\x18 \x01(\x0b\x32\x1c.google.protobuf.DoubleValue\x12\x33\n\nspeed_kmph\x18\x03 \x01(\x0b\x32\x1b.google.protobuf.Int32ValueB\x02\x18\x01\x12+\n\x05speed\x18\x06 \x01(\x0b\x32\x1c.google.protobuf.DoubleValue\x12\x34\n\x0espeed_accuracy\x18\x07 \x01(\x0b\x32\x1c.google.protobuf.DoubleValue\x12/\n\x0bupdate_time\x18\x04 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12\x34\n\x0bserver_time\x18\r \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12<\n\x0flocation_sensor\x18\x0b \x01(\x0e\x32#.maps.fleetengine.v1.LocationSensor\x12\x33\n\x0fis_road_snapped\x18\x1b \x01(\x0b\x32\x1a.google.protobuf.BoolValue\x12>\n\x15is_gps_sensor_enabled\x18\x0c \x01(\x0b\x32\x1a.google.protobuf.BoolValueB\x03\xe0\x41\x04\x12;\n\x11time_since_update\x18\x0e \x01(\x0b\x32\x1b.google.protobuf.Int32ValueB\x03\xe0\x41\x04\x12=\n\x11num_stale_updates\x18\x0f \x01(\x0b\x32\x1b.google.protobuf.Int32ValueB\x05\x18\x01\xe0\x41\x04\x12)\n\x0craw_location\x18\x10 \x01(\x0b\x32\x13.google.type.LatLng\x12\x35\n\x11raw_location_time\x18\x11 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12@\n\x13raw_location_sensor\x18\x1c \x01(\x0e\x32#.maps.fleetengine.v1.LocationSensor\x12;\n\x15raw_location_accuracy\x18\x19 \x01(\x0b\x32\x1c.google.protobuf.DoubleValue\x12\x32\n\x15supplemental_location\x18\x12 \x01(\x0b\x32\x13.google.type.LatLng\x12>\n\x1asupplemental_location_time\x18\x13 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12I\n\x1csupplemental_location_sensor\x18\x14 \x01(\x0e\x32#.maps.fleetengine.v1.LocationSensor\x12\x44\n\x1esupplemental_location_accuracy\x18\x15 \x01(\x0b\x32\x1c.google.protobuf.DoubleValue\x12\x18\n\x0croad_snapped\x18\x1a \x01(\x08\x42\x02\x18\x01*<\n\x08TripType\x12\x15\n\x11UNKNOWN_TRIP_TYPE\x10\x00\x12\n\n\x06SHARED\x10\x01\x12\r\n\tEXCLUSIVE\x10\x02*\x8b\x01\n\x0cWaypointType\x12\x19\n\x15UNKNOWN_WAYPOINT_TYPE\x10\x00\x12\x18\n\x14PICKUP_WAYPOINT_TYPE\x10\x01\x12\x1a\n\x16\x44ROP_OFF_WAYPOINT_TYPE\x10\x02\x12*\n&INTERMEDIATE_DESTINATION_WAYPOINT_TYPE\x10\x03*_\n\x12PolylineFormatType\x12\x17\n\x13UNKNOWN_FORMAT_TYPE\x10\x00\x12\x15\n\x11LAT_LNG_LIST_TYPE\x10\x01\x12\x19\n\x15\x45NCODED_POLYLINE_TYPE\x10\x02*\x89\x01\n\x10NavigationStatus\x12\x1d\n\x19UNKNOWN_NAVIGATION_STATUS\x10\x00\x12\x0f\n\x0bNO_GUIDANCE\x10\x01\x12\x1a\n\x16\x45NROUTE_TO_DESTINATION\x10\x02\x12\r\n\tOFF_ROUTE\x10\x03\x12\x1a\n\x16\x41RRIVED_AT_DESTINATION\x10\x04*\xd7\x01\n\x0eLocationSensor\x12\x12\n\x0eUNKNOWN_SENSOR\x10\x00\x12\x07\n\x03GPS\x10\x01\x12\x0b\n\x07NETWORK\x10\x02\x12\x0b\n\x07PASSIVE\x10\x03\x12\"\n\x1eROAD_SNAPPED_LOCATION_PROVIDER\x10\x04\x12\x1e\n\x1a\x43USTOMER_SUPPLIED_LOCATION\x10\x05\x12\x19\n\x15\x46LEET_ENGINE_LOCATION\x10\x06\x12\x1b\n\x17\x46USED_LOCATION_PROVIDER\x10\x64\x12\x12\n\rCORE_LOCATION\x10\xc8\x01\x42\xb6\x01\n\x1agoogle.maps.fleetengine.v1B\x0b\x46leetEngineP\x01ZFcloud.google.com/go/maps/fleetengine/apiv1/fleetenginepb;fleetenginepb\xa2\x02\x03\x43\x46\x45\xaa\x02\x1aGoogle.Maps.FleetEngine.V1\xea\x02\x1dGoogle::Maps::FleetEngine::V1b\x06proto3"

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
    ["google.type.LatLng", "google/type/latlng.proto"],
    ["maps.fleetengine.v1.ConsumableTrafficPolyline", "google/maps/fleetengine/v1/traffic.proto"],
    ["google.protobuf.Int32Value", "google/protobuf/wrappers.proto"],
    ["google.protobuf.Timestamp", "google/protobuf/timestamp.proto"],
    ["google.protobuf.Duration", "google/protobuf/duration.proto"],
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
  module Maps
    module FleetEngine
      module V1
        TerminalPointId = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("maps.fleetengine.v1.TerminalPointId").msgclass
        TerminalLocation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("maps.fleetengine.v1.TerminalLocation").msgclass
        TripWaypoint = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("maps.fleetengine.v1.TripWaypoint").msgclass
        VehicleAttribute = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("maps.fleetengine.v1.VehicleAttribute").msgclass
        VehicleLocation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("maps.fleetengine.v1.VehicleLocation").msgclass
        TripType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("maps.fleetengine.v1.TripType").enummodule
        WaypointType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("maps.fleetengine.v1.WaypointType").enummodule
        PolylineFormatType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("maps.fleetengine.v1.PolylineFormatType").enummodule
        NavigationStatus = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("maps.fleetengine.v1.NavigationStatus").enummodule
        LocationSensor = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("maps.fleetengine.v1.LocationSensor").enummodule
      end
    end
  end
end
