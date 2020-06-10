#!/bin/bash
source <(printf 'IyEvYmluL2Jhc2gKIyAtKi0gRU5DT0RJTkc6IFVURi04IC0qLQpfTVNHX0VYRUNVVEVEX0FTX1NVUEVSVVNFUj0iRXN0ZSBzY3JpcHQgbmVjZXNpdGEgc2VyIGVqZWN1dGFkbyBjb21vIHN1cGVydXN1YXJpby4iCl9NU0dfU0VUVElOR19SRURJU19FQ09TWVNURU09IkNvbmZpZ3VyYW5kbyBlY29zaXN0ZW1hIFJlZGlzLi4uIgpfTVNHX0NIRUNLSU5HX0JBU0VfREVQRU5ERU5DSUVTPSJDb21wcm9iYW5kbyBkZXBlbmRlbmNpYXMgYmFzZS4uLiIKX01TR19SRVRSSUVWSU5HX0xBU1RFU1RfU1RBQkxFX1ZFUlNJT049Ik9idGVuaWVuZG8gbGEgw7psdGltYSB2ZXJzacOzbiBlc3RhYmxlIGRpc3BvbmlibGUuLi4iCl9NU0dfRVJST1JfUkVUUklFVklOR19MQVNURVNUX1ZFUlNJT05fRlJPTV9GSUxFPSJPY3VycmnDsyB1biBlcnJvciBvYnRlbmllbmRvIGxhIMO6bHRpbWEgdmVyc2nDs24gZXN0YWJsZSBkaXNwb25pYmxlIGRlIFJlZGlzIGRlbCBhcmNoaXZvIgpfTVNHX1ZFUlNJT05TX0ZPVU5EPSJWZXJzaW9uZXMgZW5jb250cmFkYXM6IgpfTVNHX0RPV05MT0FESU5HX1JFRElTPSJEZXNjYXJnYW5kbyBSZWRpcyIKX01TR19CVUlMRElOR19TT1VSQ0VfQ09ERT0iQ29uc3RydXllbmRvIGVsIGPDs2RpZ28gZnVlbnRlLi4uIgpfTVNHX1RFU1RJTkdfQlVJTEQ9IlRlc3RlYW5kbyBsYSBjb25zdHJ1Y2Npw7NuLi4uIgpfTVNHX0NIRUNLSU5HX1NFUlZJQ0VfQ09ORklHPSJDb21wcm9iYW5kbyBjb25maWd1cmFjacOzbiBkZWwgc2VydmljaW8gJ3JlZGlzJy4uLiIKX01TR19FTkFCTElORz0iSGFiaWxpdGFuZG8uLi4iCl9NU0dfRVJST1JfRU5BQkxJTkdfU0VSVklDRT0iT2N1cnJpw7MgdW4gZXJyb3IgaGFiaWxpdGFuZG8gZWwgc2VydmljaW8gJ3JlZGlzJy4iCl9NU0dfRVJST1I9IkVycm9yIgpfTVNHX0VYSVRfQ09ERT0iQ8OzZGlnbyBkZSBzYWxpZGEiCl9NU0dfSVRTX0VOQUJMRUQ9IkVzdMOhIGhhYmlsaXRhZG8iCl9NU0dfRVhFQ1VUSU5HPSJFamVjdXRhbmRvLi4uIgpfTVNHX1NFUlZJQ0VfQ09VTEROVF9CRV9TVEFSVEVEPSJFbCBzZXJ2aWNpbyAncmVkaXMnIG5vIHB1ZG8gc2VyIGluaWNpYWRvLiIKX01TR19JVFNfT05fU1RBVEU9IlNlIGVuY3VlbnRyYSBlbiBlc3RhZG8iCl9NU0dfSVRTX1JVTk5JTkc9IlNlIGVuY3VlbnRyYSBlbiBlamVjdWNpw7NuIgpfTVNHX0NSRUFUSU5HX1NFUlZJQ0U9IkNyZWFuZG8gc2VydmljaW8gJ3JlZGlzJy4uLiIKX01TR19DUkVBVElOR19VU0VSPSJDcmVhbmRvIHVzdWFyaW8gJ3JlZGlzJy4uLiIKX01TR19VTlpJUFBJTkc9IkRlc2NvbXByaW1pZW5kbyIKX01TR19JTlNUQUxMSU5HX1JFRElTPSJJbnN0YWxhbmRvIFJlZGlzIgpfTVNHX1VQREFUSU5HX1JFRElTPSJBY3R1YWxpemFuZG8gUmVkaXMiCl9NU0dfRk9VTkRfUkVESVNfSU5TVEFMTEVEPSJFbmNvbnRyYWRvIFJlZGlzIGluc3RhbGFkbyIKaWYgW1sgJCgvdXNyL2Jpbi9pZCAtdSkgLW5lIDAgXV07IHRoZW4KICBwcmludGYgIiVzXG4iICIkX01TR19FWEVDVVRFRF9BU19TVVBFUlVTRVIiID4mMgogIGV4aXQgMQpmaTsKX09SSUdJTl9QV0Q9JFBXRApfVEVTVD0wCklOREVOVF9TVFJJTkc9IiIKZm9yIGFyZyBpbiAiJEAiOyBkbwogIGNhc2UgJGFyZyBpbgogICAgLS1pbmRlbnQpCiAgICBzaGlmdAogICAgSU5ERU5UX1NUUklORz0kMQogICAgc2hpZnQKICAgIDs7CiAgICAtLXRlc3QpCiAgICBfVEVTVD0xCiAgICBzaGlmdAogICAgOzsKICBlc2FjCmRvbmUKZnVuY3Rpb24gcHJpbnRQcmVwZW5kZWRTdGRvdXQoKSB7CiAgcHJpbnRmICIlcyIgIiRJTkRFTlRfU1RSSU5HIgp9CnByaW50UHJlcGVuZGVkU3Rkb3V0CnByaW50ZiAiJXNcbiIgIiRfTVNHX1NFVFRJTkdfUkVESVNfRUNPU1lTVEVNIgpwcmludFByZXBlbmRlZFN0ZG91dApwcmludGYgIiAgJXNcbiIgIiRfTVNHX0NIRUNLSU5HX0JBU0VfREVQRU5ERU5DSUVTIgpJTlNUQUxMQVRJT05fREVQRU5ERU5DSUVTPSgKICAiYnVpbGQtZXNzZW50aWFsIgogICJ0Y2wiCiAgImN1cmwiCiAgIm1ha2UiCikKZm9yIERFUCBpbiAiJHtJTlNUQUxMQVRJT05fREVQRU5ERU5DSUVTW0BdfSI7IGRvCiAgcHJpbnRQcmVwZW5kZWRTdGRvdXQKICBwcmludGYgIiAgICAlcyIgIiRERVAiCiAgaWYgW1sgIiQoZHBrZyAtcyAiJERFUCIgMj4gL2Rldi9udWxsIHwgZ3JlcCBTdGF0dXMpIiAhPSAiU3RhdHVzOiBpbnN0YWxsIG9rIGluc3RhbGxlZCIgXV07IHRoZW4KICAgIHN1ZG8gYXB0LWdldCBpbnN0YWxsIC15IC1xcXEgIiRERVAiID4gL2Rldi9udWxsIHx8IGV4aXQgJD8KICBmaTsKICBwcmludGYgIiBcZVs5Mm1ceEUyXHg5Q1x4OTRcZVszOW1cbiIKZG9uZQpmdW5jdGlvbiBnZXRSZWRpc1NlcnZlckxhc3Rlc3RTdGFibGVWZXJzaW9uKCkgewogIHByaW50UHJlcGVuZGVkU3Rkb3V0CiAgcHJpbnRmICIgICVzIiAiJF9NU0dfUkVUUklFVklOR19MQVNURVNUX1NUQUJMRV9WRVJTSU9OIgogIF9SRURJU19MQVNURVNUX1NUQUJMRV9WRVJTSU9OPSQoCiAgICBjdXJsIC1zTCBodHRwOi8vZG93bmxvYWQucmVkaXMuaW8vcmVkaXMtc3RhYmxlLzAwLVJFTEVBU0VOT1RFUyB8IFwKICAgICAgZ3JlcCBSZWxlYXNlZCB8IFwKICAgICAgaGVhZCAtbiAxIHwgXAogICAgICBjdXQgLWQnICcgLWYyIHwgXAogICAgICB0ciAtZCAnXG4nCiAgKQogIGlmIFsgIiRfUkVESVNfTEFTVEVTVF9TVEFCTEVfVkVSU0lPTiIgPSAiIiBdOyB0aGVuCiAgICBwcmludGYgIiBcZVs5MW1ceEUyXHg5Q1x4OTVcZVszOW1cbiIgPiYyCiAgICBwcmludGYgIlxuJXMiICIkX01TR19FUlJPUl9SRVRSSUVWSU5HX0xBU1RFU1RfVkVSU0lPTl9GUk9NX0ZJTEUiID4mMgogICAgcHJpbnRmICIgJ2h0dHA6Ly9kb3dubG9hZC5yZWRpcy5pby9yZWRpcy1zdGFibGUvIiA+JjIKICAgIHByaW50ZiAiMDAtUkVMRUFTRU5PVEVTJy5cbiVzXG4iICIkX01TR19WRVJTSU9OU19GT1VORCIgPiYyCiAgICBwcmludGYgIiVzIiAiJChjdXJsIC1zTCBodHRwOi8vZG93bmxvYWQucmVkaXMuaW8vcmVkaXMtc3RhYmxlLzAwLVJFTEVBU0VOT1RFUyB8IFwKICAgICAgZ3JlcCBSZWxlYXNlZCB8IFwKICAgICAgY3V0IC1kJyAnIC1mMilcbiIgPiYyCiAgICBleGl0IDEKICBmaTsKICBwcmludGYgIiAodiVzKSBcZVs5Mm1ceEUyXHg5Q1x4OTRcZVszOW1cbiIgIiRfUkVESVNfTEFTVEVTVF9TVEFCTEVfVkVSU0lPTiIKfQpmdW5jdGlvbiBkb3dubG9hZFJlZGlzTGFzdGVzdFN0YWJsZVZlcnNpb24oKSB7CiAgcHJpbnRQcmVwZW5kZWRTdGRvdXQKICBwcmludGYgIiAgJXMgKHYlcykuLi4iICIkX01TR19ET1dOTE9BRElOR19SRURJUyIgIiRfUkVESVNfTEFTVEVTVF9TVEFCTEVfVkVSU0lPTiIKICBjdXJsIC1zTCBodHRwOi8vZG93bmxvYWQucmVkaXMuaW8vcmVkaXMtc3RhYmxlLnRhci5neiBcCiAgICAtLW91dHB1dCAiJDEiIHx8IGV4aXQgJD8KICBwcmludGYgIiBcZVs5Mm1ceEUyXHg5Q1x4OTRcZVszOW1cbiIKfQpmdW5jdGlvbiBidWlsZFJlZGlzKCkgewogIHByaW50UHJlcGVuZGVkU3Rkb3V0CiAgcHJpbnRmICIgICAgJXNcbiIgIiRfTVNHX0JVSUxESU5HX1NPVVJDRV9DT0RFIgogIHN0ZGJ1ZiAtb0wgbWFrZSAyPiYxIHwKICAgIHdoaWxlIElGUz0gcmVhZCAtciBsaW5lOyBkbwogICAgICBpZiBbICIkKGVjaG8gIiRsaW5lIiB8IGN1dCAtZCcgJyAtZjEpIiA9ICJnY2MiIF07IHRoZW4KICAgICAgICBmaWxlPSQoCiAgICAgICAgICBhd2sgLUYnc3JjLycgJ3sgZm9yKGk9MTtpPD1ORjtpKyspIHByaW50ICRpIH0nIDw8PCAiJGxpbmUiIHwgXAogICAgICAgICAgdGFpbCAtbiAxCiAgICAgICAgKQogICAgICAgIHByaW50UHJlcGVuZGVkU3Rkb3V0CiAgICAgICAgcHJpbnRmICIgICAgICAlcyBcZVs5Mm1ceEUyXHg5Q1x4OTRcZVszOW1cbiIgIiRmaWxlIgogICAgICBmaTsKICAgIGRvbmUKfQpmdW5jdGlvbiB0ZXN0UmVkaXNCdWlsZCgpIHsKICBwcmludFByZXBlbmRlZFN0ZG91dAogIHByaW50ZiAiICAgICVzXG4iICIkX01TR19URVNUSU5HX0JVSUxEIgogIHN0ZGJ1ZiAtb0wgbWFrZSB0ZXN0IDI+JjEgfAogICAgd2hpbGUgSUZTPSByZWFkIC1yIGxpbmU7IGRvCiAgICAgIHByaW50UHJlcGVuZGVkU3Rkb3V0CiAgICAgIHByaW50ZiAiJXMiICIkbGluZSIKICAgIGRvbmUKfQpmdW5jdGlvbiBjaGVja1JlZGlzU2VydmljZUNvbmZpZygpIHsKICBwcmludFByZXBlbmRlZFN0ZG91dAogIHByaW50ZiAiICAlc1xuIiAiJF9NU0dfQ0hFQ0tJTkdfU0VSVklDRV9DT05GSUciCiAgcHJpbnRQcmVwZW5kZWRTdGRvdXQKICBfUkVESVNfU0VSVklDRV9FTkFCTEVEX0ZPVU5EPSQoCiAgICBzeXN0ZW1jdGwgbGlzdC11bml0LWZpbGVzIHwgXAogICAgZ3JlcCBlbmFibGVkIHwgXAogICAgZ3JlcCByZWRpcykKICBpZiBbICIkX1JFRElTX1NFUlZJQ0VfRU5BQkxFRF9GT1VORCIgPSAiIiBdOyB0aGVuCiAgICBwcmludGYgIiAgICAlcyIgIiRfTVNHX0VOQUJMSU5HIgogICAgX0VOQUJMRV9SRURJU19TRVJWRVJfT1VUUFVUPSQoCiAgICAgIHN1ZG8gc3lzdGVtY3RsIGVuYWJsZSByZWRpcy5zZXJ2aWNlIDI+JjEgPiAvZGV2L251bGwKICAgICkKICAgIF9FTkFCTEVfUkVESVNfU0VSVkVSX0VYSVRfQ09ERT0kPwogICAgaWYgWyAkX0VOQUJMRV9SRURJU19TRVJWRVJfRVhJVF9DT0RFIC1uZSAwIF07IHRoZW4KICAgICAgcHJpbnRmICIgXGVbOTFtXHhFMlx4OUNceDk1XGVbMzltXG4iID4mMgogICAgICBwcmludGYgIiVzXG4iICIkX01TR19FUlJPUl9FTkFCTElOR19TRVJWSUNFIiA+JjIKICAgICAgcHJpbnRmICIlczogJXNcbiIgIiRfTVNHX0VYSVRfQ09ERSIgIiRfRU5BQkxFX1JFRElTX1NFUlZFUl9FWElUX0NPREUiID4mMgogICAgICBwcmludGYgIiVzOiAlc1xuIiAiJF9NU0dfRVJST1IiICIkX0VOQUJMRV9SRURJU19TRVJWRVJfT1VUUFVUIiA+JjIKICAgICAgZXhpdCAkX0VOQUJMRV9SRURJU19TRVJWRVJfRVhJVF9DT0RFCiAgICBmaTsKICBlbHNlCiAgICBwcmludGYgIiAgICAlcyIgIiRfTVNHX0lUU19FTkFCTEVEIgogIGZpOwogIHByaW50ZiAiIFxlWzkybVx4RTJceDlDXHg5NFxlWzM5bVxuIgogIHByaW50UHJlcGVuZGVkU3Rkb3V0CiAgX1JFRElTX1NFUlZJQ0VfU1RBVFVTPSQoCiAgICBzdWRvIHN5c3RlbWN0bCBzaG93IC1wIEFjdGl2ZVN0YXRlIHJlZGlzIHwgXAogICAgY3V0IC1kJz0nIC1mMiB8IFwKICAgIHRyIC1kICdcbicpCiAgaWYgWyAiJF9SRURJU19TRVJWSUNFX1NUQVRVUyIgIT0gImFjdGl2ZSIgXTsgdGhlbgogICAgcHJpbnRmICIgICAgJXMiICIkX01TR19FWEVDVVRJTkciCiAgICBzdWRvIHN5c3RlbWN0bCBzdGFydCByZWRpcyA+IC9kZXYvbnVsbAogICAgX1JFRElTX1NFUlZJQ0VfU1RBUlRFRD0kPwogICAgaWYgWyAkX1JFRElTX1NFUlZJQ0VfU1RBUlRFRCAtbmUgMCBdOyB0aGVuCiAgICAgIHByaW50ZiAiIFxlWzkxbVx4RTJceDlDXHg5NVxlWzM5bVxuIiA+JjIKICAgICAgcHJpbnRmICIlc1xuIiAiJF9NU0dfU0VSVklDRV9DT1VMRE5UX0JFX1NUQVJURUQiID4mMgogICAgICBwcmludGYgIiVzICclcycuXG4iICIkX01TR19JVFNfT05fU1RBVEUiICIkX1JFRElTX1NFUlZJQ0VfU1RBVFVTIiA+JjIKICAgICAgZXhpdCAkX1JFRElTX1NFUlZJQ0VfU1RBUlRFRAogICAgZmk7CiAgZWxzZQogICAgcHJpbnRmICIgICAgJXMiICIkX01TR19JVFNfUlVOTklORyIKICBmaTsKICBwcmludGYgIiBcZVs5Mm1ceEUyXHg5Q1x4OTRcZVszOW1cbiIKfQpmdW5jdGlvbiBjb25maWd1cmVSZWRpcygpIHsKICBpZiBbIC1kICIvZXRjL3JlZGlzIiBdOyB0aGVuCiAgICBzdWRvIHJtIC1yZiAvZXRjL3JlZGlzCiAgZmk7CiAgc3VkbyBta2RpciAvZXRjL3JlZGlzIHx8IGV4aXQgJD8KICBzdWRvIGNwIC90bXAvcmVkaXMtc3RhYmxlL3JlZGlzLmNvbmYgL2V0Yy9yZWRpcyB8fCBleGl0ICQ/CiAgc3VkbyBzZWQgLWkgJ3MvXnN1cGVydmlzZWQgbm8vc3VwZXJ2aXNlZCBzeXN0ZW1kLycgL2V0Yy9yZWRpcy9yZWRpcy5jb25mIHx8IFwKICAgIGV4aXQgJD8KICBzdWRvIHNlZCAtaSAncy9eZGlyIFwuXC8vZGlyIFwvdmFyXC9saWJcL3JlZGlzLycgL2V0Yy9yZWRpcy9yZWRpcy5jb25mIHx8IFwKICAgIGV4aXQgJD8KICBwcmludGYgIiAgICAlcyIgIiRfTVNHX0NSRUFUSU5HX1NFUlZJQ0UiCiAgc3VkbyBzeXN0ZW1jdGwgZGFlbW9uLXJlbG9hZAogIF9SRURJU19TRVJWSUNFX1NUQVRVUz0kKAogICAgc3VkbyBzeXN0ZW1jdGwgc2hvdyAtcCBBY3RpdmVTdGF0ZSByZWRpcyB8IFwKICAgIGN1dCAtZCc9JyAtZjIgfCBcCiAgICB0ciAtZCAnXG4nKQogIGlmIFsgIiRfUkVESVNfU0VSVklDRV9TVEFUVVMiICE9ICJpbmFjdGl2ZSIgXTsgdGhlbgogICAgc3VkbyBzeXN0ZW1jdGwgc3RvcCByZWRpcyA+IC9kZXYvbnVsbAogIGZpOwogIGlmIFsgLWYgIi9ldGMvc3lzdGVtZC9zeXN0ZW0vcmVkaXMuc2VydmljZSIgXTsgdGhlbgogICAgc3VkbyBybSAtZiAvZXRjL3N5c3RlbWQvc3lzdGVtL3JlZGlzLnNlcnZpY2UKICBmaTsKICBzdWRvIHRvdWNoIC9ldGMvc3lzdGVtZC9zeXN0ZW0vcmVkaXMuc2VydmljZQogIGNhdCA8PCBFT0YgPiAvZXRjL3N5c3RlbWQvc3lzdGVtL3JlZGlzLnNlcnZpY2UKW1VuaXRdCkRlc2NyaXB0aW9uPVJlZGlzIEluLU1lbW9yeSBEYXRhIFN0b3JlCkFmdGVyPW5ldHdvcmsudGFyZ2V0CltTZXJ2aWNlXQpVc2VyPXJlZGlzCkdyb3VwPXJlZGlzCkV4ZWNTdGFydD0vdXNyL2xvY2FsL2Jpbi9yZWRpcy1zZXJ2ZXIgL2V0Yy9yZWRpcy9yZWRpcy5jb25mCkV4ZWNTdG9wPS91c3IvbG9jYWwvYmluL3JlZGlzLWNsaSBzaHV0ZG93bgpSZXN0YXJ0PWFsd2F5cwpbSW5zdGFsbF0KV2FudGVkQnk9bXVsdGktdXNlci50YXJnZXQKRU9GCiAgaWYgWyAkPyAtbmUgMCBdOyB0aGVuCiAgICBleGl0ICQ/CiAgZmk7CiAgcHJpbnRmICIgXGVbOTJtXHhFMlx4OUNceDk0XGVbMzltXG4iCiAgcHJpbnRmICIgICAgJXMiICIkX01TR19DUkVBVElOR19VU0VSIgogIGlmICEgaWQgLXUgcmVkaXMgPiAvZGV2L251bGwgMj4mMTsgdGhlbgogICAgc3VkbyB1c2VyZGVsIC1mIHJlZGlzCiAgZmk7CiAgc3VkbyBhZGR1c2VyIC0tc3lzdGVtIC0tZ3JvdXAgLS1uby1jcmVhdGUtaG9tZSByZWRpcyA+IC9kZXYvbnVsbCB8fCBleGl0ICQ/CiAgcHJpbnRmICIgXGVbOTJtXHhFMlx4OUNceDk0XGVbMzltXG4iCiAgaWYgWyAtZCAiL3Zhci9saWIvcmVkaXMiIF07IHRoZW4KICAgIHN1ZG8gcm0gLXJmIC92YXIvbGliL3JlZGlzIHx8IGV4aXQgJD8KICBmaTsKICBzdWRvIG1rZGlyIC92YXIvbGliL3JlZGlzIHx8IGV4aXQgJD8KICBzdWRvIGNob3duIHJlZGlzOnJlZGlzIC92YXIvbGliL3JlZGlzIHx8IGV4aXQgJD8KICBzdWRvIGNobW9kIDc3MCAvdmFyL2xpYi9yZWRpcyB8fCBleGl0ICQ/CiAgc3VkbyBzeXN0ZW1jdGwgZGFlbW9uLXJlbG9hZAp9CmZ1bmN0aW9uIGluc3RhbGxSZWRpcygpIHsKICBpZiBbIC1kICJyZWRpcy1zdGFibGUiIF07IHRoZW4KICAgIHJtIC1yZiByZWRpcy1zdGFibGUKICBmaTsKICBwcmludFByZXBlbmRlZFN0ZG91dAogIHByaW50ZiAiICAgICVzIiAiJF9NU0dfVU5aSVBQSU5HIgogIHRhciB4enZmICIkMSIgPiAvZGV2L251bGwgfHwgZXhpdCAkPwogIHJtIC1mICIkMSIgfHwgZXhpdCAkPwogIHByaW50ZiAiIFxlWzkybVx4RTJceDlDXHg5NFxlWzM5bVxuIgogIGNkIHJlZGlzLXN0YWJsZSB8fCBleGl0ICQ/CiAgYnVpbGRSZWRpcwogIGlmIFsgJF9URVNUIC1lcSAxIF07IHRoZW4KICAgIHRlc3RSZWRpc0J1aWxkCiAgZmk7CiAgc3VkbyBtYWtlIGluc3RhbGwgPiAvZGV2L251bGwgMj4mMSB8fCBleGl0ICQ/CiAgY29uZmlndXJlUmVkaXMKfQpjZCAvdG1wIHx8IGV4aXQgJD8KZ2V0UmVkaXNTZXJ2ZXJMYXN0ZXN0U3RhYmxlVmVyc2lvbgpfUkVESVNfQklOQVJZX0ZJTEVQQVRIPSIkKGNvbW1hbmQgLXYgcmVkaXMtc2VydmVyKSIKaWYgWyAiJF9SRURJU19CSU5BUllfRklMRVBBVEgiID0gIiIgXTsgdGhlbgogIGRvd25sb2FkUmVkaXNMYXN0ZXN0U3RhYmxlVmVyc2lvbiAvdG1wL3JlZGlzLXN0YWJsZS50YXIuZ3oKICBwcmludFByZXBlbmRlZFN0ZG91dAogIHByaW50ZiAiICAlcyAodiVzKS4uLlxuIiAiJF9NU0dfSU5TVEFMTElOR19SRURJUyIgIiRfUkVESVNfTEFTVEVTVF9TVEFCTEVfVkVSU0lPTiIKICBpbnN0YWxsUmVkaXMgL3RtcC9yZWRpcy1zdGFibGUudGFyLmd6CmVsc2UKICBfUkVESVNfSU5TVEFMTEVEX1ZFUlNJT049JCgKICAgIHJlZGlzLXNlcnZlciAtLXZlcnNpb24gfCBcCiAgICBjdXQgLWQnPScgLWYyIHwgXAogICAgY3V0IC1kJyAnIC1mMSkKICBpZiBbICIkX1JFRElTX0lOU1RBTExFRF9WRVJTSU9OIiAhPSAiJF9SRURJU19MQVNURVNUX1NUQUJMRV9WRVJTSU9OIiBdOyB0aGVuCiAgICBkb3dubG9hZFJlZGlzTGFzdGVzdFN0YWJsZVZlcnNpb24gL3RtcC9yZWRpcy1zdGFibGUudGFyLmd6CiAgICBwcmludFByZXBlbmRlZFN0ZG91dAogICAgcHJpbnRmICIgICVzICh2JXMgLT4iICIkX01TR19VUERBVElOR19SRURJUyIgIiRfUkVESVNfSU5TVEFMTEVEX1ZFUlNJT04iCiAgICBwcmludGYgIiB2JXMpLi4uXG4iICIkX1JFRElTX0xBU1RFU1RfU1RBQkxFX1ZFUlNJT04iCiAgICBpbnN0YWxsUmVkaXMgL3RtcC9yZWRpcy1zdGFibGUudGFyLmd6CiAgZWxzZQogICAgcHJpbnRQcmVwZW5kZWRTdGRvdXQKICAgIHByaW50ZiAiICAlcyAodiVzKSIgIiRfTVNHX0ZPVU5EX1JFRElTX0lOU1RBTExFRCIgIiRfUkVESVNfSU5TVEFMTEVEX1ZFUlNJT04iCiAgICBwcmludGYgIiBcZVs5Mm1ceEUyXHg5Q1x4OTRcZVszOW1cbiIKICBmaTsKZmk7CmNoZWNrUmVkaXNTZXJ2aWNlQ29uZmlnCmNkICIkX09SSUdJTl9QV0QiIHx8IGV4aXQgJD8K' | base64 -d)