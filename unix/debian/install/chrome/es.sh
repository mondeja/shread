#!/bin/bash
H='IyEvYmluL2Jhc2gKIyAtKi0gRU5DT0RJTkc6IFVURi04IC0qLQpfU0NSSVBUX0ZJTEVOQU1FPWVzLnNoCl9NU0dfRVhFQ1VURURfQVNfU1VQRVJVU0VSPSJFc3RlIHNjcmlwdCBuZWNlc2l0YSBzZXIgZWplY3V0YWRvIGNvbW8gc3VwZXJ1c3VhcmlvLiIKX01TR19DSEVDS0lOR19FQ09TWVNURU09IkNvbXByb2JhbmRvIGVjb3Npc3RlbWEgQ2hyb21lLi4uIgpfTVNHX1VOQUJMRV9UT19JTlNUQUxMXzMyPSJObyBlcyBwb3NpYmxlIGluc3RhbGFyIEdvb2dsZSBDaHJvbWUgZW4gc2lzdGVtYXMgZGUgMzIgYml0cy4iCl9NU0dfSU5TVEFMTElOR19HT09HTEVfQ0hST01FPSJJbnN0YWxhbmRvIEdvb2dsZSBDaHJvbWUuLi4iCl9NU0dfRk9VTkRfQ0hST01FX0lOU1RBTExFRD0iRW5jb250cmFkbyBHb29nbGUgQ2hyb21lIGluc3RhbGFkbyIKX01TR19JTlNUQUxMSU5HX0NIUk9NRURSSVZFUj0iSW5zdGFsYW5kbyBjaHJvbWVkcml2ZXIiCl9NU0dfVVBEQVRJTkdfQ0hST01FRFJJVkVSPSJBY3R1YWxpemFuZG8gY2hyb21lZHJpdmVyIgpfTVNHX0ZPVU5EX0NIUk9NRURSSVZFUl9JTlNUQUxMRUQ9IkVuY29udHJhZG8gY2hyb21lZHJpdmVyIGluc3RhbGFkbyIKaWYgW1sgJCgvdXNyL2Jpbi9pZCAtdSkgLW5lIDAgXV07IHRoZW4KICBwcmludGYgIiVzXG4iICIkX01TR19FWEVDVVRFRF9BU19TVVBFUlVTRVIiID4mMgogIGV4aXQgMQpmaTsKSU5ERU5UX1NUUklORz0iIgpmb3IgYXJnIGluICIkQCI7IGRvCiAgY2FzZSAkYXJnIGluCiAgICAtLWluZGVudCkKICAgIHNoaWZ0CiAgICBJTkRFTlRfU1RSSU5HPSQxCiAgICBzaGlmdAogICAgOzsKICBlc2FjCmRvbmUKZnVuY3Rpb24gcHJpbnRJbmRlbnQoKSB7CiAgcHJpbnRmICIlcyIgIiRJTkRFTlRfU1RSSU5HIgp9CmlmIFsgIiQoY29tbWFuZCAtdiBwYWNtYW4pIiA9ICIiIF07IHRoZW4KICBpZiBbIC16ICIkX1NDUklQVF9GSUxFTkFNRSIgXTsgdGhlbgogICAgZmlsZXBhdGg9InNyYy91bml4L18vZG93bmxvYWQvcGFjYXB0L21haW4uc2giCiAgICBiYXNoICIkZmlsZXBhdGgiID4gL2Rldi9udWxsCiAgZWxzZQogICAgdXJsPSJodHRwczovL21vbmRlamEuZ2l0aHViLmlvL3NocmVhZC91bml4L18vZG93bmxvYWQvcGFjYXB0LyRfU0NSSVBUX0ZJTEVOQU1FIgogICAgY3VybCAtc0wgIiR1cmwiIHwgc3VkbyBiYXNoIC0gPiAvZGV2L251bGwKICBmaTsKZmk7CklOU1RBTExBVElPTl9ERVBFTkRFTkNJRVM9KAogICJkZWJjb25mLXV0aWxzIgogICJjdXJsIgopCmZvciBERVAgaW4gIiR7SU5TVEFMTEFUSU9OX0RFUEVOREVOQ0lFU1tAXX0iOyBkbwogIGlmIFtbICIkKHN1ZG8gcGFjbWFuIC1RaSAiJERFUCIgMj4gL2Rldi9udWxsIHwgZ3JlcCBTdGF0dXMpIiAhPSAiU3RhdHVzOiBpbnN0YWxsIG9rIGluc3RhbGxlZCIgXV07IHRoZW4KICAgIHN1ZG8gcGFjbWFuIC1TICIkREVQIiA+IC9kZXYvbnVsbCB8fCBleGl0ICQ/CiAgZmk7CmRvbmU7CmlmIFsgIiQoY29tbWFuZCAtdiBkZWJjb25mLWdldC1zZWxlY3Rpb25zKSIgIT0gIiIgXTsgdGhlbgogIF9PUklHSU5BTF9ERUJDT05GX0ZST05URU5EPSQoCiAgICBzdWRvIGRlYmNvbmYtZ2V0LXNlbGVjdGlvbnMgfCBcCiAgICBncmVwIGRlYmNvbmYvZnJvbnRlbmQgfCBcCiAgICBhd2sgJ3twcmludCAkNH0nKQogIHN1ZG8gc2ggLWMgImVjaG8gJ2RlYmNvbmYgZGViY29uZi9mcm9udGVuZCBzZWxlY3QgTm9uaW50ZXJhY3RpdmUnIHwgZGViY29uZi1zZXQtc2VsZWN0aW9ucyIKZmk7CnByaW50SW5kZW50CnByaW50ZiAiJXNcbiIgIiRfTVNHX0NIRUNLSU5HX0VDT1NZU1RFTSIKX0dPT0dMRV9DSFJPTUVfQklOQVJZX1BBVEg9IiIKZnVuY3Rpb24gY2FjaGVHb29nbGVDaHJvbWVCaW5hcnlQYXRoKCkgewogIF9HT09HTEVfQ0hST01FX0JJTkFSWV9QQVRIPSIkKGNvbW1hbmQgLXYgZ29vZ2xlLWNocm9tZSkiCiAgaWYgWyAiJF9HT09HTEVfQ0hST01FX0JJTkFSWV9QQVRIIiA9ICIiIF07IHRoZW4KICAgIF9HT09HTEVfQ0hST01FX0JJTkFSWV9QQVRIPSIkKGNvbW1hbmQgLXYgZ29vZ2xlLWNocm9tZS1zdGFibGUpIgogIGZpOwp9CmNhY2hlR29vZ2xlQ2hyb21lQmluYXJ5UGF0aApwcmludEluZGVudAppZiBbICIkX0dPT0dMRV9DSFJPTUVfQklOQVJZX1BBVEgiID0gIiIgXTsgdGhlbgogIGlmIFtbICIkKHVuYW1lIC1tKSIgIT0gIng4Nl82NCIgXV07IHRoZW4KICAgIHByaW50ZiAiICAlcyIgIiRfTVNHX1VOQUJMRV9UT19JTlNUQUxMXzMyIiA+JjIKICAgIHByaW50ZiAiIFxlWzkxbVx4RTJceDlDXHg5NVxlWzM5bVxuIiA+JjIKICAgIGV4aXQgMQogIGZpOwogIHByaW50ZiAiICAlcyIgIiRfTVNHX0lOU1RBTExJTkdfR09PR0xFX0NIUk9NRSIKICBjdXJsIC1zTCBodHRwczovL2RsLmdvb2dsZS5jb20vbGludXgvZGlyZWN0L2dvb2dsZS1jaHJvbWUtc3RhYmxlX2N1cnJlbnRfYW1kNjQuZGViIFwKICAgIC0tb3V0cHV0IGdvb2dsZS1jaHJvbWUtc3RhYmxlX2N1cnJlbnRfYW1kNjQuZGViCiAgc3VkbyBwYWNtYW4gLVMgLi9nb29nbGUtY2hyb21lLXN0YWJsZV9jdXJyZW50X2FtZDY0LmRlYiA+IC9kZXYvbnVsbAogIHN1ZG8gcm0gLWYgZ29vZ2xlLWNocm9tZS1zdGFibGVfY3VycmVudF9hbWQ2NC5kZWIKICBjYWNoZUdvb2dsZUNocm9tZUJpbmFyeVBhdGgKICBwcmludGYgIiAodiVzKSIgIiQoJF9HT09HTEVfQ0hST01FX0JJTkFSWV9QQVRIIC0tdmVyc2lvbiB8IGN1dCAtZCcgJyAtZjMpIgplbHNlCiAgcHJpbnRmICIgICVzIiAiJF9NU0dfRk9VTkRfQ0hST01FX0lOU1RBTExFRCIKICBwcmludGYgIiAodiVzKSIgIiQoJF9HT09HTEVfQ0hST01FX0JJTkFSWV9QQVRIIC0tdmVyc2lvbiB8IGN1dCAtZCcgJyAtZjMpIgpmaTsKcHJpbnRmICIgXGVbOTJtXHhFMlx4OUNceDk0XGVbMzltXG4iCkdPT0dMRV9DSFJPTUVfTUFKT1JfVkVSU0lPTj0iJCgiJF9HT09HTEVfQ0hST01FX0JJTkFSWV9QQVRIIiAtLXZlcnNpb24gfCBjdXQgLWQnICcgLWYzIHwgY3V0IC1kJy4nIC1mMSkiCmN1cmwgLXNMIGh0dHBzOi8vY2hyb21lZHJpdmVyLnN0b3JhZ2UuZ29vZ2xlYXBpcy5jb20vIFwKICAtLW91dHB1dCBjaHJvbWVkcml2ZXItdmVyc2lvbnMueG1sCkNIUk9NRURSSVZFUl9WRVJTSU9OPSQoZ3JlcCAtUG8gIjxLZXk+JEdPT0dMRV9DSFJPTUVfTUFKT1JfVkVSU0lPTlwuKlxkKlwuKlxkK1wuKlxkKlwvY2hyb21lZHJpdmVyX2xpbnV4NjRcLnppcCIgY2hyb21lZHJpdmVyLXZlcnNpb25zLnhtbCB8CiAgICBncmVwIC1QbyAiJEdPT0dMRV9DSFJPTUVfTUFKT1JfVkVSU0lPTlwuKlxkKlwuKlxkK1wuKlxkKiIgfCBcCiAgICBoZWFkIC1uIDEpCnN1ZG8gcm0gLWYgY2hyb21lZHJpdmVyLXZlcnNpb25zLnhtbAppbnN0YWxsQ2hyb21lRHJpdmVyKCkgewogIGN1cmwgLXNMIFwKICAgICJodHRwczovL2Nocm9tZWRyaXZlci5zdG9yYWdlLmdvb2dsZWFwaXMuY29tLyRDSFJPTUVEUklWRVJfVkVSU0lPTi9jaHJvbWVkcml2ZXJfbGludXg2NC56aXAiIFwKICAgIC0tb3V0cHV0ICJjaHJvbWVkcml2ZXJfbGludXg2NC56aXAiCiAgdW56aXAgLXEgY2hyb21lZHJpdmVyX2xpbnV4NjQuemlwCiAgc3VkbyBybSAtZiBjaHJvbWVkcml2ZXJfbGludXg2NC56aXAKICBpZiBbIC1mIC91c3IvYmluL2Nocm9tZWRyaXZlciBdOyB0aGVuCiAgICBzdWRvIHJtIC1mIC91c3IvYmluL2Nocm9tZWRyaXZlcgogIGZpOwogIHN1ZG8gbXYgLWYgY2hyb21lZHJpdmVyIC91c3IvYmluL2Nocm9tZWRyaXZlcgp9CnByaW50SW5kZW50Cl9DSFJPTUVEUklWRVJfQklOQVJZX1BBVEg9IiQoY29tbWFuZCAtdiBjaHJvbWVkcml2ZXIpIgppZiBbICIkX0NIUk9NRURSSVZFUl9CSU5BUllfUEFUSCIgPSAiIiBdOyB0aGVuCiAgcHJpbnRmICIgICVzICh2JXMpLi4uIiAiJF9NU0dfSU5TVEFMTElOR19DSFJPTUVEUklWRVIiICIkQ0hST01FRFJJVkVSX1ZFUlNJT04iCiAgaW5zdGFsbENocm9tZURyaXZlcgplbHNlCiAgX0NIUk9NRURSSVZFUl9JTlNUQUxMRURfVkVSU0lPTj0iJCgiJF9DSFJPTUVEUklWRVJfQklOQVJZX1BBVEgiIC0tdmVyc2lvbiB8IGN1dCAtZCcgJyAtZjIpIgogIGlmIFsgIiRfQ0hST01FRFJJVkVSX0lOU1RBTExFRF9WRVJTSU9OIiAhPSAiJENIUk9NRURSSVZFUl9WRVJTSU9OIiBdOyB0aGVuCiAgICBwcmludGYgIiAgJXMgKHYlcyIgIiRfTVNHX1VQREFUSU5HX0NIUk9NRURSSVZFUiIgIiRfQ0hST01FRFJJVkVSX0lOU1RBTExFRF9WRVJTSU9OIgogICAgcHJpbnRmICIgLT4gdiVzKS4uLiIgIiRDSFJPTUVEUklWRVJfVkVSU0lPTiIKICAgIGluc3RhbGxDaHJvbWVEcml2ZXIKICBlbHNlCiAgICBwcmludGYgIiAgJXMgKHYlcykiICIkX01TR19GT1VORF9DSFJPTUVEUklWRVJfSU5TVEFMTEVEIiAiJF9DSFJPTUVEUklWRVJfSU5TVEFMTEVEX1ZFUlNJT04iCiAgZmkKZmkKcHJpbnRmICIgXGVbOTJtXHhFMlx4OUNceDk0XGVbMzltXG4iCmlmIFsgIiQoY29tbWFuZCAtdiBkZWJjb25mLWdldC1zZWxlY3Rpb25zKSIgIT0gIiIgXTsgdGhlbgogIHN1ZG8gc2ggLWMgImVjaG8gJ2RlYmNvbmYgZGViY29uZi9mcm9udGVuZCBzZWxlY3QgJF9PUklHSU5BTF9ERUJDT05GX0ZST05URU5EJyB8IGRlYmNvbmYtc2V0LXNlbGVjdGlvbnMiCmZpOwo='
if (return 0 2>/dev/null); then
  source <(printf "%s" "$H" | base64 -d)
else
  echo "$(echo "$H" | base64 -d)" | bash -s -
fi;
