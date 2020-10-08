cat << EOF  | sudo tee /etc/ssmtp/ssmtp.conf
UseSTARTTLS=YES
FromLineOverride=YES
root=$PARAM_FROM
mailhub=$SMTP_HOST:587
AuthUser=$SMTP_USER
AuthPass=$SMTP_PASS
EOF

cat << EOF > email.txt
Subject: $PARAM_SUBJECT
Hi. This is a test!
EOF

sendmail $PARAM_FROM < email.txt