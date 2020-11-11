#!/bin/bash
H='IyEvYmluL2Jhc2gKIyAtKi0gRU5DT0RJTkc6IFVURi04IC0qLQpfU0NSSVBUX0ZJTEVOQU1FPWVuLnNoCiMhL2Jpbi9iYXNoCl9NU0dfQ0hFQ0tJTkdfRUNPU1lTVEVNPSJDaGVja2luZyBDaHJvbWUgZWNvc3lzdGVtLi4uIgpfTVNHX1VOQUJMRV9UT19JTlNUQUxMXzMyX0JJVFM9IklzIG5vdCBwb3NzaWJsZSB0byBpbnN0YWxsIEdvb2dsZSBDaHJvbWUgb24gMzIgYml0cyBzeXN0ZW1zLiIKX01TR19JTlNUQUxMSU5HX0dPT0dMRV9DSFJPTUU9Ikluc3RhbGxpbmcgR29vZ2xlIENocm9tZS4uLiIKX01TR19GT1VORF9DSFJPTUVfSU5TVEFMTEVEPSJHb29nbGUgQ2hyb21lIGZvdW5kIGluc3RhbGxlZCIKX01TR19JTlNUQUxMSU5HX0NIUk9NRURSSVZFUj0iSW5zdGFsbGluZyBjaHJvbWVkcml2ZXIiCl9NU0dfVVBEQVRJTkdfQ0hST01FRFJJVkVSPSJVcGRhdGluZyBjaHJvbWVkcml2ZXIiCl9NU0dfRk9VTkRfQ0hST01FRFJJVkVSX0lOU1RBTExFRD0iQ2hyb21lZHJpdmVyIGZvdW5kIGluc3RhbGxlZCIKSU5ERU5UX1NUUklORz0iIgpfQ0hST01FRFJJVkVSX1BBVEg9Ii91c3IvYmluL2Nocm9tZWRyaXZlciIKX0RPV05MT0FEX0NIUk9NRURSSVZFUj0xCmZ1bmN0aW9uIHVzYWdlIHsKICAgIGNhdCA8PEhFTFBfVVNBR0UKVXNhZ2U6IHVuaXgvZGViaWFuL2luc3RhbGwvY2hyb21lLyRfU0NSSVBUX0ZJTEVOQU1FIFstaF0gWy1pIFNUUklOR10gWy1kIENIUk9NRURSSVZFUl9QQVRIXQoKICBJbnN0YWxscyBhbmQgdXBncmFkZSBDaHJvbWUgYW5kIENocm9tZWRyaXZlciByZXRyaWV2aW5nIGJpbmFyaWVzIGZyb20gb2ZpY2lhbCBzb3VyY2VzLgoKT3B0aW9uczoKICAtaCwgLS1oZWxwICAgICAgICAgICAgICAgICAgICAgICAgU2hvdyB0aGlzIGhlbHAgbWVzc2FnZSBhbmQgZXhpdC4KICAtaSBTVFJJTkcsIC0taW5kZW50IFNUUklORyAgICAgICAgRWFjaCBsaW5lIG9mIHRoZSBzY3JpcHQgb3V0cHV0IHdpbGwgYmUgcHJlY2VkZWQgd2l0aCB0aGUgc3RyaW5nIGRlZmluZWQgaW4gdGhpcyBwYXJhbWV0ZXIuCiAgLWQgQ0hST01FRFJJVkVSX1BBVEgsIC0tY2hyb21lZHJpdmVyLXBhdGggQ0hST01FRFJJVkVSX1BBVEgKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgU3BlY2lmaWVzIHdoZXJlIGJlIHN0b3JlZCBkb3dubG9hZGVkIGNocm9tZWRyaXZlciBiaW5hcnkuIEFzIGRlZmF1bHQgYXQgJyRfQ0hST01FRFJJVkVSX1BBVEgnLgogIC1uLCAtLW5vLWNocm9tZWRyaXZlciAgICAgICAgICAgICBJZiBwYXNzZWQsIGRvZXMgbm90IGRvd25sb2FkIG5vciB1cGRhdGVzIGNocm9tZWRyaXZlci4KCkhFTFBfVVNBR0UKICAgIGV4aXQgMQp9CmZvciBhcmcgaW4gIiRAIjsgZG8KICBjYXNlICRhcmcgaW4KICAgIC1pfC0taW5kZW50KQogICAgc2hpZnQKICAgIElOREVOVF9TVFJJTkc9IiQxIgogICAgc2hpZnQKICAgIDs7CiAgICAtaHwtLWhlbHApCiAgICBzaGlmdAogICAgdXNhZ2UKICAgIDs7ICAgIAogICAgLWR8LS1jaHJvbWVkcml2ZXItcGF0aCkKICAgIHNoaWZ0CiAgICBfQ0hST01FRFJJVkVSX1BBVEg9IiQxIgogICAgc2hpZnQKICAgIDs7CiAgICAtbnwtLW5vLWNocm9tZWRyaXZlcikKICAgIF9ET1dOTE9BRF9DSFJPTUVEUklWRVI9MAogICAgc2hpZnQKICAgIDs7CiAgZXNhYwpkb25lCmZ1bmN0aW9uIHByaW50SW5kZW50KCkgewogIHByaW50ZiAiJXMiICIkSU5ERU5UX1NUUklORyIKfQpmdW5jdGlvbiBpbnN0YWxsUGFjbWFuSWZOb3RJbnN0YWxsZWQoKSB7CiAgaWYgWyAiJChjb21tYW5kIC12IHBhY21hbikiID0gIiIgXTsgdGhlbgogICAgdXJsPSJodHRwczovL21vbmRlamEuZ2l0aHViLmlvL3NocmVhZC91bml4L18vZG93bmxvYWQvcGFjYXB0LyRfU0NSSVBUX0ZJTEVOQU1FIgogICAgY3VybCAtc0wgIiR1cmwiIHwgc3VkbyBiYXNoIC0gPiAvZGV2L251bGwKICBmaTsKfQpmdW5jdGlvbiBpbnN0YWxsU2NyaXB0RGVwZW5kZW5jaWVzKCkgewogIGluc3RhbGxQYWNtYW5JZk5vdEluc3RhbGxlZAp9Cl9HT09HTEVfQ0hST01FX0JJTkFSWV9QQVRIPSIiCmZ1bmN0aW9uIGdldEdvb2dsZUNocm9tZUJpbmFyeVBhdGgoKSB7CiAgX0dPT0dMRV9DSFJPTUVfQklOQVJZX1BBVEg9IiQoY29tbWFuZCAtdiBnb29nbGUtY2hyb21lKSIKICBpZiBbICIkX0dPT0dMRV9DSFJPTUVfQklOQVJZX1BBVEgiID0gIiIgXTsgdGhlbgogICAgX0dPT0dMRV9DSFJPTUVfQklOQVJZX1BBVEg9IiQoY29tbWFuZCAtdiBnb29nbGUtY2hyb21lLXN0YWJsZSkiCiAgZmk7Cn0KZnVuY3Rpb24gY2hlY2tTeXN0ZW1BcmNoKCkgewogIGlmIFtbICIkKHVuYW1lIC1tKSIgIT0gIng4Nl82NCIgXV07IHRoZW4KICAgIHByaW50SW5kZW50ID4mMgogICAgcHJpbnRmICIgICVzIiAiJF9NU0dfVU5BQkxFX1RPX0lOU1RBTExfMzJfQklUUyIgPiYyCiAgICBwcmludGYgIiBcZVs5MW1ceEUyXHg5Q1x4OTVcZVszOW1cbiIgPiYyCiAgICBleGl0IDEKICBmaTsKfQpmdW5jdGlvbiBpbnN0YWxsR29vZ2xlQ2hyb21lKCkgewogIHByaW50ZiAiICAlcyIgIiRfTVNHX0lOU1RBTExJTkdfR09PR0xFX0NIUk9NRSIKICBjdXJsIC1zTCBodHRwczovL2RsLmdvb2dsZS5jb20vbGludXgvZGlyZWN0L2dvb2dsZS1jaHJvbWUtc3RhYmxlX2N1cnJlbnRfYW1kNjQuZGViICAgICAtLW91dHB1dCAvdG1wL2dvb2dsZS1jaHJvbWUtc3RhYmxlX2N1cnJlbnRfYW1kNjQuZGViCiAgc3VkbyBwYWNtYW4gLVMgLS0gLXkgL3RtcC9nb29nbGUtY2hyb21lLXN0YWJsZV9jdXJyZW50X2FtZDY0LmRlYiA+IC9kZXYvbnVsbAogIHN1ZG8gcm0gLWYgL3RtcC9nb29nbGUtY2hyb21lLXN0YWJsZV9jdXJyZW50X2FtZDY0LmRlYgogIGdldEdvb2dsZUNocm9tZUJpbmFyeVBhdGgKICBwcmludGYgIiAodiVzKSIgIiQoJF9HT09HTEVfQ0hST01FX0JJTkFSWV9QQVRIIC0tdmVyc2lvbiB8IGN1dCAtZCcgJyAtZjMpIgogIHByaW50ZiAiIFxlWzkybVx4RTJceDlDXHg5NFxlWzM5bVxuIgp9CkNIUk9NRURSSVZFUl9WRVJTSU9OPSIiCmZ1bmN0aW9uIGdldExhdGVzdENocm9tZWRyaXZlclZlcnNpb24oKSB7CiAgR09PR0xFX0NIUk9NRV9NQUpPUl9WRVJTSU9OPSIkKCIkX0dPT0dMRV9DSFJPTUVfQklOQVJZX1BBVEgiIC0tdmVyc2lvbiB8IGN1dCAtZCcgJyAtZjMgfCBjdXQgLWQnLicgLWYxKSIKICBjdXJsIC1zTCBodHRwczovL2Nocm9tZWRyaXZlci5zdG9yYWdlLmdvb2dsZWFwaXMuY29tLyAgICAgLS1vdXRwdXQgL3RtcC9jaHJvbWVkcml2ZXItdmVyc2lvbnMueG1sCiAgQ0hST01FRFJJVkVSX1ZFUlNJT049JChncmVwIC1QbyAiPEtleT4kR09PR0xFX0NIUk9NRV9NQUpPUl9WRVJTSU9OXC4qXGQqXC4qXGQrXC4qXGQqXC9jaHJvbWVkcml2ZXJfbGludXg2NFwuemlwIiAvdG1wL2Nocm9tZWRyaXZlci12ZXJzaW9ucy54bWwgfAogICAgICBncmVwIC1QbyAiJEdPT0dMRV9DSFJPTUVfTUFKT1JfVkVSU0lPTlwuKlxkKlwuKlxkK1wuKlxkKiIgfCAgICAgICBoZWFkIC1uIDEpCiAgc3VkbyBybSAtZiAvdG1wL2Nocm9tZWRyaXZlci12ZXJzaW9ucy54bWwKfQpfQ0hST01FRFJJVkVSX0JJTkFSWV9QQVRIPSIiCmZ1bmN0aW9uIGdldENocm9tZWRyaXZlckJpbmFyeVBhdGgoKSB7CiAgX0NIUk9NRURSSVZFUl9CSU5BUllfUEFUSD0iJChjb21tYW5kIC12IGNocm9tZWRyaXZlcikiCn0KZnVuY3Rpb24gaW5zdGFsbENocm9tZURyaXZlcigpIHsKICBjdXJsIC1zTCAgICAgImh0dHBzOi8vY2hyb21lZHJpdmVyLnN0b3JhZ2UuZ29vZ2xlYXBpcy5jb20vJENIUk9NRURSSVZFUl9WRVJTSU9OL2Nocm9tZWRyaXZlcl9saW51eDY0LnppcCIgICAgIC0tb3V0cHV0ICJjaHJvbWVkcml2ZXJfbGludXg2NC56aXAiCiAgdW56aXAgLXEgY2hyb21lZHJpdmVyX2xpbnV4NjQuemlwCiAgc3VkbyBybSAtZiBjaHJvbWVkcml2ZXJfbGludXg2NC56aXAKICBzdWRvIHJtIC1mICJfQ0hST01FRFJJVkVSX1BBVEgiCiAgc3VkbyBtdiAtZiBjaHJvbWVkcml2ZXIgIl9DSFJPTUVEUklWRVJfUEFUSCIKfQpmdW5jdGlvbiBtYWluKCkgewogIHByaW50SW5kZW50CiAgcHJpbnRmICIlc1xuIiAiJF9NU0dfQ0hFQ0tJTkdfRUNPU1lTVEVNIgogIGdldEdvb2dsZUNocm9tZUJpbmFyeVBhdGgKICBpZiBbICIkX0dPT0dMRV9DSFJPTUVfQklOQVJZX1BBVEgiID0gIiIgXTsgdGhlbgogICAgY2hlY2tTeXN0ZW1BcmNoCiAgICBpbnN0YWxsR29vZ2xlQ2hyb21lCiAgZWxzZQogICAgcHJpbnRmICIgICVzIiAiJF9NU0dfRk9VTkRfQ0hST01FX0lOU1RBTExFRCIKICAgIHByaW50ZiAiICh2JXMpIiAiJCgkX0dPT0dMRV9DSFJPTUVfQklOQVJZX1BBVEggLS12ZXJzaW9uIHwgY3V0IC1kJyAnIC1mMykiCiAgICBwcmludGYgIiBcZVs5Mm1ceEUyXHg5Q1x4OTRcZVszOW1cbiIKICBmaTsKICBpZiBbICIkX0RPV05MT0FEX0NIUk9NRURSSVZFUiIgLWVxIDEgXTsgdGhlbgogICAgZ2V0TGF0ZXN0Q2hyb21lZHJpdmVyVmVyc2lvbgogICAgZ2V0Q2hyb21lZHJpdmVyQmluYXJ5UGF0aAogICAgcHJpbnRJbmRlbnQKICAgIGlmIFsgIiRfQ0hST01FRFJJVkVSX0JJTkFSWV9QQVRIIiA9ICIiIF07IHRoZW4KICAgICAgcHJpbnRmICIgICVzICh2JXMpLi4uIiAiJF9NU0dfSU5TVEFMTElOR19DSFJPTUVEUklWRVIiICIkQ0hST01FRFJJVkVSX1ZFUlNJT04iCiAgICAgIGluc3RhbGxDaHJvbWVEcml2ZXIKICAgIGVsc2UKICAgICAgX0NIUk9NRURSSVZFUl9JTlNUQUxMRURfVkVSU0lPTj0iJCgiJF9DSFJPTUVEUklWRVJfQklOQVJZX1BBVEgiIC0tdmVyc2lvbiB8IGN1dCAtZCcgJyAtZjIpIgogICAgICBpZiBbICIkX0NIUk9NRURSSVZFUl9JTlNUQUxMRURfVkVSU0lPTiIgIT0gIiRDSFJPTUVEUklWRVJfVkVSU0lPTiIgXTsgdGhlbgogICAgICAgIHByaW50ZiAiICAlcyAodiVzIiAiJF9NU0dfVVBEQVRJTkdfQ0hST01FRFJJVkVSIiAiJF9DSFJPTUVEUklWRVJfSU5TVEFMTEVEX1ZFUlNJT04iCiAgICAgICAgcHJpbnRmICIgLT4gdiVzKS4uLiIgIiRDSFJPTUVEUklWRVJfVkVSU0lPTiIKICAgICAgICBpbnN0YWxsQ2hyb21lRHJpdmVyCiAgICAgIGVsc2UKICAgICAgICBwcmludGYgIiAgJXMgKHYlcykiICIkX01TR19GT1VORF9DSFJPTUVEUklWRVJfSU5TVEFMTEVEIiAiJF9DSFJPTUVEUklWRVJfSU5TVEFMTEVEX1ZFUlNJT04iCiAgICAgIGZpCiAgICBmaTsKICAgIHByaW50ZiAiIFxlWzkybVx4RTJceDlDXHg5NFxlWzM5bVxuIgogIGZpOwp9CmlmIChyZXR1cm4gMCAyPi9kZXYvbnVsbCk7IHRoZW4KICBleHBvcnRWYXJpYWJsZXMKZWxzZQogIG1haW4KZmk7'
if (return 0 2>/dev/null); then
  source <(printf "%s" "$H" | base64 -d)
else
  echo "$(echo "$H" | base64 -d)" | bash -s -- "$@"
fi;
