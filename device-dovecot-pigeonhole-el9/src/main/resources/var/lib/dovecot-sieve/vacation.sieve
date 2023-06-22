#

require ["vacation", "variables"];
require ["vnd.dovecot.environment"];

if string :matches "${env.vnd.dovecot.config.mail_auto_reply_mode}" "reply" {
    if header :matches "subject" "*" {
        vacation :subject "AutoReply: ${1}"
            "${env.vnd.dovecot.config.mail_auto_reply_text}";
    }
}


