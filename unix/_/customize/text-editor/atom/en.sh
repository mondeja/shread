#!/bin/bash
source <(printf 'IyEvYmluL2Jhc2gKIyAtKi0gRU5DT0RJTkc6IFVURi04IC0qLQpfTVNHX0VYRUNVVEVEX0FTX1NVUEVSVVNFUj0iVGhpcyBzY3JpcHQgbmVlZHMgdG8gYmUgZXhlY3V0ZWQgYXMgc3VwZXJ1c2VyLiIKX01TR19BVE9NX05PVF9JTlNUQUxMRURfRk9SX0xPQ0FMX1VTRVI9IkF0b20gaXMgbm90IGluc3RhbGxlZCBmb3IgbG9jYWwgdXNlciIKX01TR19ESVJFQ1RPUllfRE9FU05UX0VYSVNUUz0iVGhlIGRpcmVjdG9yeSAnJEhPTUUvLmF0b20nIGRvZXNuJ3QgZXhpc3RzLiIKX01TR19OT0RFSlNfTVVTVF9CRV9JTlNUQUxMRUQ9Ik5vZGVKUyBuZWVkcyB0byBiZSBpbnN0YWxsZWQgYmVmb3JlIGN1c3RvbWl6ZSBBdG9tLiIKX01TR19DVVNUT01JWklOR19BVE9NPSJDdXN0b21pemluZyBBdG9tIHRleHQgZWRpdG9yIgpfTVNHX0NIRUNLSU5HX0lOU1RBTExFRF9BVE9NX1BBQ0tBR0VTPSJDaGVja2luZyBBdG9tIHBhY2thZ2VzIGluc3RhbGxlZC4uLiIKX01TR19DT05GSUdVUklOR19FRElUT1I9IlNldHRpbmcgdXAgZWRpdG9yLi4uIgpfTVNHX0RJU0FCTElOR19JTkNPTVBBVElCTEVfUEFDS0FHRVM9IkRpc2FibGluZyBpbmNvbXBhdGlibGUgcGFja2FnZXMuLi4iCl9NU0dfRVJST1JfSU5TVEFMTElOR19BVE9NX1BBQ0tBR0U9IkFuIGVycm9yIGhhcHBlbiBpbnN0YWxsaW5nIHRoZSBBdG9tIHBhY2thZ2UiCl9NU0dfRVJST1JfRElTQUJMSU5HX0FUT01fUEFDS0FHRT0iQW4gZXJyb3IgaGFwcGVuIGRpc2FibGluZyB0aGUgQXRvbSBwYWNrYWdlIgppZiBbWyAkKC91c3IvYmluL2lkIC11KSAtbmUgMCBdXTsgdGhlbgogIHByaW50ZiAiJXNcbiIgIiRfTVNHX0VYRUNVVEVEX0FTX1NVUEVSVVNFUiIgPiYyCiAgZXhpdCAxCmZpOwppZiBbICEgLWQgfi8uYXRvbSBdOyB0aGVuCiAgcHJpbnRmICIlcyAoJFVTRVIpLlxuIiAiJF9NU0dfQVRPTV9OT1RfSU5TVEFMTEVEX0ZPUl9MT0NBTF9VU0VSIgogIHByaW50ZiAiJXNcbiIgIiRfTVNHX0RJUkVDVE9SWV9ET0VTTlRfRVhJU1RTIgogIGV4aXQgMQpmaTsKaWYgWyAiJChjb21tYW5kIC12IG5vZGUpIiA9ICIiIF07IHRoZW4KICBwcmludGYgIiVzXG4iICIkX01TR19OT0RFSlNfTVVTVF9CRV9JTlNUQUxMRUQiID4mMgogIGV4aXQgMQpmaTsKSU5ERU5UX1NUUklORz0iIgpmb3IgYXJnIGluICIkQCI7IGRvCiAgY2FzZSAkYXJnIGluCiAgICAtLWluZGVudCkKICAgIHNoaWZ0CiAgICBJTkRFTlRfU1RSSU5HPSQxCiAgICBzaGlmdAogICAgOzsKICBlc2FjCmRvbmUKZnVuY3Rpb24gcHJpbnRQcmVwZW5kZWRTdGRvdXQoKSB7CiAgcHJpbnRmICIlcyIgIiRJTkRFTlRfU1RSSU5HIgp9CmlmIFsgIiQoY29tbWFuZCAtdiBwYWNtYW4pIiA9ICIiIF07IHRoZW4KICBTQ1JJUFRfRklMRU5BTUU9IiQoYmFzZW5hbWUgIiQwIikiCiAgaWYgWyAiJFNDUklQVF9GSUxFTkFNRSIgPSAibWFpbi5zaCIgXTsgdGhlbgogICAgZmlsZXBhdGg9InNyYy91bml4L18vZG93bmxvYWQvcGFjYXB0L21haW4uc2giCiAgICBiYXNoICIkZmlsZXBhdGgiID4gL2Rldi9udWxsCiAgZWxzZQogICAgdXJsPSJodHRwczovL21vbmRlamEuZ2l0aHViLmlvL3NocmVhZC91bml4L18vZG93bmxvYWQvcGFjYXB0LyRTQ1JJUFRfRklMRU5BTUUiCiAgICBjdXJsIC1zTCAiJHVybCIgfCBzdWRvIGJhc2ggLSA+IC9kZXYvbnVsbAogIGZpOwpmaTsKaWYgW1sgIiQoc3VkbyBwYWNtYW4gLVFpIGN1cmwgMj4gL2Rldi9udWxsIHwgZ3JlcCBTdGF0dXMpIiAhPSAiU3RhdHVzOiBpbnN0YWxsIG9rIGluc3RhbGxlZCIgXV07IHRoZW4KICBzdWRvIHBhY21hbiAtUyBjdXJsID4gL2Rldi9udWxsIHx8IGV4aXQgJD8KZmk7CkFUT01fVkVSU0lPTj0kKAogIGFwbSAtdiB8IFwKICBzZWQgLW4gNHAgfCBcCiAgY3V0IC1kJyAnIC1mMiB8IFwKICBzZWQgLXIgInMvXHgxQlxbKFswLTldezEsMn0oO1swLTldezEsMn0pPyk/W21HS10vL2ciKQpwcmludFByZXBlbmRlZFN0ZG91dApwcmludGYgIiVzICh2JXMpLi4uXG4iICIkX01TR19DVVNUT01JWklOR19BVE9NIiAiJEFUT01fVkVSU0lPTiIKcHJpbnRQcmVwZW5kZWRTdGRvdXQKcHJpbnRmICIgICVzXG4iICIkX01TR19DSEVDS0lOR19JTlNUQUxMRURfQVRPTV9QQUNLQUdFUyIKX0FUT01fUEFDS0FHRVNfSU5TVEFMTEVEPSIkKGFwbSBsaXN0IC0taW5zdGFsbGVkIC0tYmFyZSkiCl9BVE9NX1BBQ0tBR0VTX1RPX0lOU1RBTEw9KAogICItLXByb2R1Y3Rpb24gZmlsZS1pY29ucyIKICAibGFuZ3VhZ2UtYmF0Y2hmaWxlIgogICJwaWdtZW50cyIKICAiY29sb3ItcGlja2VyIgogICJhdG9tLWJlYXV0aWZ5IgogICJ6ZW50YWJzIgogICJlZGl0b3Jjb25maWciCiAgIm1pbmltYXAiCiAgImhpZ2hsaWdodC1zZWxlY3RlZCIKICAiZ290by1kZWZpbml0aW9uIgogICJhdXRvY29tcGxldGUtcGF0aHMiCiAgImxpbnRlciIKICAibGludGVyLXVpLWRlZmF1bHQiCiAgImludGVudGlvbnMiCiAgImJ1c3ktc2lnbmFsIgogICJsaW50ZXItY3NzbGludCIKICAibGludGVyLWpzb25saW50IgogICJsaW50ZXItc3dhZ2dlciIKICAibGludGVyLXhtbGxpbnQiCiAgIm1pbmltYXAtbGludGVyIgogICJsYW5ndWFnZS12dWUiCikKZm9yIFBBQ0tBR0UgaW4gIiR7X0FUT01fUEFDS0FHRVNfVE9fSU5TVEFMTFtAXX0iOyBkbwogIF9QQUNLQUdFX0ZMQUdTPSIkKHByaW50ZiAiJXMiICIkUEFDS0FHRSIgfCBjdXQgLWQnICcgLWYxKSIKICBpZiBbICIkX1BBQ0tBR0VfRkxBR1MiICE9ICIiIF07IHRoZW4KICAgIFBBQ0tBR0U9JChwcmludGYgIiVzIiAiJFBBQ0tBR0UiIHwgY3V0IC1kJyAnIC1mMikKICBmaTsKICBwcmludFByZXBlbmRlZFN0ZG91dAogIHByaW50ZiAiICAgICVzIiAiJFBBQ0tBR0UiCiAgaWYgW1sgIiQocHJpbnRmICIlcyIgIiRfQVRPTV9QQUNLQUdFU19JTlNUQUxMRUQiIHwgZ3JlcCAiJFBBQ0tBR0UiKSIgPSAiIiBdXTsgdGhlbgogICAgX0FNUF9JTlNUQUxMX1NUREVSUj0iJChhcG0gaW5zdGFsbCAiJF9QQUNLQUdFX0ZMQUdTICRQQUNLQUdFIiAyPiYxID4gL2Rldi9udWxsKSIKICAgIF9BTVBfSU5TVEFMTF9FWElUX0NPREU9JD8KICAgIGlmIFsgJF9BTVBfSU5TVEFMTF9FWElUX0NPREUgLW5lIDAgXTsgdGhlbgogICAgICBwcmludGYgIiBcZVs5MW1ceEUyXHg5Q1x4OTVcZVszOW1cbiIgPiYyCiAgICAgIHByaW50ZiAiXG4lcyAnJXMnOlxuIiAiJF9NU0dfRVJST1JfSU5TVEFMTElOR19BVE9NX1BBQ0tBR0UiICIkUEFDS0FHRSIgPiYyCiAgICAgIHByaW50ZiAiJXNcbiIgIiRfQU1QX0lOU1RBTExfU1RERVJSIiA+JjIKICAgICAgZXhpdCAkX0FNUF9JTlNUQUxMX0VYSVRfQ09ERQogICAgZmk7CiAgZmk7CiAgcHJpbnRmICIgXGVbOTJtXHhFMlx4OUNceDk0XGVbMzltXG4iCmRvbmUKeWFybiBpbnN0YWxsIC0tc2lsZW50IC0tbm8tcHJvZ3Jlc3MgLS1pZ25vcmUtb3B0aW9uYWwgLS1ub24taW50ZXJhY3RpdmUKcHJpbnRQcmVwZW5kZWRTdGRvdXQKcHJpbnRmICIgICVzIiAiJF9NU0dfQ09ORklHVVJJTkdfRURJVE9SIgpjdXJsIC1zTCBodHRwczovL21vbmRlamEuZ2l0aHViLmlvL3NocmVhZC9fL2N1c3RvbWl6ZS90ZXh0LWVkaXRvci9hdG9tL2NvbmZpZ3VyZS5qcyB8IFwKICBub2RlIC0gXAogIGV4aXQgJD8KcHJpbnRmICIgXGVbOTJtXHhFMlx4OUNceDk0XGVbMzltXG4iCnByaW50UHJlcGVuZGVkU3Rkb3V0CnByaW50ZiAiICAlc1xuIiAiJF9NU0dfRElTQUJMSU5HX0lOQ09NUEFUSUJMRV9QQUNLQUdFUyIKX0FUT01fUEFDS0FHRVNfVE9fRElTQUJMRT0oCiAgIndoaXRlc3BhY2UiCikKZm9yIFBBQ0tBR0UgaW4gIiR7X0FUT01fUEFDS0FHRVNfVE9fRElTQUJMRVtAXX0iOyBkbwogIHByaW50UHJlcGVuZGVkU3Rkb3V0CiAgcHJpbnRmICIgICAgJXMiICIkUEFDS0FHRSIKICBfQU1QX0RJU0FCTEVfU1RERVJSPSIkKHN1ZG8gLXUgIiRTVURPX1VTRVIiIGFwbSBkaXNhYmxlICIkUEFDS0FHRSIgMj4mMSA+IC9kZXYvbnVsbCkiCiAgX0FNUF9ESVNBQkxFX0VYSVRfQ09ERT0kPwogIGlmIFsgJF9BTVBfRElTQUJMRV9FWElUX0NPREUgLW5lIDAgXTsgdGhlbgogICAgcHJpbnRmICIgXGVbOTFtXHhFMlx4OUNceDk1XGVbMzltXG4iID4mMgogICAgcHJpbnRmICJcbiVzICclcyc6XG4iICIkX01TR19FUlJPUl9ESVNBQkxJTkdfQVRPTV9QQUNLQUdFIiAiJFBBQ0tBR0UiID4mMgogICAgcHJpbnRmICIlc1xuIiAiJF9BTVBfRElTQUJMRV9TVERFUlIiID4mMgogICAgZXhpdCAkX0FNUF9ESVNBQkxFX0VYSVRfQ09ERQogIGZpOwogIHByaW50ZiAiIFxlWzkybVx4RTJceDlDXHg5NFxlWzM5bVxuIgpkb25lCg==' | base64 -d)
