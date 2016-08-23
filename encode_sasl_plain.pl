If you don't have the mmencode (or mimeencode) command, here's a simple Perl script to create the encoded string you need for testing. This script requires the MIME::Base64 module, which may not be installed on your system. You can easily retrieve it from your favorite CPAN mirror:
#!/usr/bin/perl use strict; use MIME::Base64; if ( $#ARGV != 1 ) { die "Usage: encode_sasl_plain.pl <username> <password>\n"; } print encode_base64("$ARGV[0]\0$ARGV[0]\0$ARGV[1]"); exit 0;
To get the required base64 authentication string for the user kdent using the password Rumpelstiltskin, execute the command as follows:
$ encode_sasl_plain.pl kdent Rumpelstiltskin a2RlbnQAa2RlbnQAcnVtcGxlc3RpbHRza2lu
This produces the required string, which you can then cut and paste into your Telnet session.

Once you have the string you need, cut and paste it into your Telnet session. In the example below, you type the telnet command to get things started, and then all of the bold lines. Here you are testing authentication on the host mail.example.com. You should specify your own system's name:
$ telnet mail.example.com 25 Trying 192.168.100.5... Connected to mail.example.com. Escape character is '^]'.  Server: 220 mail.example.com ESMTP Postfix EHLO test.ora.com 250-mail.example.com 250-PIPELINING 250-SIZE 10240000 250-VRFY 250-ETRN 250-AUTH LOGIN PLAIN DIGEST-MD5 CRAM-MD5 250-XVERP 250 8BITMIME AUTH PLAIN a2RlbnQAa2RlbnQAcnVtcGxlc3RpbHRza2lu Server: 235 Authentication successful quit Server: 221 Bye  Connection closed by foreign host.
If you do not see a message that the authentication was successful, check your mail log to see what Postfix has reported. Problems can be tricky to track down because there are many pieces involved.
When you test authentication using Telnet, if you don't see the line:
250-AUTH LOGIN PLAIN DIGEST-MD5 CRAM-MD5
listed among the server's extensions, make sure that you didn't forget smtpd_sasl_auth_enable in your main.cf file. If the parameter is there (without typos), then you'd better look at how you compiled Postfix and make sure that it was built with support for SASL.
If the log tells you that it cannot open the db file, make sure that the password file exists in the /etc directory and that the permissions are set so the postfix account has access to it. The Cyrus distribution comes with some utilities that might help you diagnose problems. Check the documentation for the sasldblistusers2 and the saslpasswd2 commands.
