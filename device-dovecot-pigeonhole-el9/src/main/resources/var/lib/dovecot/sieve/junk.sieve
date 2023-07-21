#

require ["fileinto", "mailbox"];

# fileinto: for putting mail into a imap folder
# mailbox: for creating imap folder if not exists
#
if header :contains "X-Spam-Flag" "YES" {
    # move mail into folder Junk, create folder if not exists
    fileinto :create "Junk";
    stop;
}


