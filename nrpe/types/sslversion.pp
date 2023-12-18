# SSL VERSION
# This can be any of: SSLv2 (only use SSLv2), SSLv2+ (use any version),
#        SSLv3 (only use SSLv3), SSLv3+ (use SSLv3 or above), TLSv1 (only use
#        TLSv1), TLSv1+ (use TLSv1 or above), TLSv1.1 (only use TLSv1.1),
#        TLSv1.1+ (use TLSv1.1 or above), TLSv1.2 (only use TLSv1.2),
#        TLSv1.2+ (use TLSv1.2 or above)

type Nrpe::Sslversion = Enum['SSLv2','SSLv2+','SSLv3','SSLv3+','TLSv1','TLSv1+','TLSv1.1','TLSv1.1+','TLSv1.2','TLSv1.2+']
