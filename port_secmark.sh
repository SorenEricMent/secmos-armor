iptables -t mangle -A OUTPUT -p tcp --dport 1 -j SECMARK --selctx system_u:object_r:tcpmux_packet_t
iptables -t mangle -A OUTPUT -p tcp --dport 2 -j SECMARK --selctx system_u:object_r:compressnet_management_utility_packet_t
iptables -t mangle -A OUTPUT -p tcp --dport 3 -j SECMARK --selctx system_u:object_r:compressnet_compression_process_packet_t
iptables -t mangle -A OUTPUT -p tcp --dport 5 -j SECMARK --selctx system_u:object_r:remote_job_entry_packet_t
iptables -t mangle -A OUTPUT -p udp --dport 5 -j SECMARK --selctx system_u:object_r:remote_job_entry_packet_t
iptables -t mangle -A OUTPUT -p tcp --dport 7 -j SECMARK --selctx system_u:object_r:echo_protocol_packet_t
iptables -t mangle -A OUTPUT -p tcp --dport 9 -j SECMARK --selctx system_u:object_r:discard_protocol_packet_t
iptables -t mangle -A OUTPUT -p udp --dport 9 -j SECMARK --selctx system_u:object_r:discard_protocol_packet_t
iptables -t mangle -A OUTPUT -p tcp --dport 11 -j SECMARK --selctx system_u:object_r:active_users_packet_t
iptables -t mangle -A OUTPUT -p tcp --dport 13 -j SECMARK --selctx system_u:object_r:daytime_protocol_packet_t
iptables -t mangle -A OUTPUT -p tcp --dport 17 -j SECMARK --selctx system_u:object_r:quote_of_the_day_packet_t
iptables -t mangle -A OUTPUT -p tcp --dport 18 -j SECMARK --selctx system_u:object_r:message_send_protocol_packet_t
iptables -t mangle -A OUTPUT -p tcp --dport 19 -j SECMARK --selctx system_u:object_r:character_generator_protocol_packet_t
iptables -t mangle -A OUTPUT -p tcp --dport 20 -j SECMARK --selctx system_u:object_r:ftp_data_transfer_packet_t
iptables -t mangle -A OUTPUT -p tcp --dport 21 -j SECMARK --selctx system_u:object_r:ftp_control_packet_t
iptables -t mangle -A OUTPUT -p tcp --dport 22 -j SECMARK --selctx system_u:object_r:secure_shell_packet_t
iptables -t mangle -A OUTPUT -p tcp --dport 23 -j SECMARK --selctx system_u:object_r:telnet_packet_t
iptables -t mangle -A OUTPUT -p tcp --dport 25 -j SECMARK --selctx system_u:object_r:simple_mail_transfer_protocol_packet_t
iptables -t mangle -A OUTPUT -p tcp --dport 27 -j SECMARK --selctx system_u:object_r:nsw_user_system_fe_packet_t
iptables -t mangle -A OUTPUT -p tcp --dport 29 -j SECMARK --selctx system_u:object_r:msg_icp_packet_t
iptables -t mangle -A OUTPUT -p tcp --dport 31 -j SECMARK --selctx system_u:object_r:msg_authentication_packet_t
iptables -t mangle -A OUTPUT -p tcp --dport 33 -j SECMARK --selctx system_u:object_r:display_support_protocol_packet_t
iptables -t mangle -A OUTPUT -p tcp --dport 37 -j SECMARK --selctx system_u:object_r:time_protocol_packet_t
iptables -t mangle -A OUTPUT -p tcp --dport 38 -j SECMARK --selctx system_u:object_r:route_access_protocol_packet_t
iptables -t mangle -A OUTPUT -p tcp --dport 39 -j SECMARK --selctx system_u:object_r:resource_location_protocol_packet_t
iptables -t mangle -A OUTPUT -p tcp --dport 41 -j SECMARK --selctx system_u:object_r:graphics_packet_t
iptables -t mangle -A OUTPUT -p tcp --dport 42 -j SECMARK --selctx system_u:object_r:host_name_server_protocol_packet_t
iptables -t mangle -A OUTPUT -p tcp --dport 43 -j SECMARK --selctx system_u:object_r:whois_packet_t
iptables -t mangle -A OUTPUT -p tcp --dport 44 -j SECMARK --selctx system_u:object_r:mpm_flags_protocol_packet_t
iptables -t mangle -A OUTPUT -p tcp --dport 45 -j SECMARK --selctx system_u:object_r:message_processing_module_recv_packet_t
iptables -t mangle -A OUTPUT -p tcp --dport 46 -j SECMARK --selctx system_u:object_r:mpm_default_send_packet_t
iptables -t mangle -A OUTPUT -p tcp --dport 48 -j SECMARK --selctx system_u:object_r:digital_audit_daemon_packet_t
iptables -t mangle -A OUTPUT -p tcp --dport 49 -j SECMARK --selctx system_u:object_r:tacacs_login_host_protocol_packet_t
iptables -t mangle -A OUTPUT -p tcp --dport 50 -j SECMARK --selctx system_u:object_r:remote_mail_checking_protocol_packet_t
iptables -t mangle -A OUTPUT -p tcp --dport 52 -j SECMARK --selctx system_u:object_r:xns_time_protocol_packet_t
iptables -t mangle -A OUTPUT -p tcp --dport 53 -j SECMARK --selctx system_u:object_r:dns_packet_t
iptables -t mangle -A OUTPUT -p udp --dport 53 -j SECMARK --selctx system_u:object_r:dns_packet_t
iptables -t mangle -A OUTPUT -p tcp --dport 54 -j SECMARK --selctx system_u:object_r:xns_clearinghouse_packet_t
iptables -t mangle -A OUTPUT -p tcp --dport 55 -j SECMARK --selctx system_u:object_r:isi_graphics_language_packet_t
iptables -t mangle -A OUTPUT -p tcp --dport 56 -j SECMARK --selctx system_u:object_r:xns_authentication_packet_t
iptables -t mangle -A OUTPUT -p tcp --dport 58 -j SECMARK --selctx system_u:object_r:xns_mail_packet_t
iptables -t mangle -A OUTPUT -p tcp --dport 62 -j SECMARK --selctx system_u:object_r:acas_packet_t
iptables -t mangle -A OUTPUT -p tcp --dport 63 -j SECMARK --selctx system_u:object_r:whoispp_packet_t
iptables -t mangle -A OUTPUT -p tcp --dport 64 -j SECMARK --selctx system_u:object_r:covia_packet_t
iptables -t mangle -A OUTPUT -p tcp --dport 65 -j SECMARK --selctx system_u:object_r:tacacs_ds_packet_t
iptables -t mangle -A OUTPUT -p tcp --dport 66 -j SECMARK --selctx system_u:object_r:sql_net_packet_t
iptables -t mangle -A OUTPUT -p udp --dport 67 -j SECMARK --selctx system_u:object_r:bootstrap_protocol_server_packet_t
iptables -t mangle -A OUTPUT -p udp --dport 68 -j SECMARK --selctx system_u:object_r:bootstrap_protocol_client_packet_t
iptables -t mangle -A OUTPUT -p udp --dport 69 -j SECMARK --selctx system_u:object_r:trivial_file_transfer_protocol_packet_t
iptables -t mangle -A OUTPUT -p tcp --dport 70 -j SECMARK --selctx system_u:object_r:gopher_packet_t
iptables -t mangle -A OUTPUT -p tcp --dport 71 -j SECMARK --selctx system_u:object_r:netrjs_packet_t
iptables -t mangle -A OUTPUT -p tcp --dport 72 -j SECMARK --selctx system_u:object_r:netrjs_packet_t
iptables -t mangle -A OUTPUT -p tcp --dport 73 -j SECMARK --selctx system_u:object_r:netrjs_packet_t
iptables -t mangle -A OUTPUT -p tcp --dport 74 -j SECMARK --selctx system_u:object_r:netrjs_packet_t
iptables -t mangle -A OUTPUT -p tcp --dport 76 -j SECMARK --selctx system_u:object_r:distributed_external_object_store_packet_t
iptables -t mangle -A OUTPUT -p tcp --dport 78 -j SECMARK --selctx system_u:object_r:vettcp_packet_t
iptables -t mangle -A OUTPUT -p tcp --dport 79 -j SECMARK --selctx system_u:object_r:finger_packet_t
iptables -t mangle -A OUTPUT -p tcp --dport 80 -j SECMARK --selctx system_u:object_r:http_packet_t
iptables -t mangle -A OUTPUT -p tcp --dport 82 -j SECMARK --selctx system_u:object_r:xfer_packet_t
iptables -t mangle -A OUTPUT -p tcp --dport 83 -j SECMARK --selctx system_u:object_r:mit_ml_dev_packet_t
iptables -t mangle -A OUTPUT -p tcp --dport 84 -j SECMARK --selctx system_u:object_r:common_trace_facility_packet_t
iptables -t mangle -A OUTPUT -p tcp --dport 85 -j SECMARK --selctx system_u:object_r:mit_ml_dev_packet_t
iptables -t mangle -A OUTPUT -p tcp --dport 86 -j SECMARK --selctx system_u:object_r:micro_focus_cobol_packet_t
iptables -t mangle -A OUTPUT -p tcp --dport 88 -j SECMARK --selctx system_u:object_r:kerberos_packet_t
iptables -t mangle -A OUTPUT -p tcp --dport 89 -j SECMARK --selctx system_u:object_r:su_mit_telnet_gateway_packet_t
iptables -t mangle -A OUTPUT -p tcp --dport 90 -j SECMARK --selctx system_u:object_r:dnsix_packet_t
iptables -t mangle -A OUTPUT -p tcp --dport 91 -j SECMARK --selctx system_u:object_r:mit_dover_spooler_packet_t
iptables -t mangle -A OUTPUT -p tcp --dport 92 -j SECMARK --selctx system_u:object_r:network_printing_protocol_packet_t
iptables -t mangle -A OUTPUT -p tcp --dport 93 -j SECMARK --selctx system_u:object_r:device_control_protocol_packet_t
iptables -t mangle -A OUTPUT -p tcp --dport 94 -j SECMARK --selctx system_u:object_r:tivoli_object_dispatcher_packet_t
iptables -t mangle -A OUTPUT -p tcp --dport 95 -j SECMARK --selctx system_u:object_r:supdup_packet_t
iptables -t mangle -A OUTPUT -p tcp --dport 96 -j SECMARK --selctx system_u:object_r:dixie_packet_t
iptables -t mangle -A OUTPUT -p tcp --dport 97 -j SECMARK --selctx system_u:object_r:swift_rvf_packet_t
iptables -t mangle -A OUTPUT -p tcp --dport 98 -j SECMARK --selctx system_u:object_r:tac_news_packet_t
iptables -t mangle -A OUTPUT -p tcp --dport 99 -j SECMARK --selctx system_u:object_r:metagram_packet_t
iptables -t mangle -A OUTPUT -p tcp --dport 101 -j SECMARK --selctx system_u:object_r:nic_host_name_packet_t
