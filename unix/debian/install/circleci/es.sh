#!/bin/bash
H='IyEvYmluL2Jhc2gKIyAtKi0gRU5DT0RJTkc6IFVURi04IC0qLQpfU0NSSVBUX0ZJTEVOQU1FPWVzLnNoCiMhL2Jpbi9iYXNoCl9NU0dfRVhFQ1VURURfQVNfU1VQRVJVU0VSPSJFc3RlIHNjcmlwdCBuZWNlc2l0YSBzZXIgZWplY3V0YWRvIGNvbW8gc3VwZXJ1c3VhcmlvLiIKX01TR19JTlNUQUxMSU5HX0NJUkNMRUNJPSJJbnN0YWxhbmRvIENpcmNsZUNJIgpfTVNHX1VQREFUSU5HX0NJUkNMRUNJPSJBY3R1YWxpemFuZG8gQ2lyY2xlQ0kiCl9NU0dfRk9VTkRfQ0lSQ0xFQ0lfSU5TVEFMTEVEPSJFbmNvbnRyYWRvIENpcmNsZUNJIGluc3RhbGFkbyIKaWYgW1sgJCgvdXNyL2Jpbi9pZCAtdSkgLW5lIDAgXV07IHRoZW4KICBwcmludGYgIiVzXG4iICIkX01TR19FWEVDVVRFRF9BU19TVVBFUlVTRVIiID4mMgogIGV4aXQgMQpmaTsKSU5ERU5UX1NUUklORz0iIgpmb3IgYXJnIGluICIkQCI7IGRvCiAgY2FzZSAkYXJnIGluCiAgICAtLWluZGVudCkKICAgIHNoaWZ0CiAgICBJTkRFTlRfU1RSSU5HPSQxCiAgICBzaGlmdAogICAgOzsKICBlc2FjCmRvbmUKZnVuY3Rpb24gcHJpbnRJbmRlbnQoKSB7CiAgcHJpbnRmICIlcyIgIiRJTkRFTlRfU1RSSU5HIgp9CmlmIFsgIiQoY29tbWFuZCAtdiBwYWNtYW4pIiA9ICIiIF07IHRoZW4KICBpZiBbIC16ICIkX1NDUklQVF9GSUxFTkFNRSIgXTsgdGhlbgogICAgZmlsZXBhdGg9InNyYy91bml4L18vZG93bmxvYWQvcGFjYXB0L21haW4uc2giCiAgICBiYXNoICIkZmlsZXBhdGgiID4gL2Rldi9udWxsCiAgZWxzZQogICAgdXJsPSJodHRwczovL21vbmRlamEuZ2l0aHViLmlvL3NocmVhZC91bml4L18vZG93bmxvYWQvcGFjYXB0LyRfU0NSSVBUX0ZJTEVOQU1FIgogICAgY3VybCAtc0wgIiR1cmwiIHwgc3VkbyBiYXNoIC0gPiAvZGV2L251bGwKICBmaTsKZmk7Cl9DSVJDTEVDSV9CSU5BUllfUEFUSD0iJChjb21tYW5kIC12IGNpcmNsZWNpKSIKX0NJUkNMRUNJX0xBVEVTVF9SRUxFQVNFX1ZFUlNJT049JCgKICBjdXJsIC1zTEkgLW8gL2Rldi9udWxsIC13ICcle3VybF9lZmZlY3RpdmV9JyBcCiAgICBodHRwczovL2dpdGh1Yi5jb20vQ2lyY2xlQ0ktUHVibGljL2NpcmNsZWNpLWNsaS9yZWxlYXNlcy9sYXRlc3QvICB8IFwKICAgIGN1dCAtZCAidiIgLWYyKQpkb3dubG9hZENpcmNsZUNJKCkgewogIGN1cmwgLWZMU3MgaHR0cHM6Ly9jaXJjbGUuY2kvY2xpID4gaW5zdGFsbC1jaXJjbGVjaS5zaAogIGNobW9kICt4IGluc3RhbGwtY2lyY2xlY2kuc2gKICBzdWRvIERFU1RESVI9IiQxIiBWRVJTSU9OPSIkMiIgYmFzaCBpbnN0YWxsLWNpcmNsZWNpLnNoID4gL2Rldi9udWxsCiAgcm0gLWYgaW5zdGFsbC1jaXJjbGVjaS5zaAp9CnByaW50SW5kZW50CmlmIFsgIiRfQ0lSQ0xFQ0lfQklOQVJZX1BBVEgiID0gIiIgXTsgdGhlbgogIHByaW50ZiAiJXMgKHYlcykuLi4iICIkX01TR19JTlNUQUxMSU5HX0NJUkNMRUNJIiAiJF9DSVJDTEVDSV9MQVRFU1RfUkVMRUFTRV9WRVJTSU9OIgogIGRvd25sb2FkQ2lyY2xlQ0kgL3Vzci9iaW4gIiRfQ0lSQ0xFQ0lfTEFURVNUX1JFTEVBU0VfVkVSU0lPTiIKZWxzZQogIF9DSVJDTEVDSV9JTlNUQUxMRURfVkVSU0lPTj0kKAogICAgIiRfQ0lSQ0xFQ0lfQklOQVJZX1BBVEgiIHZlcnNpb24gfCAgY3V0IC1kJysnIC1mMSkKICBpZiBbICIkX0NJUkNMRUNJX0lOU1RBTExFRF9WRVJTSU9OIiAhPSAiJF9DSVJDTEVDSV9MQVRFU1RfUkVMRUFTRV9WRVJTSU9OIiBdOyB0aGVuCiAgICBwcmludGYgIiVzICh2JXMiICIkX01TR19VUERBVElOR19DSVJDTEVDSSIgIiRfQ0lSQ0xFQ0lfSU5TVEFMTEVEX1ZFUlNJT04iCiAgICBwcmludGYgIiAtPiB2JXMpLi4uIiAiJF9DSVJDTEVDSV9MQVRFU1RfUkVMRUFTRV9WRVJTSU9OIgogICAgc3VkbyBybSAtZiAiJF9DSVJDTEVDSV9CSU5BUllfUEFUSCIKICAgIGRvd25sb2FkQ2lyY2xlQ0kgL3Vzci9iaW4gIiRfQ0lSQ0xFQ0lfTEFURVNUX1JFTEVBU0VfVkVSU0lPTiIKICBlbHNlCiAgICBwcmludGYgIiVzICh2JXMpIiAiJF9NU0dfRk9VTkRfQ0lSQ0xFQ0lfSU5TVEFMTEVEIiAiJF9DSVJDTEVDSV9JTlNUQUxMRURfVkVSU0lPTiIKICBmaTsKZmk7CnByaW50ZiAiIFxlWzkybVx4RTJceDlDXHg5NFxlWzM5bVxuIg=='
if (return 0 2>/dev/null); then
  source <(printf "%s" "$H" | base64 -d)
else
  echo "$(echo "$H" | base64 -d)" | bash -s -- "$@"
fi;
