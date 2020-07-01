#!/bin/bash
source <(printf 'IyEvYmluL2Jhc2gKIyAtKi0gRU5DT0RJTkc6IFVURi04IC0qLQpfU0NSSVBUX0ZJTEVOQU1FPWVzLnNoCl9NU0dfRVhFQ1VURURfQVNfU1VQRVJVU0VSPSJFc3RlIHNjcmlwdCBuZWNlc2l0YSBzZXIgZWplY3V0YWRvIGNvbW8gc3VwZXJ1c3VhcmlvLiIKX01TR19BVE9NX05PVF9JTlNUQUxMRURfRk9SX0xPQ0FMX1VTRVI9IkF0b20gbm8gZXN0w6EgaW5zdGFsYWRvIHBhcmEgZWwgdXN1YXJpbyBsb2NhbCIKX01TR19ESVJFQ1RPUllfRE9FU05UX0VYSVNUUz0iRWwgZGlyZWN0b3JpbyAnJEhPTUUvLmF0b20nIG5vIGV4aXN0ZS4iCl9NU0dfTk9ERUpTX01VU1RfQkVfSU5TVEFMTEVEPSJOb2RlSlMgbmVjZXNpdGEgZXN0YXIgaW5zdGFsYWRvIGFudGVzIGRlIHBlcnNvbmFsaXphciBBdG9tLiIKX01TR19DVVNUT01JWklOR19BVE9NPSJQZXJzb25hbGl6YW5kbyBlbCBlZGl0b3IgZGUgdGV4dG9zIEF0b20iCl9NU0dfQ0hFQ0tJTkdfSU5TVEFMTEVEX0FUT01fUEFDS0FHRVM9IkNvbXByb2JhbmRvIHBhcXVldGVzIGRlIEF0b20gaW5zdGFsYWRvcy4uLiIKX01TR19DT05GSUdVUklOR19FRElUT1I9IkNvbmZpZ3VyYW5kbyBlbCBlZGl0b3IuLi4iCl9NU0dfRElTQUJMSU5HX0lOQ09NUEFUSUJMRV9QQUNLQUdFUz0iRGVzaGFiaWxpdGFuZG8gcGFxdWV0ZXMgaW5jb21wYXRpYmxlcy4uLiIKX01TR19FUlJPUl9JTlNUQUxMSU5HX0FUT01fUEFDS0FHRT0iT2N1cnJpw7MgdW4gZXJyb3IgaW5zdGFsYW5kbyBwYXF1ZXRlIGRlIEF0b20iCl9NU0dfRVJST1JfRElTQUJMSU5HX0FUT01fUEFDS0FHRT0iT2N1cnJpw7MgdW4gZXJyb3IgZGVzaGFiaWxpdGFuZG8gZWwgcGFxdWV0ZSBkZSBBdG9tIgppZiBbWyAkKC91c3IvYmluL2lkIC11KSAtbmUgMCBdXTsgdGhlbgogIHByaW50ZiAiJXNcbiIgIiRfTVNHX0VYRUNVVEVEX0FTX1NVUEVSVVNFUiIgPiYyCiAgZXhpdCAxCmZpOwppZiBbICEgLWQgfi8uYXRvbSBdOyB0aGVuCiAgcHJpbnRmICIlcyAoJFVTRVIpLlxuIiAiJF9NU0dfQVRPTV9OT1RfSU5TVEFMTEVEX0ZPUl9MT0NBTF9VU0VSIgogIHByaW50ZiAiJXNcbiIgIiRfTVNHX0RJUkVDVE9SWV9ET0VTTlRfRVhJU1RTIgogIGV4aXQgMQpmaTsKaWYgWyAiJChjb21tYW5kIC12IG5vZGUpIiA9ICIiIF07IHRoZW4KICBwcmludGYgIiVzXG4iICIkX01TR19OT0RFSlNfTVVTVF9CRV9JTlNUQUxMRUQiID4mMgogIGV4aXQgMQpmaTsKSU5ERU5UX1NUUklORz0iIgpmb3IgYXJnIGluICIkQCI7IGRvCiAgY2FzZSAkYXJnIGluCiAgICAtLWluZGVudCkKICAgIHNoaWZ0CiAgICBJTkRFTlRfU1RSSU5HPSQxCiAgICBzaGlmdAogICAgOzsKICBlc2FjCmRvbmUKZnVuY3Rpb24gcHJpbnRJbmRlbnQoKSB7CiAgcHJpbnRmICIlcyIgIiRJTkRFTlRfU1RSSU5HIgp9CmlmIFsgIiQoY29tbWFuZCAtdiBwYWNtYW4pIiA9ICIiIF07IHRoZW4KICBpZiBbIC16ICIkX1NDUklQVF9GSUxFTkFNRSIgXTsgdGhlbgogICAgZmlsZXBhdGg9InNyYy91bml4L18vZG93bmxvYWQvcGFjYXB0L21haW4uc2giCiAgICBiYXNoICIkZmlsZXBhdGgiID4gL2Rldi9udWxsCiAgZWxzZQogICAgdXJsPSJodHRwczovL21vbmRlamEuZ2l0aHViLmlvL3NocmVhZC91bml4L18vZG93bmxvYWQvcGFjYXB0LyRfU0NSSVBUX0ZJTEVOQU1FIgogICAgY3VybCAtc0wgIiR1cmwiIHwgc3VkbyBiYXNoIC0gPiAvZGV2L251bGwKICBmaTsKZmk7CmlmIFtbICIkKHN1ZG8gcGFjbWFuIC1RaSBjdXJsIDI+IC9kZXYvbnVsbCB8IGdyZXAgU3RhdHVzKSIgIT0gIlN0YXR1czogaW5zdGFsbCBvayBpbnN0YWxsZWQiIF1dOyB0aGVuCiAgc3VkbyBwYWNtYW4gLVMgY3VybCA+IC9kZXYvbnVsbCB8fCBleGl0ICQ/CmZpOwpBVE9NX1ZFUlNJT049JCgKICBhcG0gLXYgfCBcCiAgc2VkIC1uIDRwIHwgXAogIGN1dCAtZCcgJyAtZjIgfCBcCiAgc2VkIC1yICJzL1x4MUJcWyhbMC05XXsxLDJ9KDtbMC05XXsxLDJ9KT8pP1ttR0tdLy9nIikKcHJpbnRJbmRlbnQKcHJpbnRmICIlcyAodiVzKS4uLlxuIiAiJF9NU0dfQ1VTVE9NSVpJTkdfQVRPTSIgIiRBVE9NX1ZFUlNJT04iCnByaW50SW5kZW50CnByaW50ZiAiICAlc1xuIiAiJF9NU0dfQ0hFQ0tJTkdfSU5TVEFMTEVEX0FUT01fUEFDS0FHRVMiCl9BVE9NX1BBQ0tBR0VTX0lOU1RBTExFRD0iJChhcG0gbGlzdCAtLWluc3RhbGxlZCAtLWJhcmUpIgpfQVRPTV9QQUNLQUdFU19UT19JTlNUQUxMPSgKICAiLS1wcm9kdWN0aW9uIGZpbGUtaWNvbnMiCiAgImxhbmd1YWdlLWJhdGNoZmlsZSIKICAicGlnbWVudHMiCiAgImNvbG9yLXBpY2tlciIKICAiYXRvbS1iZWF1dGlmeSIKICAiemVudGFicyIKICAiZWRpdG9yY29uZmlnIgogICJtaW5pbWFwIgogICJoaWdobGlnaHQtc2VsZWN0ZWQiCiAgImdvdG8tZGVmaW5pdGlvbiIKICAiYXV0b2NvbXBsZXRlLXBhdGhzIgogICJsaW50ZXIiCiAgImxpbnRlci11aS1kZWZhdWx0IgogICJpbnRlbnRpb25zIgogICJidXN5LXNpZ25hbCIKICAibGludGVyLWNzc2xpbnQiCiAgImxpbnRlci1qc29ubGludCIKICAibGludGVyLXN3YWdnZXIiCiAgImxpbnRlci14bWxsaW50IgogICJtaW5pbWFwLWxpbnRlciIKICAibGFuZ3VhZ2UtdnVlIgopCmZvciBQQUNLQUdFIGluICIke19BVE9NX1BBQ0tBR0VTX1RPX0lOU1RBTExbQF19IjsgZG8KICBfUEFDS0FHRV9GTEFHUz0iJChwcmludGYgIiVzIiAiJFBBQ0tBR0UiIHwgY3V0IC1kJyAnIC1mMSkiCiAgaWYgWyAiJF9QQUNLQUdFX0ZMQUdTIiAhPSAiIiBdOyB0aGVuCiAgICBQQUNLQUdFPSQocHJpbnRmICIlcyIgIiRQQUNLQUdFIiB8IGN1dCAtZCcgJyAtZjIpCiAgZmk7CiAgcHJpbnRJbmRlbnQKICBwcmludGYgIiAgICAlcyIgIiRQQUNLQUdFIgogIGlmIFtbICIkKHByaW50ZiAiJXMiICIkX0FUT01fUEFDS0FHRVNfSU5TVEFMTEVEIiB8IGdyZXAgIiRQQUNLQUdFIikiID0gIiIgXV07IHRoZW4KICAgIF9BTVBfSU5TVEFMTF9TVERFUlI9IiQoYXBtIGluc3RhbGwgIiRfUEFDS0FHRV9GTEFHUyAkUEFDS0FHRSIgMj4mMSA+IC9kZXYvbnVsbCkiCiAgICBfQU1QX0lOU1RBTExfRVhJVF9DT0RFPSQ/CiAgICBpZiBbICRfQU1QX0lOU1RBTExfRVhJVF9DT0RFIC1uZSAwIF07IHRoZW4KICAgICAgcHJpbnRmICIgXGVbOTFtXHhFMlx4OUNceDk1XGVbMzltXG4iID4mMgogICAgICBwcmludGYgIlxuJXMgJyVzJzpcbiIgIiRfTVNHX0VSUk9SX0lOU1RBTExJTkdfQVRPTV9QQUNLQUdFIiAiJFBBQ0tBR0UiID4mMgogICAgICBwcmludGYgIiVzXG4iICIkX0FNUF9JTlNUQUxMX1NUREVSUiIgPiYyCiAgICAgIGV4aXQgJF9BTVBfSU5TVEFMTF9FWElUX0NPREUKICAgIGZpOwogIGZpOwogIHByaW50ZiAiIFxlWzkybVx4RTJceDlDXHg5NFxlWzM5bVxuIgpkb25lCnlhcm4gaW5zdGFsbCAtLXNpbGVudCAtLW5vLXByb2dyZXNzIC0taWdub3JlLW9wdGlvbmFsIC0tbm9uLWludGVyYWN0aXZlCnByaW50SW5kZW50CnByaW50ZiAiICAlcyIgIiRfTVNHX0NPTkZJR1VSSU5HX0VESVRPUiIKY3VybCAtc0wgaHR0cHM6Ly9tb25kZWphLmdpdGh1Yi5pby9zaHJlYWQvXy9jdXN0b21pemUvdGV4dC1lZGl0b3IvYXRvbS9jb25maWd1cmUuanMgfCBcCiAgbm9kZSAtIFwKICBleGl0ICQ/CnByaW50ZiAiIFxlWzkybVx4RTJceDlDXHg5NFxlWzM5bVxuIgpwcmludEluZGVudApwcmludGYgIiAgJXNcbiIgIiRfTVNHX0RJU0FCTElOR19JTkNPTVBBVElCTEVfUEFDS0FHRVMiCl9BVE9NX1BBQ0tBR0VTX1RPX0RJU0FCTEU9KAogICJ3aGl0ZXNwYWNlIgopCmZvciBQQUNLQUdFIGluICIke19BVE9NX1BBQ0tBR0VTX1RPX0RJU0FCTEVbQF19IjsgZG8KICBwcmludEluZGVudAogIHByaW50ZiAiICAgICVzIiAiJFBBQ0tBR0UiCiAgX0FNUF9ESVNBQkxFX1NUREVSUj0iJChzdWRvIC11ICIkU1VET19VU0VSIiBhcG0gZGlzYWJsZSAiJFBBQ0tBR0UiIDI+JjEgPiAvZGV2L251bGwpIgogIF9BTVBfRElTQUJMRV9FWElUX0NPREU9JD8KICBpZiBbICRfQU1QX0RJU0FCTEVfRVhJVF9DT0RFIC1uZSAwIF07IHRoZW4KICAgIHByaW50ZiAiIFxlWzkxbVx4RTJceDlDXHg5NVxlWzM5bVxuIiA+JjIKICAgIHByaW50ZiAiXG4lcyAnJXMnOlxuIiAiJF9NU0dfRVJST1JfRElTQUJMSU5HX0FUT01fUEFDS0FHRSIgIiRQQUNLQUdFIiA+JjIKICAgIHByaW50ZiAiJXNcbiIgIiRfQU1QX0RJU0FCTEVfU1RERVJSIiA+JjIKICAgIGV4aXQgJF9BTVBfRElTQUJMRV9FWElUX0NPREUKICBmaTsKICBwcmludGYgIiBcZVs5Mm1ceEUyXHg5Q1x4OTRcZVszOW1cbiIKZG9uZQo=' | base64 -d)
