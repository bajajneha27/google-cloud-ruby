# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/spanner/v1/spanner.proto

require 'google/protobuf'

require 'google/spanner/v1/commit_response_pb'
require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/duration_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/struct_pb'
require 'google/protobuf/timestamp_pb'
require 'google/rpc/status_pb'
require 'google/spanner/v1/keys_pb'
require 'google/spanner/v1/mutation_pb'
require 'google/spanner/v1/result_set_pb'
require 'google/spanner/v1/transaction_pb'
require 'google/spanner/v1/type_pb'


descriptor_data = "\n\x1fgoogle/spanner/v1/spanner.proto\x12\x11google.spanner.v1\x1a\'google/spanner/v1/commit_response.proto\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x1egoogle/protobuf/duration.proto\x1a\x1bgoogle/protobuf/empty.proto\x1a\x1cgoogle/protobuf/struct.proto\x1a\x1fgoogle/protobuf/timestamp.proto\x1a\x17google/rpc/status.proto\x1a\x1cgoogle/spanner/v1/keys.proto\x1a google/spanner/v1/mutation.proto\x1a\"google/spanner/v1/result_set.proto\x1a#google/spanner/v1/transaction.proto\x1a\x1cgoogle/spanner/v1/type.proto\"\x83\x01\n\x14\x43reateSessionRequest\x12\x39\n\x08\x64\x61tabase\x18\x01 \x01(\tB\'\xe0\x41\x02\xfa\x41!\n\x1fspanner.googleapis.com/Database\x12\x30\n\x07session\x18\x02 \x01(\x0b\x32\x1a.google.spanner.v1.SessionB\x03\xe0\x41\x02\"\xa9\x01\n\x1a\x42\x61tchCreateSessionsRequest\x12\x39\n\x08\x64\x61tabase\x18\x01 \x01(\tB\'\xe0\x41\x02\xfa\x41!\n\x1fspanner.googleapis.com/Database\x12\x34\n\x10session_template\x18\x02 \x01(\x0b\x32\x1a.google.spanner.v1.Session\x12\x1a\n\rsession_count\x18\x03 \x01(\x05\x42\x03\xe0\x41\x02\"J\n\x1b\x42\x61tchCreateSessionsResponse\x12+\n\x07session\x18\x01 \x03(\x0b\x32\x1a.google.spanner.v1.Session\"\xa3\x03\n\x07Session\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12\x36\n\x06labels\x18\x02 \x03(\x0b\x32&.google.spanner.v1.Session.LabelsEntry\x12\x34\n\x0b\x63reate_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x42\n\x19\x61pproximate_last_use_time\x18\x04 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x14\n\x0c\x63reator_role\x18\x05 \x01(\t\x12\x18\n\x0bmultiplexed\x18\x06 \x01(\x08\x42\x03\xe0\x41\x01\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01:t\xea\x41q\n\x1espanner.googleapis.com/Session\x12Oprojects/{project}/instances/{instance}/databases/{database}/sessions/{session}\"I\n\x11GetSessionRequest\x12\x34\n\x04name\x18\x01 \x01(\tB&\xe0\x41\x02\xfa\x41 \n\x1espanner.googleapis.com/Session\"\x87\x01\n\x13ListSessionsRequest\x12\x39\n\x08\x64\x61tabase\x18\x01 \x01(\tB\'\xe0\x41\x02\xfa\x41!\n\x1fspanner.googleapis.com/Database\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\x12\x0e\n\x06\x66ilter\x18\x04 \x01(\t\"]\n\x14ListSessionsResponse\x12,\n\x08sessions\x18\x01 \x03(\x0b\x32\x1a.google.spanner.v1.Session\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"L\n\x14\x44\x65leteSessionRequest\x12\x34\n\x04name\x18\x01 \x01(\tB&\xe0\x41\x02\xfa\x41 \n\x1espanner.googleapis.com/Session\"\xdc\x01\n\x0eRequestOptions\x12<\n\x08priority\x18\x01 \x01(\x0e\x32*.google.spanner.v1.RequestOptions.Priority\x12\x13\n\x0brequest_tag\x18\x02 \x01(\t\x12\x17\n\x0ftransaction_tag\x18\x03 \x01(\t\"^\n\x08Priority\x12\x18\n\x14PRIORITY_UNSPECIFIED\x10\x00\x12\x10\n\x0cPRIORITY_LOW\x10\x01\x12\x13\n\x0fPRIORITY_MEDIUM\x10\x02\x12\x11\n\rPRIORITY_HIGH\x10\x03\"\xea\x04\n\x13\x44irectedReadOptions\x12R\n\x10include_replicas\x18\x01 \x01(\x0b\x32\x36.google.spanner.v1.DirectedReadOptions.IncludeReplicasH\x00\x12R\n\x10\x65xclude_replicas\x18\x02 \x01(\x0b\x32\x36.google.spanner.v1.DirectedReadOptions.ExcludeReplicasH\x00\x1a\xad\x01\n\x10ReplicaSelection\x12\x10\n\x08location\x18\x01 \x01(\t\x12J\n\x04type\x18\x02 \x01(\x0e\x32<.google.spanner.v1.DirectedReadOptions.ReplicaSelection.Type\";\n\x04Type\x12\x14\n\x10TYPE_UNSPECIFIED\x10\x00\x12\x0e\n\nREAD_WRITE\x10\x01\x12\r\n\tREAD_ONLY\x10\x02\x1a\x86\x01\n\x0fIncludeReplicas\x12S\n\x12replica_selections\x18\x01 \x03(\x0b\x32\x37.google.spanner.v1.DirectedReadOptions.ReplicaSelection\x12\x1e\n\x16\x61uto_failover_disabled\x18\x02 \x01(\x08\x1a\x66\n\x0f\x45xcludeReplicas\x12S\n\x12replica_selections\x18\x01 \x03(\x0b\x32\x37.google.spanner.v1.DirectedReadOptions.ReplicaSelectionB\n\n\x08replicas\"\xf0\x06\n\x11\x45xecuteSqlRequest\x12\x37\n\x07session\x18\x01 \x01(\tB&\xe0\x41\x02\xfa\x41 \n\x1espanner.googleapis.com/Session\x12;\n\x0btransaction\x18\x02 \x01(\x0b\x32&.google.spanner.v1.TransactionSelector\x12\x10\n\x03sql\x18\x03 \x01(\tB\x03\xe0\x41\x02\x12\'\n\x06params\x18\x04 \x01(\x0b\x32\x17.google.protobuf.Struct\x12I\n\x0bparam_types\x18\x05 \x03(\x0b\x32\x34.google.spanner.v1.ExecuteSqlRequest.ParamTypesEntry\x12\x14\n\x0cresume_token\x18\x06 \x01(\x0c\x12\x42\n\nquery_mode\x18\x07 \x01(\x0e\x32..google.spanner.v1.ExecuteSqlRequest.QueryMode\x12\x17\n\x0fpartition_token\x18\x08 \x01(\x0c\x12\r\n\x05seqno\x18\t \x01(\x03\x12H\n\rquery_options\x18\n \x01(\x0b\x32\x31.google.spanner.v1.ExecuteSqlRequest.QueryOptions\x12:\n\x0frequest_options\x18\x0b \x01(\x0b\x32!.google.spanner.v1.RequestOptions\x12\x45\n\x15\x64irected_read_options\x18\x0f \x01(\x0b\x32&.google.spanner.v1.DirectedReadOptions\x12\x1a\n\x12\x64\x61ta_boost_enabled\x18\x10 \x01(\x08\x1aO\n\x0cQueryOptions\x12\x19\n\x11optimizer_version\x18\x01 \x01(\t\x12$\n\x1coptimizer_statistics_package\x18\x02 \x01(\t\x1aJ\n\x0fParamTypesEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12&\n\x05value\x18\x02 \x01(\x0b\x32\x17.google.spanner.v1.Type:\x02\x38\x01\"W\n\tQueryMode\x12\n\n\x06NORMAL\x10\x00\x12\x08\n\x04PLAN\x10\x01\x12\x0b\n\x07PROFILE\x10\x02\x12\x0e\n\nWITH_STATS\x10\x03\x12\x17\n\x13WITH_PLAN_AND_STATS\x10\x04\"\xa0\x04\n\x16\x45xecuteBatchDmlRequest\x12\x37\n\x07session\x18\x01 \x01(\tB&\xe0\x41\x02\xfa\x41 \n\x1espanner.googleapis.com/Session\x12@\n\x0btransaction\x18\x02 \x01(\x0b\x32&.google.spanner.v1.TransactionSelectorB\x03\xe0\x41\x02\x12L\n\nstatements\x18\x03 \x03(\x0b\x32\x33.google.spanner.v1.ExecuteBatchDmlRequest.StatementB\x03\xe0\x41\x02\x12\x12\n\x05seqno\x18\x04 \x01(\x03\x42\x03\xe0\x41\x02\x12:\n\x0frequest_options\x18\x05 \x01(\x0b\x32!.google.spanner.v1.RequestOptions\x1a\xec\x01\n\tStatement\x12\x10\n\x03sql\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12\'\n\x06params\x18\x02 \x01(\x0b\x32\x17.google.protobuf.Struct\x12X\n\x0bparam_types\x18\x03 \x03(\x0b\x32\x43.google.spanner.v1.ExecuteBatchDmlRequest.Statement.ParamTypesEntry\x1aJ\n\x0fParamTypesEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12&\n\x05value\x18\x02 \x01(\x0b\x32\x17.google.spanner.v1.Type:\x02\x38\x01\"p\n\x17\x45xecuteBatchDmlResponse\x12\x31\n\x0bresult_sets\x18\x01 \x03(\x0b\x32\x1c.google.spanner.v1.ResultSet\x12\"\n\x06status\x18\x02 \x01(\x0b\x32\x12.google.rpc.Status\"H\n\x10PartitionOptions\x12\x1c\n\x14partition_size_bytes\x18\x01 \x01(\x03\x12\x16\n\x0emax_partitions\x18\x02 \x01(\x03\"\xa3\x03\n\x15PartitionQueryRequest\x12\x37\n\x07session\x18\x01 \x01(\tB&\xe0\x41\x02\xfa\x41 \n\x1espanner.googleapis.com/Session\x12;\n\x0btransaction\x18\x02 \x01(\x0b\x32&.google.spanner.v1.TransactionSelector\x12\x10\n\x03sql\x18\x03 \x01(\tB\x03\xe0\x41\x02\x12\'\n\x06params\x18\x04 \x01(\x0b\x32\x17.google.protobuf.Struct\x12M\n\x0bparam_types\x18\x05 \x03(\x0b\x32\x38.google.spanner.v1.PartitionQueryRequest.ParamTypesEntry\x12>\n\x11partition_options\x18\x06 \x01(\x0b\x32#.google.spanner.v1.PartitionOptions\x1aJ\n\x0fParamTypesEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12&\n\x05value\x18\x02 \x01(\x0b\x32\x17.google.spanner.v1.Type:\x02\x38\x01\"\xb1\x02\n\x14PartitionReadRequest\x12\x37\n\x07session\x18\x01 \x01(\tB&\xe0\x41\x02\xfa\x41 \n\x1espanner.googleapis.com/Session\x12;\n\x0btransaction\x18\x02 \x01(\x0b\x32&.google.spanner.v1.TransactionSelector\x12\x12\n\x05table\x18\x03 \x01(\tB\x03\xe0\x41\x02\x12\r\n\x05index\x18\x04 \x01(\t\x12\x0f\n\x07\x63olumns\x18\x05 \x03(\t\x12/\n\x07key_set\x18\x06 \x01(\x0b\x32\x19.google.spanner.v1.KeySetB\x03\xe0\x41\x02\x12>\n\x11partition_options\x18\t \x01(\x0b\x32#.google.spanner.v1.PartitionOptions\"$\n\tPartition\x12\x17\n\x0fpartition_token\x18\x01 \x01(\x0c\"z\n\x11PartitionResponse\x12\x30\n\npartitions\x18\x01 \x03(\x0b\x32\x1c.google.spanner.v1.Partition\x12\x33\n\x0btransaction\x18\x02 \x01(\x0b\x32\x1e.google.spanner.v1.Transaction\"\xf6\x05\n\x0bReadRequest\x12\x37\n\x07session\x18\x01 \x01(\tB&\xe0\x41\x02\xfa\x41 \n\x1espanner.googleapis.com/Session\x12;\n\x0btransaction\x18\x02 \x01(\x0b\x32&.google.spanner.v1.TransactionSelector\x12\x12\n\x05table\x18\x03 \x01(\tB\x03\xe0\x41\x02\x12\r\n\x05index\x18\x04 \x01(\t\x12\x14\n\x07\x63olumns\x18\x05 \x03(\tB\x03\xe0\x41\x02\x12/\n\x07key_set\x18\x06 \x01(\x0b\x32\x19.google.spanner.v1.KeySetB\x03\xe0\x41\x02\x12\r\n\x05limit\x18\x08 \x01(\x03\x12\x14\n\x0cresume_token\x18\t \x01(\x0c\x12\x17\n\x0fpartition_token\x18\n \x01(\x0c\x12:\n\x0frequest_options\x18\x0b \x01(\x0b\x32!.google.spanner.v1.RequestOptions\x12\x45\n\x15\x64irected_read_options\x18\x0e \x01(\x0b\x32&.google.spanner.v1.DirectedReadOptions\x12\x1a\n\x12\x64\x61ta_boost_enabled\x18\x0f \x01(\x08\x12=\n\x08order_by\x18\x10 \x01(\x0e\x32&.google.spanner.v1.ReadRequest.OrderByB\x03\xe0\x41\x01\x12?\n\tlock_hint\x18\x11 \x01(\x0e\x32\'.google.spanner.v1.ReadRequest.LockHintB\x03\xe0\x41\x01\"T\n\x07OrderBy\x12\x18\n\x14ORDER_BY_UNSPECIFIED\x10\x00\x12\x18\n\x14ORDER_BY_PRIMARY_KEY\x10\x01\x12\x15\n\x11ORDER_BY_NO_ORDER\x10\x02\"T\n\x08LockHint\x12\x19\n\x15LOCK_HINT_UNSPECIFIED\x10\x00\x12\x14\n\x10LOCK_HINT_SHARED\x10\x01\x12\x17\n\x13LOCK_HINT_EXCLUSIVE\x10\x02\"\xcb\x01\n\x17\x42\x65ginTransactionRequest\x12\x37\n\x07session\x18\x01 \x01(\tB&\xe0\x41\x02\xfa\x41 \n\x1espanner.googleapis.com/Session\x12;\n\x07options\x18\x02 \x01(\x0b\x32%.google.spanner.v1.TransactionOptionsB\x03\xe0\x41\x02\x12:\n\x0frequest_options\x18\x03 \x01(\x0b\x32!.google.spanner.v1.RequestOptions\"\xfd\x02\n\rCommitRequest\x12\x37\n\x07session\x18\x01 \x01(\tB&\xe0\x41\x02\xfa\x41 \n\x1espanner.googleapis.com/Session\x12\x18\n\x0etransaction_id\x18\x02 \x01(\x0cH\x00\x12G\n\x16single_use_transaction\x18\x03 \x01(\x0b\x32%.google.spanner.v1.TransactionOptionsH\x00\x12.\n\tmutations\x18\x04 \x03(\x0b\x32\x1b.google.spanner.v1.Mutation\x12\x1b\n\x13return_commit_stats\x18\x05 \x01(\x08\x12\x38\n\x10max_commit_delay\x18\x08 \x01(\x0b\x32\x19.google.protobuf.DurationB\x03\xe0\x41\x01\x12:\n\x0frequest_options\x18\x06 \x01(\x0b\x32!.google.spanner.v1.RequestOptionsB\r\n\x0btransaction\"g\n\x0fRollbackRequest\x12\x37\n\x07session\x18\x01 \x01(\tB&\xe0\x41\x02\xfa\x41 \n\x1espanner.googleapis.com/Session\x12\x1b\n\x0etransaction_id\x18\x02 \x01(\x0c\x42\x03\xe0\x41\x02\"\xce\x02\n\x11\x42\x61tchWriteRequest\x12\x37\n\x07session\x18\x01 \x01(\tB&\xe0\x41\x02\xfa\x41 \n\x1espanner.googleapis.com/Session\x12:\n\x0frequest_options\x18\x03 \x01(\x0b\x32!.google.spanner.v1.RequestOptions\x12P\n\x0fmutation_groups\x18\x04 \x03(\x0b\x32\x32.google.spanner.v1.BatchWriteRequest.MutationGroupB\x03\xe0\x41\x02\x12,\n\x1f\x65xclude_txn_from_change_streams\x18\x05 \x01(\x08\x42\x03\xe0\x41\x01\x1a\x44\n\rMutationGroup\x12\x33\n\tmutations\x18\x01 \x03(\x0b\x32\x1b.google.spanner.v1.MutationB\x03\xe0\x41\x02\"\x7f\n\x12\x42\x61tchWriteResponse\x12\x0f\n\x07indexes\x18\x01 \x03(\x05\x12\"\n\x06status\x18\x02 \x01(\x0b\x32\x12.google.rpc.Status\x12\x34\n\x10\x63ommit_timestamp\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.Timestamp2\x8b\x18\n\x07Spanner\x12\xa6\x01\n\rCreateSession\x12\'.google.spanner.v1.CreateSessionRequest\x1a\x1a.google.spanner.v1.Session\"P\xda\x41\x08\x64\x61tabase\x82\xd3\xe4\x93\x02?\":/v1/{database=projects/*/instances/*/databases/*}/sessions:\x01*\x12\xe0\x01\n\x13\x42\x61tchCreateSessions\x12-.google.spanner.v1.BatchCreateSessionsRequest\x1a..google.spanner.v1.BatchCreateSessionsResponse\"j\xda\x41\x16\x64\x61tabase,session_count\x82\xd3\xe4\x93\x02K\"F/v1/{database=projects/*/instances/*/databases/*}/sessions:batchCreate:\x01*\x12\x97\x01\n\nGetSession\x12$.google.spanner.v1.GetSessionRequest\x1a\x1a.google.spanner.v1.Session\"G\xda\x41\x04name\x82\xd3\xe4\x93\x02:\x12\x38/v1/{name=projects/*/instances/*/databases/*/sessions/*}\x12\xae\x01\n\x0cListSessions\x12&.google.spanner.v1.ListSessionsRequest\x1a\'.google.spanner.v1.ListSessionsResponse\"M\xda\x41\x08\x64\x61tabase\x82\xd3\xe4\x93\x02<\x12:/v1/{database=projects/*/instances/*/databases/*}/sessions\x12\x99\x01\n\rDeleteSession\x12\'.google.spanner.v1.DeleteSessionRequest\x1a\x16.google.protobuf.Empty\"G\xda\x41\x04name\x82\xd3\xe4\x93\x02:*8/v1/{name=projects/*/instances/*/databases/*/sessions/*}\x12\xa3\x01\n\nExecuteSql\x12$.google.spanner.v1.ExecuteSqlRequest\x1a\x1c.google.spanner.v1.ResultSet\"Q\x82\xd3\xe4\x93\x02K\"F/v1/{session=projects/*/instances/*/databases/*/sessions/*}:executeSql:\x01*\x12\xbe\x01\n\x13\x45xecuteStreamingSql\x12$.google.spanner.v1.ExecuteSqlRequest\x1a#.google.spanner.v1.PartialResultSet\"Z\x82\xd3\xe4\x93\x02T\"O/v1/{session=projects/*/instances/*/databases/*/sessions/*}:executeStreamingSql:\x01*0\x01\x12\xc0\x01\n\x0f\x45xecuteBatchDml\x12).google.spanner.v1.ExecuteBatchDmlRequest\x1a*.google.spanner.v1.ExecuteBatchDmlResponse\"V\x82\xd3\xe4\x93\x02P\"K/v1/{session=projects/*/instances/*/databases/*/sessions/*}:executeBatchDml:\x01*\x12\x91\x01\n\x04Read\x12\x1e.google.spanner.v1.ReadRequest\x1a\x1c.google.spanner.v1.ResultSet\"K\x82\xd3\xe4\x93\x02\x45\"@/v1/{session=projects/*/instances/*/databases/*/sessions/*}:read:\x01*\x12\xac\x01\n\rStreamingRead\x12\x1e.google.spanner.v1.ReadRequest\x1a#.google.spanner.v1.PartialResultSet\"T\x82\xd3\xe4\x93\x02N\"I/v1/{session=projects/*/instances/*/databases/*/sessions/*}:streamingRead:\x01*0\x01\x12\xc9\x01\n\x10\x42\x65ginTransaction\x12*.google.spanner.v1.BeginTransactionRequest\x1a\x1e.google.spanner.v1.Transaction\"i\xda\x41\x0fsession,options\x82\xd3\xe4\x93\x02Q\"L/v1/{session=projects/*/instances/*/databases/*/sessions/*}:beginTransaction:\x01*\x12\xeb\x01\n\x06\x43ommit\x12 .google.spanner.v1.CommitRequest\x1a!.google.spanner.v1.CommitResponse\"\x9b\x01\xda\x41 session,transaction_id,mutations\xda\x41(session,single_use_transaction,mutations\x82\xd3\xe4\x93\x02G\"B/v1/{session=projects/*/instances/*/databases/*/sessions/*}:commit:\x01*\x12\xb0\x01\n\x08Rollback\x12\".google.spanner.v1.RollbackRequest\x1a\x16.google.protobuf.Empty\"h\xda\x41\x16session,transaction_id\x82\xd3\xe4\x93\x02I\"D/v1/{session=projects/*/instances/*/databases/*/sessions/*}:rollback:\x01*\x12\xb7\x01\n\x0ePartitionQuery\x12(.google.spanner.v1.PartitionQueryRequest\x1a$.google.spanner.v1.PartitionResponse\"U\x82\xd3\xe4\x93\x02O\"J/v1/{session=projects/*/instances/*/databases/*/sessions/*}:partitionQuery:\x01*\x12\xb4\x01\n\rPartitionRead\x12\'.google.spanner.v1.PartitionReadRequest\x1a$.google.spanner.v1.PartitionResponse\"T\x82\xd3\xe4\x93\x02N\"I/v1/{session=projects/*/instances/*/databases/*/sessions/*}:partitionRead:\x01*\x12\xc8\x01\n\nBatchWrite\x12$.google.spanner.v1.BatchWriteRequest\x1a%.google.spanner.v1.BatchWriteResponse\"k\xda\x41\x17session,mutation_groups\x82\xd3\xe4\x93\x02K\"F/v1/{session=projects/*/instances/*/databases/*/sessions/*}:batchWrite:\x01*0\x01\x1aw\xca\x41\x16spanner.googleapis.com\xd2\x41[https://www.googleapis.com/auth/cloud-platform,https://www.googleapis.com/auth/spanner.dataB\x91\x02\n\x15\x63om.google.spanner.v1B\x0cSpannerProtoP\x01Z5cloud.google.com/go/spanner/apiv1/spannerpb;spannerpb\xaa\x02\x17Google.Cloud.Spanner.V1\xca\x02\x17Google\\Cloud\\Spanner\\V1\xea\x02\x1aGoogle::Cloud::Spanner::V1\xea\x41_\n\x1fspanner.googleapis.com/Database\x12<projects/{project}/instances/{instance}/databases/{database}P\x00\x62\x06proto3"

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
    ["google.spanner.v1.TransactionSelector", "google/spanner/v1/transaction.proto"],
    ["google.protobuf.Struct", "google/protobuf/struct.proto"],
    ["google.spanner.v1.Type", "google/spanner/v1/type.proto"],
    ["google.spanner.v1.ResultSet", "google/spanner/v1/result_set.proto"],
    ["google.rpc.Status", "google/rpc/status.proto"],
    ["google.spanner.v1.KeySet", "google/spanner/v1/keys.proto"],
    ["google.spanner.v1.Mutation", "google/spanner/v1/mutation.proto"],
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
  module Cloud
    module Spanner
      module V1
        CreateSessionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.v1.CreateSessionRequest").msgclass
        BatchCreateSessionsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.v1.BatchCreateSessionsRequest").msgclass
        BatchCreateSessionsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.v1.BatchCreateSessionsResponse").msgclass
        Session = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.v1.Session").msgclass
        GetSessionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.v1.GetSessionRequest").msgclass
        ListSessionsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.v1.ListSessionsRequest").msgclass
        ListSessionsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.v1.ListSessionsResponse").msgclass
        DeleteSessionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.v1.DeleteSessionRequest").msgclass
        RequestOptions = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.v1.RequestOptions").msgclass
        RequestOptions::Priority = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.v1.RequestOptions.Priority").enummodule
        DirectedReadOptions = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.v1.DirectedReadOptions").msgclass
        DirectedReadOptions::ReplicaSelection = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.v1.DirectedReadOptions.ReplicaSelection").msgclass
        DirectedReadOptions::ReplicaSelection::Type = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.v1.DirectedReadOptions.ReplicaSelection.Type").enummodule
        DirectedReadOptions::IncludeReplicas = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.v1.DirectedReadOptions.IncludeReplicas").msgclass
        DirectedReadOptions::ExcludeReplicas = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.v1.DirectedReadOptions.ExcludeReplicas").msgclass
        ExecuteSqlRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.v1.ExecuteSqlRequest").msgclass
        ExecuteSqlRequest::QueryOptions = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.v1.ExecuteSqlRequest.QueryOptions").msgclass
        ExecuteSqlRequest::QueryMode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.v1.ExecuteSqlRequest.QueryMode").enummodule
        ExecuteBatchDmlRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.v1.ExecuteBatchDmlRequest").msgclass
        ExecuteBatchDmlRequest::Statement = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.v1.ExecuteBatchDmlRequest.Statement").msgclass
        ExecuteBatchDmlResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.v1.ExecuteBatchDmlResponse").msgclass
        PartitionOptions = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.v1.PartitionOptions").msgclass
        PartitionQueryRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.v1.PartitionQueryRequest").msgclass
        PartitionReadRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.v1.PartitionReadRequest").msgclass
        Partition = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.v1.Partition").msgclass
        PartitionResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.v1.PartitionResponse").msgclass
        ReadRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.v1.ReadRequest").msgclass
        ReadRequest::OrderBy = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.v1.ReadRequest.OrderBy").enummodule
        ReadRequest::LockHint = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.v1.ReadRequest.LockHint").enummodule
        BeginTransactionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.v1.BeginTransactionRequest").msgclass
        CommitRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.v1.CommitRequest").msgclass
        RollbackRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.v1.RollbackRequest").msgclass
        BatchWriteRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.v1.BatchWriteRequest").msgclass
        BatchWriteRequest::MutationGroup = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.v1.BatchWriteRequest.MutationGroup").msgclass
        BatchWriteResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.v1.BatchWriteResponse").msgclass
      end
    end
  end
end
