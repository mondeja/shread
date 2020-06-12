#!/bin/bash
source <(printf 'IyEvYmluL2Jhc2gKIyAtKi0gRU5DT0RJTkc6IFVURi04IC0qLQpfTVNHX0VYRUNVVEVEX0FTX1NVUEVSVVNFUj0iVGhpcyBzY3JpcHQgbmVlZHMgdG8gYmUgZXhlY3V0ZWQgYXMgc3VwZXJ1c2VyLiIKX01TR19FUlJPUl9SRVRSSUVWSU5HX0JPT1NUTk9URV9SRUxFQVNFU19JTkZPPSJBbiBlcnJvciBoYXBwZW4gcmV0cmlldmluZyBCb29zdG5vdGUgcmVsZWFzZXMgaW5mbyBmcm9tIEdpdGh1YiBBUEkuIgpfTVNHX1VSTD0iVVJMIgpfTVNHX0VSUk9SPSJFcnJvciIKX01TR19FUlJPUl9DT0RFPSJFcnJvciBjb2RlIgpfTVNHX05PVF9GT1VORD0iTm90IGZvdW5kIgpfTVNHX0VSUk9SX1BBUlNJTkdfUEVOVUxUSU1BVEVfQk9PU1ROT1RFX1JFTEVBU0U9IkFuIGVycm9yIGhhcHBlbiBwYXJzaW5nIHBlbnVsdGltYXRlIEJvb3N0bm90ZSByZWxlYXNlIGZyb20gR2l0aHViIEFQSS4iCl9NU0dfRVJST1JfUkVUUklFVklOR19MQVNUX0JPT1NUTk9URV9WRVJTSU9OPSJBbiBlcnJvciBoYXBwZW4gcmV0cmlldmluZyBsYXN0IEJvb3N0bm90ZSB2ZXJzaW9uLiIKX01TR19FUlJPUl9ET1dOTE9BRElOR19CT09TVE5PVEU9IkFuIGVycm9yIGhhcHBlbiBkb3dubG9hZGluZyBCb29zdG5vdGUiCl9NU0dfQ0hFQ0tJTkdfQk9PU1ROT1RFPSJDaGVja2luZyBCb29zdG5vdGUuLi4iCl9NU0dfUkVUUklFVklOR19MQVNUX0FWQUlMQUJMRV9WRVJTSU9OPSJSZXRyaWV2aW5nIGxhc3QgYXZhaWxhYmxlIHZlcnNpb24uLi4iCl9NU0dfRE9XTkxPQURJTkdfQk9PU1ROT1RFPSJEb3dubG9hZGluZyBCb29zdG5vdGUiCl9NU0dfSU5TVEFMTElOR19CT09TVE5PVEU9Ikluc3RhbGxpbmcgQm9vc3Rub3RlIgpfTVNHX0JPT1NUTk9URV9GT1VORF9JTlNUQUxMRUQ9IkJvb3N0bm90ZSBmb3VuZCBpbnN0YWxsZWQgb24gdGhlIHN5c3RlbSIKX01TR19VUERBVElOR19CT09TVE5PVEU9IlVwZGF0aW5nIEJvb3N0bm90ZSIKaWYgW1sgJCgvdXNyL2Jpbi9pZCAtdSkgLW5lIDAgXV07IHRoZW4KICBwcmludGYgIiVzXG4iICIkX01TR19FWEVDVVRFRF9BU19TVVBFUlVTRVIiID4mMgogIGV4aXQgMQpmaTsKSU5ERU5UX1NUUklORz0iIgpfVVBEQVRFPTAKR0lUSFVCX0FQSV9DVVJMX0FVVEg9IiIKaWYgWyAtbiAiJEdJVEhVQl9VU0VSTkFNRSIgXSAmJiBbIC1uICIkR0lUSFVCX1RPS0VOIiBdOyB0aGVuCiAgR0lUSFVCX0FQSV9DVVJMX0FVVEg9IiRHSVRIVUJfVVNFUk5BTUU6JEdJVEhVQl9UT0tFTiIKZmk7CmZvciBhcmcgaW4gIiRAIjsgZG8KICBjYXNlICRhcmcgaW4KICAgIC0taW5kZW50KQogICAgc2hpZnQKICAgIElOREVOVF9TVFJJTkc9JDEKICAgIHNoaWZ0CiAgICA7OwogICAgLS11cGRhdGUpCiAgICBzaGlmdAogICAgX1VQREFURT0xCiAgICBzaGlmdAogICAgOzsKICBlc2FjCmRvbmUKZnVuY3Rpb24gcHJpbnRQcmVwZW5kZWRTdGRvdXQoKSB7CiAgcHJpbnRmICIlcyIgIiRJTkRFTlRfU1RSSU5HIgp9CmlmIFsgIiQoY29tbWFuZCAtdiBwYWNtYW4pIiA9ICIiIF07IHRoZW4KICBTQ1JJUFRfRklMRU5BTUU9IiQoYmFzZW5hbWUgIiQwIikiCiAgaWYgWyAiJFNDUklQVF9GSUxFTkFNRSIgPSAibWFpbi5zaCIgXTsgdGhlbgogICAgZmlsZXBhdGg9InNyYy91bml4L18vZG93bmxvYWQvcGFjYXB0L21haW4uc2giCiAgICBiYXNoICIkZmlsZXBhdGgiID4gL2Rldi9udWxsCiAgZWxzZQogICAgdXJsPSJodHRwczovL21vbmRlamEuZ2l0aHViLmlvL3NocmVhZC91bml4L18vZG93bmxvYWQvcGFjYXB0LyRTQ1JJUFRfRklMRU5BTUUiCiAgICBjdXJsIC1zTCAiJHVybCIgfCBzdWRvIGJhc2ggLSA+IC9kZXYvbnVsbAogIGZpOwpmaTsKSU5TVEFMTEFUSU9OX0RFUEVOREVOQ0lFUz0oCiAgImN1cmwiCiAgImpxIgopCmZvciBERVAgaW4gIiR7SU5TVEFMTEFUSU9OX0RFUEVOREVOQ0lFU1tAXX0iOyBkbwogIGlmIFtbICIkKHN1ZG8gcGFjbWFuIC1RaSAiJERFUCIgMj4gL2Rldi9udWxsIHwgZ3JlcCBTdGF0dXMpIiAhPSAiU3RhdHVzOiBpbnN0YWxsIG9rIGluc3RhbGxlZCIgXV07IHRoZW4KICAgIHN1ZG8gcGFjbWFuIC1TICIkREVQIiA+IC9kZXYvbnVsbCB8fCBleGl0ICQ/CiAgZmk7CmRvbmU7CkFSQ0g9IiIKY2FzZSAkKHVuYW1lIC1tKSBpbgogICAgaTM4NikgICBBUkNIPSIzODYiIDs7CiAgICBpNjg2KSAgIEFSQ0g9IjM4NiIgOzsKICAgIHg4Nl82NCkgQVJDSD0iYW1kNjQiIDs7CiAgICBhcm0pICAgIGRwa2cgLS1wcmludC1hcmNoaXRlY3R1cmUgfCBncmVwIC1xICJhcm02NCIgJiYgQVJDSD0iYXJtNjQiIHx8IEFSQ0g9ImFybSIgOzsKZXNhYwpfR0VUX0JPT1NUTk9URV9WRVJTSU9OX0lOREVYPTAKX0dFVF9CT09TVE5PVEVfVkVSU0lPTl80MDRfQVRURU1QVFM9MApfR0VUX0JPT1NUTk9URV9WRVJTSU9OXzQwNF9NQVhfQVRURU1QVFM9MTAKZnVuY3Rpb24gY2hlY2tCb29zdG5vdGVWZXJzaW9uVG9Eb3dubG9hZEV4aXN0cygpIHsKICBfRE9XTkxPQURfQk9PU1ROT1RFX1VSTD0iaHR0cHM6Ly9naXRodWIuY29tL0Jvb3N0SU8vYm9vc3QtcmVsZWFzZXMvcmVsZWFzZXMvZG93bmxvYWQvdiRfQk9PU1ROT1RFX0xBU1RFU1RfVkVSU0lPTi9ib29zdG5vdGVfJHtfQk9PU1ROT1RFX0xBU1RFU1RfVkVSU0lPTn1fJEFSQ0guZGViIgogIF9ET1dOTE9BRF9CT09TVE5PVEVfVVJMX0VYSVNUUz0wCiAgaWYgY3VybCAtLW91dHB1dCAvZGV2L251bGwgLS1zaWxlbnQgLS1oZWFkIC0tZmFpbCAiJF9ET1dOTE9BRF9CT09TVE5PVEVfVVJMIjsgdGhlbgogICAgX0RPV05MT0FEX0JPT1NUTk9URV9VUkxfRVhJU1RTPTEKICBmaTsKfQpfR0VUX0JPT1NUTk9URV9MQVRFU1RfVkVSU0lPTl9BVFRFTVBUUz0wCl9HRVRfQk9PU1ROT1RFX0xBVEVTVF9WRVJTSU9OX01BWF9BVFRFTVBUUz01Cl9HRVRfQk9PU1ROT1RFX0xBVEVTVF9WRVJTSU9OX1VSTD0iaHR0cHM6Ly9hcGkuZ2l0aHViLmNvbS9yZXBvcy9Cb29zdElPL2Jvb3N0LXJlbGVhc2VzL3JlbGVhc2VzIgpmdW5jdGlvbiBnZXRCb29zdG5vdGVMYXRlc3RWZXJzaW9uKCkgewogIF9CT09TVE5PVEVfUkVMRUFTRVNfSU5GTz0iJChjdXJsIC1zTCAiJEdJVEhVQl9BUElfQ1VSTF9BVVRIIiAiJF9HRVRfQk9PU1ROT1RFX0xBVEVTVF9WRVJTSU9OX1VSTCIgMj4mMSkiCiAgX0JPT1NUTk9URV9SRUxFQVNFU19JTkZPX01FU1NBR0U9IiQoZWNobyAiJF9CT09TVE5PVEVfUkVMRUFTRVNfSU5GTyIgfCBqcSAtciAnLm1lc3NhZ2UnIDI+JjEpIgogIF9CT09TVE5PVEVfUkVMRUFTRVNfSU5GT19NRVNTQUdFX0VYSVRfQ09ERT0kPwogIGlmIFsgJF9CT09TVE5PVEVfUkVMRUFTRVNfSU5GT19NRVNTQUdFX0VYSVRfQ09ERSAtZXEgMCBdOyB0aGVuCiAgICBwcmludGYgIlxlWzkxbVx4RTJceDlDXHg5NVxlWzM5bVxuIiA+JjIKICAgIHByaW50ZiAiXG4lc1xuIiAiJF9NU0dfRVJST1JfUkVUUklFVklOR19CT09TVE5PVEVfUkVMRUFTRVNfSU5GTyIgPiYyCiAgICBwcmludGYgIiVzOiAlc1xuIiAiJF9NU0dfVVJMIiAiJF9HRVRfQk9PU1ROT1RFX0xBVEVTVF9WRVJTSU9OX1VSTCIgPiYyCiAgICBwcmludGYgIiVzOiAlc1xuIiAiJF9NU0dfRVJST1IiICIkX0JPT1NUTk9URV9SRUxFQVNFU19JTkZPX01FU1NBR0UiID4mMgogICAgZXhpdCAkX0JPT1NUTk9URV9SRUxFQVNFU19JTkZPX01FU1NBR0VfRVhJVF9DT0RFCiAgZmk7CiAgX1BBUlNFX0JPT1NUTk9URV9MQVNURVNUX1ZFUlNJT049JCgKICAgIGVjaG8gIiRfQk9PU1ROT1RFX1JFTEVBU0VTX0lORk8iIHwgXAogICAganEgLXIgIi5bJF9HRVRfQk9PU1ROT1RFX1ZFUlNJT05fSU5ERVhdLm5hbWUiIDI+JjEKICApCiAgX1BBUlNFX0JPT1NUTk9URV9MQVNURVNUX1ZFUlNJT05fRVhJVF9DT0RFPSQ/CiAgaWYgWyAkX1BBUlNFX0JPT1NUTk9URV9MQVNURVNUX1ZFUlNJT05fRVhJVF9DT0RFIC1uZSAwIF07IHRoZW4KICAgIHByaW50ZiAiXGVbOTFtXHhFMlx4OUNceDk1XGVbMzltXG4iID4mMgogICAgcHJpbnRmICJcbiVzXG4iICIkX01TR19FUlJPUl9QQVJTSU5HX1BFTlVMVElNQVRFX0JPT1NUTk9URV9SRUxFQVNFIiA+JjIKICAgIHByaW50ZiAiJXM6ICVzXG4iICIkX01TR19VUkwiICIkX0dFVF9CT09TVE5PVEVfTEFURVNUX1ZFUlNJT05fVVJMIiA+JjIKICAgIHByaW50ZiAiJXM6ICVkXG4iICIkX01TR19FUlJPUl9DT0RFIiAiJF9QQVJTRV9CT09TVE5PVEVfTEFTVEVTVF9WRVJTSU9OX0VYSVRfQ09ERSIgPiYyCiAgICBwcmludGYgIiVzOiAlcyIgIiRfTVNHX0VSUk9SIiAiJF9QQVJTRV9CT09TVE5PVEVfTEFTVEVTVF9WRVJTSU9OIiA+JjIKICAgIGV4aXQgJF9QQVJTRV9CT09TVE5PVEVfTEFTVEVTVF9WRVJTSU9OX0VYSVRfQ09ERQogIGZpOwogIF9CT09TVE5PVEVfTEFTVEVTVF9WRVJTSU9OPSIkKGVjaG8gIiRfUEFSU0VfQk9PU1ROT1RFX0xBU1RFU1RfVkVSU0lPTiIgfCBjdXQgLWQndicgLWYyIDI+JjEpIgogIF9HRVRfQk9PU1ROT1RFX0xBVEVTVF9WRVJTSU9OX0VYSVRfQ09ERT0kPwogIGlmIFsgJF9HRVRfQk9PU1ROT1RFX0xBVEVTVF9WRVJTSU9OX0VYSVRfQ09ERSAtbmUgMCBdOyB0aGVuCiAgICAoKCBfR0VUX0JPT1NUTk9URV9MQVRFU1RfVkVSU0lPTl9BVFRFTVBUUysrICkpCiAgICBpZiBbICRfR0VUX0JPT1NUTk9URV9MQVRFU1RfVkVSU0lPTl9BVFRFTVBUUyAtZ2UgJF9HRVRfQk9PU1ROT1RFX0xBVEVTVF9WRVJTSU9OX01BWF9BVFRFTVBUUyBdOyB0aGVuCiAgICAgIHByaW50ZiAiXGVbOTFtXHhFMlx4OUNceDk1XGVbMzltXG4iID4mMgogICAgICBwcmludCAiXG4lc1xuIiAiJF9NU0dfRVJST1JfUkVUUklFVklOR19MQVNUX0JPT1NUTk9URV9WRVJTSU9OIiA+JjIKICAgICAgcHJpbnRmICIlczogJXNcbiIgIiRfTVNHX1VSTCIgIiRfR0VUX0JPT1NUTk9URV9MQVRFU1RfVkVSU0lPTl9VUkwiID4mMgogICAgICBwcmludGYgIiVzOiAlc1xuIiAiJF9NU0dfRVJST1JfQ09ERSIgIiRfR0VUX0JPT1NUTk9URV9MQVRFU1RfVkVSU0lPTl9FWElUX0NPREUiID4mMgogICAgICBwcmludGYgIiVzOiAlcyIgIiRfTVNHX0VSUk9SIiAiJF9CT09TVE5PVEVfTEFTVEVTVF9WRVJTSU9OIiA+JjIKICAgICAgZXhpdCAkX0dFVF9CT09TVE5PVEVfTEFURVNUX1ZFUlNJT05fRVhJVF9DT0RFCiAgICBlbHNlCiAgICAgIGdldEJvb3N0bm90ZUxhdGVzdFZlcnNpb24KICAgIGZpOwogIGZpOwogIGNoZWNrQm9vc3Rub3RlVmVyc2lvblRvRG93bmxvYWRFeGlzdHMKICBpZiBbICRfRE9XTkxPQURfQk9PU1ROT1RFX1VSTF9FWElTVFMgLW5lIDEgXTsgdGhlbgogICAgKCggX0dFVF9CT09TVE5PVEVfVkVSU0lPTl80MDRfQVRURU1QVFMrKyApKQogICAgKCggX0dFVF9CT09TVE5PVEVfVkVSU0lPTl9JTkRFWCsrICkpCiAgICBnZXRCb29zdG5vdGVMYXRlc3RWZXJzaW9uCiAgZWxzZQogICAgcHJpbnRmICIgKHYlcykiICIkX0JPT1NUTk9URV9MQVNURVNUX1ZFUlNJT04iCiAgICBwcmludGYgIiBcZVs5Mm1ceEUyXHg5Q1x4OTRcZVszOW1cbiIKICBmaTsKfQpmdW5jdGlvbiBkb3dubG9hZEJvb3N0bm90ZSgpIHsKICBwcmludFByZXBlbmRlZFN0ZG91dAogIF9ET1dOTE9BRF9CT09TVE5PVEVfVVJMPSJodHRwczovL2dpdGh1Yi5jb20vQm9vc3RJTy9ib29zdC1yZWxlYXNlcy9yZWxlYXNlcy9kb3dubG9hZC92JF9CT09TVE5PVEVfTEFTVEVTVF9WRVJTSU9OL2Jvb3N0bm90ZV8ke19CT09TVE5PVEVfTEFTVEVTVF9WRVJTSU9OfV8kQVJDSC5kZWIiCiAgX0RPV05MT0FEX0JPT1NUTk9URV9PVVRQVVQ9IiQoc3VkbyBjdXJsIC1zTCAiJF9ET1dOTE9BRF9CT09TVE5PVEVfVVJMIiAtbyAiJDEiIDI+JjEpIgogIF9ET1dOTE9BRF9CT09TVE5PVEVfRVhJVF9DT0RFPSQ/CiAgaWYgIFsgJF9ET1dOTE9BRF9CT09TVE5PVEVfRVhJVF9DT0RFIC1uZSAwIF07IHRoZW4KICAgIHByaW50ZiAiXGVbOTFtXHhFMlx4OUNceDk1XGVbMzltXG4iID4mMgogICAgcHJpbnRmICJcbiVzIHYlc1xuIiAiJF9NU0dfRVJST1JfRE9XTkxPQURJTkdfQk9PU1ROT1RFIiAiJF9CT09TVE5PVEVfTEFTVEVTVF9WRVJTSU9OIiA+JjIKICAgIHByaW50ZiAiJXM6ICVzXG4iICIkX01TR19VUkwiICIkX0RPV05MT0FEX0JPT1NUTk9URV9VUkwiID4mMgogICAgcHJpbnRmICIlczogJXNcbiIgIiRfTVNHX0VSUk9SIiAiJF9ET1dOTE9BRF9CT09TVE5PVEVfT1VUUFVUIiA+JjIKICAgIGV4aXQgJF9ET1dOTE9BRF9CT09TVE5PVEVfRVhJVF9DT0RFCiAgZmk7CiAgX0JPT1NUTk9URV9CSU5BUllfQ09OVEVOVD0iJChzdWRvIGNhdCAiJDEiIHwgdHIgLWQgJ1wwJykiCiAgaWYgWyAiJF9CT09TVE5PVEVfQklOQVJZX0NPTlRFTlQiID0gIk5vdCBGb3VuZCIgXTsgdGhlbgogICAgaWYgWyAkX0dFVF9CT09TVE5PVEVfVkVSU0lPTl80MDRfQVRURU1QVFMgLWdlICRfR0VUX0JPT1NUTk9URV9WRVJTSU9OXzQwNF9NQVhfQVRURU1QVFMgXTsgdGhlbgogICAgICBzdWRvIHJtIC1mICIkMSIKICAgICAgcHJpbnRmICJcZVs5MW1ceEUyXHg5Q1x4OTVcZVszOW1cbiIgPiYyCiAgICAgIHByaW50ZiAiXG4lcyB2JXNcbiIgIiRfTVNHX0VSUk9SX0RPV05MT0FESU5HX0JPT1NUTk9URSIgIiRfQk9PU1ROT1RFX0xBU1RFU1RfVkVSU0lPTiIgPiYyCiAgICAgIHByaW50ZiAiJXM6ICVzXG4iICIkX01TR19VUkwiICIkX0RPV05MT0FEX0JPT1NUTk9URV9VUkwiID4mMgogICAgICBwcmludGYgIiVzOiA0MDRcbiIgIiRfTVNHX0VSUk9SX0NPREUiID4mMgogICAgICBwcmludGYgIiVzOiAlc1xuIiAiJF9NU0dfRVJST1IiICIkX0JPT1NUTk9URV9CSU5BUllfQ09OVEVOVCIgPiYyCiAgICAgIGV4aXQgMQogICAgZWxzZQogICAgICBwcmludGYgIiAoJXMpIFxlWzkxbVx4RTJceDlDXHg5NVxlWzM5bVxuIiAiJF9NU0dfTk9UX0ZPVU5EIgogICAgICAoKCBfR0VUX0JPT1NUTk9URV9WRVJTSU9OXzQwNF9BVFRFTVBUUysrICkpCiAgICAgICgoIF9HRVRfQk9PU1ROT1RFX1ZFUlNJT05fSU5ERVgrKyApKQogICAgICBnZXRCb29zdG5vdGVMYXRlc3RWZXJzaW9uCiAgICAgIGRvd25sb2FkQm9vc3Rub3RlICIkMSIKICAgIGZpOwogIGZpOwp9CmZ1bmN0aW9uIGluc3RhbGxCb29zdG5vdGUoKSB7CiAgc3VkbyBkcGtnIC1pICIkMSIgPiAvZGV2L251bGwKICBzdWRvIHJtIC1mICIkMSIKfQpwcmludFByZXBlbmRlZFN0ZG91dApwcmludGYgIiVzXG4iICIkX01TR19DSEVDS0lOR19CT09TVE5PVEUiCmlmICEgX0JPT1NUTk9URV9CSU5BUllfUEFUSD0iJChjb21tYW5kIC12IGJvb3N0bm90ZSkiOyB0aGVuCiAgX0JPT1NUTk9URV9CSU5BUllfUEFUSD0iIgpmaTsKX0JPT1NUTk9URV9QQUNLQUdFX0pTT05fRklMRVBBVEg9Ii9saWIvYm9vc3Rub3RlL3Jlc291cmNlcy9hcHAvcGFja2FnZS5qc29uIgppZiBbICEgLWYgIiRfQk9PU1ROT1RFX1BBQ0tBR0VfSlNPTl9GSUxFUEFUSCIgXTsgdGhlbgogIF9CT09TVE5PVEVfUEFDS0FHRV9KU09OX0ZJTEVQQVRIPSIvdXNyL2xpYi9ib29zdG5vdGUvcmVzb3VyY2VzL2FwcC9wYWNrYWdlLmpzb24iCmZpOwppZiBbICIkX0JPT1NUTk9URV9CSU5BUllfUEFUSCIgPSAiIiBdIHx8IFsgISAtZiAiJF9CT09TVE5PVEVfUEFDS0FHRV9KU09OX0ZJTEVQQVRIIiBdOyB0aGVuCiAgcHJpbnRQcmVwZW5kZWRTdGRvdXQKICBwcmludGYgIiAgJXMiICIkX01TR19SRVRSSUVWSU5HX0xBU1RfQVZBSUxBQkxFX1ZFUlNJT04iCiAgZ2V0Qm9vc3Rub3RlTGF0ZXN0VmVyc2lvbgogIHByaW50UHJlcGVuZGVkU3Rkb3V0CiAgcHJpbnRmICIgICVzICh2JXMpLi4uIiAiJF9NU0dfRE9XTkxPQURJTkdfQk9PU1ROT1RFIiAiJHtfQk9PU1ROT1RFX0xBU1RFU1RfVkVSU0lPTn0iCiAgZG93bmxvYWRCb29zdG5vdGUgIi90bXAvYm9vc3Rub3RlXyR7X0JPT1NUTk9URV9MQVNURVNUX1ZFUlNJT059LmRlYiIKICBwcmludGYgIiBcZVs5Mm1ceEUyXHg5Q1x4OTRcZVszOW1cbiIKICBwcmludFByZXBlbmRlZFN0ZG91dAogIHByaW50ZiAiICAlcyAodiVzKS4uLiIgIiRfTVNHX0lOU1RBTExJTkdfQk9PU1ROT1RFIiAiJF9CT09TVE5PVEVfTEFTVEVTVF9WRVJTSU9OIgogIGluc3RhbGxCb29zdG5vdGUgIi90bXAvYm9vc3Rub3RlXyR7X0JPT1NUTk9URV9MQVNURVNUX1ZFUlNJT059LmRlYiIKICBwcmludGYgIiBcZVs5Mm1ceEUyXHg5Q1x4OTRcZVszOW1cbiIKZWxzZQogIF9CT09TVE5PVEVfSU5TVEFMTEVEX1ZFUlNJT049JCgKICAgIHN1ZG8gY2F0ICIkX0JPT1NUTk9URV9QQUNLQUdFX0pTT05fRklMRVBBVEgiIHwgXAogICAgZ3JlcCAnInZlcnNpb24iOiAnIHwgXAogICAgY3V0IC1kJyInIC1mNAogICkKICBwcmludFByZXBlbmRlZFN0ZG91dAoJcHJpbnRmICIgICVzICh2JXMpIiAiJF9NU0dfQk9PU1ROT1RFX0ZPVU5EX0lOU1RBTExFRCIgIiRfQk9PU1ROT1RFX0lOU1RBTExFRF9WRVJTSU9OIgogIHByaW50ZiAiIFxlWzkybVx4RTJceDlDXHg5NFxlWzM5bVxuIgogIGlmIFsgIiRfQk9PU1ROT1RFX0lOU1RBTExFRF9WRVJTSU9OIiAhPSAiJF9CT09TVE5PVEVfTEFTVEVTVF9WRVJTSU9OIiBdOyB0aGVuCiAgICBpZiBbICRfVVBEQVRFIC1lcSAxIF07IHRoZW4KICAgICAgcHJpbnRQcmVwZW5kZWRTdGRvdXQKICAgICAgcHJpbnRmICIgICVzIiAiJF9NU0dfUkVUUklFVklOR19MQVNUX0FWQUlMQUJMRV9WRVJTSU9OIgogICAgICBnZXRCb29zdG5vdGVMYXRlc3RWZXJzaW9uCiAgICAgIHByaW50UHJlcGVuZGVkU3Rkb3V0CiAgICAgIHByaW50ZiAiICAlcyAodiVzIiAiJF9NU0dfVVBEQVRJTkdfQk9PU1ROT1RFIiAiJF9CT09TVE5PVEVfSU5TVEFMTEVEX1ZFUlNJT04iCiAgICAgIHByaW50ZiAiIC0+IHYlcykuLi4iICIkX0JPT1NUTk9URV9MQVNURVNUX1ZFUlNJT04iCiAgICAgIHN1ZG8gcm0gLWYgIiRfQk9PU1ROT1RFX0JJTkFSWV9QQVRIIgogICAgICBkb3dubG9hZEJvb3N0bm90ZSAiL3RtcC9ib29zdG5vdGVfJHtfQk9PU1ROT1RFX0xBU1RFU1RfVkVSU0lPTn0uZGViIgogICAgICBpbnN0YWxsQm9vc3Rub3RlICIvdG1wL2Jvb3N0bm90ZV8ke19CT09TVE5PVEVfTEFTVEVTVF9WRVJTSU9OfS5kZWIiCiAgICAgIHByaW50ZiAiIFxlWzkybVx4RTJceDlDXHg5NFxlWzM5bVxuIgogICAgZmk7CiAgZmk7CmZpOwo=' | base64 -d)
