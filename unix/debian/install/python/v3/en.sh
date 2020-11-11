#!/bin/bash
H='IyEvYmluL2Jhc2gKIyAtKi0gRU5DT0RJTkc6IFVURi04IC0qLQpfU0NSSVBUX0ZJTEVOQU1FPWVuLnNoCiMhL2Jpbi9iYXNoCl9NU0dfU0VUVElOR19VUF9QWTNfRUNPU1lTVEVNPSJTZXR0aW5nIHVwIFB5dGhvbjMgZWNvc3lzdGVtLi4uIgpfTVNHX0lOU1RBTExJTkdfQkFTRV9QQUNLQUdFPSJJbnN0YWxsaW5nIGJhc2UgcGFja2FnZSIKX01TR19GT1VORF9QWTNfSU5TVEFMTEVEPSJGb3VuZCBQeXRob24zIGluc3RhbGxlZCBpbiB0aGUgc3lzdGVtIgpfTVNHX0NIRUNLSU5HX0FERElUSU9OQUxfUFkzX1BBQ0tBR0VTPSJDaGVja2luZyBhZGRpdGlvbmFsIFB5dGhvbiBwYWNrYWdlcy4uLiIKX01TR19VUERBVElOR19HTE9CQUxfUFkzX0xJQlJBUklFUz0iVXBkYXRpbmcgZ2xvYmFsIFB5dGhvbjMgbGlicmFyaWVzLi4uIgpJTkRFTlRfU1RSSU5HPSIiCl9VUEdSQURFX1BZM19HTE9CQUxfTElCUz0xCmZ1bmN0aW9uIHVzYWdlIHsKICAgIGNhdCA8PEhFTFBfVVNBR0UKVXNhZ2U6IHVuaXgvZGViaWFuL2luc3RhbGwvcHl0aG9uL3YzLyRfU0NSSVBUX0ZJTEVOQU1FIFstaF0gWy1pIFNUUklOR10gWy0tbm8tdXBncmFkZS1weTMtZ2xvYmFsLWxpYnNdCgogIEluc3RhbGxzIHNvbWUgUHl0aG9uMiBhbmQgUHl0aG9uMyBBUFQgcGFja2FnZXMgaWYgYXJlIG5vdCBpbnN0YWxsZWQ6CgogIC0gY3VybAogIC0gcHl0aG9uMy1kZXYKICAtIHB5dGhvbjMtcGlwCiAgLSBweXRob24zLXNldHVwdG9vbHMKICAtIHB5dGhvbjMtdGVzdHJlc291cmNlcwogIC0gbGlieG1sMi11dGlscwogIC0gcHl0aG9uLWx4bWwKICAtIHB5dGhvbjMtbHhtbAogIC0gcHl0aG9uLW51bXB5CiAgLSBweXRob24zLW51bXB5CgogICsgSW4gVWJ1bnR1ID49IDE4IGluc3RhbGxzIGFsc286CiAgICAtIHB5dGhvbjMtZGlzdHV0aWxzCiAgKyBJbiBVYnVudHUgPCAyMCBpbnN0YWxscyBhbHNvOgogICAgLSBweXRob24tcGlwCiAgICAtIHB5dGhvbi1kZXYKICArIEluIFVidW50dSA+PSAyMCBpbnN0YWxscyBhbHNvOgogICAgLSBweXRob24tZGV2LWlzLXB5dGhvbjIKCiAgQWxzbywgaW5zdGFsbHMgb3IgdXBncmFkZSB1c2luZyBQSVAgc29tZSBQeXRob24zIHBhY2thZ2VzIGdsb2JhbGx5ICh0aGlzIHN0ZXAKICBjYW4gYmUgaWdub3JlZCB1c2luZyAnLS1uby11cGdyYWRlLXB5My1nbG9iYWwtbGlicycgb3B0aW9uKToKCiAgLSBwaXAKICAtIHZpcnR1YWxlbnYKICAtIHNldHVwdG9vbHMKICAtIHRlc3RyZXNvdXJjZXMKCk9wdGlvbnM6CiAgLWgsIC0taGVscCAgICAgICAgICAgICAgICAgICAgICAgIFNob3cgdGhpcyBoZWxwIG1lc3NhZ2UgYW5kIGV4aXQuCiAgLWkgU1RSSU5HLCAtLWluZGVudCBTVFJJTkcgICAgICAgIEVhY2ggbGluZSBvZiB0aGUgc2NyaXB0IG91dHB1dCB3aWxsIGJlIHByZWNlZGVkIHdpdGggdGhlIHN0cmluZyBkZWZpbmVkIGluIHRoaXMgcGFyYW1ldGVyLgogIC0tbm8tdXBncmFkZS1weTMtZ2xvYmFsLWxpYnMgICAgICBJZ25vcmVzIHRoZSBpbnN0YWxsYXRpb24gb3IgdXBncmFkZSBvZiBQeXRob24zIHBhY2thZ2VzIGdsb2JhbGx5IHVzaW5nIFBJUC4KCkhFTFBfVVNBR0UKICAgIGV4aXQgMQp9CmZvciBhcmcgaW4gIiRAIjsgZG8KICBjYXNlICRhcmcgaW4KICAgIC1pfC0taW5kZW50KQogICAgSU5ERU5UX1NUUklORz0iJDIiCiAgICBzaGlmdCAyCiAgICA7OwogICAgLWh8LS1oZWxwKQogICAgc2hpZnQKICAgIHVzYWdlCiAgICA7OyAgICAKICAgIC0tbm8tdXBncmFkZS1weTMtZ2xvYmFsLWxpYnMpCiAgICBfVVBHUkFERV9QWTNfR0xPQkFMX0xJQlM9MAogICAgc2hpZnQKICAgIDs7CiAgZXNhYwpkb25lCmZ1bmN0aW9uIHByaW50SW5kZW50KCkgewogIHByaW50ZiAiJXMiICIkSU5ERU5UX1NUUklORyIKfQpmdW5jdGlvbiBpbnN0YWxsUGFjbWFuSWZOb3RJbnN0YWxsZWQoKSB7CiAgaWYgWyAiJChjb21tYW5kIC12IHBhY21hbikiID0gIiIgXTsgdGhlbgogICAgdXJsPSJodHRwczovL21vbmRlamEuZ2l0aHViLmlvL3NocmVhZC91bml4L18vZG93bmxvYWQvcGFjYXB0LyRfU0NSSVBUX0ZJTEVOQU1FIgogICAgY3VybCAtc0wgIiR1cmwiIHwgc3VkbyBiYXNoIC0gPiAvZGV2L251bGwKICBmaTsKfQpmdW5jdGlvbiBnZXRVbml4RGlzdHJvKCkgewogIGlmIFsgLXogIiRVTklYX0RJU1RSTyIgXSB8fCBbIC16ICIkVU5JWF9ESVNUUk9fVkVSU0lPTl9OVU1CRVJfTUFKT1IiIF07IHRoZW4KICAgIHNvdXJjZSA8KGN1cmwgLXNMIGh0dHBzOi8vbW9uZGVqYS5naXRodWIuaW8vc2hyZWFkL3VuaXgvXy91dGlsL2dldC1kaXN0cm8vZW4uc2gpCiAgZmk7Cn0KZnVuY3Rpb24gaW5zdGFsbE1haW5QeXRob24zQXB0UGFja2FnZSB7CiAgcHJpbnRJbmRlbnQKICBQWTNfQklOQVJZX0ZJTEVQQVRIPSIkKGNvbW1hbmQgLXYgcHl0aG9uMykiCiAgaWYgWyAiJFBZM19CSU5BUllfRklMRVBBVEgiID0gIiIgXTsgdGhlbgogICAgX1BZVEhPTl9TVEFCTEVfUEFDS0FHRV9WRVJTSU9OPSQoCiAgICAgIHBhY21hbiAtUWkgcHl0aG9uMy1kZXYgfCBncmVwIFZlcnNpb246IHwgY3V0IC1kJyAnIC1mMikKICAgIHByaW50ZiAiICAlcyIgIiRfTVNHX0lOU1RBTExJTkdfQkFTRV9QQUNLQUdFIgogICAgaWYgWyAiJF9QWVRIT05fU1RBQkxFX1BBQ0tBR0VfVkVSU0lPTiIgIT0gIiIgXTsgdGhlbgogIAkgIHByaW50ZiAiICh2JXMpIiAiJF9QWVRIT05fU1RBQkxFX1BBQ0tBR0VfVkVSU0lPTiIKICAgIGZpOwogICAgcHJpbnRmICIuLi4iCiAgICBzdWRvIHBhY21hbiAtUyAtLSAteSBweXRob24zLWRldiA+IC9kZXYvbnVsbCB8fCBleGl0ICQ/CiAgICBfUFlUSE9OX1ZFUlNJT049IiQoIiRQWTNfQklOQVJZX0ZJTEVQQVRIIiAtLXZlcnNpb24gfCBjdXQgLWM3LTEyIHwgdHIgLWQgJyAnKSIKICBlbHNlCiAgICBfUFlUSE9OX1ZFUlNJT049IiQoIiRQWTNfQklOQVJZX0ZJTEVQQVRIIiAtLXZlcnNpb24gfCBjdXQgLWM3LTEyIHwgdHIgLWQgJyAnKSIKICAJcHJpbnRmICIgICVzICh2JXMpIiAiJF9NU0dfRk9VTkRfUFkzX0lOU1RBTExFRCIgIiRfUFlUSE9OX1ZFUlNJT04iCiAgZmk7CiAgcHJpbnRmICIgXGVbOTJtXHhFMlx4OUNceDk0XGVbMzltXG4iCn0KZnVuY3Rpb24gZGlzY292ZXJJbnN0YWxsYXRpb25BcHRQYWNrYWdlcyB7CiAgSU5TVEFMTEFUSU9OX1BBQ0tBR0VTPSgKICAgICJweXRob24zLWRldiIKICAgICJweXRob24zLXBpcCIKICAgICJweXRob24zLXNldHVwdG9vbHMiCiAgICAicHl0aG9uMy10ZXN0cmVzb3VyY2VzIgogICAgImxpYnhtbDItdXRpbHMiCiAgICAicHl0aG9uLWx4bWwiCiAgICAicHl0aG9uMy1seG1sIgogICAgInB5dGhvbi1udW1weSIKICAgICJweXRob24zLW51bXB5IgogICkKICBpZiBbICIkVU5JWF9ESVNUUk8iID0gInVidW50dSIgXTsgdGhlbgogICAgaWYgWyAiJFVOSVhfRElTVFJPX1ZFUlNJT05fTlVNQkVSX01BSk9SIiAtZ2UgMTggXTsgdGhlbgogICAgICBJTlNUQUxMQVRJT05fUEFDS0FHRVMrPSgKICAgICAgICAicHl0aG9uMy1kaXN0dXRpbHMiCiAgICAgICkKICAgIGZpOwogICAgaWYgWyAiJFVOSVhfRElTVFJPX1ZFUlNJT05fTlVNQkVSX01BSk9SIiAtbHQgMjAgXTsgdGhlbgogICAgICBJTlNUQUxMQVRJT05fUEFDS0FHRVMrPSgKICAgICAgICAicHl0aG9uLXBpcCIKICAgICAgICAicHl0aG9uLWRldiIKICAgICAgKQogICAgZWxzZQogICAgICBJTlNUQUxMQVRJT05fUEFDS0FHRVMrPSgKICAgICAgICAicHl0aG9uLWRldi1pcy1weXRob24yIgogICAgICApCiAgICBmaTsKICBmaTsKfQpmdW5jdGlvbiBpbnN0YWxsUHl0aG9uQWRkaXRpb25hbEFwdFBhY2thZ2VzIHsKICBwcmludEluZGVudAogIHByaW50ZiAiICAlc1xuIiAiJF9NU0dfQ0hFQ0tJTkdfQURESVRJT05BTF9QWTNfUEFDS0FHRVMiCiAgZm9yIERFUCBpbiAiJHtJTlNUQUxMQVRJT05fUEFDS0FHRVNbQF19IjsgZG8KICAgIHByaW50SW5kZW50CiAgICBwcmludGYgIiAgICAlcyIgIiRERVAiCiAgICBpZiBbWyAiJChzdWRvIHBhY21hbiAtUWkgIiRERVAiIDI+IC9kZXYvbnVsbCB8IGdyZXAgU3RhdHVzKSIgIT0gIlN0YXR1czogaW5zdGFsbCBvayBpbnN0YWxsZWQiIF1dOyB0aGVuCiAgICAgIHN1ZG8gcGFjbWFuIC1TIC0tIC15ICIkREVQIiA+IC9kZXYvbnVsbCB8fCBleGl0ICQ/CiAgICBmaTsKICAgIF9ERVBfVkVSU0lPTj0kKGFwdC1jYWNoZSBwb2xpY3kgIiRERVAiIHwgZ3JlcCAtUG8gIihcZCtcLikrXGQrIiB8IGhlYWQgLW4gMSkKICAgIGlmIFsgIiRfREVQX1ZFUlNJT04iICE9ICIiIF07IHRoZW4KICAgICAgcHJpbnRmICIgKHYlcykiICIkX0RFUF9WRVJTSU9OIgogICAgZmk7CiAgICBwcmludGYgIiBcZVs5Mm1ceEUyXHg5Q1x4OTRcZVszOW1cbiIKICBkb25lCn0KZnVuY3Rpb24gY29uZmlndXJlUElQIHsKICBVU0VSX0hPTUU9IiQoZ2V0ZW50IHBhc3N3ZCAiJFNVRE9fVVNFUiIgfCBjdXQgLWQ6IC1mNikiCiAgaWYgWyAtZCAiJEhPTUUvLmNhY2hlL3BpcC8iIF07IHRoZW4KICAgIF9QSVBfQ0FDSEVfRklMRVBBVEg9IiRVU0VSX0hPTUUvLmNhY2hlL3BpcC8iCiAgICBpZiBbIC1mICIkX1BJUF9DQUNIRV9GSUxFUEFUSCIgXTsgdGhlbgogICAgICBzdWRvIGNob3duIC1SICIkU1VET19VU0VSIiAiJF9QSVBfQ0FDSEVfRklMRVBBVEgiCiAgICBmaTsKICBmaTsKICBpZiBbICIkKGNvbW1hbmQgLXYgcHl0aG9uMikiICE9ICIiIF07IHRoZW4KICAgIHN1ZG8gcHl0aG9uMiAtbSBwaXAgaW5zdGFsbCAtcXEgcGlwPT0yMC4wLjIKICBmaTsKfQpmdW5jdGlvbiB1cGdyYWRlR2xvYmFsTGlicmFyaWVzIHsKICBpZiBbICRfVVBHUkFERV9QWTNfR0xPQkFMX0xJQlMgLWVxIDEgXTsgdGhlbgogICAgcHJpbnRJbmRlbnQKICAgIHByaW50ZiAiICAlc1xuIiAiJF9NU0dfVVBEQVRJTkdfR0xPQkFMX1BZM19MSUJSQVJJRVMiCiAgICBHTE9CQUxfUkVDT01NRU5ERURfTElCUkFSSUVTPSgKICAgICAgInBpcCIKICAgICAgInZpcnR1YWxlbnYiCiAgICAgICJzZXR1cHRvb2xzIgogICAgICAidGVzdHJlc291cmNlcyIKICAgICkKICAgIGZvciBMSUIgaW4gIiR7R0xPQkFMX1JFQ09NTUVOREVEX0xJQlJBUklFU1tAXX0iOyBkbwogICAgICBwcmludEluZGVudAogICAgICBwcmludGYgIiAgICAlcyIgIiRMSUIiCiAgICAgIF9HRVRfVkVSU0lPTl9FWEVDX1NUUj0iCmltcG9ydCBzeXM7CnRyeTogaW1wb3J0ICRMSUIgYXMgbDsKZXhjZXB0IEltcG9ydEVycm9yIGFzIGVycjogc3lzLmV4aXQoNzc3KTsKcHJpbnQobC5fX3ZlcnNpb25fXyBpZiBpc2luc3RhbmNlKGwuX192ZXJzaW9uX18sIHN0cikgZWxzZSAgICcuJy5qb2luKFtzdHIodikgZm9yIHYgaW4gbC5fX3ZlcnNpb25fX11bOjNdKSwgZW5kPScnKTsKICAiCiAgICAgIF9MSUJfTE9DQUxfVkVSU0lPTj0iJCgiJFBZM19CSU5BUllfRklMRVBBVEgiIC1jICIkX0dFVF9WRVJTSU9OX0VYRUNfU1RSIikiCiAgICAgIF9MSUJfTE9DQUxfVkVSU0lPTl9FWElUX0NPREU9JD8KICAgICAgaWYgWyAkX0xJQl9MT0NBTF9WRVJTSU9OX0VYSVRfQ09ERSAtZXEgNzc3IF07IHRoZW4KICAgICAgCXN1ZG8gLUggIiRQWTNfQklOQVJZX0ZJTEVQQVRIIiAtbSBwaXAgaW5zdGFsbCAtVSAtLXF1aWV0ICIkTElCIgogICAgICBlbHNlCiAgICAgICAgcHJpbnRmICIgKCIKICAgICAgICBpZiBbICIkX0xJQl9MT0NBTF9WRVJTSU9OIiAhPSAiIiBdOyB0aGVuCiAgICAgICAgICBwcmludGYgInYlcyIgIiRfTElCX0xPQ0FMX1ZFUlNJT04iCiAgICAgICAgZmk7CiAgICAgICAgX0xJQl9MQVNUX1BZUElfVkVSU0lPTj0kKAogICAgICAgICAgeG1sbGludCAtLWh0bWwgLS14cGF0aCAiLy9hW2xhc3QoKV0vdGV4dCgpICIgICAgICAgICAgICAgPChjdXJsIC1zTCAiaHR0cHM6Ly9weXBpLm9yZy9zaW1wbGUvJExJQi8iKSB8ICAgICAgICAgICAgIGdyZXAgLVBvICIoXGQrXC4pK1xkK1x3KiIpCiAgICAgICAgICBpZiBbICIkX0xJQl9MQVNUX1BZUElfVkVSU0lPTiIgIT0gIiRfTElCX0xPQ0FMX1ZFUlNJT04iIF07IHRoZW4KICAgICAgICAgICAgaWYgWyAiJF9MSUJfTE9DQUxfVkVSU0lPTiIgIT0gIiIgXTsgdGhlbgogICAgICAgICAgICAgIHByaW50ZiAiIC0+ICIKICAgICAgICAgICAgZmk7CiAgICAgICAgICAgIHByaW50ZiAidiVzKS4uLiIgIiRfTElCX0xBU1RfUFlQSV9WRVJTSU9OIgogICAgICAgICAgICBfbGliX2VxdWFsX3ZlcnNpb249IiRMSUI9PSRfTElCX0xBU1RfUFlQSV9WRVJTSU9OIgogICAgICAgICAgICBzdWRvIC1IICIkUFkzX0JJTkFSWV9GSUxFUEFUSCIgLW0gcGlwIGluc3RhbGwgLVUgLXFxICIkX2xpYl9lcXVhbF92ZXJzaW9uIgogICAgICAgICAgZWxzZQogICAgICAgICAgICBwcmludGYgIikiCiAgICAgICAgICBmaTsKICAgICAgZmk7CiAgICAgIHByaW50ZiAiIFxlWzkybVx4RTJceDlDXHg5NFxlWzM5bVxuIgogICAgZG9uZQogIGZpOwp9CmZ1bmN0aW9uIG1haW4gewogIGluc3RhbGxQYWNtYW5JZk5vdEluc3RhbGxlZAogIGdldFVuaXhEaXN0cm8KICBwcmludEluZGVudAogIHByaW50ZiAiJXNcbiIgIiRfTVNHX1NFVFRJTkdfVVBfUFkzX0VDT1NZU1RFTSIKICBpbnN0YWxsTWFpblB5dGhvbjNBcHRQYWNrYWdlCiAgZGlzY292ZXJJbnN0YWxsYXRpb25BcHRQYWNrYWdlcwogIGluc3RhbGxQeXRob25BZGRpdGlvbmFsQXB0UGFja2FnZXMKICBjb25maWd1cmVQSVAKICB1cGdyYWRlR2xvYmFsTGlicmFyaWVzCn0KaWYgKHJldHVybiAwIDI+L2Rldi9udWxsKTsgdGhlbgogIGV4cG9ydFZhcmlhYmxlcwplbHNlCiAgbWFpbgpmaTs='
if (return 0 2>/dev/null); then
  source <(printf "%s" "$H" | base64 -d)
else
  echo "$(echo "$H" | base64 -d)" | bash -s -- "$@"
fi;
