#!/bin/bash
H='IyEvYmluL2Jhc2gKIyAtKi0gRU5DT0RJTkc6IFVURi04IC0qLQpfU0NSSVBUX0ZJTEVOQU1FPWVuLnNoCiMhL2Jpbi9iYXNoCl9NU0dfU0VUVElOR19VUF9QWTNfRUNPU1lTVEVNPSJTZXR0aW5nIHVwIFB5dGhvbjMgZWNvc3lzdGVtLi4uIgpfTVNHX0lOU1RBTExJTkdfQkFTRV9QQUNLQUdFPSJJbnN0YWxsaW5nIGJhc2UgcGFja2FnZSIKX01TR19GT1VORF9QWTNfSU5TVEFMTEVEPSJGb3VuZCBQeXRob24zIGluc3RhbGxlZCBpbiB0aGUgc3lzdGVtIgpfTVNHX0NIRUNLSU5HX0FERElUSU9OQUxfUFkzX1BBQ0tBR0VTPSJDaGVja2luZyBhZGRpdGlvbmFsIFB5dGhvbiBwYWNrYWdlcy4uLiIKX01TR19VUERBVElOR19HTE9CQUxfUFkzX0xJQlJBUklFUz0iVXBkYXRpbmcgZ2xvYmFsIFB5dGhvbjMgbGlicmFyaWVzLi4uIgpJTkRFTlRfU1RSSU5HPSIiCl9VUEdSQURFX1BZM19HTE9CQUxfTElCUz0xCl9TS0lQX1BBQ0tBR0VTPSIiCmZ1bmN0aW9uIHVzYWdlIHsKICAgIGNhdCA8PEhFTFBfVVNBR0UKVXNhZ2U6IHVuaXgvZGViaWFuL2luc3RhbGwvcHl0aG9uL3YzLyRfU0NSSVBUX0ZJTEVOQU1FIFstaF0gWy1pIFNUUklOR10gWy0tbm8tdXBncmFkZS1weTMtZ2xvYmFsLWxpYnNdCgogIEluc3RhbGxzIHNvbWUgUHl0aG9uMiBhbmQgUHl0aG9uMyBBUFQgcGFja2FnZXMgaWYgYXJlIG5vdCBpbnN0YWxsZWQ6CgogIC0gY3VybAogIC0gcHl0aG9uMy1kZXYKICAtIHB5dGhvbjMtcGlwCiAgLSBweXRob24zLXNldHVwdG9vbHMKICAtIHB5dGhvbjMtdGVzdHJlc291cmNlcwogIC0gbGlieG1sMi11dGlscwogIC0gcHl0aG9uLWx4bWwKICAtIHB5dGhvbjMtbHhtbAogIC0gcHl0aG9uLW51bXB5CiAgLSBweXRob24zLW51bXB5CgogICsgSW4gVWJ1bnR1ID49IDE4IGluc3RhbGxzIGFsc286CiAgICAtIHB5dGhvbjMtZGlzdHV0aWxzCiAgKyBJbiBVYnVudHUgPCAyMCBpbnN0YWxscyBhbHNvOgogICAgLSBweXRob24tcGlwCiAgICAtIHB5dGhvbi1kZXYKICArIEluIFVidW50dSA+PSAyMCBpbnN0YWxscyBhbHNvOgogICAgLSBweXRob24tZGV2LWlzLXB5dGhvbjIKCiAgT3B0aW9uYWxseSwgaW5zdGFsbHMgb3IgdXBncmFkZSB1c2luZyBQSVAgc29tZSBQeXRob24zIHBhY2thZ2VzIGdsb2JhbGx5OgoKICAtIHBpcAogIC0gdmlydHVhbGVudgogIC0gc2V0dXB0b29scwogIC0gdGVzdHJlc291cmNlcwoKT3B0aW9uczoKICAtaCwgLS1oZWxwICAgICAgICAgICAgICAgICAgICAgICAgU2hvdyB0aGlzIGhlbHAgbWVzc2FnZSBhbmQgZXhpdC4KICAtaSBTVFJJTkcsIC0taW5kZW50IFNUUklORyAgICAgICAgRWFjaCBsaW5lIG9mIHRoZSBzY3JpcHQgb3V0cHV0IHdpbGwgYmUgcHJlY2VkZWQgd2l0aCB0aGUgc3RyaW5nIGRlZmluZWQgaW4gdGhpcyBwYXJhbWV0ZXIuCiAgLS1uby11cGdyYWRlLXB5My1nbG9iYWwtbGlicyAgICAgIElnbm9yZXMgdGhlIGluc3RhbGxhdGlvbiBvciB1cGdyYWRlIG9mIHRoZSBnbG9iYWwgUHl0aG9uMyBwYWNrYWdlcyB1c2luZyBQSVAuCiAgLS1za2lwLXBhY2thZ2VzICAgICAgICAgICAgICAgICAgIFBhc3MgYSBjb21tYSBzZXBhcmF0ZWQgbGlzdCBvZiBwYWNrYWdlcyB0byBza2lwIHRoZWlyIGluc3RhbGxhdGlvbnMuCgpIRUxQX1VTQUdFCiAgICBleGl0IDEKfQpmb3IgYXJnIGluICIkQCI7IGRvCiAgY2FzZSAkYXJnIGluCiAgICAtaXwtLWluZGVudCkKICAgIElOREVOVF9TVFJJTkc9IiQyIgogICAgc2hpZnQgMgogICAgOzsKICAgIC1ofC0taGVscCkKICAgIHNoaWZ0CiAgICB1c2FnZQogICAgOzsgICAgCiAgICAtLW5vLXVwZ3JhZGUtcHkzLWdsb2JhbC1saWJzKQogICAgX1VQR1JBREVfUFkzX0dMT0JBTF9MSUJTPTAKICAgIHNoaWZ0CiAgICA7OwogICAgLS1za2lwLXBhY2thZ2VzKQogICAgc2hpZnQKICAgIF9TS0lQX1BBQ0tBR0VTPSQxCiAgICBzaGlmdAogICAgOzsKICBlc2FjCmRvbmUKZnVuY3Rpb24gcHJpbnRJbmRlbnQoKSB7CiAgcHJpbnRmICIlcyIgIiRJTkRFTlRfU1RSSU5HIgp9CmZ1bmN0aW9uIGluc3RhbGxQYWNtYW5JZk5vdEluc3RhbGxlZCgpIHsKICBpZiBbICIkKGNvbW1hbmQgLXYgcGFjbWFuKSIgPSAiIiBdOyB0aGVuCiAgICB1cmw9Imh0dHBzOi8vbW9uZGVqYS5naXRodWIuaW8vc2hyZWFkL3VuaXgvXy9kb3dubG9hZC9wYWNhcHQvJF9TQ1JJUFRfRklMRU5BTUUiCiAgICBjdXJsIC1zTCAiJHVybCIgfCBzdWRvIGJhc2ggLSA+IC9kZXYvbnVsbAogIGZpOwp9CmZ1bmN0aW9uIGdldFVuaXhEaXN0cm8oKSB7CiAgaWYgWyAteiAiJFVOSVhfRElTVFJPIiBdIHx8IFsgLXogIiRVTklYX0RJU1RST19WRVJTSU9OX05VTUJFUl9NQUpPUiIgXTsgdGhlbgogICAgc291cmNlIDwoY3VybCAtc0wgaHR0cHM6Ly9tb25kZWphLmdpdGh1Yi5pby9zaHJlYWQvdW5peC9fL3V0aWwvZ2V0LWRpc3Ryby9lbi5zaCkKICBmaTsKfQpmdW5jdGlvbiBpbnN0YWxsTWFpblB5dGhvbjNBcHRQYWNrYWdlIHsKICBwcmludEluZGVudAogIFBZM19CSU5BUllfRklMRVBBVEg9IiQoY29tbWFuZCAtdiBweXRob24zKSIKICBpZiBbICIkUFkzX0JJTkFSWV9GSUxFUEFUSCIgPSAiIiBdOyB0aGVuCiAgICBfUFlUSE9OX1NUQUJMRV9QQUNLQUdFX1ZFUlNJT049JCgKICAgICAgcGFjbWFuIC1RaSBweXRob24zLWRldiB8IGdyZXAgVmVyc2lvbjogfCBjdXQgLWQnICcgLWYyKQogICAgcHJpbnRmICIgICVzIiAiJF9NU0dfSU5TVEFMTElOR19CQVNFX1BBQ0tBR0UiCiAgICBpZiBbICIkX1BZVEhPTl9TVEFCTEVfUEFDS0FHRV9WRVJTSU9OIiAhPSAiIiBdOyB0aGVuCiAgCSAgcHJpbnRmICIgKHYlcykiICIkX1BZVEhPTl9TVEFCTEVfUEFDS0FHRV9WRVJTSU9OIgogICAgZmk7CiAgICBwcmludGYgIi4uLiIKICAgIHN1ZG8gcGFjbWFuIC1TIC0tIC15IHB5dGhvbjMtZGV2ID4gL2Rldi9udWxsIHx8IGV4aXQgJD8KICAgIF9QWVRIT05fVkVSU0lPTj0iJCgiJFBZM19CSU5BUllfRklMRVBBVEgiIC0tdmVyc2lvbiB8IGN1dCAtYzctMTIgfCB0ciAtZCAnICcpIgogIGVsc2UKICAgIF9QWVRIT05fVkVSU0lPTj0iJCgiJFBZM19CSU5BUllfRklMRVBBVEgiIC0tdmVyc2lvbiB8IGN1dCAtYzctMTIgfCB0ciAtZCAnICcpIgogIAlwcmludGYgIiAgJXMgKHYlcykiICIkX01TR19GT1VORF9QWTNfSU5TVEFMTEVEIiAiJF9QWVRIT05fVkVSU0lPTiIKICBmaTsKICBwcmludGYgIiBcZVs5Mm1ceEUyXHg5Q1x4OTRcZVszOW1cbiIKfQpmdW5jdGlvbiBkaXNjb3Zlckluc3RhbGxhdGlvbkFwdFBhY2thZ2VzIHsKICBJTlNUQUxMQVRJT05fUEFDS0FHRVM9KAogICAgInB5dGhvbjMtZGV2IgogICAgInB5dGhvbjMtcGlwIgogICAgInB5dGhvbjMtc2V0dXB0b29scyIKICAgICJweXRob24zLXRlc3RyZXNvdXJjZXMiCiAgICAibGlieG1sMi11dGlscyIKICAgICJweXRob24tbHhtbCIKICAgICJweXRob24zLWx4bWwiCiAgICAicHl0aG9uLW51bXB5IgogICAgInB5dGhvbjMtbnVtcHkiCiAgKQogIGlmIFsgIiRVTklYX0RJU1RSTyIgPSAidWJ1bnR1IiBdOyB0aGVuCiAgICBpZiBbICIkVU5JWF9ESVNUUk9fVkVSU0lPTl9OVU1CRVJfTUFKT1IiIC1nZSAxOCBdOyB0aGVuCiAgICAgIElOU1RBTExBVElPTl9QQUNLQUdFUys9KAogICAgICAgICJweXRob24zLWRpc3R1dGlscyIKICAgICAgKQogICAgZmk7CiAgICBpZiBbICIkVU5JWF9ESVNUUk9fVkVSU0lPTl9OVU1CRVJfTUFKT1IiIC1sdCAyMCBdOyB0aGVuCiAgICAgIElOU1RBTExBVElPTl9QQUNLQUdFUys9KAogICAgICAgICJweXRob24tcGlwIgogICAgICAgICJweXRob24tZGV2IgogICAgICApCiAgICBlbHNlCiAgICAgIElOU1RBTExBVElPTl9QQUNLQUdFUys9KAogICAgICAgICJweXRob24tZGV2LWlzLXB5dGhvbjIiCiAgICAgICkKICAgIGZpOwogIGZpOwp9CmZ1bmN0aW9uIGluc3RhbGxQeXRob25BZGRpdGlvbmFsQXB0UGFja2FnZXMgewogIHByaW50SW5kZW50CiAgcHJpbnRmICIgICVzXG4iICIkX01TR19DSEVDS0lOR19BRERJVElPTkFMX1BZM19QQUNLQUdFUyIKICBmb3IgREVQIGluICIke0lOU1RBTExBVElPTl9QQUNLQUdFU1tAXX0iOyBkbwogICAgaWYgWyAtbiAiJF9TS0lQX1BBQ0tBR0VTIiBdOyB0aGVuCiAgICAgIGlmIGVjaG8gIiRfU0tJUF9QQUNLQUdFUyIgfCBncmVwIC1xICIkREVQIjsgdGhlbgogICAgICAgIGNvbnRpbnVlCiAgICAgIGZpOwogICAgZmk7CiAgICBwcmludEluZGVudAogICAgcHJpbnRmICIgICAgJXMiICIkREVQIgogICAgaWYgW1sgIiQoc3VkbyBwYWNtYW4gLVFpICIkREVQIiAyPiAvZGV2L251bGwgfCBncmVwIFN0YXR1cykiICE9ICJTdGF0dXM6IGluc3RhbGwgb2sgaW5zdGFsbGVkIiBdXTsgdGhlbgogICAgICBzdWRvIHBhY21hbiAtUyAtLSAteSAiJERFUCIgPiAvZGV2L251bGwgfHwgZXhpdCAkPwogICAgZmk7CiAgICBfREVQX1ZFUlNJT049JChhcHQtY2FjaGUgcG9saWN5ICIkREVQIiB8IGdyZXAgLVBvICIoXGQrXC4pK1xkKyIgfCBoZWFkIC1uIDEpCiAgICBpZiBbICIkX0RFUF9WRVJTSU9OIiAhPSAiIiBdOyB0aGVuCiAgICAgIHByaW50ZiAiICh2JXMpIiAiJF9ERVBfVkVSU0lPTiIKICAgIGZpOwogICAgcHJpbnRmICIgXGVbOTJtXHhFMlx4OUNceDk0XGVbMzltXG4iCiAgZG9uZQp9CmZ1bmN0aW9uIGNvbmZpZ3VyZVBJUCB7CiAgVVNFUl9IT01FPSIkKGdldGVudCBwYXNzd2QgIiRTVURPX1VTRVIiIHwgY3V0IC1kOiAtZjYpIgogIGlmIFsgLWQgIiRIT01FLy5jYWNoZS9waXAvIiBdOyB0aGVuCiAgICBfUElQX0NBQ0hFX0ZJTEVQQVRIPSIkVVNFUl9IT01FLy5jYWNoZS9waXAvIgogICAgaWYgWyAtZiAiJF9QSVBfQ0FDSEVfRklMRVBBVEgiIF07IHRoZW4KICAgICAgc3VkbyBjaG93biAtUiAiJFNVRE9fVVNFUiIgIiRfUElQX0NBQ0hFX0ZJTEVQQVRIIgogICAgZmk7CiAgZmk7CiAgaWYgWyAiJChjb21tYW5kIC12IHB5dGhvbjIpIiAhPSAiIiBdOyB0aGVuCiAgICBzdWRvIHB5dGhvbjIgLW0gcGlwIGluc3RhbGwgLXFxIHBpcD09MjAuMC4yCiAgZmk7Cn0KZnVuY3Rpb24gdXBncmFkZUdsb2JhbExpYnJhcmllcyB7CiAgaWYgWyAkX1VQR1JBREVfUFkzX0dMT0JBTF9MSUJTIC1lcSAxIF07IHRoZW4KICAgIHByaW50SW5kZW50CiAgICBwcmludGYgIiAgJXNcbiIgIiRfTVNHX1VQREFUSU5HX0dMT0JBTF9QWTNfTElCUkFSSUVTIgogICAgR0xPQkFMX1JFQ09NTUVOREVEX0xJQlJBUklFUz0oCiAgICAgICJwaXAiCiAgICAgICJ2aXJ0dWFsZW52IgogICAgICAic2V0dXB0b29scyIKICAgICAgInRlc3RyZXNvdXJjZXMiCiAgICApCiAgICBmb3IgTElCIGluICIke0dMT0JBTF9SRUNPTU1FTkRFRF9MSUJSQVJJRVNbQF19IjsgZG8KICAgICAgcHJpbnRJbmRlbnQKICAgICAgcHJpbnRmICIgICAgJXMiICIkTElCIgogICAgICBfR0VUX1ZFUlNJT05fRVhFQ19TVFI9IgppbXBvcnQgc3lzOwp0cnk6IGltcG9ydCAkTElCIGFzIGw7CmV4Y2VwdCBJbXBvcnRFcnJvciBhcyBlcnI6IHN5cy5leGl0KDc3Nyk7CnByaW50KGwuX192ZXJzaW9uX18gaWYgaXNpbnN0YW5jZShsLl9fdmVyc2lvbl9fLCBzdHIpIGVsc2UgICAnLicuam9pbihbc3RyKHYpIGZvciB2IGluIGwuX192ZXJzaW9uX19dWzozXSksIGVuZD0nJyk7CiAgIgogICAgICBfTElCX0xPQ0FMX1ZFUlNJT049IiQoIiRQWTNfQklOQVJZX0ZJTEVQQVRIIiAtYyAiJF9HRVRfVkVSU0lPTl9FWEVDX1NUUiIpIgogICAgICBfTElCX0xPQ0FMX1ZFUlNJT05fRVhJVF9DT0RFPSQ/CiAgICAgIGlmIFsgJF9MSUJfTE9DQUxfVkVSU0lPTl9FWElUX0NPREUgLWVxIDc3NyBdOyB0aGVuCiAgICAgIAlzdWRvIC1IICIkUFkzX0JJTkFSWV9GSUxFUEFUSCIgLW0gcGlwIGluc3RhbGwgLVUgLS1xdWlldCAiJExJQiIKICAgICAgZWxzZQogICAgICAgIHByaW50ZiAiICgiCiAgICAgICAgaWYgWyAiJF9MSUJfTE9DQUxfVkVSU0lPTiIgIT0gIiIgXTsgdGhlbgogICAgICAgICAgcHJpbnRmICJ2JXMiICIkX0xJQl9MT0NBTF9WRVJTSU9OIgogICAgICAgIGZpOwogICAgICAgIF9MSUJfTEFTVF9QWVBJX1ZFUlNJT049JCgKICAgICAgICAgIHhtbGxpbnQgLS1odG1sIC0teHBhdGggIi8vYVtsYXN0KCldL3RleHQoKSAiICAgICAgICAgICAgIDwoY3VybCAtc0wgImh0dHBzOi8vcHlwaS5vcmcvc2ltcGxlLyRMSUIvIikgfCAgICAgICAgICAgICBncmVwIC1QbyAiKFxkK1wuKStcZCtcdyoiKQogICAgICAgICAgaWYgWyAiJF9MSUJfTEFTVF9QWVBJX1ZFUlNJT04iICE9ICIkX0xJQl9MT0NBTF9WRVJTSU9OIiBdOyB0aGVuCiAgICAgICAgICAgIGlmIFsgIiRfTElCX0xPQ0FMX1ZFUlNJT04iICE9ICIiIF07IHRoZW4KICAgICAgICAgICAgICBwcmludGYgIiAtPiAiCiAgICAgICAgICAgIGZpOwogICAgICAgICAgICBwcmludGYgInYlcykuLi4iICIkX0xJQl9MQVNUX1BZUElfVkVSU0lPTiIKICAgICAgICAgICAgX2xpYl9lcXVhbF92ZXJzaW9uPSIkTElCPT0kX0xJQl9MQVNUX1BZUElfVkVSU0lPTiIKICAgICAgICAgICAgc3VkbyAtSCAiJFBZM19CSU5BUllfRklMRVBBVEgiIC1tIHBpcCBpbnN0YWxsIC1VIC1xcSAiJF9saWJfZXF1YWxfdmVyc2lvbiIKICAgICAgICAgIGVsc2UKICAgICAgICAgICAgcHJpbnRmICIpIgogICAgICAgICAgZmk7CiAgICAgIGZpOwogICAgICBwcmludGYgIiBcZVs5Mm1ceEUyXHg5Q1x4OTRcZVszOW1cbiIKICAgIGRvbmUKICBmaTsKfQpmdW5jdGlvbiBtYWluIHsKICBpbnN0YWxsUGFjbWFuSWZOb3RJbnN0YWxsZWQKICBnZXRVbml4RGlzdHJvCiAgcHJpbnRJbmRlbnQKICBwcmludGYgIiVzXG4iICIkX01TR19TRVRUSU5HX1VQX1BZM19FQ09TWVNURU0iCiAgaW5zdGFsbE1haW5QeXRob24zQXB0UGFja2FnZQogIGRpc2NvdmVySW5zdGFsbGF0aW9uQXB0UGFja2FnZXMKICBpbnN0YWxsUHl0aG9uQWRkaXRpb25hbEFwdFBhY2thZ2VzCiAgY29uZmlndXJlUElQCiAgdXBncmFkZUdsb2JhbExpYnJhcmllcwp9CmlmIChyZXR1cm4gMCAyPi9kZXYvbnVsbCk7IHRoZW4KICBleHBvcnRWYXJpYWJsZXMKZWxzZQogIG1haW4KZmk7'
if (return 0 2>/dev/null); then
  source <(printf "%s" "$H" | base64 -d)
else
  echo "$(echo "$H" | base64 -d)" | bash -s -- "$@"
fi;
