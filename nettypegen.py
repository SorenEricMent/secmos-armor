import sys

# Dictionary with service name, port, and protocol based on data from Wikipedia
services = [
    {"name": "tcpmux", "port": "1", "protocol": "tcp"},
{"name": "compressnet_management_utility", "port": "2", "protocol": "tcp"},
{"name": "compressnet_compression_process", "port": "3", "protocol": "tcp"},
{"name": "remote_job_entry", "port": "5", "protocol": "tcp"},
{"name": "remote_job_entry", "port": "5", "protocol": "udp"},
{"name": "echo_protocol", "port": "7", "protocol": "tcp"},
{"name": "discard_protocol", "port": "9", "protocol": "tcp"},
{"name": "discard_protocol", "port": "9", "protocol": "udp"},
{"name": "active_users", "port": "11", "protocol": "tcp"},
{"name": "daytime_protocol", "port": "13", "protocol": "tcp"},
{"name": "quote_of_the_day", "port": "17", "protocol": "tcp"},
{"name": "message_send_protocol", "port": "18", "protocol": "tcp"},
{"name": "character_generator_protocol", "port": "19", "protocol": "tcp"},
{"name": "ftp_data_transfer", "port": "20", "protocol": "tcp"},
{"name": "ftp_control", "port": "21", "protocol": "tcp"},
{"name": "secure_shell", "port": "22", "protocol": "tcp"},
{"name": "telnet", "port": "23", "protocol": "tcp"},
{"name": "simple_mail_transfer_protocol", "port": "25", "protocol": "tcp"},
{"name": "nsw_user_system_fe", "port": "27", "protocol": "tcp"},
{"name": "msg_icp", "port": "29", "protocol": "tcp"},
{"name": "msg_authentication", "port": "31", "protocol": "tcp"},
{"name": "display_support_protocol", "port": "33", "protocol": "tcp"},
{"name": "time_protocol", "port": "37", "protocol": "tcp"},
{"name": "route_access_protocol", "port": "38", "protocol": "tcp"},
{"name": "resource_location_protocol", "port": "39", "protocol": "tcp"},
{"name": "graphics", "port": "41", "protocol": "tcp"},
{"name": "host_name_server_protocol", "port": "42", "protocol": "tcp"},
{"name": "whois", "port": "43", "protocol": "tcp"},
{"name": "mpm_flags_protocol", "port": "44", "protocol": "tcp"},
{"name": "message_processing_module_recv", "port": "45", "protocol": "tcp"},
{"name": "mpm_default_send", "port": "46", "protocol": "tcp"},
{"name": "digital_audit_daemon", "port": "48", "protocol": "tcp"},
{"name": "tacacs_login_host_protocol", "port": "49", "protocol": "tcp"},
{"name": "remote_mail_checking_protocol", "port": "50", "protocol": "tcp"},
{"name": "xns_time_protocol", "port": "52", "protocol": "tcp"},
{"name": "dns", "port": "53", "protocol": "tcp"},
{"name": "dns", "port": "53", "protocol": "udp"},
{"name": "xns_clearinghouse", "port": "54", "protocol": "tcp"},
{"name": "isi_graphics_language", "port": "55", "protocol": "tcp"},
{"name": "xns_authentication", "port": "56", "protocol": "tcp"},
{"name": "xns_mail", "port": "58", "protocol": "tcp"},
{"name": "acas", "port": "62", "protocol": "tcp"},
{"name": "whoispp", "port": "63", "protocol": "tcp"},
{"name": "covia", "port": "64", "protocol": "tcp"},
{"name": "tacacs_ds", "port": "65", "protocol": "tcp"},
{"name": "sql_net", "port": "66", "protocol": "tcp"},
{"name": "bootstrap_protocol_server", "port": "67", "protocol": "udp"},
{"name": "bootstrap_protocol_client", "port": "68", "protocol": "udp"},
{"name": "trivial_file_transfer_protocol", "port": "69", "protocol": "udp"},
{"name": "gopher", "port": "70", "protocol": "tcp"},
{"name": "netrjs", "port": "71", "protocol": "tcp"},
{"name": "netrjs", "port": "72", "protocol": "tcp"},
{"name": "netrjs", "port": "73", "protocol": "tcp"},
{"name": "netrjs", "port": "74", "protocol": "tcp"},
{"name": "distributed_external_object_store", "port": "76", "protocol": "tcp"},
{"name": "vettcp", "port": "78", "protocol": "tcp"},
{"name": "finger", "port": "79", "protocol": "tcp"},
{"name": "http", "port": "80", "protocol": "tcp"},
{"name": "xfer", "port": "82", "protocol": "tcp"},
{"name": "mit_ml_dev", "port": "83", "protocol": "tcp"},
{"name": "common_trace_facility", "port": "84", "protocol": "tcp"},
{"name": "mit_ml_dev", "port": "85", "protocol": "tcp"},
{"name": "micro_focus_cobol", "port": "86", "protocol": "tcp"},
{"name": "kerberos", "port": "88", "protocol": "tcp"},
{"name": "su_mit_telnet_gateway", "port": "89", "protocol": "tcp"},
{"name": "dnsix", "port": "90", "protocol": "tcp"},
{"name": "mit_dover_spooler", "port": "91", "protocol": "tcp"},
{"name": "network_printing_protocol", "port": "92", "protocol": "tcp"},
{"name": "device_control_protocol", "port": "93", "protocol": "tcp"},
{"name": "tivoli_object_dispatcher", "port": "94", "protocol": "tcp"},
{"name": "supdup", "port": "95", "protocol": "tcp"},
{"name": "dixie", "port": "96", "protocol": "tcp"},
{"name": "swift_rvf", "port": "97", "protocol": "tcp"},
{"name": "tac_news", "port": "98", "protocol": "tcp"},
{"name": "metagram", "port": "99", "protocol": "tcp"},
{"name": "nic_host_name", "port": "101", "protocol": "tcp"}
]

def generate_config(config_type):
    for service in services:
        if config_type == "attribute":
            print(f"attribute {service['name']}_packet_type;")
        elif config_type == "type":
            print(f"type {service['name']}_packet_t, packet_type, {service['name']}_packet_type;")
        elif config_type == "labeling":
            print(f"iptables -t mangle -A OUTPUT -p {service['protocol']} --dport {service['port']} -j SECMARK --selctx system_u:object_r:{service['name']}_packet_t")
#        print()  # Newline for separation

if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Usage: python script.py <config_type>")
        sys.exit(1)
    config_type = sys.argv[1]
    generate_config(config_type)

