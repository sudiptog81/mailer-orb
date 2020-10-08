#!/usr/bin/env node

const {
    PARAM_TO: mailTo,
    PARAM_FROM: mailFrom,
    PARAM_SMTP_HOST: smtpHost,
    PARAM_SMTP_USER: smtpUser,
    PARAM_SMTP_PASS: smtpPass
} = process.env;

console.log(mailTo, mailFrom, smtpHost);