#!/bin/bash
source <(printf 'IyEvYmluL2Jhc2gKIyAtKi0gRU5DT0RJTkc6IFVURi04IC0qLQpfTVNHX0VYRUNVVEVEX0FTX1NVUEVSVVNFUj0iVGhpcyBzY3JpcHQgbmVlZHMgdG8gYmUgZXhlY3V0ZWQgYXMgc3VwZXJ1c2VyLiIKX01TR19DSEVDS0lOR19EUk9QQk9YX0VOVj0iQ2hlY2tpbmcgRHJvcGJveCBlbnZpcm9ubWVudC4uLiIKX01TR19EUk9QQk9YX0ZPVU5EX0lOU1RBTExFRD0iRHJvcGJveCBmb3VuZCBpbnN0YWxsZWQgaW4gdGhlIHN5c3RlbSIKX01TR19DSEVDS0lOR19JRl9JU19VUERBVEVEPSJDaGVja2luZyBpZiBpcyB1cGRhdGVkLi4uIgpfTVNHX1VQREFUSU5HX0RST1BCT1g9IlVwZGF0aW5nIERyb3Bib3giCl9NU0dfUkVUUklFVklOR19MQVNUX0RST1BCT1hfVkVSU0lPTj0iUmV0cmlldmluZyBsYXN0IERyb3Bib3ggdmVyc2lvbi4uLiIKX01TR19ET1dOTE9BRElOR19EUk9QQk9YPSJEb3dubG9hZGluZyBEcm9wYm94IgpfTVNHX0lOU1RBTExJTkdfRFJPUEJPWD0iSW5zdGFsbGluZyBEcm9wYm94IgppZiBbWyAkKC91c3IvYmluL2lkIC11KSAtbmUgMCBdXTsgdGhlbgogIHByaW50ZiAiJXNcbiIgIiRfTVNHX0VYRUNVVEVEX0FTX1NVUEVSVVNFUiIgPiYyCiAgZXhpdCAxCmZpOwpfVVBEQVRFPTEKSU5ERU5UX1NUUklORz0iIgpmb3IgYXJnIGluICIkQCI7IGRvCiAgY2FzZSAkYXJnIGluCiAgICAtLWluZGVudCkKICAgIHNoaWZ0CiAgICBJTkRFTlRfU1RSSU5HPSQxCiAgICBzaGlmdAogICAgOzsKICAgIC0tbm8tdXBkYXRlKQogICAgX1VQREFURT0wCiAgICBzaGlmdAogICAgOzsKICBlc2FjCmRvbmUKZnVuY3Rpb24gcHJpbnRJbmRlbnQoKSB7CiAgcHJpbnRmICIlcyIgIiRJTkRFTlRfU1RSSU5HIgp9CnByaW50SW5kZW50CnByaW50ZiAiJXNcbiIgIiRfTVNHX0NIRUNLSU5HX0RST1BCT1hfRU5WIgppZiBbWyAiJChzdWRvIGRwa2cgLXMgY3VybCAyPiAvZGV2L251bGwgfCBncmVwIFN0YXR1cykiICE9ICJTdGF0dXM6IGluc3RhbGwgb2sgaW5zdGFsbGVkIiBdXTsgdGhlbgogIHN1ZG8gYXB0LWdldCBpbnN0YWxsIC15IC1xcXEgY3VybCA+IC9kZXYvbnVsbCB8fCBleGl0ICQ/CmZpOwpmdW5jdGlvbiBnZXREcm9wYm94TGFzdFZlcnNpb24oKSB7CiAgX0RST1BCT1hfTEFTVF9ERUI9JCgKICAgIGN1cmwgLXNMIGh0dHBzOi8vbGludXguZHJvcGJveC5jb20vcGFja2FnZXMvZGViaWFuLyB8IFwKICAgIGdyZXAgYW1kNjQuZGViIHwgXAogICAgdGFpbCAtbiAxIHwgXAogICAgY3V0IC1kJyInIC1mMikKICBfRFJPUEJPWF9DTURfTEFTVF9WRVJTSU9OPSIkKGVjaG8gIiRfRFJPUEJPWF9MQVNUX0RFQiIgfCBjdXQgLWQnXycgLWYyKSIKfQpmdW5jdGlvbiBkb3dubG9hZERyb3Bib3goKSB7CiAgX0RST1BCT1hfRE9XTkxPQURfVVJMPSJodHRwczovL2xpbnV4LmRyb3Bib3guY29tL3BhY2thZ2VzL2RlYmlhbi8kX0RST1BCT1hfTEFTVF9ERUIiCiAgY3VybCAtc0wgLW8gIiRfRFJPUEJPWF9MQVNUX0RFQiIgIiRfRFJPUEJPWF9ET1dOTE9BRF9VUkwiCn0KZnVuY3Rpb24gaW5zdGFsbERyb3Bib3goKSB7CiAgc3VkbyBkcGtnIC1pICIkX0RST1BCT1hfTEFTVF9ERUIiID4gL2Rldi9udWxsIHx8IGV4aXQgJD8KICBzdWRvIHJtIC1mICIkX0RST1BCT1hfTEFTVF9ERUIiCn0KX0RST1BCT1hfQklOQVJZX1BBVEg9IiQoY29tbWFuZCAtdiBkcm9wYm94KSIKaWYgWyAiJF9EUk9QQk9YX0JJTkFSWV9QQVRIIiAhPSAiIiBdOyB0aGVuCiAgX0RST1BCT1hfSU5TVEFMTEVEX1ZFUlNJT049JChkcm9wYm94IHZlcnNpb24gfCB0YWlsIC1uIDEgfCBjdXQgLWQnICcgLWY1KQogIHByaW50SW5kZW50CiAgcHJpbnRmICIgICVzICh2JXMpIiAiJF9NU0dfRFJPUEJPWF9GT1VORF9JTlNUQUxMRUQiIFwKICAgICIkX0RST1BCT1hfSU5TVEFMTEVEX1ZFUlNJT04iCiAgcHJpbnRmICIgXGVbOTJtXHhFMlx4OUNceDk0XGVbMzltXG4iCiAgaWYgWyAkX1VQREFURSAtZXEgMCBdOyB0aGVuCiAgICBleGl0IDAKICBmaTsKICBwcmludEluZGVudAogIHByaW50ZiAiICAlcyIgIiRfTVNHX0NIRUNLSU5HX0lGX0lTX1VQREFURUQiCiAgZ2V0RHJvcGJveExhc3RWZXJzaW9uCiAgaWYgWyAiJF9EUk9QQk9YX0NNRF9MQVNUX1ZFUlNJT04iID0gIiRfRFJPUEJPWF9JTlNUQUxMRURfVkVSU0lPTiIgXTsgdGhlbgogICAgcHJpbnRmICIgXGVbOTJtXHhFMlx4OUNceDk0XGVbMzltXG4iCiAgICBleGl0IDAKICBlbHNlCiAgICBwcmludGYgIiBcZVs5MW1ceEUyXHg5Q1x4OTVcZVszOW1cbiIKICAgIHByaW50SW5kZW50CiAgICBwcmludGYgIiAgJXMgKHYlcyAtPiB2JXMpLi4uIiAiJF9NU0dfVVBEQVRJTkdfRFJPUEJPWCIgXAogICAgICAiJF9EUk9QQk9YX0lOU1RBTExFRF9WRVJTSU9OIiAiJF9EUk9QQk9YX0NNRF9MQVNUX1ZFUlNJT04iCiAgICBkb3dubG9hZERyb3Bib3gKICAgIGluc3RhbGxEcm9wYm94CiAgICBwcmludGYgIiBcZVs5Mm1ceEUyXHg5Q1x4OTRcZVszOW1cbiIKICBmaTsKZWxzZQogIHByaW50SW5kZW50CiAgcHJpbnRmICIgICVzIiAiJF9NU0dfUkVUUklFVklOR19MQVNUX0RST1BCT1hfVkVSU0lPTiIKICBnZXREcm9wYm94TGFzdFZlcnNpb24KICBwcmludGYgIiAodiVzKSIgIiRfRFJPUEJPWF9DTURfTEFTVF9WRVJTSU9OIgogIHByaW50ZiAiIFxlWzkybVx4RTJceDlDXHg5NFxlWzM5bVxuIgogIHByaW50SW5kZW50CiAgcHJpbnRmICIgICVzICh2JXMpLi4uIiAiJF9NU0dfRE9XTkxPQURJTkdfRFJPUEJPWCIgIiRfRFJPUEJPWF9DTURfTEFTVF9WRVJTSU9OIgogIGRvd25sb2FkRHJvcGJveAogIHByaW50ZiAiIFxlWzkybVx4RTJceDlDXHg5NFxlWzM5bVxuIgogIHByaW50SW5kZW50CiAgcHJpbnRmICIgICVzICh2JXMpLi4uIiAiJF9NU0dfSU5TVEFMTElOR19EUk9QQk9YIiAiJF9EUk9QQk9YX0NNRF9MQVNUX1ZFUlNJT04iCiAgaW5zdGFsbERyb3Bib3gKICBwcmludGYgIiBcZVs5Mm1ceEUyXHg5Q1x4OTRcZVszOW1cbiIKZmk7Cg==' | base64 -d)
