#!/bin/bash
source <(printf 'IyEvYmluL2Jhc2gKIyAtKi0gRU5DT0RJTkc6IFVURi04IC0qLQpfTVNHX0VYRUNVVEVEX0FTX1NVUEVSVVNFUj0iRXN0ZSBzY3JpcHQgbmVjZXNpdGEgc2VyIGVqZWN1dGFkbyBjb21vIHN1cGVydXN1YXJpby4iCl9NU0dfU0VUVElOR19VUF9QWTNfRUNPU1lTVEVNPSJDb25maWd1cmFuZG8gZWNvc2lzdGVtYSBQeXRob24zLi4uIgpfTVNHX0lOU1RBTExJTkdfQkFTRV9QQUNLQUdFPSJJbnN0YWxhbmRvIHBhcXVldGUgYmFzZSIKX01TR19GT1VORF9QWTNfSU5TVEFMTEVEPSJFbmNvbnRyYWRvIFB5dGhvbjMgaW5zdGFsYWRvIGVuIGVsIHNpc3RlbWEiCl9NU0dfQ0hFQ0tJTkdfQURESVRJT05BTF9QWTNfUEFDS0FHRVM9IkNvbXByb2JhbmRvIHBhcXVldGVzIGRlIFB5dGhvbiBhZGljaW9uYWxlcy4uLiIKX01TR19VUERBVElOR19HTE9CQUxfUFkzX0xJQlJBUklFUz0iQWN0dWFsaXphbmRvIGJpYmxpb3RlY2FzIGRlIFB5dGhvbjMgZ2xvYmFsZXMuLi4iCmlmICEgKHJldHVybiAwIDI+L2Rldi9udWxsKTsgdGhlbgogIGlmIFtbICQoL3Vzci9iaW4vaWQgLXUpIC1uZSAwIF1dOyB0aGVuCiAgICBwcmludGYgIiVzXG4iICIkX01TR19FWEVDVVRFRF9BU19TVVBFUlVTRVIiID4mMgogICAgZXhpdCAxCiAgZmk7CmZpOwpfVVBHUkFERV9QWTNfR0xPQkFMX0xJQlM9MQpJTkRFTlRfU1RSSU5HPSIiCmZvciBhcmcgaW4gIiRAIjsgZG8KICBjYXNlICRhcmcgaW4KICAgIC0tbm8tdXBncmFkZS1weTMtZ2xvYmFsLWxpYnMpCiAgICBfVVBHUkFERV9QWTNfR0xPQkFMX0xJQlM9MAogICAgc2hpZnQKICAgIDs7CiAgICAtLWluZGVudCkKICAgIHNoaWZ0CiAgICBJTkRFTlRfU1RSSU5HPSQxCiAgICBzaGlmdAogICAgOzsKICBlc2FjCmRvbmUKZnVuY3Rpb24gcHJpbnRJbmRlbnQoKSB7CiAgcHJpbnRmICIlcyIgIiRJTkRFTlRfU1RSSU5HIgp9CmlmIFtbICIkKHN1ZG8gZHBrZyAtcyBkZWJjb25mLXV0aWxzIDI+IC9kZXYvbnVsbCB8IGdyZXAgU3RhdHVzKSIgIT0gIlN0YXR1czogaW5zdGFsbCBvayBpbnN0YWxsZWQiIF1dOyB0aGVuCiAgc3VkbyBhcHQtZ2V0IGluc3RhbGwgLXkgLXFxcSBkZWJjb25mLXV0aWxzID4gL2Rldi9udWxsCmZpOwppZiBbICIkKGNvbW1hbmQgLXYgZGViY29uZi1nZXQtc2VsZWN0aW9ucykiICE9ICIiIF07IHRoZW4KICBfT1JJR0lOQUxfREVCQ09ORl9GUk9OVEVORD0kKAogICAgc3VkbyBkZWJjb25mLWdldC1zZWxlY3Rpb25zIHwgXAogICAgZ3JlcCBkZWJjb25mL2Zyb250ZW5kIHwgXAogICAgYXdrICd7cHJpbnQgJDR9JykKICBzdWRvIHNoIC1jICJlY2hvICdkZWJjb25mIGRlYmNvbmYvZnJvbnRlbmQgc2VsZWN0IE5vbmludGVyYWN0aXZlJyB8IGRlYmNvbmYtc2V0LXNlbGVjdGlvbnMiCmZpOwppZiBbIC16ICIkVU5JWF9ESVNUUk8iIF0gfHwgWyAteiAiJFVOSVhfRElTVFJPX1ZFUlNJT05fTlVNQkVSX01BSk9SIiBdOyB0aGVuCiAgaWYgW1sgIiQoc3VkbyBkcGtnIC1zIGN1cmwgMj4gL2Rldi9udWxsIHwgZ3JlcCBTdGF0dXMpIiAhPSAiU3RhdHVzOiBpbnN0YWxsIG9rIGluc3RhbGxlZCIgXV07IHRoZW4KICAgIHN1ZG8gYXB0LWdldCBpbnN0YWxsIC15IC1xcXEgY3VybCA+IC9kZXYvbnVsbAogIGZpOwogIHNvdXJjZSA8KGN1cmwgLXNMIGh0dHBzOi8vbW9uZGVqYS5naXRodWIuaW8vc2hyZWFkL3VuaXgvXy91dGlsL2dldC1kaXN0cm8vZW4uc2gpCmZpOwpmdW5jdGlvbiBpbnN0YWxsTWFpblB5dGhvbjNBcHRQYWNrYWdlIHsKICBwcmludEluZGVudAogIFBZM19CSU5BUllfRklMRVBBVEg9IiQoY29tbWFuZCAtdiBweXRob24zKSIKICBpZiBbICIkUFkzX0JJTkFSWV9GSUxFUEFUSCIgPSAiIiBdOyB0aGVuCiAgICBfUFlUSE9OX1NUQUJMRV9QQUNLQUdFX1ZFUlNJT049JCgKICAgICAgYXB0LWNhY2hlIHBvbGljeSBweXRob24zLWRldiB8IGdyZXAgLVBvICcoXGQrXC4pK1xkKycgfCBoZWFkIC1uIDEpCiAgICBwcmludGYgIiAgJXMiICIkX01TR19JTlNUQUxMSU5HX0JBU0VfUEFDS0FHRSIKICAgIGlmIFsgIiRfUFlUSE9OX1NUQUJMRV9QQUNLQUdFX1ZFUlNJT04iICE9ICIiIF07IHRoZW4KICAJICBwcmludGYgIiAodiVzKSIgIiRfUFlUSE9OX1NUQUJMRV9QQUNLQUdFX1ZFUlNJT04iCiAgICBmaTsKICAgIHByaW50ZiAiLi4uIgogIAlzdWRvIGFwdC1nZXQgaW5zdGFsbCAteSAtcXFxIHB5dGhvbjMtZGV2ID4gL2Rldi9udWxsCiAgICBfUFlUSE9OX1ZFUlNJT049IiQoIiRQWTNfQklOQVJZX0ZJTEVQQVRIIiAtLXZlcnNpb24gfCBjdXQgLWM3LTEyIHwgdHIgLWQgJyAnKSIKICBlbHNlCiAgICBfUFlUSE9OX1ZFUlNJT049IiQoIiRQWTNfQklOQVJZX0ZJTEVQQVRIIiAtLXZlcnNpb24gfCBjdXQgLWM3LTEyIHwgdHIgLWQgJyAnKSIKICAJcHJpbnRmICIgICVzICh2JXMpIiAiJF9NU0dfRk9VTkRfUFkzX0lOU1RBTExFRCIgIiRfUFlUSE9OX1ZFUlNJT04iCiAgZmk7CiAgcHJpbnRmICIgXGVbOTJtXHhFMlx4OUNceDk0XGVbMzltXG4iCn0KZnVuY3Rpb24gZGlzY292ZXJJbnN0YWxsYXRpb25BcHRQYWNrYWdlcyB7CiAgSU5TVEFMTEFUSU9OX1BBQ0tBR0VTPSgKICAgICJweXRob24zLWRldiIKICAgICJweXRob24zLXBpcCIKICAgICJweXRob24zLXNldHVwdG9vbHMiCiAgICAicHl0aG9uMy10ZXN0cmVzb3VyY2VzIgogICAgImxpYnhtbDItdXRpbHMiCiAgICAicHl0aG9uLWx4bWwiCiAgICAicHl0aG9uMy1seG1sIgogICAgInB5dGhvbi1udW1weSIKICAgICJweXRob24zLW51bXB5IgogICkKICBpZiBbICIkVU5JWF9ESVNUUk8iID0gInVidW50dSIgXTsgdGhlbgogICAgaWYgWyAiJFVOSVhfRElTVFJPX1ZFUlNJT05fTlVNQkVSX01BSk9SIiAtZ2UgMTggXTsgdGhlbgogICAgICBJTlNUQUxMQVRJT05fUEFDS0FHRVMrPSgKICAgICAgICAicHl0aG9uMy1kaXN0dXRpbHMiCiAgICAgICkKICAgIGZpOwogICAgaWYgWyAiJFVOSVhfRElTVFJPX1ZFUlNJT05fTlVNQkVSX01BSk9SIiAtbHQgMjAgXTsgdGhlbgogICAgICBJTlNUQUxMQVRJT05fUEFDS0FHRVMrPSgKICAgICAgICAicHl0aG9uLXBpcCIKICAgICAgICAicHl0aG9uLWRldiIKICAgICAgKQogICAgZWxzZQogICAgICBJTlNUQUxMQVRJT05fUEFDS0FHRVMrPSgKICAgICAgICAicHl0aG9uLWRldi1pcy1weXRob24yIgogICAgICApCiAgICBmaTsKICBmaTsKfQpmdW5jdGlvbiBpbnN0YWxsUHl0aG9uQWRkaXRpb25hbEFwdFBhY2thZ2VzIHsKICBwcmludEluZGVudAogIHByaW50ZiAiICAlc1xuIiAiJF9NU0dfQ0hFQ0tJTkdfQURESVRJT05BTF9QWTNfUEFDS0FHRVMiCiAgZm9yIERFUCBpbiAiJHtJTlNUQUxMQVRJT05fUEFDS0FHRVNbQF19IjsgZG8KICAgIHByaW50SW5kZW50CiAgICBwcmludGYgIiAgICAlcyIgIiRERVAiCiAgICBpZiBbWyAiJChkcGtnIC1zICIkREVQIiAyPiAvZGV2L251bGwgfCBncmVwIFN0YXR1cykiICE9ICJTdGF0dXM6IGluc3RhbGwgb2sgaW5zdGFsbGVkIiBdXTsgdGhlbgogICAgICBzdWRvIGFwdC1nZXQgaW5zdGFsbCAteSAtcXFxICIkREVQIiA+IC9kZXYvbnVsbCB8fCBleGl0ICQ/CiAgICBmaTsKICAgIF9ERVBfVkVSU0lPTj0kKGFwdC1jYWNoZSBwb2xpY3kgIiRERVAiIHwgZ3JlcCAtUG8gIihcZCtcLikrXGQrIiB8IGhlYWQgLW4gMSkKICAgIGlmIFsgIiRfREVQX1ZFUlNJT04iICE9ICIiIF07IHRoZW4KICAgICAgcHJpbnRmICIgKHYlcykiICIkX0RFUF9WRVJTSU9OIgogICAgZmk7CiAgICBwcmludGYgIiBcZVs5Mm1ceEUyXHg5Q1x4OTRcZVszOW1cbiIKICBkb25lCn0KZnVuY3Rpb24gY29uZmlndXJlUElQIHsKICBVU0VSX0hPTUU9IiQoZ2V0ZW50IHBhc3N3ZCAiJFNVRE9fVVNFUiIgfCBjdXQgLWQ6IC1mNikiCiAgaWYgWyAtZCAiJEhPTUUvLmNhY2hlL3BpcC8iIF07IHRoZW4KICAgIF9QSVBfQ0FDSEVfRklMRVBBVEg9IiRVU0VSX0hPTUUvLmNhY2hlL3BpcC8iCiAgICBpZiBbIC1mICIkX1BJUF9DQUNIRV9GSUxFUEFUSCIgXTsgdGhlbgogICAgICBzdWRvIGNob3duIC1SICIkU1VET19VU0VSIiAiJF9QSVBfQ0FDSEVfRklMRVBBVEgiCiAgICBmaTsKICBmaTsKICBpZiBbICIkKGNvbW1hbmQgLXYgcHl0aG9uMikiICE9ICIiIF07IHRoZW4KICAgIHN1ZG8gcHl0aG9uMiAtbSBwaXAgaW5zdGFsbCAtcXEgcGlwPT0yMC4wLjIKICBmaTsKfQpmdW5jdGlvbiB1cGdyYWRlR2xvYmFsTGlicmFyaWVzIHsKICBpZiBbICRfVVBHUkFERV9QWTNfR0xPQkFMX0xJQlMgLWVxIDEgXTsgdGhlbgogICAgcHJpbnRJbmRlbnQKICAgIHByaW50ZiAiICAlc1xuIiAiJF9NU0dfVVBEQVRJTkdfR0xPQkFMX1BZM19MSUJSQVJJRVMiCiAgICBHTE9CQUxfUkVDT01NRU5ERURfTElCUkFSSUVTPSgKICAgICAgInBpcCIKICAgICAgInZpcnR1YWxlbnYiCiAgICAgICJzZXR1cHRvb2xzIgogICAgICAidGVzdHJlc291cmNlcyIKICAgICkKICAgIGZvciBMSUIgaW4gIiR7R0xPQkFMX1JFQ09NTUVOREVEX0xJQlJBUklFU1tAXX0iOyBkbwogICAgICBwcmludEluZGVudAogICAgICBwcmludGYgIiAgICAlcyIgIiRMSUIiCiAgICAgIF9HRVRfVkVSU0lPTl9FWEVDX1NUUj0iCmltcG9ydCBzeXM7CnRyeTogaW1wb3J0ICRMSUIgYXMgbDsKZXhjZXB0IEltcG9ydEVycm9yIGFzIGVycjogc3lzLmV4aXQoNzc3KTsKcHJpbnQobC5fX3ZlcnNpb25fXyBpZiBpc2luc3RhbmNlKGwuX192ZXJzaW9uX18sIHN0cikgZWxzZSBcCiAgJy4nLmpvaW4oW3N0cih2KSBmb3IgdiBpbiBsLl9fdmVyc2lvbl9fXVs6M10pLCBlbmQ9JycpOwogICIKICAgICAgX0xJQl9MT0NBTF9WRVJTSU9OPSIkKCIkUFkzX0JJTkFSWV9GSUxFUEFUSCIgLWMgIiRfR0VUX1ZFUlNJT05fRVhFQ19TVFIiKSIKICAgICAgX0xJQl9MT0NBTF9WRVJTSU9OX0VYSVRfQ09ERT0kPwogICAgICBpZiBbICRfTElCX0xPQ0FMX1ZFUlNJT05fRVhJVF9DT0RFIC1lcSA3NzcgXTsgdGhlbgogICAgICAJc3VkbyAtSCAiJFBZM19CSU5BUllfRklMRVBBVEgiIC1tIHBpcCBpbnN0YWxsIC1VIC0tcXVpZXQgIiRMSUIiCiAgICAgIGVsc2UKICAgICAgICBwcmludGYgIiAoIgogICAgICAgIGlmIFsgIiRfTElCX0xPQ0FMX1ZFUlNJT04iICE9ICIiIF07IHRoZW4KICAgICAgICAgIHByaW50ZiAidiVzIiAiJF9MSUJfTE9DQUxfVkVSU0lPTiIKICAgICAgICBmaTsKICAgICAgICBfTElCX0xBU1RfUFlQSV9WRVJTSU9OPSQoCiAgICAgICAgICB4bWxsaW50IC0taHRtbCAtLXhwYXRoICIvL2FbbGFzdCgpXS90ZXh0KCkgIiBcCiAgICAgICAgICAgIDwoY3VybCAtc0wgImh0dHBzOi8vcHlwaS5vcmcvc2ltcGxlLyRMSUIvIikgfCBcCiAgICAgICAgICAgIGdyZXAgLVBvICIoXGQrXC4pK1xkK1x3KiIpCiAgICAgICAgICBpZiBbICIkX0xJQl9MQVNUX1BZUElfVkVSU0lPTiIgIT0gIiRfTElCX0xPQ0FMX1ZFUlNJT04iIF07IHRoZW4KICAgICAgICAgICAgaWYgWyAiJF9MSUJfTE9DQUxfVkVSU0lPTiIgIT0gIiIgXTsgdGhlbgogICAgICAgICAgICAgIHByaW50ZiAiIC0+ICIKICAgICAgICAgICAgZmk7CiAgICAgICAgICAgIHByaW50ZiAidiVzKS4uLiIgIiRfTElCX0xBU1RfUFlQSV9WRVJTSU9OIgogICAgICAgICAgICBfbGliX2VxdWFsX3ZlcnNpb249IiRMSUI9PSRfTElCX0xBU1RfUFlQSV9WRVJTSU9OIgogICAgICAgICAgICBzdWRvIC1IICIkUFkzX0JJTkFSWV9GSUxFUEFUSCIgLW0gcGlwIGluc3RhbGwgLVUgLXFxICIkX2xpYl9lcXVhbF92ZXJzaW9uIgogICAgICAgICAgZWxzZQogICAgICAgICAgICBwcmludGYgIikiCiAgICAgICAgICBmaTsKICAgICAgZmk7CiAgICAgIHByaW50ZiAiIFxlWzkybVx4RTJceDlDXHg5NFxlWzM5bVxuIgogICAgZG9uZQogIGZpOwp9CmZ1bmN0aW9uIG1haW4gewogIHByaW50SW5kZW50CiAgcHJpbnRmICIlc1xuIiAiJF9NU0dfU0VUVElOR19VUF9QWTNfRUNPU1lTVEVNIgogIGluc3RhbGxNYWluUHl0aG9uM0FwdFBhY2thZ2UKICBkaXNjb3Zlckluc3RhbGxhdGlvbkFwdFBhY2thZ2VzCiAgaW5zdGFsbFB5dGhvbkFkZGl0aW9uYWxBcHRQYWNrYWdlcwogIGNvbmZpZ3VyZVBJUAogIHVwZ3JhZGVHbG9iYWxMaWJyYXJpZXMKfQpmdW5jdGlvbiBleHBvcnRWYXJpYWJsZXMgewogIGRpc2NvdmVySW5zdGFsbGF0aW9uQXB0UGFja2FnZXMKICBleHBvcnQgSU5TVEFMTEFUSU9OX1BBQ0tBR0VTCn0KaWYgKHJldHVybiAwIDI+L2Rldi9udWxsKTsgdGhlbgogIGV4cG9ydFZhcmlhYmxlcwplbHNlCiAgbWFpbgpmaTsKaWYgWyAiJChjb21tYW5kIC12IGRlYmNvbmYtZ2V0LXNlbGVjdGlvbnMpIiAhPSAiIiBdOyB0aGVuCiAgc3VkbyBzaCAtYyAiZWNobyAnZGViY29uZiBkZWJjb25mL2Zyb250ZW5kIHNlbGVjdCAkX09SSUdJTkFMX0RFQkNPTkZfRlJPTlRFTkQnIHwgZGViY29uZi1zZXQtc2VsZWN0aW9ucyIKZmk7Cg==' | base64 -d)
