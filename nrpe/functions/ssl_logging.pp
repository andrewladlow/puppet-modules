# A function that outputs a string suitable for the nrpe.conf `ssl_logging` parameter.
#
# The nrpe.conf documentation has the following to say...
#
# SSL LOGGING
# This option determines which SSL messages are send to syslog. OR values
# together to specify multiple options.
# Values: 0x00 (0)  = No additional logging (default)
#         0x01 (1)  = Log startup SSL/TLS parameters
#         0x02 (2)  = Log remote IP address
#         0x04 (4)  = Log SSL/TLS version of connections
#         0x08 (8)  = Log which cipher is being used for the connection
#         0x10 (16) = Log if client has a certificate
#         0x20 (32) = Log details of client's certificate if it has one
#
# @api private
function nrpe::ssl_logging(
  Boolean $ssl_log_startup_params,
  Boolean $ssl_log_remote_ip,
  Boolean $ssl_log_protocol_version,
  Boolean $ssl_log_cipher,
  Boolean $ssl_log_client_cert,
  Boolean $ssl_log_client_cert_details,
) >> String {
  $result = {
    1  => $ssl_log_startup_params,
    2  => $ssl_log_remote_ip,
    4  => $ssl_log_protocol_version,
    8  => $ssl_log_cipher,
    16 => $ssl_log_client_cert,
    32 => $ssl_log_client_cert_details,
  }.reduce(0) |$memo, $value| {
    if $value[1] {
      $memo + $value[0]
    } else {
      $memo
    }
  }
  sprintf('0x%02x', $result)
}
