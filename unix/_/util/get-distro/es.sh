#!/bin/bash
H='IyEvYmluL2Jhc2gKIyAtKi0gRU5DT0RJTkc6IFVURi04IC0qLQpfU0NSSVBUX0ZJTEVOQU1FPWVzLnNoCmlmIFsgIiQoY29tbWFuZCAtdiBsc2JfcmVsZWFzZSkiID0gIiIgXTsgdGhlbgogIHN1ZG8gYXB0LWdldCBpbnN0YWxsIC15IC1xcXEgbHNiLXJlbGVhc2UgPiAvZGV2L251bGwKZmk7CmlmIFsgLWYgL2V0Yy9sc2ItcmVsZWFzZSBdIHx8IFsgLWQgL2V0Yy9sc2ItcmVsZWFzZS5kIF07IHRoZW4KICBVTklYX0RJU1RSTz0kKGxzYl9yZWxlYXNlIC1pIHwgY3V0IC1kOiAtZjIgfCBzZWQgcy8nXlx0Jy8vKQplbHNlCiAgVU5JWF9ESVNUUk89JChscyAtZCAvZXRjL1tBLVphLXpdKltfLV1bcnZdZVtscl0qIHwgZ3JlcCAtdiAibHNiIiB8IGN1dCAtZCcvJyAtZjMgfCBjdXQgLWQnLScgLWYxIHwgY3V0IC1kJ18nIC1mMSkKZmkKaWYgWyAiJChlY2hvICIkVU5JWF9ESVNUUk8iIHwgaGVhZCAtbiAxKSIgPSAiZGViaWFuIiBdOyB0aGVuCiAgVU5JWF9ESVNUUk89ImRlYmlhbiIKZWxpZiBbICIkVU5JWF9ESVNUUk8iID0gIlVidW50dSIgXTsgdGhlbgogIFVOSVhfRElTVFJPPSJ1YnVudHUiCmZpOwpVTklYX0RJU1RST19WRVJTSU9OX05BTUU9IiQobHNiX3JlbGVhc2UgLWNzKSIKVU5JWF9ESVNUUk9fVkVSU0lPTl9OVU1CRVI9IiQobHNiX3JlbGVhc2UgLXJzKSIKVU5JWF9ESVNUUk9fVkVSU0lPTl9OVU1CRVJfTUFKT1I9JCgKICBwcmludGYgIiVzIiAiJFVOSVhfRElTVFJPX1ZFUlNJT05fTlVNQkVSIiB8IGN1dCAtZCcuJyAtZjEpClVOSVhfRElTVFJPX1ZFUlNJT05fTlVNQkVSX01JTk9SPSIiCmlmIFtbICRVTklYX0RJU1RST19WRVJTSU9OX05VTUJFUiA9PSAqIi4iKiBdXTsgdGhlbgogIFVOSVhfRElTVFJPX1ZFUlNJT05fTlVNQkVSX01JTk9SPSQoCiAgICBwcmludGYgIiVzIiAiJFVOSVhfRElTVFJPX1ZFUlNJT05fTlVNQkVSIiB8IGN1dCAtZCcuJyAtZjIpCmZpOwpVTklYX0RJU1RST19DQVBJVEFMSVpFRD0iJCh0ciAnWzpsb3dlcjpdJyAnWzp1cHBlcjpdJyA8PDwgJHtVTklYX0RJU1RSTzowOjF9KSR7VU5JWF9ESVNUUk86MX0iCmV4cG9ydCBVTklYX0RJU1RSTwpleHBvcnQgVU5JWF9ESVNUUk9fQ0FQSVRBTElaRUQKZXhwb3J0IFVOSVhfRElTVFJPX1ZFUlNJT05fTkFNRQpleHBvcnQgVU5JWF9ESVNUUk9fVkVSU0lPTl9OVU1CRVIKZXhwb3J0IFVOSVhfRElTVFJPX1ZFUlNJT05fTlVNQkVSX01BSk9SCmV4cG9ydCBVTklYX0RJU1RST19WRVJTSU9OX05VTUJFUl9NSU5PUgo='
if (return 0 2>/dev/null); then
  source <(printf "%s" "$H" | base64 -d)
else
  echo "$(echo "$H" | base64 -d)" | bash -s -
fi;
