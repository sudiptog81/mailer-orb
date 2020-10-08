cat << EOF  | sudo tee /etc/ssmtp/ssmtp.conf
UseSTARTTLS=YES
FromLineOverride=YES
root=$PARAM_FROM
mailhub=$PARAM_SMTP_HOST:587
AuthUser=$PARAM_SMTP_USER
AuthPass=$PARAM_SMTP_PASS
EOF

cat << EOF > email.txt
Subject: Mail from mailer-orb
Hi. This is a test!
EOF

sendmail $PARAM_FROM < email.txt