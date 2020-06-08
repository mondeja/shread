#!/bin/bash
source <(printf 'IyEvYmluL2Jhc2gKIyAtKi0gRU5DT0RJTkc6IFVURi04IC0qLQpfTVNHX0VYRUNVVEVEX0FTX1NVUEVSVVNFUj0iVGhpcyBzY3JpcHQgbmVlZHMgdG8gYmUgZXhlY3V0ZWQgYXMgc3VwZXJ1c2VyLiIKX01TR19DSEVDS0lOR19FQ09TWVNURU09IkNoZWNraW5nIENocm9tZSBlY29zeXN0ZW0uLi4iCl9NU0dfVU5BQkxFX1RPX0lOU1RBTExfMzI9IklzIG5vdCBwb3NzaWJsZSB0byBpbnN0YWxsIEdvb2dsZSBDaHJvbWUgb24gMzIgYml0cyBzeXN0ZW1zLiIKX01TR19JTlNUQUxMSU5HX0dPT0dMRV9DSFJPTUU9Ikluc3RhbGxpbmcgR29vZ2xlIENocm9tZS4uLiIKX01TR19GT1VORF9DSFJPTUVfSU5TVEFMTEVEPSJHb29nbGUgQ2hyb21lIGZvdW5kIGluc3RhbGxlZCIKX01TR19JTlNUQUxMSU5HX0NIUk9NRURSSVZFUj0iSW5zdGFsbGluZyBjaHJvbWVkcml2ZXIiCl9NU0dfVVBEQVRJTkdfQ0hST01FRFJJVkVSPSJVcGRhdGluZyBjaHJvbWVkcml2ZXIiCl9NU0dfRk9VTkRfQ0hST01FRFJJVkVSX0lOU1RBTExFRD0iQ2hyb21lZHJpdmVyIGZvdW5kIGluc3RhbGxlZCIKaWYgW1sgJCgvdXNyL2Jpbi9pZCAtdSkgLW5lIDAgXV07IHRoZW4KICBwcmludGYgIiVzXG4iICIkX01TR19FWEVDVVRFRF9BU19TVVBFUlVTRVIiID4mMgogIGV4aXQgMQpmaTsKSU5ERU5UX1NUUklORz0iIgpmb3IgYXJnIGluICIkQCI7IGRvCiAgY2FzZSAkYXJnIGluCiAgICAtLWluZGVudCkKICAgIHNoaWZ0CiAgICBJTkRFTlRfU1RSSU5HPSQxCiAgICBzaGlmdAogICAgOzsKICBlc2FjCmRvbmUKZnVuY3Rpb24gcHJpbnRQcmVwZW5kZWRTdGRvdXQoKSB7CiAgcHJpbnRmICIlcyIgIiRJTkRFTlRfU1RSSU5HIgp9CmlmIFtbICIkKHN1ZG8gZHBrZyAtcyBkZWJjb25mLXV0aWxzIDI+IC9kZXYvbnVsbCB8IGdyZXAgU3RhdHVzKSIgIT0gIlN0YXR1czogaW5zdGFsbCBvayBpbnN0YWxsZWQiIF1dOyB0aGVuCiAgc3VkbyBhcHQtZ2V0IGluc3RhbGwgLXkgLXFxcSBkZWJjb25mLXV0aWxzID4gL2Rldi9udWxsCmZpOwppZiBbICIkKGNvbW1hbmQgLXYgZGViY29uZi1nZXQtc2VsZWN0aW9ucykiICE9ICIiIF07IHRoZW4KICBfT1JJR0lOQUxfREVCQ09ORl9GUk9OVEVORD0kKAogICAgc3VkbyBkZWJjb25mLWdldC1zZWxlY3Rpb25zIHwgXAogICAgZ3JlcCBkZWJjb25mL2Zyb250ZW5kIHwgXAogICAgYXdrICd7cHJpbnQgJDR9JykKICBzdWRvIHNoIC1jICJlY2hvICdkZWJjb25mIGRlYmNvbmYvZnJvbnRlbmQgc2VsZWN0IE5vbmludGVyYWN0aXZlJyB8IGRlYmNvbmYtc2V0LXNlbGVjdGlvbnMiCmZpOwppZiBbWyAiJChzdWRvIGRwa2cgLXMgY3VybCAyPiAvZGV2L251bGwgfCBncmVwIFN0YXR1cykiICE9ICJTdGF0dXM6IGluc3RhbGwgb2sgaW5zdGFsbGVkIiBdXTsgdGhlbgogIHN1ZG8gYXB0LWdldCBpbnN0YWxsIC15IC1xcXEgY3VybCA+IC9kZXYvbnVsbCB8fCBleGl0ICQ/CmZpOwpwcmludFByZXBlbmRlZFN0ZG91dApwcmludGYgIiVzXG4iICIkX01TR19DSEVDS0lOR19FQ09TWVNURU0iCl9HT09HTEVfQ0hST01FX0JJTkFSWV9QQVRIPSIiCmZ1bmN0aW9uIGNhY2hlR29vZ2xlQ2hyb21lQmluYXJ5UGF0aCgpIHsKICBfR09PR0xFX0NIUk9NRV9CSU5BUllfUEFUSD0iJChjb21tYW5kIC12IGdvb2dsZS1jaHJvbWUpIgogIGlmIFsgIiRfR09PR0xFX0NIUk9NRV9CSU5BUllfUEFUSCIgPSAiIiBdOyB0aGVuCiAgICBfR09PR0xFX0NIUk9NRV9CSU5BUllfUEFUSD0iJChjb21tYW5kIC12IGdvb2dsZS1jaHJvbWUtc3RhYmxlKSIKICBmaTsKfQpjYWNoZUdvb2dsZUNocm9tZUJpbmFyeVBhdGgKcHJpbnRQcmVwZW5kZWRTdGRvdXQKaWYgWyAiJF9HT09HTEVfQ0hST01FX0JJTkFSWV9QQVRIIiA9ICIiIF07IHRoZW4KICBpZiBbWyAiJCh1bmFtZSAtbSkiICE9ICJ4ODZfNjQiIF1dOyB0aGVuCiAgICBwcmludGYgIiAgJXMiICIkX01TR19VTkFCTEVfVE9fSU5TVEFMTF8zMiIgPiYyCiAgICBwcmludGYgIiBcZVs5MW1ceEUyXHg5Q1x4OTVcZVszOW1cbiIgPiYyCiAgICBleGl0IDEKICBmaTsKICBwcmludGYgIiAgJXMiICIkX01TR19JTlNUQUxMSU5HX0dPT0dMRV9DSFJPTUUiCiAgY3VybCAtc0wgaHR0cHM6Ly9kbC5nb29nbGUuY29tL2xpbnV4L2RpcmVjdC9nb29nbGUtY2hyb21lLXN0YWJsZV9jdXJyZW50X2FtZDY0LmRlYiBcCiAgICAtLW91dHB1dCBnb29nbGUtY2hyb21lLXN0YWJsZV9jdXJyZW50X2FtZDY0LmRlYgogIHN1ZG8gYXB0LWdldCBpbnN0YWxsIC15IC1xcXEgXAogICAgLi9nb29nbGUtY2hyb21lLXN0YWJsZV9jdXJyZW50X2FtZDY0LmRlYiA+IFwKICAgIC9kZXYvbnVsbAogIHN1ZG8gcm0gLWYgZ29vZ2xlLWNocm9tZS1zdGFibGVfY3VycmVudF9hbWQ2NC5kZWIKICBjYWNoZUdvb2dsZUNocm9tZUJpbmFyeVBhdGgKICBwcmludGYgIiAodiVzKSIgIiQoJF9HT09HTEVfQ0hST01FX0JJTkFSWV9QQVRIIC0tdmVyc2lvbiB8IGN1dCAtZCcgJyAtZjMpIgplbHNlCiAgcHJpbnRmICIgICVzIiAiJF9NU0dfRk9VTkRfQ0hST01FX0lOU1RBTExFRCIKICBwcmludGYgIiAodiVzKSIgIiQoJF9HT09HTEVfQ0hST01FX0JJTkFSWV9QQVRIIC0tdmVyc2lvbiB8IGN1dCAtZCcgJyAtZjMpIgpmaTsKcHJpbnRmICIgXGVbOTJtXHhFMlx4OUNceDk0XGVbMzltXG4iCkdPT0dMRV9DSFJPTUVfTUFKT1JfVkVSU0lPTj0iJCgiJF9HT09HTEVfQ0hST01FX0JJTkFSWV9QQVRIIiAtLXZlcnNpb24gfCBjdXQgLWQnICcgLWYzIHwgY3V0IC1kJy4nIC1mMSkiCmN1cmwgLXNMIGh0dHBzOi8vY2hyb21lZHJpdmVyLnN0b3JhZ2UuZ29vZ2xlYXBpcy5jb20vIFwKICAtLW91dHB1dCBjaHJvbWVkcml2ZXItdmVyc2lvbnMueG1sCkNIUk9NRURSSVZFUl9WRVJTSU9OPSQoZ3JlcCAtUG8gIjxLZXk+JEdPT0dMRV9DSFJPTUVfTUFKT1JfVkVSU0lPTlwuKlxkKlwuKlxkK1wuKlxkKlwvY2hyb21lZHJpdmVyX2xpbnV4NjRcLnppcCIgY2hyb21lZHJpdmVyLXZlcnNpb25zLnhtbCB8CiAgICBncmVwIC1QbyAiJEdPT0dMRV9DSFJPTUVfTUFKT1JfVkVSU0lPTlwuKlxkKlwuKlxkK1wuKlxkKiIgfCBcCiAgICBoZWFkIC1uIDEpCnN1ZG8gcm0gLWYgY2hyb21lZHJpdmVyLXZlcnNpb25zLnhtbAppbnN0YWxsQ2hyb21lRHJpdmVyKCkgewogIHdnZXQgLXEgImh0dHBzOi8vY2hyb21lZHJpdmVyLnN0b3JhZ2UuZ29vZ2xlYXBpcy5jb20vJENIUk9NRURSSVZFUl9WRVJTSU9OL2Nocm9tZWRyaXZlcl9saW51eDY0LnppcCIKICB1bnppcCAtcSBjaHJvbWVkcml2ZXJfbGludXg2NC56aXAKICBzdWRvIHJtIC1mIGNocm9tZWRyaXZlcl9saW51eDY0LnppcAogIGlmIFsgLWYgL3Vzci9iaW4vY2hyb21lZHJpdmVyIF07IHRoZW4KICAgIHN1ZG8gcm0gLWYgL3Vzci9iaW4vY2hyb21lZHJpdmVyCiAgZmk7CiAgc3VkbyBtdiAtZiBjaHJvbWVkcml2ZXIgL3Vzci9iaW4vY2hyb21lZHJpdmVyCn0KcHJpbnRQcmVwZW5kZWRTdGRvdXQKX0NIUk9NRURSSVZFUl9CSU5BUllfUEFUSD0iJChjb21tYW5kIC12IGNocm9tZWRyaXZlcikiCmlmIFsgIiRfQ0hST01FRFJJVkVSX0JJTkFSWV9QQVRIIiA9ICIiIF07IHRoZW4KICBwcmludGYgIiAgJXMgKHYlcykuLi4iICIkX01TR19JTlNUQUxMSU5HX0NIUk9NRURSSVZFUiIgIiRDSFJPTUVEUklWRVJfVkVSU0lPTiIKICBpbnN0YWxsQ2hyb21lRHJpdmVyCmVsc2UKICBfQ0hST01FRFJJVkVSX0lOU1RBTExFRF9WRVJTSU9OPSIkKCIkX0NIUk9NRURSSVZFUl9CSU5BUllfUEFUSCIgLS12ZXJzaW9uIHwgY3V0IC1kJyAnIC1mMikiCiAgaWYgWyAiJF9DSFJPTUVEUklWRVJfSU5TVEFMTEVEX1ZFUlNJT04iICE9ICIkQ0hST01FRFJJVkVSX1ZFUlNJT04iIF07IHRoZW4KICAgIHByaW50ZiAiICAlcyAodiVzIiAiJF9NU0dfVVBEQVRJTkdfQ0hST01FRFJJVkVSIiAiJF9DSFJPTUVEUklWRVJfSU5TVEFMTEVEX1ZFUlNJT04iCiAgICBwcmludGYgIiAtPiB2JXMpLi4uIiAiJENIUk9NRURSSVZFUl9WRVJTSU9OIgogICAgaW5zdGFsbENocm9tZURyaXZlcgogIGVsc2UKICAgIHByaW50ZiAiICAlcyAodiVzKSIgIiRfTVNHX0ZPVU5EX0NIUk9NRURSSVZFUl9JTlNUQUxMRUQiICIkX0NIUk9NRURSSVZFUl9JTlNUQUxMRURfVkVSU0lPTiIKICBmaQpmaQpwcmludGYgIiBcZVs5Mm1ceEUyXHg5Q1x4OTRcZVszOW1cbiIKaWYgWyAiJChjb21tYW5kIC12IGRlYmNvbmYtZ2V0LXNlbGVjdGlvbnMpIiAhPSAiIiBdOyB0aGVuCiAgc3VkbyBzaCAtYyAiZWNobyAnZGViY29uZiBkZWJjb25mL2Zyb250ZW5kIHNlbGVjdCAkX09SSUdJTkFMX0RFQkNPTkZfRlJPTlRFTkQnIHwgZGViY29uZi1zZXQtc2VsZWN0aW9ucyIKZmk7Cg==' | base64 -d)
