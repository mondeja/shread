#!/bin/bash
_SCRIPT_FILENAME="$(basename "$0")" source <(printf 'IyEvYmluL2Jhc2gKIyAtKi0gRU5DT0RJTkc6IFVURi04IC0qLQpfTVNHX0VYRUNVVEVEX0FTX1NVUEVSVVNFUj0iRXN0ZSBzY3JpcHQgbmVjZXNpdGEgc2VyIGVqZWN1dGFkbyBjb21vIHN1cGVydXN1YXJpby4iCl9NU0dfQ0hFQ0tJTkdfRUNPU1lTVEVNPSJDb21wcm9iYW5kbyBlY29zaXN0ZW1hIENocm9tZS4uLiIKX01TR19VTkFCTEVfVE9fSU5TVEFMTF8zMj0iTm8gZXMgcG9zaWJsZSBpbnN0YWxhciBHb29nbGUgQ2hyb21lIGVuIHNpc3RlbWFzIGRlIDMyIGJpdHMuIgpfTVNHX0lOU1RBTExJTkdfR09PR0xFX0NIUk9NRT0iSW5zdGFsYW5kbyBHb29nbGUgQ2hyb21lLi4uIgpfTVNHX0ZPVU5EX0NIUk9NRV9JTlNUQUxMRUQ9IkVuY29udHJhZG8gR29vZ2xlIENocm9tZSBpbnN0YWxhZG8iCl9NU0dfSU5TVEFMTElOR19DSFJPTUVEUklWRVI9Ikluc3RhbGFuZG8gY2hyb21lZHJpdmVyIgpfTVNHX1VQREFUSU5HX0NIUk9NRURSSVZFUj0iQWN0dWFsaXphbmRvIGNocm9tZWRyaXZlciIKX01TR19GT1VORF9DSFJPTUVEUklWRVJfSU5TVEFMTEVEPSJFbmNvbnRyYWRvIGNocm9tZWRyaXZlciBpbnN0YWxhZG8iCmlmIFtbICQoL3Vzci9iaW4vaWQgLXUpIC1uZSAwIF1dOyB0aGVuCiAgcHJpbnRmICIlc1xuIiAiJF9NU0dfRVhFQ1VURURfQVNfU1VQRVJVU0VSIiA+JjIKICBleGl0IDEKZmk7CklOREVOVF9TVFJJTkc9IiIKZm9yIGFyZyBpbiAiJEAiOyBkbwogIGNhc2UgJGFyZyBpbgogICAgLS1pbmRlbnQpCiAgICBzaGlmdAogICAgSU5ERU5UX1NUUklORz0kMQogICAgc2hpZnQKICAgIDs7CiAgZXNhYwpkb25lCmZ1bmN0aW9uIHByaW50SW5kZW50KCkgewogIHByaW50ZiAiJXMiICIkSU5ERU5UX1NUUklORyIKfQppZiBbICIkKGNvbW1hbmQgLXYgcGFjbWFuKSIgPSAiIiBdOyB0aGVuCiAgaWYgWyAiJF9TQ1JJUFRfRklMRU5BTUUiID0gIm1haW4uc2giIF07IHRoZW4KICAgIGZpbGVwYXRoPSJzcmMvdW5peC9fL2Rvd25sb2FkL3BhY2FwdC9tYWluLnNoIgogICAgYmFzaCAiJGZpbGVwYXRoIiA+IC9kZXYvbnVsbAogIGVsc2UKICAgIHVybD0iaHR0cHM6Ly9tb25kZWphLmdpdGh1Yi5pby9zaHJlYWQvdW5peC9fL2Rvd25sb2FkL3BhY2FwdC8kX1NDUklQVF9GSUxFTkFNRSIKICAgIGN1cmwgLXNMICIkdXJsIiB8IHN1ZG8gYmFzaCAtID4gL2Rldi9udWxsCiAgZmk7CmZpOwpJTlNUQUxMQVRJT05fREVQRU5ERU5DSUVTPSgKICAiZGViY29uZi11dGlscyIKICAiY3VybCIKKQpmb3IgREVQIGluICIke0lOU1RBTExBVElPTl9ERVBFTkRFTkNJRVNbQF19IjsgZG8KICBpZiBbWyAiJChzdWRvIHBhY21hbiAtUWkgIiRERVAiIDI+IC9kZXYvbnVsbCB8IGdyZXAgU3RhdHVzKSIgIT0gIlN0YXR1czogaW5zdGFsbCBvayBpbnN0YWxsZWQiIF1dOyB0aGVuCiAgICBzdWRvIHBhY21hbiAtUyAiJERFUCIgPiAvZGV2L251bGwgfHwgZXhpdCAkPwogIGZpOwpkb25lOwppZiBbICIkKGNvbW1hbmQgLXYgZGViY29uZi1nZXQtc2VsZWN0aW9ucykiICE9ICIiIF07IHRoZW4KICBfT1JJR0lOQUxfREVCQ09ORl9GUk9OVEVORD0kKAogICAgc3VkbyBkZWJjb25mLWdldC1zZWxlY3Rpb25zIHwgXAogICAgZ3JlcCBkZWJjb25mL2Zyb250ZW5kIHwgXAogICAgYXdrICd7cHJpbnQgJDR9JykKICBzdWRvIHNoIC1jICJlY2hvICdkZWJjb25mIGRlYmNvbmYvZnJvbnRlbmQgc2VsZWN0IE5vbmludGVyYWN0aXZlJyB8IGRlYmNvbmYtc2V0LXNlbGVjdGlvbnMiCmZpOwpwcmludEluZGVudApwcmludGYgIiVzXG4iICIkX01TR19DSEVDS0lOR19FQ09TWVNURU0iCl9HT09HTEVfQ0hST01FX0JJTkFSWV9QQVRIPSIiCmZ1bmN0aW9uIGNhY2hlR29vZ2xlQ2hyb21lQmluYXJ5UGF0aCgpIHsKICBfR09PR0xFX0NIUk9NRV9CSU5BUllfUEFUSD0iJChjb21tYW5kIC12IGdvb2dsZS1jaHJvbWUpIgogIGlmIFsgIiRfR09PR0xFX0NIUk9NRV9CSU5BUllfUEFUSCIgPSAiIiBdOyB0aGVuCiAgICBfR09PR0xFX0NIUk9NRV9CSU5BUllfUEFUSD0iJChjb21tYW5kIC12IGdvb2dsZS1jaHJvbWUtc3RhYmxlKSIKICBmaTsKfQpjYWNoZUdvb2dsZUNocm9tZUJpbmFyeVBhdGgKcHJpbnRJbmRlbnQKaWYgWyAiJF9HT09HTEVfQ0hST01FX0JJTkFSWV9QQVRIIiA9ICIiIF07IHRoZW4KICBpZiBbWyAiJCh1bmFtZSAtbSkiICE9ICJ4ODZfNjQiIF1dOyB0aGVuCiAgICBwcmludGYgIiAgJXMiICIkX01TR19VTkFCTEVfVE9fSU5TVEFMTF8zMiIgPiYyCiAgICBwcmludGYgIiBcZVs5MW1ceEUyXHg5Q1x4OTVcZVszOW1cbiIgPiYyCiAgICBleGl0IDEKICBmaTsKICBwcmludGYgIiAgJXMiICIkX01TR19JTlNUQUxMSU5HX0dPT0dMRV9DSFJPTUUiCiAgY3VybCAtc0wgaHR0cHM6Ly9kbC5nb29nbGUuY29tL2xpbnV4L2RpcmVjdC9nb29nbGUtY2hyb21lLXN0YWJsZV9jdXJyZW50X2FtZDY0LmRlYiBcCiAgICAtLW91dHB1dCBnb29nbGUtY2hyb21lLXN0YWJsZV9jdXJyZW50X2FtZDY0LmRlYgogIHN1ZG8gcGFjbWFuIC1TIC4vZ29vZ2xlLWNocm9tZS1zdGFibGVfY3VycmVudF9hbWQ2NC5kZWIgPiAvZGV2L251bGwKICBzdWRvIHJtIC1mIGdvb2dsZS1jaHJvbWUtc3RhYmxlX2N1cnJlbnRfYW1kNjQuZGViCiAgY2FjaGVHb29nbGVDaHJvbWVCaW5hcnlQYXRoCiAgcHJpbnRmICIgKHYlcykiICIkKCRfR09PR0xFX0NIUk9NRV9CSU5BUllfUEFUSCAtLXZlcnNpb24gfCBjdXQgLWQnICcgLWYzKSIKZWxzZQogIHByaW50ZiAiICAlcyIgIiRfTVNHX0ZPVU5EX0NIUk9NRV9JTlNUQUxMRUQiCiAgcHJpbnRmICIgKHYlcykiICIkKCRfR09PR0xFX0NIUk9NRV9CSU5BUllfUEFUSCAtLXZlcnNpb24gfCBjdXQgLWQnICcgLWYzKSIKZmk7CnByaW50ZiAiIFxlWzkybVx4RTJceDlDXHg5NFxlWzM5bVxuIgpHT09HTEVfQ0hST01FX01BSk9SX1ZFUlNJT049IiQoIiRfR09PR0xFX0NIUk9NRV9CSU5BUllfUEFUSCIgLS12ZXJzaW9uIHwgY3V0IC1kJyAnIC1mMyB8IGN1dCAtZCcuJyAtZjEpIgpjdXJsIC1zTCBodHRwczovL2Nocm9tZWRyaXZlci5zdG9yYWdlLmdvb2dsZWFwaXMuY29tLyBcCiAgLS1vdXRwdXQgY2hyb21lZHJpdmVyLXZlcnNpb25zLnhtbApDSFJPTUVEUklWRVJfVkVSU0lPTj0kKGdyZXAgLVBvICI8S2V5PiRHT09HTEVfQ0hST01FX01BSk9SX1ZFUlNJT05cLipcZCpcLipcZCtcLipcZCpcL2Nocm9tZWRyaXZlcl9saW51eDY0XC56aXAiIGNocm9tZWRyaXZlci12ZXJzaW9ucy54bWwgfAogICAgZ3JlcCAtUG8gIiRHT09HTEVfQ0hST01FX01BSk9SX1ZFUlNJT05cLipcZCpcLipcZCtcLipcZCoiIHwgXAogICAgaGVhZCAtbiAxKQpzdWRvIHJtIC1mIGNocm9tZWRyaXZlci12ZXJzaW9ucy54bWwKaW5zdGFsbENocm9tZURyaXZlcigpIHsKICBjdXJsIC1zTCBcCiAgICAiaHR0cHM6Ly9jaHJvbWVkcml2ZXIuc3RvcmFnZS5nb29nbGVhcGlzLmNvbS8kQ0hST01FRFJJVkVSX1ZFUlNJT04vY2hyb21lZHJpdmVyX2xpbnV4NjQuemlwIiBcCiAgICAtLW91dHB1dCAiY2hyb21lZHJpdmVyX2xpbnV4NjQuemlwIgogIHVuemlwIC1xIGNocm9tZWRyaXZlcl9saW51eDY0LnppcAogIHN1ZG8gcm0gLWYgY2hyb21lZHJpdmVyX2xpbnV4NjQuemlwCiAgaWYgWyAtZiAvdXNyL2Jpbi9jaHJvbWVkcml2ZXIgXTsgdGhlbgogICAgc3VkbyBybSAtZiAvdXNyL2Jpbi9jaHJvbWVkcml2ZXIKICBmaTsKICBzdWRvIG12IC1mIGNocm9tZWRyaXZlciAvdXNyL2Jpbi9jaHJvbWVkcml2ZXIKfQpwcmludEluZGVudApfQ0hST01FRFJJVkVSX0JJTkFSWV9QQVRIPSIkKGNvbW1hbmQgLXYgY2hyb21lZHJpdmVyKSIKaWYgWyAiJF9DSFJPTUVEUklWRVJfQklOQVJZX1BBVEgiID0gIiIgXTsgdGhlbgogIHByaW50ZiAiICAlcyAodiVzKS4uLiIgIiRfTVNHX0lOU1RBTExJTkdfQ0hST01FRFJJVkVSIiAiJENIUk9NRURSSVZFUl9WRVJTSU9OIgogIGluc3RhbGxDaHJvbWVEcml2ZXIKZWxzZQogIF9DSFJPTUVEUklWRVJfSU5TVEFMTEVEX1ZFUlNJT049IiQoIiRfQ0hST01FRFJJVkVSX0JJTkFSWV9QQVRIIiAtLXZlcnNpb24gfCBjdXQgLWQnICcgLWYyKSIKICBpZiBbICIkX0NIUk9NRURSSVZFUl9JTlNUQUxMRURfVkVSU0lPTiIgIT0gIiRDSFJPTUVEUklWRVJfVkVSU0lPTiIgXTsgdGhlbgogICAgcHJpbnRmICIgICVzICh2JXMiICIkX01TR19VUERBVElOR19DSFJPTUVEUklWRVIiICIkX0NIUk9NRURSSVZFUl9JTlNUQUxMRURfVkVSU0lPTiIKICAgIHByaW50ZiAiIC0+IHYlcykuLi4iICIkQ0hST01FRFJJVkVSX1ZFUlNJT04iCiAgICBpbnN0YWxsQ2hyb21lRHJpdmVyCiAgZWxzZQogICAgcHJpbnRmICIgICVzICh2JXMpIiAiJF9NU0dfRk9VTkRfQ0hST01FRFJJVkVSX0lOU1RBTExFRCIgIiRfQ0hST01FRFJJVkVSX0lOU1RBTExFRF9WRVJTSU9OIgogIGZpCmZpCnByaW50ZiAiIFxlWzkybVx4RTJceDlDXHg5NFxlWzM5bVxuIgppZiBbICIkKGNvbW1hbmQgLXYgZGViY29uZi1nZXQtc2VsZWN0aW9ucykiICE9ICIiIF07IHRoZW4KICBzdWRvIHNoIC1jICJlY2hvICdkZWJjb25mIGRlYmNvbmYvZnJvbnRlbmQgc2VsZWN0ICRfT1JJR0lOQUxfREVCQ09ORl9GUk9OVEVORCcgfCBkZWJjb25mLXNldC1zZWxlY3Rpb25zIgpmaTsK' | base64 -d)
