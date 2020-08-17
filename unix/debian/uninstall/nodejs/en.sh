#!/bin/bash
H='IyEvYmluL2Jhc2gKIyAtKi0gRU5DT0RJTkc6IFVURi04IC0qLQpfU0NSSVBUX0ZJTEVOQU1FPWVuLnNoCl9NU0dfRVhFQ1VURURfQVNfU1VQRVJVU0VSPSJUaGlzIHNjcmlwdCBuZWVkcyB0byBiZSBleGVjdXRlZCBhcyBzdXBlcnVzZXIuIgpfTVNHX1VOSU5TVEFMTElOR19OT0RFSlNfRUNPU1lTVEVNPSJVbmluc3RhbGxpbmcgTm9kZUpTIGVjb3N5c3RlbS4uLiIKX01TR19VTklOU1RBTExJTkdfTk9ERUpTPSJVbmluc3RhbGxpbmcgTm9kZUpTIgpfTVNHX05PREVKU19JU19OT1RfSU5TVEFMTEVEPSJOb2RlSlMgaXMgbm90IGluc3RhbGxlZCIKX01TR19OUE1fSVNfTk9UX0lOU1RBTExFRD0iTlBNIGlzIG5vdCBpbnN0YWxsZWQiCl9NU0dfVU5JTlNUQUxMSU5HX05QTT0iVW5pbnN0YWxsaW5nIE5QTS4uLiIKX01TR19ZQVJOX0lTX05PVF9JTlNUQUxMRUQ9Illhcm4gaXMgbm90IGluc3RhbGxlZCIKaWYgW1sgJCgvdXNyL2Jpbi9pZCAtdSkgLW5lIDAgXV07IHRoZW4KICBwcmludGYgIiVzXG4iICIkX01TR19FWEVDVVRFRF9BU19TVVBFUlVTRVIiID4mMgogIGV4aXQgMQpmaTsKSU5ERU5UX1NUUklORz0iIgpmb3IgYXJnIGluICIkQCI7IGRvCiAgY2FzZSAkYXJnIGluCiAgICAtLWluZGVudCkKICAgIHNoaWZ0CiAgICBJTkRFTlRfU1RSSU5HPSQxCiAgICBzaGlmdAogICAgOzsKICAgIC0tZGlzdHJvKQogICAgc2hpZnQKICAgIFVOSVhfRElTVFJPPSQxCiAgICBzaGlmdAogICAgOzsKICBlc2FjCmRvbmUKZnVuY3Rpb24gcHJpbnRJbmRlbnQoKSB7CiAgcHJpbnRmICIlcyIgIiRJTkRFTlRfU1RSSU5HIgp9CmlmIFsgIiQoY29tbWFuZCAtdiBwYWNtYW4pIiA9ICIiIF07IHRoZW4KICBpZiBbIC16ICIkX1NDUklQVF9GSUxFTkFNRSIgXTsgdGhlbgogICAgZmlsZXBhdGg9InNyYy91bml4L18vZG93bmxvYWQvcGFjYXB0L21haW4uc2giCiAgICBiYXNoICIkZmlsZXBhdGgiID4gL2Rldi9udWxsCiAgZWxzZQogICAgdXJsPSJodHRwczovL21vbmRlamEuZ2l0aHViLmlvL3NocmVhZC91bml4L18vZG93bmxvYWQvcGFjYXB0LyRfU0NSSVBUX0ZJTEVOQU1FIgogICAgY3VybCAtc0wgIiR1cmwiIHwgc3VkbyBiYXNoIC0gPiAvZGV2L251bGwKICBmaTsKZmk7CmlmIFsgLXogIiRVTklYX0RJU1RSTyIgXTsgdGhlbgogIHNvdXJjZSA8KGN1cmwgLXNMIGh0dHBzOi8vbW9uZGVqYS5naXRodWIuaW8vc2hyZWFkL3VuaXgvXy91dGlsL2dldC1kaXN0cm8vZW4uc2gpCmZpOwppZiBbICIkVU5JWF9ESVNUUk8iID0gInVidW50dSIgXSB8fCBbICIkVU5JWF9ESVNUUk8iID0gImRlYmlhbiIgXTsgdGhlbgogIHByaW50SW5kZW50CiAgcHJpbnRmICIlc1xuIiAiJF9NU0dfVU5JTlNUQUxMSU5HX05PREVKU19FQ09TWVNURU0iCiAgcHJpbnRJbmRlbnQKICBOT0RFX0pTX0JJTkFSWV9QQVRIPSQoY29tbWFuZCAtdiBub2RlKQogIGlmIFsgIiROT0RFX0pTX0JJTkFSWV9QQVRIIiA9ICIiIF07IHRoZW4KICAgIHByaW50ZiAiICAlcyIgIiRfTVNHX05PREVKU19JU19OT1RfSU5TVEFMTEVEIgogIGVsc2UKICAgIHByaW50ZiAiICAlcyAodiVzKS4uLiIgIiRfTVNHX1VOSU5TVEFMTElOR19OT0RFSlMiICIkKG5vZGUgLXYgfCBjdXQgLWMyLTE1KSIKICAgIHN1ZG8gYXB0LWdldCBwdXJnZSBub2RlanMgLXkgLXFxcSA+IC9kZXYvbnVsbAogICAgQVBUX1NPVVJDRV9GSUxFU19UT19ERUxFVEU9KAogICAgICAibm9kZXNvdXJjZS5saXN0IgogICAgICAibm9kZXNvdXJjZS5saXN0LmRpc3RVcGdyYWRlIgogICAgICAibm9kZXNvdXJjZS5saXN0LnNhdmUiCiAgICApCiAgICBmb3IgQVBUX1NPVVJDRV9GSUxFTkFNRSBpbiAiJHtBUFRfU09VUkNFX0ZJTEVTX1RPX0RFTEVURVtAXX0iOyBkbwogICAgICBzdWRvIHJtIC1mICIvZXRjL2FwdC9zb3VyY2VzLmxpc3QuZC8kQVBUX1NPVVJDRV9GSUxFTkFNRSIgPiAvZGV2L251bGwgfHwgZXhpdCAkPwogICAgZG9uZQogIGZpOwogIHByaW50ZiAiIFxlWzkybVx4RTJceDlDXHg5NFxlWzM5bVxuIgogIHByaW50SW5kZW50CiAgTlBNX0JJTkFSWV9QQVRIPSQoY29tbWFuZCAtdiBucG0pCiAgaWYgWyAiJE5QTV9CSU5BUllfUEFUSCIgPSAiIiBdOyB0aGVuCiAgICBwcmludGYgIiAgJXMiICIkX01TR19OUE1fSVNfTk9UX0lOU1RBTExFRCIKICBlbHNlCiAgICBwcmludGYgIiAgJXMiICIkX01TR19VTklOU1RBTExJTkdfTlBNIgogICAgbnBtIHVuaW5zdGFsbCBucG0gLWcgLS1xdWlldAogIGZpOwogIHByaW50ZiAiIFxlWzkybVx4RTJceDlDXHg5NFxlWzM5bVxuIgogIHByaW50SW5kZW50CiAgWUFSTl9CSU5BUllfUEFUSD0kKGNvbW1hbmQgLXYgbnBtKQogIGlmIFsgIiRZQVJOX0JJTkFSWV9QQVRIIiA9ICIiIF07IHRoZW4KICAgIHByaW50ZiAiICAlcyBcZVs5Mm1ceEUyXHg5Q1x4OTRcZVszOW1cbiIgIiRfTVNHX1lBUk5fSVNfTk9UX0lOU1RBTExFRCIKICBmaTsKZmk7Cg=='
if (return 0 2>/dev/null); then
  source <(printf "%s" "$H" | base64 -d)
else
  echo "$(echo "$H" | base64 -d)" | bash -s -
fi;
