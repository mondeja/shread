#!/bin/bash
H='IyEvYmluL2Jhc2gKIyAtKi0gRU5DT0RJTkc6IFVURi04IC0qLQpfU0NSSVBUX0ZJTEVOQU1FPWVzLnNoCl9NU0dfRVhFQ1VURURfQVNfU1VQRVJVU0VSPSJFc3RlIHNjcmlwdCBuZWNlc2l0YSBzZXIgZWplY3V0YWRvIGNvbW8gc3VwZXJ1c3VhcmlvLiIKX01TR19JTlNUQUxMSU5HX0NJUkNMRUNJPSJJbnN0YWxhbmRvIENpcmNsZUNJIgpfTVNHX1VQREFUSU5HX0NJUkNMRUNJPSJBY3R1YWxpemFuZG8gQ2lyY2xlQ0kiCl9NU0dfRk9VTkRfQ0lSQ0xFQ0lfSU5TVEFMTEVEPSJFbmNvbnRyYWRvIENpcmNsZUNJIGluc3RhbGFkbyIKaWYgW1sgJCgvdXNyL2Jpbi9pZCAtdSkgLW5lIDAgXV07IHRoZW4KICBwcmludGYgIiVzXG4iICIkX01TR19FWEVDVVRFRF9BU19TVVBFUlVTRVIiID4mMgogIGV4aXQgMQpmaTsKSU5ERU5UX1NUUklORz0iIgpmb3IgYXJnIGluICIkQCI7IGRvCiAgY2FzZSAkYXJnIGluCiAgICAtLWluZGVudCkKICAgIHNoaWZ0CiAgICBJTkRFTlRfU1RSSU5HPSQxCiAgICBzaGlmdAogICAgOzsKICBlc2FjCmRvbmUKZnVuY3Rpb24gcHJpbnRJbmRlbnQoKSB7CiAgcHJpbnRmICIlcyIgIiRJTkRFTlRfU1RSSU5HIgp9CmlmIFsgIiQoY29tbWFuZCAtdiBwYWNtYW4pIiA9ICIiIF07IHRoZW4KICBpZiBbIC16ICIkX1NDUklQVF9GSUxFTkFNRSIgXTsgdGhlbgogICAgZmlsZXBhdGg9InNyYy91bml4L18vZG93bmxvYWQvcGFjYXB0L21haW4uc2giCiAgICBiYXNoICIkZmlsZXBhdGgiID4gL2Rldi9udWxsCiAgZWxzZQogICAgdXJsPSJodHRwczovL21vbmRlamEuZ2l0aHViLmlvL3NocmVhZC91bml4L18vZG93bmxvYWQvcGFjYXB0LyRfU0NSSVBUX0ZJTEVOQU1FIgogICAgY3VybCAtc0wgIiR1cmwiIHwgc3VkbyBiYXNoIC0gPiAvZGV2L251bGwKICBmaTsKZmk7CmlmIFtbICIkKHN1ZG8gcGFjbWFuIC1RaSBjdXJsIDI+IC9kZXYvbnVsbCB8IGdyZXAgU3RhdHVzKSIgIT0gIlN0YXR1czogaW5zdGFsbCBvayBpbnN0YWxsZWQiIF1dOyB0aGVuCiAgc3VkbyBwYWNtYW4gLVMgY3VybCA+IC9kZXYvbnVsbCB8fCBleGl0ICQ/CmZpOwpfQ0lSQ0xFQ0lfQklOQVJZX1BBVEg9IiQoY29tbWFuZCAtdiBjaXJjbGVjaSkiCl9DSVJDTEVDSV9MQVRFU1RfUkVMRUFTRV9WRVJTSU9OPSQoCiAgY3VybCAtc0xJIC1vIC9kZXYvbnVsbCAtdyAnJXt1cmxfZWZmZWN0aXZlfScgXAogICAgaHR0cHM6Ly9naXRodWIuY29tL0NpcmNsZUNJLVB1YmxpYy9jaXJjbGVjaS1jbGkvcmVsZWFzZXMvbGF0ZXN0LyAgfCBcCiAgICBjdXQgLWQgInYiIC1mMikKZG93bmxvYWRDaXJjbGVDSSgpIHsKICBjdXJsIC1mTFNzIGh0dHBzOi8vY2lyY2xlLmNpL2NsaSA+IGluc3RhbGwtY2lyY2xlY2kuc2gKICBjaG1vZCAreCBpbnN0YWxsLWNpcmNsZWNpLnNoCiAgc3VkbyBERVNURElSPSIkMSIgVkVSU0lPTj0iJDIiIGJhc2ggaW5zdGFsbC1jaXJjbGVjaS5zaCA+IC9kZXYvbnVsbAogIHJtIC1mIGluc3RhbGwtY2lyY2xlY2kuc2gKfQpwcmludEluZGVudAppZiBbICIkX0NJUkNMRUNJX0JJTkFSWV9QQVRIIiA9ICIiIF07IHRoZW4KICBwcmludGYgIiVzICh2JXMpLi4uIiAiJF9NU0dfSU5TVEFMTElOR19DSVJDTEVDSSIgIiRfQ0lSQ0xFQ0lfTEFURVNUX1JFTEVBU0VfVkVSU0lPTiIKICBkb3dubG9hZENpcmNsZUNJIC91c3IvYmluICIkX0NJUkNMRUNJX0xBVEVTVF9SRUxFQVNFX1ZFUlNJT04iCmVsc2UKICBfQ0lSQ0xFQ0lfSU5TVEFMTEVEX1ZFUlNJT049JCgKICAgICIkX0NJUkNMRUNJX0JJTkFSWV9QQVRIIiB2ZXJzaW9uIHwgIGN1dCAtZCcrJyAtZjEpCiAgaWYgWyAiJF9DSVJDTEVDSV9JTlNUQUxMRURfVkVSU0lPTiIgIT0gIiRfQ0lSQ0xFQ0lfTEFURVNUX1JFTEVBU0VfVkVSU0lPTiIgXTsgdGhlbgogICAgcHJpbnRmICIlcyAodiVzIiAiJF9NU0dfVVBEQVRJTkdfQ0lSQ0xFQ0kiICIkX0NJUkNMRUNJX0lOU1RBTExFRF9WRVJTSU9OIgogICAgcHJpbnRmICIgLT4gdiVzKS4uLiIgIiRfQ0lSQ0xFQ0lfTEFURVNUX1JFTEVBU0VfVkVSU0lPTiIKICAgIHN1ZG8gcm0gLWYgIiRfQ0lSQ0xFQ0lfQklOQVJZX1BBVEgiCiAgICBkb3dubG9hZENpcmNsZUNJIC91c3IvYmluICIkX0NJUkNMRUNJX0xBVEVTVF9SRUxFQVNFX1ZFUlNJT04iCiAgZWxzZQogICAgcHJpbnRmICIlcyAodiVzKSIgIiRfTVNHX0ZPVU5EX0NJUkNMRUNJX0lOU1RBTExFRCIgIiRfQ0lSQ0xFQ0lfSU5TVEFMTEVEX1ZFUlNJT04iCiAgZmk7CmZpOwpwcmludGYgIiBcZVs5Mm1ceEUyXHg5Q1x4OTRcZVszOW1cbiIK'
if (return 0 2>/dev/null); then
  source <(printf "%s" "$H" | base64 -d)
else
  echo "$(echo "$H" | base64 -d)" | bash -s -
fi;
