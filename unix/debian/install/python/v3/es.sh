#!/bin/bash
H='IyEvYmluL2Jhc2gKIyAtKi0gRU5DT0RJTkc6IFVURi04IC0qLQpfU0NSSVBUX0ZJTEVOQU1FPWVzLnNoCl9NU0dfRVhFQ1VURURfQVNfU1VQRVJVU0VSPSJFc3RlIHNjcmlwdCBuZWNlc2l0YSBzZXIgZWplY3V0YWRvIGNvbW8gc3VwZXJ1c3VhcmlvLiIKX01TR19TRVRUSU5HX1VQX1BZM19FQ09TWVNURU09IkNvbmZpZ3VyYW5kbyBlY29zaXN0ZW1hIFB5dGhvbjMuLi4iCl9NU0dfSU5TVEFMTElOR19CQVNFX1BBQ0tBR0U9Ikluc3RhbGFuZG8gcGFxdWV0ZSBiYXNlIgpfTVNHX0ZPVU5EX1BZM19JTlNUQUxMRUQ9IkVuY29udHJhZG8gUHl0aG9uMyBpbnN0YWxhZG8gZW4gZWwgc2lzdGVtYSIKX01TR19DSEVDS0lOR19BRERJVElPTkFMX1BZM19QQUNLQUdFUz0iQ29tcHJvYmFuZG8gcGFxdWV0ZXMgZGUgUHl0aG9uIGFkaWNpb25hbGVzLi4uIgpfTVNHX1VQREFUSU5HX0dMT0JBTF9QWTNfTElCUkFSSUVTPSJBY3R1YWxpemFuZG8gYmlibGlvdGVjYXMgZGUgUHl0aG9uMyBnbG9iYWxlcy4uLiIKaWYgISAocmV0dXJuIDAgMj4vZGV2L251bGwpOyB0aGVuCiAgaWYgW1sgJCgvdXNyL2Jpbi9pZCAtdSkgLW5lIDAgXV07IHRoZW4KICAgIHByaW50ZiAiJXNcbiIgIiRfTVNHX0VYRUNVVEVEX0FTX1NVUEVSVVNFUiIgPiYyCiAgICBleGl0IDEKICBmaTsKZmk7Cl9VUEdSQURFX1BZM19HTE9CQUxfTElCUz0xCklOREVOVF9TVFJJTkc9IiIKZm9yIGFyZyBpbiAiJEAiOyBkbwogIGNhc2UgJGFyZyBpbgogICAgLS1uby11cGdyYWRlLXB5My1nbG9iYWwtbGlicykKICAgIF9VUEdSQURFX1BZM19HTE9CQUxfTElCUz0wCiAgICBzaGlmdAogICAgOzsKICAgIC0taW5kZW50KQogICAgc2hpZnQKICAgIElOREVOVF9TVFJJTkc9JDEKICAgIHNoaWZ0CiAgICA7OwogIGVzYWMKZG9uZQpmdW5jdGlvbiBwcmludEluZGVudCgpIHsKICBwcmludGYgIiVzIiAiJElOREVOVF9TVFJJTkciCn0KaWYgWyAiJChjb21tYW5kIC12IHBhY21hbikiID0gIiIgXTsgdGhlbgogIGlmIFsgLXogIiRfU0NSSVBUX0ZJTEVOQU1FIiBdOyB0aGVuCiAgICBmaWxlcGF0aD0ic3JjL3VuaXgvXy9kb3dubG9hZC9wYWNhcHQvbWFpbi5zaCIKICAgIGJhc2ggIiRmaWxlcGF0aCIKICBlbHNlCiAgICB1cmw9Imh0dHBzOi8vbW9uZGVqYS5naXRodWIuaW8vc2hyZWFkL3VuaXgvXy9kb3dubG9hZC9wYWNhcHQvJF9TQ1JJUFRfRklMRU5BTUUiCiAgICBjdXJsIC1zTCAiJHVybCIgfCBzdWRvIGJhc2ggLSA+IC9kZXYvbnVsbAogIGZpOwpmaTsKSU5TVEFMTEFUSU9OX0RFUEVOREVOQ0lFUz0oCiAgImRlYmNvbmYtdXRpbHMiCikKZm9yIERFUCBpbiAiJHtJTlNUQUxMQVRJT05fREVQRU5ERU5DSUVTW0BdfSI7IGRvCiAgaWYgW1sgIiQocGFjbWFuIC1RaSAiJERFUCIgMj4gL2Rldi9udWxsIHwgZ3JlcCBTdGF0dXMpIiAhPSAiU3RhdHVzOiBpbnN0YWxsIG9rIGluc3RhbGxlZCIgXV07IHRoZW4KICAgIHN1ZG8gcGFjbWFuIC1TIC0tIC15ICIkREVQIiA+IC9kZXYvbnVsbCB8fCBleGl0ICQ/CiAgZmk7CmRvbmU7CmlmIFsgIiQoY29tbWFuZCAtdiBkZWJjb25mLWdldC1zZWxlY3Rpb25zKSIgIT0gIiIgXTsgdGhlbgogIF9PUklHSU5BTF9ERUJDT05GX0ZST05URU5EPSQoCiAgICBzdWRvIGRlYmNvbmYtZ2V0LXNlbGVjdGlvbnMgfCBcCiAgICBncmVwIGRlYmNvbmYvZnJvbnRlbmQgfCBcCiAgICBhd2sgJ3twcmludCAkNH0nKQogIHN1ZG8gc2ggLWMgImVjaG8gJ2RlYmNvbmYgZGViY29uZi9mcm9udGVuZCBzZWxlY3QgTm9uaW50ZXJhY3RpdmUnIHwgZGViY29uZi1zZXQtc2VsZWN0aW9ucyIKZmk7CmlmIFsgLXogIiRVTklYX0RJU1RSTyIgXSB8fCBbIC16ICIkVU5JWF9ESVNUUk9fVkVSU0lPTl9OVU1CRVJfTUFKT1IiIF07IHRoZW4KICBzb3VyY2UgPChjdXJsIC1zTCBodHRwczovL21vbmRlamEuZ2l0aHViLmlvL3NocmVhZC91bml4L18vdXRpbC9nZXQtZGlzdHJvL2VuLnNoKQpmaTsKZnVuY3Rpb24gaW5zdGFsbE1haW5QeXRob24zQXB0UGFja2FnZSB7CiAgcHJpbnRJbmRlbnQKICBQWTNfQklOQVJZX0ZJTEVQQVRIPSIkKGNvbW1hbmQgLXYgcHl0aG9uMykiCiAgaWYgWyAiJFBZM19CSU5BUllfRklMRVBBVEgiID0gIiIgXTsgdGhlbgogICAgX1BZVEhPTl9TVEFCTEVfUEFDS0FHRV9WRVJTSU9OPSQoCiAgICAgIGFwdC1jYWNoZSBwb2xpY3kgcHl0aG9uMy1kZXYgfCBncmVwIC1QbyAnKFxkK1wuKStcZCsnIHwgaGVhZCAtbiAxKQogICAgcHJpbnRmICIgICVzIiAiJF9NU0dfSU5TVEFMTElOR19CQVNFX1BBQ0tBR0UiCiAgICBpZiBbICIkX1BZVEhPTl9TVEFCTEVfUEFDS0FHRV9WRVJTSU9OIiAhPSAiIiBdOyB0aGVuCiAgCSAgcHJpbnRmICIgKHYlcykiICIkX1BZVEhPTl9TVEFCTEVfUEFDS0FHRV9WRVJTSU9OIgogICAgZmk7CiAgICBwcmludGYgIi4uLiIKICAJc3VkbyBhcHQtZ2V0IGluc3RhbGwgLXkgLXFxcSBweXRob24zLWRldiA+IC9kZXYvbnVsbAogICAgX1BZVEhPTl9WRVJTSU9OPSIkKCIkUFkzX0JJTkFSWV9GSUxFUEFUSCIgLS12ZXJzaW9uIHwgY3V0IC1jNy0xMiB8IHRyIC1kICcgJykiCiAgZWxzZQogICAgX1BZVEhPTl9WRVJTSU9OPSIkKCIkUFkzX0JJTkFSWV9GSUxFUEFUSCIgLS12ZXJzaW9uIHwgY3V0IC1jNy0xMiB8IHRyIC1kICcgJykiCiAgCXByaW50ZiAiICAlcyAodiVzKSIgIiRfTVNHX0ZPVU5EX1BZM19JTlNUQUxMRUQiICIkX1BZVEhPTl9WRVJTSU9OIgogIGZpOwogIHByaW50ZiAiIFxlWzkybVx4RTJceDlDXHg5NFxlWzM5bVxuIgp9CmZ1bmN0aW9uIGRpc2NvdmVySW5zdGFsbGF0aW9uQXB0UGFja2FnZXMgewogIElOU1RBTExBVElPTl9QQUNLQUdFUz0oCiAgICAicHl0aG9uMy1kZXYiCiAgICAicHl0aG9uMy1waXAiCiAgICAicHl0aG9uMy1zZXR1cHRvb2xzIgogICAgInB5dGhvbjMtdGVzdHJlc291cmNlcyIKICAgICJsaWJ4bWwyLXV0aWxzIgogICAgInB5dGhvbi1seG1sIgogICAgInB5dGhvbjMtbHhtbCIKICAgICJweXRob24tbnVtcHkiCiAgICAicHl0aG9uMy1udW1weSIKICApCiAgaWYgWyAiJFVOSVhfRElTVFJPIiA9ICJ1YnVudHUiIF07IHRoZW4KICAgIGlmIFsgIiRVTklYX0RJU1RST19WRVJTSU9OX05VTUJFUl9NQUpPUiIgLWdlIDE4IF07IHRoZW4KICAgICAgSU5TVEFMTEFUSU9OX1BBQ0tBR0VTKz0oCiAgICAgICAgInB5dGhvbjMtZGlzdHV0aWxzIgogICAgICApCiAgICBmaTsKICAgIGlmIFsgIiRVTklYX0RJU1RST19WRVJTSU9OX05VTUJFUl9NQUpPUiIgLWx0IDIwIF07IHRoZW4KICAgICAgSU5TVEFMTEFUSU9OX1BBQ0tBR0VTKz0oCiAgICAgICAgInB5dGhvbi1waXAiCiAgICAgICAgInB5dGhvbi1kZXYiCiAgICAgICkKICAgIGVsc2UKICAgICAgSU5TVEFMTEFUSU9OX1BBQ0tBR0VTKz0oCiAgICAgICAgInB5dGhvbi1kZXYtaXMtcHl0aG9uMiIKICAgICAgKQogICAgZmk7CiAgZmk7Cn0KZnVuY3Rpb24gaW5zdGFsbFB5dGhvbkFkZGl0aW9uYWxBcHRQYWNrYWdlcyB7CiAgcHJpbnRJbmRlbnQKICBwcmludGYgIiAgJXNcbiIgIiRfTVNHX0NIRUNLSU5HX0FERElUSU9OQUxfUFkzX1BBQ0tBR0VTIgogIGZvciBERVAgaW4gIiR7SU5TVEFMTEFUSU9OX1BBQ0tBR0VTW0BdfSI7IGRvCiAgICBwcmludEluZGVudAogICAgcHJpbnRmICIgICAgJXMiICIkREVQIgogICAgaWYgW1sgIiQoc3VkbyBwYWNtYW4gLVFpICIkREVQIiAyPiAvZGV2L251bGwgfCBncmVwIFN0YXR1cykiICE9ICJTdGF0dXM6IGluc3RhbGwgb2sgaW5zdGFsbGVkIiBdXTsgdGhlbgogICAgICBzdWRvIHBhY21hbiAtUyAtLSAteSAiJERFUCIgPiAvZGV2L251bGwgfHwgZXhpdCAkPwogICAgZmk7CiAgICBfREVQX1ZFUlNJT049JChhcHQtY2FjaGUgcG9saWN5ICIkREVQIiB8IGdyZXAgLVBvICIoXGQrXC4pK1xkKyIgfCBoZWFkIC1uIDEpCiAgICBpZiBbICIkX0RFUF9WRVJTSU9OIiAhPSAiIiBdOyB0aGVuCiAgICAgIHByaW50ZiAiICh2JXMpIiAiJF9ERVBfVkVSU0lPTiIKICAgIGZpOwogICAgcHJpbnRmICIgXGVbOTJtXHhFMlx4OUNceDk0XGVbMzltXG4iCiAgZG9uZQp9CmZ1bmN0aW9uIGNvbmZpZ3VyZVBJUCB7CiAgVVNFUl9IT01FPSIkKGdldGVudCBwYXNzd2QgIiRTVURPX1VTRVIiIHwgY3V0IC1kOiAtZjYpIgogIGlmIFsgLWQgIiRIT01FLy5jYWNoZS9waXAvIiBdOyB0aGVuCiAgICBfUElQX0NBQ0hFX0ZJTEVQQVRIPSIkVVNFUl9IT01FLy5jYWNoZS9waXAvIgogICAgaWYgWyAtZiAiJF9QSVBfQ0FDSEVfRklMRVBBVEgiIF07IHRoZW4KICAgICAgc3VkbyBjaG93biAtUiAiJFNVRE9fVVNFUiIgIiRfUElQX0NBQ0hFX0ZJTEVQQVRIIgogICAgZmk7CiAgZmk7CiAgaWYgWyAiJChjb21tYW5kIC12IHB5dGhvbjIpIiAhPSAiIiBdOyB0aGVuCiAgICBzdWRvIHB5dGhvbjIgLW0gcGlwIGluc3RhbGwgLXFxIHBpcD09MjAuMC4yCiAgZmk7Cn0KZnVuY3Rpb24gdXBncmFkZUdsb2JhbExpYnJhcmllcyB7CiAgaWYgWyAkX1VQR1JBREVfUFkzX0dMT0JBTF9MSUJTIC1lcSAxIF07IHRoZW4KICAgIHByaW50SW5kZW50CiAgICBwcmludGYgIiAgJXNcbiIgIiRfTVNHX1VQREFUSU5HX0dMT0JBTF9QWTNfTElCUkFSSUVTIgogICAgR0xPQkFMX1JFQ09NTUVOREVEX0xJQlJBUklFUz0oCiAgICAgICJwaXAiCiAgICAgICJ2aXJ0dWFsZW52IgogICAgICAic2V0dXB0b29scyIKICAgICAgInRlc3RyZXNvdXJjZXMiCiAgICApCiAgICBmb3IgTElCIGluICIke0dMT0JBTF9SRUNPTU1FTkRFRF9MSUJSQVJJRVNbQF19IjsgZG8KICAgICAgcHJpbnRJbmRlbnQKICAgICAgcHJpbnRmICIgICAgJXMiICIkTElCIgogICAgICBfR0VUX1ZFUlNJT05fRVhFQ19TVFI9IgppbXBvcnQgc3lzOwp0cnk6IGltcG9ydCAkTElCIGFzIGw7CmV4Y2VwdCBJbXBvcnRFcnJvciBhcyBlcnI6IHN5cy5leGl0KDc3Nyk7CnByaW50KGwuX192ZXJzaW9uX18gaWYgaXNpbnN0YW5jZShsLl9fdmVyc2lvbl9fLCBzdHIpIGVsc2UgXAogICcuJy5qb2luKFtzdHIodikgZm9yIHYgaW4gbC5fX3ZlcnNpb25fX11bOjNdKSwgZW5kPScnKTsKICAiCiAgICAgIF9MSUJfTE9DQUxfVkVSU0lPTj0iJCgiJFBZM19CSU5BUllfRklMRVBBVEgiIC1jICIkX0dFVF9WRVJTSU9OX0VYRUNfU1RSIikiCiAgICAgIF9MSUJfTE9DQUxfVkVSU0lPTl9FWElUX0NPREU9JD8KICAgICAgaWYgWyAkX0xJQl9MT0NBTF9WRVJTSU9OX0VYSVRfQ09ERSAtZXEgNzc3IF07IHRoZW4KICAgICAgCXN1ZG8gLUggIiRQWTNfQklOQVJZX0ZJTEVQQVRIIiAtbSBwaXAgaW5zdGFsbCAtVSAtLXF1aWV0ICIkTElCIgogICAgICBlbHNlCiAgICAgICAgcHJpbnRmICIgKCIKICAgICAgICBpZiBbICIkX0xJQl9MT0NBTF9WRVJTSU9OIiAhPSAiIiBdOyB0aGVuCiAgICAgICAgICBwcmludGYgInYlcyIgIiRfTElCX0xPQ0FMX1ZFUlNJT04iCiAgICAgICAgZmk7CiAgICAgICAgX0xJQl9MQVNUX1BZUElfVkVSU0lPTj0kKAogICAgICAgICAgeG1sbGludCAtLWh0bWwgLS14cGF0aCAiLy9hW2xhc3QoKV0vdGV4dCgpICIgXAogICAgICAgICAgICA8KGN1cmwgLXNMICJodHRwczovL3B5cGkub3JnL3NpbXBsZS8kTElCLyIpIHwgXAogICAgICAgICAgICBncmVwIC1QbyAiKFxkK1wuKStcZCtcdyoiKQogICAgICAgICAgaWYgWyAiJF9MSUJfTEFTVF9QWVBJX1ZFUlNJT04iICE9ICIkX0xJQl9MT0NBTF9WRVJTSU9OIiBdOyB0aGVuCiAgICAgICAgICAgIGlmIFsgIiRfTElCX0xPQ0FMX1ZFUlNJT04iICE9ICIiIF07IHRoZW4KICAgICAgICAgICAgICBwcmludGYgIiAtPiAiCiAgICAgICAgICAgIGZpOwogICAgICAgICAgICBwcmludGYgInYlcykuLi4iICIkX0xJQl9MQVNUX1BZUElfVkVSU0lPTiIKICAgICAgICAgICAgX2xpYl9lcXVhbF92ZXJzaW9uPSIkTElCPT0kX0xJQl9MQVNUX1BZUElfVkVSU0lPTiIKICAgICAgICAgICAgc3VkbyAtSCAiJFBZM19CSU5BUllfRklMRVBBVEgiIC1tIHBpcCBpbnN0YWxsIC1VIC1xcSAiJF9saWJfZXF1YWxfdmVyc2lvbiIKICAgICAgICAgIGVsc2UKICAgICAgICAgICAgcHJpbnRmICIpIgogICAgICAgICAgZmk7CiAgICAgIGZpOwogICAgICBwcmludGYgIiBcZVs5Mm1ceEUyXHg5Q1x4OTRcZVszOW1cbiIKICAgIGRvbmUKICBmaTsKfQpmdW5jdGlvbiBtYWluIHsKICBwcmludEluZGVudAogIHByaW50ZiAiJXNcbiIgIiRfTVNHX1NFVFRJTkdfVVBfUFkzX0VDT1NZU1RFTSIKICBpbnN0YWxsTWFpblB5dGhvbjNBcHRQYWNrYWdlCiAgZGlzY292ZXJJbnN0YWxsYXRpb25BcHRQYWNrYWdlcwogIGluc3RhbGxQeXRob25BZGRpdGlvbmFsQXB0UGFja2FnZXMKICBjb25maWd1cmVQSVAKICB1cGdyYWRlR2xvYmFsTGlicmFyaWVzCn0KZnVuY3Rpb24gZXhwb3J0VmFyaWFibGVzIHsKICBkaXNjb3Zlckluc3RhbGxhdGlvbkFwdFBhY2thZ2VzCiAgZXhwb3J0IElOU1RBTExBVElPTl9QQUNLQUdFUwp9CmlmIChyZXR1cm4gMCAyPi9kZXYvbnVsbCk7IHRoZW4KICBleHBvcnRWYXJpYWJsZXMKZWxzZQogIG1haW4KZmk7CmlmIFsgIiQoY29tbWFuZCAtdiBkZWJjb25mLWdldC1zZWxlY3Rpb25zKSIgIT0gIiIgXTsgdGhlbgogIHN1ZG8gc2ggLWMgImVjaG8gJ2RlYmNvbmYgZGViY29uZi9mcm9udGVuZCBzZWxlY3QgJF9PUklHSU5BTF9ERUJDT05GX0ZST05URU5EJyB8IGRlYmNvbmYtc2V0LXNlbGVjdGlvbnMiCmZpOwo='
if (return 0 2>/dev/null); then
  source <(printf "%s" "$H" | base64 -d)
else
  echo "$(echo "$H" | base64 -d)" | bash -s -- "$@"
fi;
