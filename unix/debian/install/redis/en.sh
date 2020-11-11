#!/bin/bash
H='IyEvYmluL2Jhc2gKIyAtKi0gRU5DT0RJTkc6IFVURi04IC0qLQpfU0NSSVBUX0ZJTEVOQU1FPWVuLnNoCiMhL2Jpbi9iYXNoCl9NU0dfU0VUVElOR19SRURJU19FQ09TWVNURU09IlNldHRpbmcgdXAgUmVkaXMgZWNvc3lzdGVtLi4uIgpfTVNHX0NIRUNLSU5HX0JBU0VfREVQRU5ERU5DSUVTPSJDaGVja2luZyBiYXNlIGRlcGVuZGVuY2llcy4uLiIKX01TR19SRVRSSUVWSU5HX0xBU1RFU1RfU1RBQkxFX1ZFUlNJT049IlJldHJpZXZpbmcgbGFzdGVzdCBzdGFibGUgdmVyc2lvbi4uLiIKX01TR19FUlJPUl9SRVRSSUVWSU5HX0xBU1RFU1RfVkVSU0lPTl9GUk9NX0ZJTEU9IkFuIGVycm9yIGhhcHBlbiByZXRyaWV2aW5nIGxhc3Rlc3Qgc3RhYmxlIFJlZGlzIHZlcnNpb24gZnJvbSBmaWxlIgpfTVNHX1ZFUlNJT05TX0ZPVU5EPSJWZXJzaW9ucyBmb3VuZDoiCl9NU0dfRE9XTkxPQURJTkdfUkVESVM9IkRvd25sb2FkaW5nIFJlZGlzIgpfTVNHX0JVSUxESU5HX1NPVVJDRV9DT0RFPSJCdWlsZGluZyBzb3VyY2UgY29kZS4uLiIKX01TR19URVNUSU5HX0JVSUxEPSJUZXN0aW5nIGJ1aWxkLi4uIgpfTVNHX0NIRUNLSU5HX1NFUlZJQ0VfQ09ORklHPSJDaGVja2luZyAncmVkaXMnIHNlcnZpY2UgY29uZmlndXJhdGlvbi4uLiIKX01TR19FTkFCTElORz0iRW5hYmxpbmcuLi4iCl9NU0dfRVJST1JfRU5BQkxJTkdfU0VSVklDRT0iQW4gZXJyb3IgaGFwcGVuIGVuYWJsaW5nICdyZWRpcycgc2VydmljZS4iCl9NU0dfRVJST1I9IkVycm9yIgpfTVNHX0VYSVRfQ09ERT0iRXhpdCBjb2RlIgpfTVNHX0lUU19FTkFCTEVEPSJJdCdzIGVuYWJsZWQiCl9NU0dfRVhFQ1VUSU5HPSJFeGVjdXRpbmcuLi4iCl9NU0dfU0VSVklDRV9DT1VMRE5UX0JFX1NUQVJURUQ9IlRoZSAncmVkaXMnIHNlcnZpY2UgY291bGQgbm90IGJlIHN0YXJ0ZWQuIgpfTVNHX0lUU19PTl9TVEFURT0iSXQncyBvbiBzdGF0ZSIKX01TR19JVFNfUlVOTklORz0iSXQncyBydW5ubmluZyIKX01TR19DUkVBVElOR19TRVJWSUNFPSJDcmVhdGluZyAncmVkaXMnIHNlcnZpY2UuLi4iCl9NU0dfQ1JFQVRJTkdfVVNFUj0iQ3JlYXRpbmcgJ3JlZGlzJyB1c2VyLi4uIgpfTVNHX1VOWklQUElORz0iVW56aXBwaW5nLi4uIgpfTVNHX0lOU1RBTExJTkdfUkVESVM9Ikluc3RhbGxpbmcgUmVkaXMiCl9NU0dfVVBEQVRJTkdfUkVESVM9IlVwZGF0aW5nIFJlZGlzIgpfTVNHX0ZPVU5EX1JFRElTX0lOU1RBTExFRD0iRm91bmQgUmVkaXMgaW5zdGFsbGVkIgpfT1JJR0lOX1BXRD0iJFBXRCIKSU5ERU5UX1NUUklORz0iIgpfVEVTVD0wCmZ1bmN0aW9uIHVzYWdlIHsKICAgIGNhdCA8PEhFTFBfVVNBR0UKVXNhZ2U6IHVuaXgvZGViaWFuL2luc3RhbGwvcmVkaXMvJF9TQ1JJUFRfRklMRU5BTUUgWy1oXSBbLWkgU1RSSU5HXSBbLXRdCgogIEluc3RhbGwgb3IgdXBkYXRlIFJlZGlzIGJ1aWxkaW5nIGZyb20gc291cmNlIGNvZGUuIEFsc28sIGdlbmVyYXRlcyB0aGUgcmVkaXMgdXNlciBhbmQgc2VydmljZS4KCk9wdGlvbnM6CiAgLWgsIC0taGVscCAgICAgICAgICAgICAgICAgICAgICAgIFNob3cgdGhpcyBoZWxwIG1lc3NhZ2UgYW5kIGV4aXQuCiAgLWkgU1RSSU5HLCAtLWluZGVudCBTVFJJTkcgICAgICAgIEVhY2ggbGluZSBvZiB0aGUgc2NyaXB0IG91dHB1dCB3aWxsIGJlIHByZWNlZGVkIHdpdGggdGhlIHN0cmluZyBkZWZpbmVkIGluIHRoaXMgcGFyYW1ldGVyLgogIC10LCAtLXRlc3QgICAgICAgICAgICAgICAgICAgICAgICBJZiBwYXNzZWQsIFJlZGlzIGJ1aWxkIHdpbGwgYmUgdGVzdGVkLiBUaGlzIGNvdWxkIHRha2UgYSBsb3Qgb2YgdGltZS4KCkhFTFBfVVNBR0UKICAgIGV4aXQgMQp9CmZvciBhcmcgaW4gIiRAIjsgZG8KICBjYXNlICRhcmcgaW4KICAgIC1pfC0taW5kZW50KQogICAgSU5ERU5UX1NUUklORz0iJDIiCiAgICBzaGlmdCAyCiAgICA7OwogICAgLWh8LS1oZWxwKQogICAgc2hpZnQKICAgIHVzYWdlCiAgICA7OyAgICAKICAgIC10fC0tdGVzdCkKICAgIF9URVNUPTEKICAgIHNoaWZ0CiAgICA7OwogIGVzYWMKZG9uZQpmdW5jdGlvbiBwcmludEluZGVudCgpIHsKICBwcmludGYgIiVzIiAiJElOREVOVF9TVFJJTkciCn0KZnVuY3Rpb24gaW5zdGFsbFBhY21hbklmTm90SW5zdGFsbGVkKCkgewogIGlmIFsgIiQoY29tbWFuZCAtdiBwYWNtYW4pIiA9ICIiIF07IHRoZW4KICAgIHVybD0iaHR0cHM6Ly9tb25kZWphLmdpdGh1Yi5pby9zaHJlYWQvdW5peC9fL2Rvd25sb2FkL3BhY2FwdC8kX1NDUklQVF9GSUxFTkFNRSIKICAgIGN1cmwgLXNMICIkdXJsIiB8IHN1ZG8gYmFzaCAtID4gL2Rldi9udWxsCiAgZmk7Cn0KZnVuY3Rpb24gaW5zdGFsbFNjcmlwdERlcGVuZGVuY2llcygpIHsKICBpbnN0YWxsUGFjbWFuSWZOb3RJbnN0YWxsZWQKICBJTlNUQUxMQVRJT05fREVQRU5ERU5DSUVTPSgKICAgICJidWlsZC1lc3NlbnRpYWwiCiAgICAidGNsIgogICAgIm1ha2UiCiAgKQogIGZvciBERVAgaW4gIiR7SU5TVEFMTEFUSU9OX0RFUEVOREVOQ0lFU1tAXX0iOyBkbwogICAgcHJpbnRJbmRlbnQKICAgIHByaW50ZiAiICAgICVzIiAiJERFUCIKICAgIGlmIFtbICIkKHN1ZG8gcGFjbWFuIC1RaSAiJERFUCIgMj4gL2Rldi9udWxsIHwgZ3JlcCBTdGF0dXMpIiAhPSAiU3RhdHVzOiBpbnN0YWxsIG9rIGluc3RhbGxlZCIgXV07IHRoZW4KICAgICAgc3VkbyBwYWNtYW4gLVMgLS0gLXkgIiRERVAiID4gL2Rldi9udWxsIHx8IGV4aXQgJD8KICAgIGZpOwogICAgcHJpbnRmICIgXGVbOTJtXHhFMlx4OUNceDk0XGVbMzltXG4iCiAgZG9uZQp9CmZ1bmN0aW9uIGdldFJlZGlzU2VydmVyTGFzdGVzdFN0YWJsZVZlcnNpb24oKSB7CiAgcHJpbnRJbmRlbnQKICBwcmludGYgIiAgJXMiICIkX01TR19SRVRSSUVWSU5HX0xBU1RFU1RfU1RBQkxFX1ZFUlNJT04iCiAgX1JFRElTX0xBU1RFU1RfU1RBQkxFX1ZFUlNJT049JCgKICAgIGN1cmwgLXNMIGh0dHA6Ly9kb3dubG9hZC5yZWRpcy5pby9yZWRpcy1zdGFibGUvMDAtUkVMRUFTRU5PVEVTIHwgICAgICAgZ3JlcCBSZWxlYXNlZCB8ICAgICAgIGhlYWQgLW4gMSB8ICAgICAgIGN1dCAtZCcgJyAtZjIgfCAgICAgICB0ciAtZCAnXG4nCiAgKQogIGlmIFsgIiRfUkVESVNfTEFTVEVTVF9TVEFCTEVfVkVSU0lPTiIgPSAiIiBdOyB0aGVuCiAgICBwcmludGYgIiBcZVs5MW1ceEUyXHg5Q1x4OTVcZVszOW1cbiIgPiYyCiAgICBwcmludGYgIlxuJXMiICIkX01TR19FUlJPUl9SRVRSSUVWSU5HX0xBU1RFU1RfVkVSU0lPTl9GUk9NX0ZJTEUiID4mMgogICAgcHJpbnRmICIgJ2h0dHA6Ly9kb3dubG9hZC5yZWRpcy5pby9yZWRpcy1zdGFibGUvIiA+JjIKICAgIHByaW50ZiAiMDAtUkVMRUFTRU5PVEVTJy5cbiVzXG4iICIkX01TR19WRVJTSU9OU19GT1VORCIgPiYyCiAgICBwcmludGYgIiVzIiAiJChjdXJsIC1zTCBodHRwOi8vZG93bmxvYWQucmVkaXMuaW8vcmVkaXMtc3RhYmxlLzAwLVJFTEVBU0VOT1RFUyB8ICAgICAgIGdyZXAgUmVsZWFzZWQgfCAgICAgICBjdXQgLWQnICcgLWYyKVxuIiA+JjIKICAgIGV4aXQgMQogIGZpOwogIHByaW50ZiAiICh2JXMpIFxlWzkybVx4RTJceDlDXHg5NFxlWzM5bVxuIiAiJF9SRURJU19MQVNURVNUX1NUQUJMRV9WRVJTSU9OIgp9CmZ1bmN0aW9uIGRvd25sb2FkUmVkaXNMYXN0ZXN0U3RhYmxlVmVyc2lvbigpIHsKICBwcmludEluZGVudAogIHByaW50ZiAiICAlcyAodiVzKS4uLiIgIiRfTVNHX0RPV05MT0FESU5HX1JFRElTIiAiJF9SRURJU19MQVNURVNUX1NUQUJMRV9WRVJTSU9OIgogIGN1cmwgLXNMIGh0dHA6Ly9kb3dubG9hZC5yZWRpcy5pby9yZWRpcy1zdGFibGUudGFyLmd6ICAgICAtLW91dHB1dCAiJDEiIHx8IGV4aXQgJD8KICBwcmludGYgIiBcZVs5Mm1ceEUyXHg5Q1x4OTRcZVszOW1cbiIKfQpmdW5jdGlvbiBidWlsZFJlZGlzKCkgewogIHByaW50SW5kZW50CiAgcHJpbnRmICIgICAgJXNcbiIgIiRfTVNHX0JVSUxESU5HX1NPVVJDRV9DT0RFIgogIHN0ZGJ1ZiAtb0wgbWFrZSAyPiYxIHwKICAgIHdoaWxlIElGUz0gcmVhZCAtciBsaW5lOyBkbwogICAgICBpZiBbICIkKGVjaG8gIiRsaW5lIiB8IGN1dCAtZCcgJyAtZjEpIiA9ICJnY2MiIF07IHRoZW4KICAgICAgICBmaWxlPSQoCiAgICAgICAgICBhd2sgLUYnc3JjLycgJ3sgZm9yKGk9MTtpPD1ORjtpKyspIHByaW50ICRpIH0nIDw8PCAiJGxpbmUiIHwgICAgICAgICAgIHRhaWwgLW4gMQogICAgICAgICkKICAgICAgICBwcmludEluZGVudAogICAgICAgIHByaW50ZiAiICAgICAgJXMgXGVbOTJtXHhFMlx4OUNceDk0XGVbMzltXG4iICIkZmlsZSIKICAgICAgZmk7CiAgICBkb25lCn0KZnVuY3Rpb24gdGVzdFJlZGlzQnVpbGQoKSB7CiAgcHJpbnRJbmRlbnQKICBwcmludGYgIiAgICAlc1xuIiAiJF9NU0dfVEVTVElOR19CVUlMRCIKICBzdGRidWYgLW9MIG1ha2UgdGVzdCAyPiYxIHwKICAgIHdoaWxlIElGUz0gcmVhZCAtciBsaW5lOyBkbwogICAgICBwcmludEluZGVudAogICAgICBwcmludGYgIiVzIiAiJGxpbmUiCiAgICBkb25lCn0KZnVuY3Rpb24gY2hlY2tSZWRpc1NlcnZpY2VDb25maWcoKSB7CiAgcHJpbnRJbmRlbnQKICBwcmludGYgIiAgJXNcbiIgIiRfTVNHX0NIRUNLSU5HX1NFUlZJQ0VfQ09ORklHIgogIHByaW50SW5kZW50CiAgX1JFRElTX1NFUlZJQ0VfRU5BQkxFRF9GT1VORD0kKAogICAgc3lzdGVtY3RsIGxpc3QtdW5pdC1maWxlcyB8ICAgICBncmVwIGVuYWJsZWQgfCAgICAgZ3JlcCByZWRpcykKICBpZiBbICIkX1JFRElTX1NFUlZJQ0VfRU5BQkxFRF9GT1VORCIgPSAiIiBdOyB0aGVuCiAgICBwcmludGYgIiAgICAlcyIgIiRfTVNHX0VOQUJMSU5HIgogICAgX0VOQUJMRV9SRURJU19TRVJWRVJfT1VUUFVUPSQoCiAgICAgIHN1ZG8gc3lzdGVtY3RsIGVuYWJsZSByZWRpcy5zZXJ2aWNlIDI+JjEgPiAvZGV2L251bGwKICAgICkKICAgIF9FTkFCTEVfUkVESVNfU0VSVkVSX0VYSVRfQ09ERT0kPwogICAgaWYgWyAkX0VOQUJMRV9SRURJU19TRVJWRVJfRVhJVF9DT0RFIC1uZSAwIF07IHRoZW4KICAgICAgcHJpbnRmICIgXGVbOTFtXHhFMlx4OUNceDk1XGVbMzltXG4iID4mMgogICAgICBwcmludGYgIiVzXG4iICIkX01TR19FUlJPUl9FTkFCTElOR19TRVJWSUNFIiA+JjIKICAgICAgcHJpbnRmICIlczogJXNcbiIgIiRfTVNHX0VYSVRfQ09ERSIgIiRfRU5BQkxFX1JFRElTX1NFUlZFUl9FWElUX0NPREUiID4mMgogICAgICBwcmludGYgIiVzOiAlc1xuIiAiJF9NU0dfRVJST1IiICIkX0VOQUJMRV9SRURJU19TRVJWRVJfT1VUUFVUIiA+JjIKICAgICAgZXhpdCAkX0VOQUJMRV9SRURJU19TRVJWRVJfRVhJVF9DT0RFCiAgICBmaTsKICBlbHNlCiAgICBwcmludGYgIiAgICAlcyIgIiRfTVNHX0lUU19FTkFCTEVEIgogIGZpOwogIHByaW50ZiAiIFxlWzkybVx4RTJceDlDXHg5NFxlWzM5bVxuIgogIHByaW50SW5kZW50CiAgX1JFRElTX1NFUlZJQ0VfU1RBVFVTPSQoCiAgICBzdWRvIHN5c3RlbWN0bCBzaG93IC1wIEFjdGl2ZVN0YXRlIHJlZGlzIHwgICAgIGN1dCAtZCc9JyAtZjIgfCAgICAgdHIgLWQgJ1xuJykKICBpZiBbICIkX1JFRElTX1NFUlZJQ0VfU1RBVFVTIiAhPSAiYWN0aXZlIiBdOyB0aGVuCiAgICBwcmludGYgIiAgICAlcyIgIiRfTVNHX0VYRUNVVElORyIKICAgIHN1ZG8gc3lzdGVtY3RsIHN0YXJ0IHJlZGlzID4gL2Rldi9udWxsCiAgICBfUkVESVNfU0VSVklDRV9TVEFSVEVEPSQ/CiAgICBpZiBbICRfUkVESVNfU0VSVklDRV9TVEFSVEVEIC1uZSAwIF07IHRoZW4KICAgICAgcHJpbnRmICIgXGVbOTFtXHhFMlx4OUNceDk1XGVbMzltXG4iID4mMgogICAgICBwcmludGYgIiVzXG4iICIkX01TR19TRVJWSUNFX0NPVUxETlRfQkVfU1RBUlRFRCIgPiYyCiAgICAgIHByaW50ZiAiJXMgJyVzJy5cbiIgIiRfTVNHX0lUU19PTl9TVEFURSIgIiRfUkVESVNfU0VSVklDRV9TVEFUVVMiID4mMgogICAgICBleGl0ICRfUkVESVNfU0VSVklDRV9TVEFSVEVECiAgICBmaTsKICBlbHNlCiAgICBwcmludGYgIiAgICAlcyIgIiRfTVNHX0lUU19SVU5OSU5HIgogIGZpOwogIHByaW50ZiAiIFxlWzkybVx4RTJceDlDXHg5NFxlWzM5bVxuIgp9CmZ1bmN0aW9uIGNvbmZpZ3VyZVJlZGlzKCkgewogIGlmIFsgLWQgIi9ldGMvcmVkaXMiIF07IHRoZW4KICAgIHN1ZG8gcm0gLXJmIC9ldGMvcmVkaXMKICBmaTsKICBzdWRvIG1rZGlyIC9ldGMvcmVkaXMgfHwgZXhpdCAkPwogIHN1ZG8gY3AgL3RtcC9yZWRpcy1zdGFibGUvcmVkaXMuY29uZiAvZXRjL3JlZGlzIHx8IGV4aXQgJD8KICBzdWRvIHNlZCAtaSAncy9ec3VwZXJ2aXNlZCBuby9zdXBlcnZpc2VkIHN5c3RlbWQvJyAvZXRjL3JlZGlzL3JlZGlzLmNvbmYgfHwgICAgIGV4aXQgJD8KICBzdWRvIHNlZCAtaSAncy9eZGlyIFwuXC8vZGlyIFwvdmFyXC9saWJcL3JlZGlzLycgL2V0Yy9yZWRpcy9yZWRpcy5jb25mIHx8ICAgICBleGl0ICQ/CiAgcHJpbnRmICIgICAgJXMiICIkX01TR19DUkVBVElOR19TRVJWSUNFIgogIHN1ZG8gc3lzdGVtY3RsIGRhZW1vbi1yZWxvYWQKICBfUkVESVNfU0VSVklDRV9TVEFUVVM9JCgKICAgIHN1ZG8gc3lzdGVtY3RsIHNob3cgLXAgQWN0aXZlU3RhdGUgcmVkaXMgfCAgICAgY3V0IC1kJz0nIC1mMiB8ICAgICB0ciAtZCAnXG4nKQogIGlmIFsgIiRfUkVESVNfU0VSVklDRV9TVEFUVVMiICE9ICJpbmFjdGl2ZSIgXTsgdGhlbgogICAgc3VkbyBzeXN0ZW1jdGwgc3RvcCByZWRpcyA+IC9kZXYvbnVsbAogIGZpOwogIGlmIFsgLWYgIi9ldGMvc3lzdGVtZC9zeXN0ZW0vcmVkaXMuc2VydmljZSIgXTsgdGhlbgogICAgc3VkbyBybSAtZiAvZXRjL3N5c3RlbWQvc3lzdGVtL3JlZGlzLnNlcnZpY2UKICBmaTsKICBzdWRvIHRvdWNoIC9ldGMvc3lzdGVtZC9zeXN0ZW0vcmVkaXMuc2VydmljZQogIGNhdCA8PCBFT0YgPiAvZXRjL3N5c3RlbWQvc3lzdGVtL3JlZGlzLnNlcnZpY2UKW1VuaXRdCkRlc2NyaXB0aW9uPVJlZGlzIEluLU1lbW9yeSBEYXRhIFN0b3JlCkFmdGVyPW5ldHdvcmsudGFyZ2V0CltTZXJ2aWNlXQpVc2VyPXJlZGlzCkdyb3VwPXJlZGlzCkV4ZWNTdGFydD0vdXNyL2xvY2FsL2Jpbi9yZWRpcy1zZXJ2ZXIgL2V0Yy9yZWRpcy9yZWRpcy5jb25mCkV4ZWNTdG9wPS91c3IvbG9jYWwvYmluL3JlZGlzLWNsaSBzaHV0ZG93bgpSZXN0YXJ0PWFsd2F5cwpbSW5zdGFsbF0KV2FudGVkQnk9bXVsdGktdXNlci50YXJnZXQKRU9GCiAgaWYgWyAkPyAtbmUgMCBdOyB0aGVuCiAgICBleGl0ICQ/CiAgZmk7CiAgcHJpbnRmICIgXGVbOTJtXHhFMlx4OUNceDk0XGVbMzltXG4iCiAgcHJpbnRmICIgICAgJXMiICIkX01TR19DUkVBVElOR19VU0VSIgogIGlmICEgaWQgLXUgcmVkaXMgPiAvZGV2L251bGwgMj4mMTsgdGhlbgogICAgc3VkbyB1c2VyZGVsIC1mIHJlZGlzCiAgZmk7CiAgc3VkbyBhZGR1c2VyIC0tc3lzdGVtIC0tZ3JvdXAgLS1uby1jcmVhdGUtaG9tZSByZWRpcyA+IC9kZXYvbnVsbCB8fCBleGl0ICQ/CiAgcHJpbnRmICIgXGVbOTJtXHhFMlx4OUNceDk0XGVbMzltXG4iCiAgaWYgWyAtZCAiL3Zhci9saWIvcmVkaXMiIF07IHRoZW4KICAgIHN1ZG8gcm0gLXJmIC92YXIvbGliL3JlZGlzIHx8IGV4aXQgJD8KICBmaTsKICBzdWRvIG1rZGlyIC92YXIvbGliL3JlZGlzIHx8IGV4aXQgJD8KICBzdWRvIGNob3duIHJlZGlzOnJlZGlzIC92YXIvbGliL3JlZGlzIHx8IGV4aXQgJD8KICBzdWRvIGNobW9kIDc3MCAvdmFyL2xpYi9yZWRpcyB8fCBleGl0ICQ/CiAgc3VkbyBzeXN0ZW1jdGwgZGFlbW9uLXJlbG9hZAp9CmZ1bmN0aW9uIGluc3RhbGxSZWRpcygpIHsKICBpZiBbIC1kICJyZWRpcy1zdGFibGUiIF07IHRoZW4KICAgIHJtIC1yZiByZWRpcy1zdGFibGUKICBmaTsKICBwcmludEluZGVudAogIHByaW50ZiAiICAgICVzIiAiJF9NU0dfVU5aSVBQSU5HIgogIHRhciB4enZmICIkMSIgPiAvZGV2L251bGwgfHwgZXhpdCAkPwogIHJtIC1mICIkMSIgfHwgZXhpdCAkPwogIHByaW50ZiAiIFxlWzkybVx4RTJceDlDXHg5NFxlWzM5bVxuIgogIGNkIHJlZGlzLXN0YWJsZSB8fCBleGl0ICQ/CiAgYnVpbGRSZWRpcwogIGlmIFsgJF9URVNUIC1lcSAxIF07IHRoZW4KICAgIHRlc3RSZWRpc0J1aWxkCiAgZmk7CiAgc3VkbyBtYWtlIGluc3RhbGwgPiAvZGV2L251bGwgMj4mMSB8fCBleGl0ICQ/CiAgY29uZmlndXJlUmVkaXMKfQpmdW5jdGlvbiBtYWluKCkgewogIHByaW50SW5kZW50CiAgcHJpbnRmICIlc1xuIiAiJF9NU0dfU0VUVElOR19SRURJU19FQ09TWVNURU0iCiAgcHJpbnRJbmRlbnQKICBwcmludGYgIiAgJXNcbiIgIiRfTVNHX0NIRUNLSU5HX0JBU0VfREVQRU5ERU5DSUVTIgogIGluc3RhbGxTY3JpcHREZXBlbmRlbmNpZXMKICBjZCAvdG1wIHx8IGV4aXQgJD8KICBnZXRSZWRpc1NlcnZlckxhc3Rlc3RTdGFibGVWZXJzaW9uCiAgX1JFRElTX0JJTkFSWV9GSUxFUEFUSD0iJChjb21tYW5kIC12IHJlZGlzLXNlcnZlcikiCiAgaWYgWyAiJF9SRURJU19CSU5BUllfRklMRVBBVEgiID0gIiIgXTsgdGhlbgogICAgZG93bmxvYWRSZWRpc0xhc3Rlc3RTdGFibGVWZXJzaW9uIC90bXAvcmVkaXMtc3RhYmxlLnRhci5negogICAgcHJpbnRJbmRlbnQKICAgIHByaW50ZiAiICAlcyAodiVzKS4uLlxuIiAiJF9NU0dfSU5TVEFMTElOR19SRURJUyIgIiRfUkVESVNfTEFTVEVTVF9TVEFCTEVfVkVSU0lPTiIKICAgIGluc3RhbGxSZWRpcyAvdG1wL3JlZGlzLXN0YWJsZS50YXIuZ3oKICBlbHNlCiAgICBfUkVESVNfSU5TVEFMTEVEX1ZFUlNJT049JCgKICAgICAgcmVkaXMtc2VydmVyIC0tdmVyc2lvbiB8ICAgICAgIGN1dCAtZCc9JyAtZjIgfCAgICAgICBjdXQgLWQnICcgLWYxKQogICAgaWYgWyAiJF9SRURJU19JTlNUQUxMRURfVkVSU0lPTiIgIT0gIiRfUkVESVNfTEFTVEVTVF9TVEFCTEVfVkVSU0lPTiIgXTsgdGhlbgogICAgICBkb3dubG9hZFJlZGlzTGFzdGVzdFN0YWJsZVZlcnNpb24gL3RtcC9yZWRpcy1zdGFibGUudGFyLmd6CiAgICAgIHByaW50SW5kZW50CiAgICAgIHByaW50ZiAiICAlcyAodiVzIC0+IiAiJF9NU0dfVVBEQVRJTkdfUkVESVMiICIkX1JFRElTX0lOU1RBTExFRF9WRVJTSU9OIgogICAgICBwcmludGYgIiB2JXMpLi4uXG4iICIkX1JFRElTX0xBU1RFU1RfU1RBQkxFX1ZFUlNJT04iCiAgICAgIGluc3RhbGxSZWRpcyAvdG1wL3JlZGlzLXN0YWJsZS50YXIuZ3oKICAgIGVsc2UKICAgICAgcHJpbnRJbmRlbnQKICAgICAgcHJpbnRmICIgICVzICh2JXMpIiAiJF9NU0dfRk9VTkRfUkVESVNfSU5TVEFMTEVEIiAiJF9SRURJU19JTlNUQUxMRURfVkVSU0lPTiIKICAgICAgcHJpbnRmICIgXGVbOTJtXHhFMlx4OUNceDk0XGVbMzltXG4iCiAgICBmaTsKICBmaTsKICBjaGVja1JlZGlzU2VydmljZUNvbmZpZwogIGNkICIkX09SSUdJTl9QV0QiIHx8IGV4aXQgJD8KfQppZiAocmV0dXJuIDAgMj4vZGV2L251bGwpOyB0aGVuCiAgZXhwb3J0VmFyaWFibGVzCmVsc2UKICBtYWluCmZpOw=='
if (return 0 2>/dev/null); then
  source <(printf "%s" "$H" | base64 -d)
else
  echo "$(echo "$H" | base64 -d)" | bash -s -- "$@"
fi;
