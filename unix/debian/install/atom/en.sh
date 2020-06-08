#!/bin/bash
source <(printf 'IyEvYmluL2Jhc2gKIyAtKi0gRU5DT0RJTkc6IFVURi04IC0qLQpfTVNHX0VYRUNVVEVEX0FTX1NVUEVSVVNFUj0iVGhpcyBzY3JpcHQgbmVlZHMgdG8gYmUgZXhlY3V0ZWQgYXMgc3VwZXJ1c2VyLiIKX01TR19BTFJFQURZX0lOU1RBTExFRD0iaXMgYWxyZWFkeSBpbnN0YWxsZWQiCl9NU0dfQ0hFQ0tJTkdfQVRPTT0iQ2hlY2tpbmcgQXRvbS4uLiIKX01TR19FUlJPUl9PQlRBSU5JTkdfQVRPTV9QVUJMSUNfS0VZPSJBbiBlcnJvciBoYXBwZW4gcmVyaWV2aW5nIEF0b20gcHVibGljIGtleToiCl9NU0dfQURESU5HX1JFUE89IkFkZGluZyByZXBvc2l0b3J5Li4uIgpfTVNHX1VQREFUSU5HX1BBQ0tBR0VTPSJVcGRhdGluZyBwYWNrYWdlcy4uLiIKX01TR19BVE9NX0ZPVU5EPSJBdG9tIGZvdW5kIgpfTVNHX1JVTk5JTkdfSU5TVEFMTEFUSU9OX1NDUklQVD0iUnVubmluZyBpbnN0YWxsYXRpb24gc2NyaXB0Li4uIgpfTVNHX0VSUk9SX0lOU1RBTExJTkdfQVRPTT0iQW4gZXJyb3IgaGFwcGVuIGluc3RhbGxpbmcgQXRvbSIKaWYgW1sgJCgvdXNyL2Jpbi9pZCAtdSkgLW5lIDAgXV07IHRoZW4KICBwcmludGYgIiVzXG4iICIkX01TR19FWEVDVVRFRF9BU19TVVBFUlVTRVIiID4mMgogIGV4aXQgMQpmaTsKSU5ERU5UX1NUUklORz0iIgpmb3IgYXJnIGluICIkQCI7IGRvCiAgY2FzZSAkYXJnIGluCiAgICAtLWluZGVudCkKICAgIHNoaWZ0CiAgICBJTkRFTlRfU1RSSU5HPSQxCiAgICBzaGlmdAogICAgOzsKICBlc2FjCmRvbmUKZnVuY3Rpb24gcHJpbnRQcmVwZW5kZWRTdGRvdXQoKSB7CiAgcHJpbnRmICIlcyIgIiRJTkRFTlRfU1RSSU5HIgp9CnByaW50UHJlcGVuZGVkU3Rkb3V0CkFUT01fQklOQVJZX1BBVEg9IiQoY29tbWFuZCAtdiBhdG9tKSIKaWYgWyAiJEFUT01fQklOQVJZX1BBVEgiICE9ICIiIF07IHRoZW4KICBBVE9NX1ZFUlNJT049JCgKICAgIGFwbSAtdiB8IFwKICAgIHNlZCAtbiA0cCB8IFwKICAgIGN1dCAtZCcgJyAtZjIgfCBcCiAgICBzZWQgLXIgInMvXHgxQlxbKFswLTldezEsMn0oO1swLTldezEsMn0pPyk/W21HS10vL2ciKQogIHByaW50ZiAiQXRvbSB2JXMgJXMiICIkQVRPTV9WRVJTSU9OIiAiJF9NU0dfQUxSRUFEWV9JTlNUQUxMRUQiCiAgcHJpbnRmICIgXGVbOTJtXHhFMlx4OUNceDk0XGVbMzltXG4iCmVsc2UKICBwcmludGYgIiVzXG4iICIkX01TR19DSEVDS0lOR19BVE9NIgogIElOU1RBTExBVElPTl9ERVBFTkRFTkNJRVM9KAogICAgIndnZXQiCiAgICAianEiCiAgKQogIGZvciBERVAgaW4gIiR7SU5TVEFMTEFUSU9OX0RFUEVOREVOQ0lFU1tAXX0iOyBkbwogICAgaWYgW1sgIiQoZHBrZyAtcyAiJERFUCIgMj4gL2Rldi9udWxsIHwgZ3JlcCBTdGF0dXMpIiAhPSAiU3RhdHVzOiBpbnN0YWxsIG9rIGluc3RhbGxlZCIgXV07IHRoZW4KICAgICAgc3VkbyBhcHQtZ2V0IGluc3RhbGwgLXkgLXFxcSAiJERFUCIgPiAvZGV2L251bGwgfHwgZXhpdCAkPwogICAgZmk7CiAgZG9uZTsKICBwcmludFByZXBlbmRlZFN0ZG91dAogIHByaW50ZiAiICAlcy4uLiIgIiRfTVNHX0FERElOR19SRVBPIgogIFNJR05fQVRPTV9HUEdfS0VZX1NUREVSUj0kKAogICAgd2dldCAtcU8gLSBodHRwczovL3BhY2thZ2VjbG91ZC5pby9BdG9tRWRpdG9yL2F0b20vZ3Bna2V5IHwgXAogICAgc3VkbyBhcHQta2V5IGFkZCAtIDI+JjEgPiAvZGV2L251bGwpCiAgU0lHTl9BVE9NX0dQR19LRVlfRVhJVF9DT0RFPSQ/CiAgaWYgWyAkU0lHTl9BVE9NX0dQR19LRVlfRVhJVF9DT0RFIC1uZSAwIF07IHRoZW4KICAgIHByaW50ZiAiIFxlWzkxbVx4RTJceDlDXHg5NVxlWzM5bVxuIiA+JjIKICAgIHByaW50ZiAiXG4lc1xuIiAiJF9NU0dfRVJST1JfT0JUQUlOSU5HX0FUT01fUFVCTElDX0tFWSIgPiYyCiAgICBwcmludGYgIiVzXG4iICIkU0lHTl9BVE9NX0dQR19LRVlfU1RERVJSIiA+JjIKICAgIGV4aXQgJFNJR05fQVRPTV9HUEdfS0VZX0VYSVRfQ09ERQogIGZpOwogIHN1ZG8gc2ggLWMgJ2VjaG8gImRlYiBbYXJjaD1hbWQ2NF0gaHR0cHM6Ly9wYWNrYWdlY2xvdWQuaW8vQXRvbUVkaXRvci9hdG9tL2FueS8gYW55IG1haW4iID4gL2V0Yy9hcHQvc291cmNlcy5saXN0LmQvYXRvbS5saXN0JwogIHByaW50ZiAiIFxlWzkybVx4RTJceDlDXHg5NFxlWzM5bVxuIgogIHByaW50UHJlcGVuZGVkU3Rkb3V0CiAgcHJpbnRmICIgICVzIiAiJF9NU0dfVVBEQVRJTkdfUEFDS0FHRVMiCiAgc3VkbyBhcHQtZ2V0IHVwZGF0ZSAtcXFxID4gL2Rldi9udWxsCiAgcHJpbnRmICIgXGVbOTJtXHhFMlx4OUNceDk0XGVbMzltXG4iCiAgQVRPTV9WRVJTSU9OPSQoCiAgICBhcHQtY2FjaGUgc2hvdyBhdG9tIHwgXAogICAgZ3JlcCBWZXJzaW9uIHwgXAogICAgaGVhZCAtbiAxIHwgXAogICAgY3V0IC1kJyAnIC1mMikKICBpZiBbICIkQVRPTV9WRVJTSU9OIiAhPSAiIiBdOyB0aGVuCiAgICBwcmludFByZXBlbmRlZFN0ZG91dAogICAgcHJpbnRmICIgICVzICh2JXMpIiAiJF9NU0dfQVRPTV9GT1VORCIgIiRBVE9NX1ZFUlNJT04iCiAgICBwcmludGYgIiBcZVs5Mm1ceEUyXHg5Q1x4OTRcZVszOW1cbiIKICBmaTsKICBwcmludFByZXBlbmRlZFN0ZG91dAogIHByaW50ZiAiICAlcyIgIiRfTVNHX1JVTk5JTkdfSU5TVEFMTEFUSU9OX1NDUklQVCIKICBJTlNUQUxMX0FUT01fU1RERVJSPSQoCiAgICBzdWRvIGFwdC1nZXQgaW5zdGFsbCBhdG9tIC15IC1xcXEgMj4mMSA+IC9kZXYvbnVsbCkKICBJTlNUQUxMX0FUT01fRVhJVF9DT0RFPSQ/CiAgaWYgWyAiJElOU1RBTExfQVRPTV9FWElUX0NPREUiIC1uZSAwIF07IHRoZW4KICAgIHByaW50ZiAiIFxlWzkxbVx4RTJceDlDXHg5NVxlWzM5bVxuIiA+JjIKICAgIHByaW50ZiAiXG4lcyIgIiRfTVNHX0VSUk9SX0lOU1RBTExJTkdfQVRPTSIgPiYyCiAgICBpZiBbICIkQVRPTV9WRVJTSU9OIiAhPSAiIiBdOyB0aGVuCiAgICAgIHByaW50ZiAiICh2JXMpIiAiJEFUT01fVkVSU0lPTiIgPiYyCiAgICBmaTsKICAgIHByaW50ZiAiOlxuJXNcbiIgIiRJTlNUQUxMX0FUT01fU1RERVJSIiA+JjIKICAgIGV4aXQgJElOU1RBTExfQVRPTV9FWElUX0NPREUKICBmaTsKICBwcmludGYgIiBcZVs5Mm1ceEUyXHg5Q1x4OTRcZVszOW1cbiIKZmk7Cg==' | base64 -d)
