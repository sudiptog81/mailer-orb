cat << EOF  | sudo tee /etc/ssmtp/ssmtp.conf
UseSTARTTLS=YES
FromLineOverride=YES
root=$PARAM_FROM
mailhub=$SMTP_HOST:587
AuthUser=$SMTP_USER
AuthPass=$SMTP_PASS
FromLineOverride=yes
EOF

cat << EOF  | sudo tee /etc/ssmtp/revaliases
root:$PARAM_FROM:$SMTP_HOST:587
circleci:$PARAM_FROM:$SMTP_HOST:587
EOF

cat << EOF > email.txt
Subject: $PARAM_SUBJECT
Hi. This is a test!
EOF

sendmail $PARAM_TO < email.txt