#!/bin/bash
H='IyEvYmluL2Jhc2gKIyAtKi0gRU5DT0RJTkc6IFVURi04IC0qLQpfU0NSSVBUX0ZJTEVOQU1FPWVuLnNoCiMhL2Jpbi9iYXNoCl9NU0dfRVhFQ1VURURfQVNfU1VQRVJVU0VSPSJUaGlzIHNjcmlwdCBuZWVkcyB0byBiZSBleGVjdXRlZCBhcyBzdXBlcnVzZXIuIgpfTVNHX0xFQVZJTkdfUE9SVFNfRlJFRT0iTGVhdmluZyBwb3J0cyBmcmVlIG9mIHByb2Nlc3Nlcy4uLiIKaWYgW1sgJCgvdXNyL2Jpbi9pZCAtdSkgLW5lIDAgXV07IHRoZW4KICBwcmludGYgIiVzXG4iICIkX01TR19FWEVDVVRFRF9BU19TVVBFUlVTRVIiID4mMgogIGV4aXQgMQpmaTsKSU5ERU5UX1NUUklORz0iIgpfUE9SVFNfU1RSSU5HPSIiCmZvciBhcmcgaW4gIiRAIjsgZG8KICBjYXNlICRhcmcgaW4KICAgIC0taW5kZW50KQogICAgc2hpZnQKICAgIElOREVOVF9TVFJJTkc9JDEKICAgIHNoaWZ0CiAgICA7OwogICAgLS1wb3J0cykKICAgIHNoaWZ0CiAgICBfUE9SVFNfU1RSSU5HPSQxCiAgICBzaGlmdAogICAgOzsKICBlc2FjCmRvbmUKZnVuY3Rpb24gcHJpbnRJbmRlbnQoKSB7CiAgcHJpbnRmICIlcyIgIiRJTkRFTlRfU1RSSU5HIgp9CmlmIFsgIiQoY29tbWFuZCAtdiBwYWNtYW4pIiA9ICIiIF07IHRoZW4KICBpZiBbIC16ICIkX1NDUklQVF9GSUxFTkFNRSIgXTsgdGhlbgogICAgZmlsZXBhdGg9InNyYy91bml4L18vZG93bmxvYWQvcGFjYXB0L21haW4uc2giCiAgICBiYXNoICIkZmlsZXBhdGgiID4gL2Rldi9udWxsCiAgZWxzZQogICAgdXJsPSJodHRwczovL21vbmRlamEuZ2l0aHViLmlvL3NocmVhZC91bml4L18vZG93bmxvYWQvcGFjYXB0LyRfU0NSSVBUX0ZJTEVOQU1FIgogICAgY3VybCAtc0wgIiR1cmwiIHwgc3VkbyBiYXNoIC0gPiAvZGV2L251bGwKICBmaTsKZmk7CmlmIFtbICIkKHN1ZG8gcGFjbWFuIC1RaSBuZXQtdG9vbHMgMj4gL2Rldi9udWxsIHwgZ3JlcCBTdGF0dXMpIiAhPSAiU3RhdHVzOiBpbnN0YWxsIG9rIGluc3RhbGxlZCIgXV07IHRoZW4KICBzdWRvIHBhY21hbiAtUyBuZXQtdG9vbHMgPiAvZGV2L251bGwgfHwgZXhpdCAkPwpmaTsKcHJpbnRJbmRlbnQKcHJpbnRmICIlcy4uLlxuIiAiJF9NU0dfTEVBVklOR19QT1JUU19GUkVFIgpfUE9SVFM9JChlY2hvICIkX1BPUlRTX1NUUklORyIgfCB0ciAiLCIgIlxuIikKZm9yIFBPUlQgaW4gJF9QT1JUUzsgZG8KICBwcmludEluZGVudAogIHByaW50ZiAiICAlcyIgIiRQT1JUIgogIFVOS05PV05fU0VSVklDRV9QSUQ9JCgKICAgIHN1ZG8gbmV0c3RhdCAtbmxwIHwgZ3JlcCAtRSAiWzAtOV17MSwzfVwuWzAtOV17MSwzfVwuWzAtOV17MSwzfVwuWzAtOV17MSwzfVw6JFBPUlR8XDpcOlw6JFBPUlQiIHwgXAogICAgYXdrICd7cHJpbnQgJDd9JyB8IFwKICAgIHNlZCAtZSAicy9cLy4qLy9nIikKICBpZiBbWyAtbiAiJFVOS05PV05fU0VSVklDRV9QSUQiIF1dOyB0aGVuCiAgICBzdWRvIGtpbGwgIiRVTktOT1dOX1NFUlZJQ0VfUElEIgogIGZpOwogIHByaW50ZiAiIFxlWzkybVx4RTJceDlDXHg5NFxlWzM5bVxuIgpkb25l'
if (return 0 2>/dev/null); then
  source <(printf "%s" "$H" | base64 -d)
else
  echo "$(echo "$H" | base64 -d)" | bash -s -- "$@"
fi;
