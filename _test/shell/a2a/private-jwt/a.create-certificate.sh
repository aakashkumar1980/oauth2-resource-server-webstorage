#!/bin/bash

openssl genrsa -out private.key 2048
openssl req -new -x509 -key private.key -out public.cert -days 360 -subj "/C=IN/ST=Uttrakhand/L=Dehradun/O=Aaditya Designers Pvt. Ltd./OU=IT/CN=Aaditya Designers Certificate"



