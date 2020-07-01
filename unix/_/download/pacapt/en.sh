#!/bin/bash
_SCRIPT_FILENAME="$(basename "$0")" source <(printf 'IyEvYmluL2Jhc2gKIyAtKi0gRU5DT0RJTkc6IFVURi04IC0qLQpfTVNHX0NIRUNLSU5HX1BBQ0FQVD0iQ2hlY2tpbmcgcGFjYXB0IgpfTVNHX1JFVFJJRVZJTkdfTEFTVEVTVF9WRVJTSU9OPSJSZXRyaWV2aW5nIGxhdGVzdCB2ZXJzaW9uIgpfTVNHX0lOU1RBTExFRD0iSW5zdGFsbGVkIgpfTVNHX0ZPVU5EX0lOU1RBTExFRD0iRm91bmQgaW5zdGFsbGVkIgpfTVNHX1VQREFURUQ9IlVwZGF0ZWQiCl9NU0dfREVTVF9FWElTVFM9IkRlc3RpbmF0aW9uIGZpbGUgZXhpc3RzIgpfTVNHX0lORElDQVRFX0FOT1RIRVJfREVTVF9XSVRIX1BBUkFNPSJJbmRpY2F0ZSBhbm90aGVyIGRlc3RpbmF0aW9uIGZvciBwYWNhcHQgd2l0aCBwYXJhbWV0ZXIiCklOREVOVF9TVFJJTkc9IiIKX0RFU1RfUEFUSD0iL3Vzci9sb2NhbC9iaW4vcGFjYXB0Igpmb3IgYXJnIGluICIkQCI7IGRvCiAgY2FzZSAkYXJnIGluCiAgICAtLWluZGVudCkKICAgIHNoaWZ0CiAgICBJTkRFTlRfU1RSSU5HPSQxCiAgICBzaGlmdAogICAgOzsKICAgIC0tZGVzdC1wYXRoKQogICAgc2hpZnQKICAgIF9ERVNUX1BBVEg9JDEKICAgIHNoaWZ0CiAgICA7OwogIGVzYWMKZG9uZQpmdW5jdGlvbiBwcmludEluZGVudCgpIHsKICBwcmludGYgIiVzIiAiJElOREVOVF9TVFJJTkciCn0KaWYgWyAhIC1kICIvdXNyL2xvY2FsL2JpbiIgXTsgdGhlbgogIGlmIFsgISAtZCAiL3Vzci9iaW4iIF07IHRoZW4KICAgIGlmIFsgISAtZCAiL2JpbiIgXTsgdGhlbgogICAgICBJRlM9JzonIHJlYWQgLXJhIF9QQVRIIDw8PCAiJFBBVEgiCiAgICAgIGZvciBpIGluICIke19QQVRIW0BdfSI7IGRvCiAgICAgICAgICBfREVTVF9QQVRIPSIkaS9wYWNhcHQiCiAgICAgICAgICBicmVhawogICAgICBkb25lCiAgICBlbHNlCiAgICAgIF9ERVNUX1BBVEg9Ii9iaW4vcGFjYXB0IgogICAgZmk7CiAgZWxzZQogICAgX0RFU1RfUEFUSD0iL3Vzci9iaW4vcGFjYXB0IgogIGZpOwpmaTsKaWYgW1sgIiQoc3VkbyBkcGtnIC1zIGN1cmwgMj4gL2Rldi9udWxsIHwgZ3JlcCBTdGF0dXMpIiAhPSAiU3RhdHVzOiBpbnN0YWxsIG9rIGluc3RhbGxlZCIgXV07IHRoZW4KICBzdWRvIGFwdC1nZXQgaW5zdGFsbCAteSAtcXFxIGN1cmwgPiAvZGV2L251bGwgfHwgZXhpdCAkPwpmaTsKUEFDQVBUX0RPV05MT0FEX0xJTks9Imh0dHBzOi8vcmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbS9pY3kvcGFjYXB0L25nL3BhY2FwdCIKZnVuY3Rpb24gZ2V0UGFjQXB0TGFzdGVzdFZlcnNpb24gewogIHJtIC1mIC90bXAvcGFjYXB0CiAgY3VybCAtc0wgIiRQQUNBUFRfRE9XTkxPQURfTElOSyIgLS1vdXRwdXQgIi90bXAvcGFjYXB0IgogIF9QQUNBUFRfTEFTVEVTVF9WRVJTSU9OPSIkKDwgIi90bXAvcGFjYXB0IiBncmVwICIKfQpmdW5jdGlvbiBnZXRQYWNBcHRDdXJyZW50VmVyc2lvbiB7CiAgX1BBQ0FQVF9DVVJSRU5UX1ZFUlNJT049IiIKICBQQUNBUFRfQklOQVJZX1BBVEg9IiQoY29tbWFuZCAtdiBwYWNhcHQpIgogIGlmIFsgIiQoY29tbWFuZCAtdiBwYWNtYW4pIiA9ICIiIF0gJiYgWyAiJChjb21tYW5kIC12IHBhY2FwdCkiICE9ICIiIF07IHRoZW4KICAgIHN1ZG8gY3AgIiQoY29tbWFuZCAtdiBwYWNhcHQpIiAiJChjb21tYW5kIC12IHBhY21hbikiCiAgICBQQUNBUFRfQklOQVJZX1BBVEg9IiQoY29tbWFuZCAtdiBwYWNtYW4pIgogIGZpOwogIGlmIFsgLW4gIiRQQUNBUFRfQklOQVJZX1BBVEgiIF07IHRoZW4KICAgIF9QQUNBUFRfQ1VSUkVOVF9WRVJTSU9OPSQoCiAgICAgIDwgIiRQQUNBUFRfQklOQVJZX1BBVEgiIGdyZXAgIlZlcnNpb246IiB8IGN1dCAtZCcgJyAtZjMpCiAgZmk7Cn0KZnVuY3Rpb24gaW5zdGFsbFBhY0FwdCB7CiAgc3VkbyBjcCAiL3RtcC9wYWNhcHQiICIkX0RFU1RfUEFUSCIKICBzdWRvIGNobW9kIDc1NSAiJF9ERVNUX1BBVEgiCiAgaWYgWyAtZiAiL3Vzci9sb2NhbC9iaW4vcGFjbWFuIiBdOyB0aGVuCiAgICBzdWRvIHJtIC1mICIvdXNyL2xvY2FsL2Jpbi9wYWNtYW4iCiAgZmk7CiAgc3VkbyBsbiAtc3YgIiRfREVTVF9QQVRIIiAiL3Vzci9sb2NhbC9iaW4vcGFjbWFuIiA+IC9kZXYvbnVsbCB8fCB0cnVlCiAgaWYgWyAtZiAiL3RtcC9wYWNhcHQiIF07IHRoZW4KICAgIHJtIC1mICIvdG1wL3BhY2FwdCIKICBmaTsKfQpmdW5jdGlvbiBtYWluIHsKICBpZiBbIC1mICIkX0RFU1RfUEFUSCIgXSB8fCBbIC1kICIkX0RFU1RfUEFUSCIgXTsgdGhlbgogICAgX1BBQ0FQVF9HUkVQX1NPVVJDRT0iJCg8ICIkX0RFU1RfUEFUSCIgZ3JlcCAiCiAgICBpZiBbICIkX1BBQ0FQVF9HUkVQX1NPVVJDRSIgIT0gImh0dHA6Ly9naXRodWIuY29tL2ljeS9wYWNhcHQvIiBdOyB0aGVuCiAgICAgIHByaW50ZiAiJXMgKCVzKVxuIiAiJF9NU0dfREVTVF9FWElTVFMiICIkX0RFU1RfUEFUSCIgPiYyCiAgICAgIHByaW50ZiAiJXMgJy0tZGVzdC1wYXRoJy5cbiIgIiRfTVNHX0lORElDQVRFX0FOT1RIRVJfREVTVF9XSVRIX1BBUkFNIiA+JjIKICAgICAgZXhpdCAxCiAgICBmaTsKICBmaTsKICBwcmludEluZGVudAogIHByaW50ZiAiJXNcbiIgIiRfTVNHX0NIRUNLSU5HX1BBQ0FQVC4uLiIKICBwcmludEluZGVudAogIHByaW50ZiAiICAlcyIgIiRfTVNHX1JFVFJJRVZJTkdfTEFTVEVTVF9WRVJTSU9OLi4uIgogIGdldFBhY0FwdExhc3Rlc3RWZXJzaW9uCiAgcHJpbnRmICIgKHYlcykiICIkX1BBQ0FQVF9MQVNURVNUX1ZFUlNJT04iCiAgcHJpbnRmICIgXGVbOTJtXHhFMlx4OUNceDk0XGVbMzltXG4iCiAgZ2V0UGFjQXB0Q3VycmVudFZlcnNpb24KICBpZiBbIC16ICIkX1BBQ0FQVF9DVVJSRU5UX1ZFUlNJT04iIF07IHRoZW4KICAgIGluc3RhbGxQYWNBcHQKICAgIHByaW50ZiAiICAlcyAodiVzKSIgIiRfTVNHX0lOU1RBTExFRCIgIiRfUEFDQVBUX0xBU1RFU1RfVkVSU0lPTiIKICAgIHByaW50ZiAiIFxlWzkybVx4RTJceDlDXHg5NFxlWzM5bVxuIgogIGVsaWYgWyAiJF9QQUNBUFRfQ1VSUkVOVF9WRVJTSU9OIiA9ICIkX1BBQ0FQVF9MQVNURVNUX1ZFUlNJT04iIF07IHRoZW4KICAgIHByaW50ZiAiICAlcyIgIiRfTVNHX0ZPVU5EX0lOU1RBTExFRCIKICAgIHByaW50ZiAiIFxlWzkybVx4RTJceDlDXHg5NFxlWzM5bVxuIgogIGVsc2UKICAgIHByaW50ZiAiICAlcyAodiVzIC0+IHYlcykiIFwKICAgICAgIiRfTVNHX1VQREFURUQiICIkX1BBQ0FQVF9DVVJSRU5UX1ZFUlNJT04iICIkX1BBQ0FQVF9MQVNURVNUX1ZFUlNJT04iCiAgICBzdWRvIHJtIC1mICIkUEFDQVBUX0JJTkFSWV9QQVRIIgogICAgaW5zdGFsbFBhY0FwdAogICAgcHJpbnRmICIgXGVbOTJtXHhFMlx4OUNceDk0XGVbMzltXG4iCiAgZmk7Cn0KISAocmV0dXJuIDAgMj4vZGV2L251bGwpICYmIG1haW4K' | base64 -d)
