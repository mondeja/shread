#!/bin/bash
source <(printf 'IyEvYmluL2Jhc2gKIyAtKi0gRU5DT0RJTkc6IFVURi04IC0qLQpfTVNHX0VYRUNVVEVEX0FTX1NVUEVSVVNFUj0iRXN0ZSBzY3JpcHQgbmVjZXNpdGEgc2VyIGVqZWN1dGFkbyBjb21vIHN1cGVydXN1YXJpby4iCl9NU0dfQ0hFQ0tJTkdfRUNPU1lTVEVNPSJDb21wcm9iYW5kbyBlY29zaXN0ZW1hIENocm9tZS4uLiIKX01TR19VTkFCTEVfVE9fSU5TVEFMTF8zMj0iTm8gZXMgcG9zaWJsZSBpbnN0YWxhciBHb29nbGUgQ2hyb21lIGVuIHNpc3RlbWFzIGRlIDMyIGJpdHMuIgpfTVNHX0lOU1RBTExJTkdfR09PR0xFX0NIUk9NRT0iSW5zdGFsYW5kbyBHb29nbGUgQ2hyb21lLi4uIgpfTVNHX0ZPVU5EX0NIUk9NRV9JTlNUQUxMRUQ9IkVuY29udHJhZG8gR29vZ2xlIENocm9tZSBpbnN0YWxhZG8iCl9NU0dfSU5TVEFMTElOR19DSFJPTUVEUklWRVI9Ikluc3RhbGFuZG8gY2hyb21lZHJpdmVyIgpfTVNHX1VQREFUSU5HX0NIUk9NRURSSVZFUj0iQWN0dWFsaXphbmRvIGNocm9tZWRyaXZlciIKX01TR19GT1VORF9DSFJPTUVEUklWRVJfSU5TVEFMTEVEPSJFbmNvbnRyYWRvIGNocm9tZWRyaXZlciBpbnN0YWxhZG8iCmlmIFtbICQoL3Vzci9iaW4vaWQgLXUpIC1uZSAwIF1dOyB0aGVuCiAgcHJpbnRmICIlc1xuIiAiJF9NU0dfRVhFQ1VURURfQVNfU1VQRVJVU0VSIiA+JjIKICBleGl0IDEKZmk7CklOREVOVF9TVFJJTkc9IiIKZm9yIGFyZyBpbiAiJEAiOyBkbwogIGNhc2UgJGFyZyBpbgogICAgLS1pbmRlbnQpCiAgICBzaGlmdAogICAgSU5ERU5UX1NUUklORz0kMQogICAgc2hpZnQKICAgIDs7CiAgZXNhYwpkb25lCmZ1bmN0aW9uIHByaW50UHJlcGVuZGVkU3Rkb3V0KCkgewogIHByaW50ZiAiJXMiICIkSU5ERU5UX1NUUklORyIKfQppZiBbWyAiJChzdWRvIGRwa2cgLXMgZGViY29uZi11dGlscyAyPiAvZGV2L251bGwgfCBncmVwIFN0YXR1cykiICE9ICJTdGF0dXM6IGluc3RhbGwgb2sgaW5zdGFsbGVkIiBdXTsgdGhlbgogIHN1ZG8gYXB0LWdldCBpbnN0YWxsIC15IC1xcXEgZGViY29uZi11dGlscyA+IC9kZXYvbnVsbApmaTsKaWYgWyAiJChjb21tYW5kIC12IGRlYmNvbmYtZ2V0LXNlbGVjdGlvbnMpIiAhPSAiIiBdOyB0aGVuCiAgX09SSUdJTkFMX0RFQkNPTkZfRlJPTlRFTkQ9JCgKICAgIHN1ZG8gZGViY29uZi1nZXQtc2VsZWN0aW9ucyB8IFwKICAgIGdyZXAgZGViY29uZi9mcm9udGVuZCB8IFwKICAgIGF3ayAne3ByaW50ICQ0fScpCiAgc3VkbyBzaCAtYyAiZWNobyAnZGViY29uZiBkZWJjb25mL2Zyb250ZW5kIHNlbGVjdCBOb25pbnRlcmFjdGl2ZScgfCBkZWJjb25mLXNldC1zZWxlY3Rpb25zIgpmaTsKaWYgW1sgIiQoc3VkbyBkcGtnIC1zIGN1cmwgMj4gL2Rldi9udWxsIHwgZ3JlcCBTdGF0dXMpIiAhPSAiU3RhdHVzOiBpbnN0YWxsIG9rIGluc3RhbGxlZCIgXV07IHRoZW4KICBzdWRvIGFwdC1nZXQgaW5zdGFsbCAteSAtcXFxIGN1cmwgPiAvZGV2L251bGwgfHwgZXhpdCAkPwpmaTsKcHJpbnRQcmVwZW5kZWRTdGRvdXQKcHJpbnRmICIlc1xuIiAiJF9NU0dfQ0hFQ0tJTkdfRUNPU1lTVEVNIgpfR09PR0xFX0NIUk9NRV9CSU5BUllfUEFUSD0iIgpmdW5jdGlvbiBjYWNoZUdvb2dsZUNocm9tZUJpbmFyeVBhdGgoKSB7CiAgX0dPT0dMRV9DSFJPTUVfQklOQVJZX1BBVEg9IiQoY29tbWFuZCAtdiBnb29nbGUtY2hyb21lKSIKICBpZiBbICIkX0dPT0dMRV9DSFJPTUVfQklOQVJZX1BBVEgiID0gIiIgXTsgdGhlbgogICAgX0dPT0dMRV9DSFJPTUVfQklOQVJZX1BBVEg9IiQoY29tbWFuZCAtdiBnb29nbGUtY2hyb21lLXN0YWJsZSkiCiAgZmk7Cn0KY2FjaGVHb29nbGVDaHJvbWVCaW5hcnlQYXRoCnByaW50UHJlcGVuZGVkU3Rkb3V0CmlmIFsgIiRfR09PR0xFX0NIUk9NRV9CSU5BUllfUEFUSCIgPSAiIiBdOyB0aGVuCiAgaWYgW1sgIiQodW5hbWUgLW0pIiAhPSAieDg2XzY0IiBdXTsgdGhlbgogICAgcHJpbnRmICIgICVzIiAiJF9NU0dfVU5BQkxFX1RPX0lOU1RBTExfMzIiID4mMgogICAgcHJpbnRmICIgXGVbOTFtXHhFMlx4OUNceDk1XGVbMzltXG4iID4mMgogICAgZXhpdCAxCiAgZmk7CiAgcHJpbnRmICIgICVzIiAiJF9NU0dfSU5TVEFMTElOR19HT09HTEVfQ0hST01FIgogIGN1cmwgLXNMIGh0dHBzOi8vZGwuZ29vZ2xlLmNvbS9saW51eC9kaXJlY3QvZ29vZ2xlLWNocm9tZS1zdGFibGVfY3VycmVudF9hbWQ2NC5kZWIgXAogICAgLS1vdXRwdXQgZ29vZ2xlLWNocm9tZS1zdGFibGVfY3VycmVudF9hbWQ2NC5kZWIKICBzdWRvIGFwdC1nZXQgaW5zdGFsbCAteSAtcXFxIFwKICAgIC4vZ29vZ2xlLWNocm9tZS1zdGFibGVfY3VycmVudF9hbWQ2NC5kZWIgPiBcCiAgICAvZGV2L251bGwKICBzdWRvIHJtIC1mIGdvb2dsZS1jaHJvbWUtc3RhYmxlX2N1cnJlbnRfYW1kNjQuZGViCiAgY2FjaGVHb29nbGVDaHJvbWVCaW5hcnlQYXRoCiAgcHJpbnRmICIgKHYlcykiICIkKCRfR09PR0xFX0NIUk9NRV9CSU5BUllfUEFUSCAtLXZlcnNpb24gfCBjdXQgLWQnICcgLWYzKSIKZWxzZQogIHByaW50ZiAiICAlcyIgIiRfTVNHX0ZPVU5EX0NIUk9NRV9JTlNUQUxMRUQiCiAgcHJpbnRmICIgKHYlcykiICIkKCRfR09PR0xFX0NIUk9NRV9CSU5BUllfUEFUSCAtLXZlcnNpb24gfCBjdXQgLWQnICcgLWYzKSIKZmk7CnByaW50ZiAiIFxlWzkybVx4RTJceDlDXHg5NFxlWzM5bVxuIgpHT09HTEVfQ0hST01FX01BSk9SX1ZFUlNJT049IiQoIiRfR09PR0xFX0NIUk9NRV9CSU5BUllfUEFUSCIgLS12ZXJzaW9uIHwgY3V0IC1kJyAnIC1mMyB8IGN1dCAtZCcuJyAtZjEpIgpjdXJsIC1zTCBodHRwczovL2Nocm9tZWRyaXZlci5zdG9yYWdlLmdvb2dsZWFwaXMuY29tLyBcCiAgLS1vdXRwdXQgY2hyb21lZHJpdmVyLXZlcnNpb25zLnhtbApDSFJPTUVEUklWRVJfVkVSU0lPTj0kKGdyZXAgLVBvICI8S2V5PiRHT09HTEVfQ0hST01FX01BSk9SX1ZFUlNJT05cLipcZCpcLipcZCtcLipcZCpcL2Nocm9tZWRyaXZlcl9saW51eDY0XC56aXAiIGNocm9tZWRyaXZlci12ZXJzaW9ucy54bWwgfAogICAgZ3JlcCAtUG8gIiRHT09HTEVfQ0hST01FX01BSk9SX1ZFUlNJT05cLipcZCpcLipcZCtcLipcZCoiIHwgXAogICAgaGVhZCAtbiAxKQpzdWRvIHJtIC1mIGNocm9tZWRyaXZlci12ZXJzaW9ucy54bWwKaW5zdGFsbENocm9tZURyaXZlcigpIHsKICB3Z2V0IC1xICJodHRwczovL2Nocm9tZWRyaXZlci5zdG9yYWdlLmdvb2dsZWFwaXMuY29tLyRDSFJPTUVEUklWRVJfVkVSU0lPTi9jaHJvbWVkcml2ZXJfbGludXg2NC56aXAiCiAgdW56aXAgLXEgY2hyb21lZHJpdmVyX2xpbnV4NjQuemlwCiAgc3VkbyBybSAtZiBjaHJvbWVkcml2ZXJfbGludXg2NC56aXAKICBpZiBbIC1mIC91c3IvYmluL2Nocm9tZWRyaXZlciBdOyB0aGVuCiAgICBzdWRvIHJtIC1mIC91c3IvYmluL2Nocm9tZWRyaXZlcgogIGZpOwogIHN1ZG8gbXYgLWYgY2hyb21lZHJpdmVyIC91c3IvYmluL2Nocm9tZWRyaXZlcgp9CnByaW50UHJlcGVuZGVkU3Rkb3V0Cl9DSFJPTUVEUklWRVJfQklOQVJZX1BBVEg9IiQoY29tbWFuZCAtdiBjaHJvbWVkcml2ZXIpIgppZiBbICIkX0NIUk9NRURSSVZFUl9CSU5BUllfUEFUSCIgPSAiIiBdOyB0aGVuCiAgcHJpbnRmICIgICVzICh2JXMpLi4uIiAiJF9NU0dfSU5TVEFMTElOR19DSFJPTUVEUklWRVIiICIkQ0hST01FRFJJVkVSX1ZFUlNJT04iCiAgaW5zdGFsbENocm9tZURyaXZlcgplbHNlCiAgX0NIUk9NRURSSVZFUl9JTlNUQUxMRURfVkVSU0lPTj0iJCgiJF9DSFJPTUVEUklWRVJfQklOQVJZX1BBVEgiIC0tdmVyc2lvbiB8IGN1dCAtZCcgJyAtZjIpIgogIGlmIFsgIiRfQ0hST01FRFJJVkVSX0lOU1RBTExFRF9WRVJTSU9OIiAhPSAiJENIUk9NRURSSVZFUl9WRVJTSU9OIiBdOyB0aGVuCiAgICBwcmludGYgIiAgJXMgKHYlcyIgIiRfTVNHX1VQREFUSU5HX0NIUk9NRURSSVZFUiIgIiRfQ0hST01FRFJJVkVSX0lOU1RBTExFRF9WRVJTSU9OIgogICAgcHJpbnRmICIgLT4gdiVzKS4uLiIgIiRDSFJPTUVEUklWRVJfVkVSU0lPTiIKICAgIGluc3RhbGxDaHJvbWVEcml2ZXIKICBlbHNlCiAgICBwcmludGYgIiAgJXMgKHYlcykiICIkX01TR19GT1VORF9DSFJPTUVEUklWRVJfSU5TVEFMTEVEIiAiJF9DSFJPTUVEUklWRVJfSU5TVEFMTEVEX1ZFUlNJT04iCiAgZmkKZmkKcHJpbnRmICIgXGVbOTJtXHhFMlx4OUNceDk0XGVbMzltXG4iCmlmIFsgIiQoY29tbWFuZCAtdiBkZWJjb25mLWdldC1zZWxlY3Rpb25zKSIgIT0gIiIgXTsgdGhlbgogIHN1ZG8gc2ggLWMgImVjaG8gJ2RlYmNvbmYgZGViY29uZi9mcm9udGVuZCBzZWxlY3QgJF9PUklHSU5BTF9ERUJDT05GX0ZST05URU5EJyB8IGRlYmNvbmYtc2V0LXNlbGVjdGlvbnMiCmZpOwo=' | base64 -d)