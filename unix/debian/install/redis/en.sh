#!/bin/bash
H='IyEvYmluL2Jhc2gKIyAtKi0gRU5DT0RJTkc6IFVURi04IC0qLQpfU0NSSVBUX0ZJTEVOQU1FPWVuLnNoCiMhL2Jpbi9iYXNoCl9NU0dfU0VUVElOR19SRURJU19FQ09TWVNURU09IlNldHRpbmcgdXAgUmVkaXMgZWNvc3lzdGVtLi4uIgpfTVNHX0NIRUNLSU5HX0JBU0VfREVQRU5ERU5DSUVTPSJDaGVja2luZyBiYXNlIGRlcGVuZGVuY2llcy4uLiIKX01TR19SRVRSSUVWSU5HX0xBU1RFU1RfU1RBQkxFX1ZFUlNJT049IlJldHJpZXZpbmcgbGFzdGVzdCBzdGFibGUgdmVyc2lvbi4uLiIKX01TR19FUlJPUl9SRVRSSUVWSU5HX0xBU1RFU1RfVkVSU0lPTl9GUk9NX0ZJTEU9IkFuIGVycm9yIGhhcHBlbiByZXRyaWV2aW5nIGxhc3Rlc3Qgc3RhYmxlIFJlZGlzIHZlcnNpb24gZnJvbSBmaWxlIgpfTVNHX1ZFUlNJT05TX0ZPVU5EPSJWZXJzaW9ucyBmb3VuZDoiCl9NU0dfRE9XTkxPQURJTkdfUkVESVM9IkRvd25sb2FkaW5nIFJlZGlzIgpfTVNHX0JVSUxESU5HX1NPVVJDRV9DT0RFPSJCdWlsZGluZyBzb3VyY2UgY29kZS4uLiIKX01TR19URVNUSU5HX0JVSUxEPSJUZXN0aW5nIGJ1aWxkLi4uIgpfTVNHX0NIRUNLSU5HX1NFUlZJQ0VfQ09ORklHPSJDaGVja2luZyAncmVkaXMnIHNlcnZpY2UgY29uZmlndXJhdGlvbi4uLiIKX01TR19FTkFCTElORz0iRW5hYmxpbmcuLi4iCl9NU0dfRVJST1JfRU5BQkxJTkdfU0VSVklDRT0iQW4gZXJyb3IgaGFwcGVuIGVuYWJsaW5nICdyZWRpcycgc2VydmljZS4iCl9NU0dfRVJST1I9IkVycm9yIgpfTVNHX0VYSVRfQ09ERT0iRXhpdCBjb2RlIgpfTVNHX0lUU19FTkFCTEVEPSJJdCdzIGVuYWJsZWQiCl9NU0dfRVhFQ1VUSU5HPSJFeGVjdXRpbmcuLi4iCl9NU0dfU0VSVklDRV9DT1VMRE5UX0JFX1NUQVJURUQ9IlRoZSAncmVkaXMnIHNlcnZpY2UgY291bGQgbm90IGJlIHN0YXJ0ZWQuIgpfTVNHX0lUU19PTl9TVEFURT0iSXQncyBvbiBzdGF0ZSIKX01TR19JVFNfUlVOTklORz0iSXQncyBydW5ubmluZyIKX01TR19DUkVBVElOR19TRVJWSUNFPSJDcmVhdGluZyAncmVkaXMnIHNlcnZpY2UuLi4iCl9NU0dfQ1JFQVRJTkdfVVNFUj0iQ3JlYXRpbmcgJ3JlZGlzJyB1c2VyLi4uIgpfTVNHX1VOWklQUElORz0iVW56aXBwaW5nLi4uIgpfTVNHX0lOU1RBTExJTkdfUkVESVM9Ikluc3RhbGxpbmcgUmVkaXMiCl9NU0dfVVBEQVRJTkdfUkVESVM9IlVwZGF0aW5nIFJlZGlzIgpfTVNHX0ZPVU5EX1JFRElTX0lOU1RBTExFRD0iRm91bmQgUmVkaXMgaW5zdGFsbGVkIgpfT1JJR0lOX1BXRD0iJFBXRCIKSU5ERU5UX1NUUklORz0iIgpfVEVTVD0wCl9DSEVDS19TRVJWSUNFPTEKZnVuY3Rpb24gdXNhZ2UgewogICAgY2F0IDw8SEVMUF9VU0FHRQpVc2FnZTogdW5peC9kZWJpYW4vaW5zdGFsbC9yZWRpcy8kX1NDUklQVF9GSUxFTkFNRSBbLWhdIFstaSBTVFJJTkddIFstdF0KCiAgSW5zdGFsbHMgb3IgdXBkYXRlcyBSZWRpcyBidWlsZGluZyBmcm9tIHNvdXJjZSBjb2RlLiBBbHNvLCBnZW5lcmF0ZXMgYW5kIGNvbmZpZ3VyZXMgdGhlICdyZWRpcycgdXNlciBhbmQgc2VydmljZS4KCk9wdGlvbnM6CiAgLWgsIC0taGVscCAgICAgICAgICAgICAgICAgICAgICAgIFNob3cgdGhpcyBoZWxwIG1lc3NhZ2UgYW5kIGV4aXQuCiAgLWkgU1RSSU5HLCAtLWluZGVudCBTVFJJTkcgICAgICAgIEVhY2ggbGluZSBvZiB0aGUgc2NyaXB0IG91dHB1dCB3aWxsIGJlIHByZWNlZGVkIHdpdGggdGhlIHN0cmluZyBkZWZpbmVkIGluIHRoaXMgcGFyYW1ldGVyLgogIC10LCAtLXRlc3QgICAgICAgICAgICAgICAgICAgICAgICBJZiBwYXNzZWQsIFJlZGlzIGJ1aWxkIHdpbGwgYmUgdGVzdGVkLiBUaGlzIGNvdWxkIHRha2UgYSBsb3Qgb2YgdGltZS4KICAtLW5vLWNoZWNrLXNlcnZpY2UgICAgICAgICAgICAgICAgRG8gbm90IGNoZWNrIHRoYXQgdGhlIHNlcnZpY2UgaXMgY29uZmlndXJlZCB0byBydW4gYXQgYm9vdCB0aW1lLgoKSEVMUF9VU0FHRQogICAgZXhpdCAxCn0KZm9yIGFyZyBpbiAiJEAiOyBkbwogIGNhc2UgJGFyZyBpbgogICAgLWl8LS1pbmRlbnQpCiAgICBJTkRFTlRfU1RSSU5HPSIkMiIKICAgIHNoaWZ0IDIKICAgIDs7CiAgICAtaHwtLWhlbHApCiAgICBzaGlmdAogICAgdXNhZ2UKICAgIDs7ICAgIAogICAgLXR8LS10ZXN0KQogICAgX1RFU1Q9MQogICAgc2hpZnQKICAgIDs7CiAgICAtLW5vLWNoZWNrLXNlcnZpY2UpCiAgICBfQ0hFQ0tfU0VSVklDRT0wCiAgICBzaGlmdAogICAgOzsKICBlc2FjCmRvbmUKZnVuY3Rpb24gcHJpbnRJbmRlbnQoKSB7CiAgcHJpbnRmICIlcyIgIiRJTkRFTlRfU1RSSU5HIgp9CmZ1bmN0aW9uIGluc3RhbGxQYWNtYW5JZk5vdEluc3RhbGxlZCgpIHsKICBpZiBbICIkKGNvbW1hbmQgLXYgcGFjbWFuKSIgPSAiIiBdOyB0aGVuCiAgICB1cmw9Imh0dHBzOi8vbW9uZGVqYS5naXRodWIuaW8vc2hyZWFkL3VuaXgvXy9kb3dubG9hZC9wYWNhcHQvJF9TQ1JJUFRfRklMRU5BTUUiCiAgICBjdXJsIC1zTCAiJHVybCIgfCBzdWRvIGJhc2ggLSA+IC9kZXYvbnVsbAogIGZpOwp9CmZ1bmN0aW9uIGluc3RhbGxTY3JpcHREZXBlbmRlbmNpZXMoKSB7CiAgaW5zdGFsbFBhY21hbklmTm90SW5zdGFsbGVkCiAgSU5TVEFMTEFUSU9OX0RFUEVOREVOQ0lFUz0oCiAgICAiYnVpbGQtZXNzZW50aWFsIgogICAgInRjbCIKICAgICJtYWtlIgogICkKICBmb3IgREVQIGluICIke0lOU1RBTExBVElPTl9ERVBFTkRFTkNJRVNbQF19IjsgZG8KICAgIHByaW50SW5kZW50CiAgICBwcmludGYgIiAgICAlcyIgIiRERVAiCiAgICBpZiBbWyAiJChzdWRvIHBhY21hbiAtUWkgIiRERVAiIDI+IC9kZXYvbnVsbCB8IGdyZXAgU3RhdHVzKSIgIT0gIlN0YXR1czogaW5zdGFsbCBvayBpbnN0YWxsZWQiIF1dOyB0aGVuCiAgICAgIHN1ZG8gcGFjbWFuIC1TIC0tIC15ICIkREVQIiA+IC9kZXYvbnVsbCB8fCBleGl0ICQ/CiAgICBmaTsKICAgIHByaW50ZiAiIFxlWzkybVx4RTJceDlDXHg5NFxlWzM5bVxuIgogIGRvbmUKfQpmdW5jdGlvbiBnZXRSZWRpc1NlcnZlckxhc3Rlc3RTdGFibGVWZXJzaW9uKCkgewogIHByaW50SW5kZW50CiAgcHJpbnRmICIgICVzIiAiJF9NU0dfUkVUUklFVklOR19MQVNURVNUX1NUQUJMRV9WRVJTSU9OIgogIF9SRURJU19MQVNURVNUX1NUQUJMRV9WRVJTSU9OPSQoCiAgICBjdXJsIC1zTCBodHRwOi8vZG93bmxvYWQucmVkaXMuaW8vcmVkaXMtc3RhYmxlLzAwLVJFTEVBU0VOT1RFUyB8ICAgICAgIGdyZXAgUmVsZWFzZWQgfCAgICAgICBoZWFkIC1uIDEgfCAgICAgICBjdXQgLWQnICcgLWYyIHwgICAgICAgdHIgLWQgJ1xuJwogICkKICBpZiBbICIkX1JFRElTX0xBU1RFU1RfU1RBQkxFX1ZFUlNJT04iID0gIiIgXTsgdGhlbgogICAgcHJpbnRmICIgXGVbOTFtXHhFMlx4OUNceDk1XGVbMzltXG4iID4mMgogICAgcHJpbnRmICJcbiVzIiAiJF9NU0dfRVJST1JfUkVUUklFVklOR19MQVNURVNUX1ZFUlNJT05fRlJPTV9GSUxFIiA+JjIKICAgIHByaW50ZiAiICdodHRwOi8vZG93bmxvYWQucmVkaXMuaW8vcmVkaXMtc3RhYmxlLyIgPiYyCiAgICBwcmludGYgIjAwLVJFTEVBU0VOT1RFUycuXG4lc1xuIiAiJF9NU0dfVkVSU0lPTlNfRk9VTkQiID4mMgogICAgcHJpbnRmICIlcyIgIiQoY3VybCAtc0wgaHR0cDovL2Rvd25sb2FkLnJlZGlzLmlvL3JlZGlzLXN0YWJsZS8wMC1SRUxFQVNFTk9URVMgfCAgICAgICBncmVwIFJlbGVhc2VkIHwgICAgICAgY3V0IC1kJyAnIC1mMilcbiIgPiYyCiAgICBleGl0IDEKICBmaTsKICBwcmludGYgIiAodiVzKSBcZVs5Mm1ceEUyXHg5Q1x4OTRcZVszOW1cbiIgIiRfUkVESVNfTEFTVEVTVF9TVEFCTEVfVkVSU0lPTiIKfQpmdW5jdGlvbiBkb3dubG9hZFJlZGlzTGFzdGVzdFN0YWJsZVZlcnNpb24oKSB7CiAgcHJpbnRJbmRlbnQKICBwcmludGYgIiAgJXMgKHYlcykuLi4iICIkX01TR19ET1dOTE9BRElOR19SRURJUyIgIiRfUkVESVNfTEFTVEVTVF9TVEFCTEVfVkVSU0lPTiIKICBjdXJsIC1zTCBodHRwOi8vZG93bmxvYWQucmVkaXMuaW8vcmVkaXMtc3RhYmxlLnRhci5neiAgICAgLS1vdXRwdXQgIiQxIiB8fCBleGl0ICQ/CiAgcHJpbnRmICIgXGVbOTJtXHhFMlx4OUNceDk0XGVbMzltXG4iCn0KZnVuY3Rpb24gYnVpbGRSZWRpcygpIHsKICBwcmludEluZGVudAogIHByaW50ZiAiICAgICVzXG4iICIkX01TR19CVUlMRElOR19TT1VSQ0VfQ09ERSIKICBzdGRidWYgLW9MIG1ha2UgMj4mMSB8CiAgICB3aGlsZSBJRlM9IHJlYWQgLXIgbGluZTsgZG8KICAgICAgaWYgWyAiJChlY2hvICIkbGluZSIgfCBjdXQgLWQnICcgLWYxKSIgPSAiZ2NjIiBdOyB0aGVuCiAgICAgICAgZmlsZT0kKAogICAgICAgICAgYXdrIC1GJ3NyYy8nICd7IGZvcihpPTE7aTw9TkY7aSsrKSBwcmludCAkaSB9JyA8PDwgIiRsaW5lIiB8ICAgICAgICAgICB0YWlsIC1uIDEKICAgICAgICApCiAgICAgICAgcHJpbnRJbmRlbnQKICAgICAgICBwcmludGYgIiAgICAgICVzIFxlWzkybVx4RTJceDlDXHg5NFxlWzM5bVxuIiAiJGZpbGUiCiAgICAgIGZpOwogICAgZG9uZQp9CmZ1bmN0aW9uIHRlc3RSZWRpc0J1aWxkKCkgewogIHByaW50SW5kZW50CiAgcHJpbnRmICIgICAgJXNcbiIgIiRfTVNHX1RFU1RJTkdfQlVJTEQiCiAgc3RkYnVmIC1vTCBtYWtlIHRlc3QgMj4mMSB8CiAgICB3aGlsZSBJRlM9IHJlYWQgLXIgbGluZTsgZG8KICAgICAgcHJpbnRJbmRlbnQKICAgICAgcHJpbnRmICIlcyIgIiRsaW5lIgogICAgZG9uZQp9CmZ1bmN0aW9uIGNoZWNrUmVkaXNTZXJ2aWNlQ29uZmlnKCkgewogIHByaW50SW5kZW50CiAgcHJpbnRmICIgICVzXG4iICIkX01TR19DSEVDS0lOR19TRVJWSUNFX0NPTkZJRyIKICBwcmludEluZGVudAogIGlmIFsgIiQocHMgLXAgMSAtbyBjb21tPSkiID0gInN5c3RlbWQiIF07IHRoZW4KICAgIHN1ZG8gc3lzdGVtY3RsIGlzLWVuYWJsZWQgcmVkaXMgPiAvZGV2L251bGwgMj4mMQogICAgX1JFRElTX1NFUlZJQ0VfRElTQUJMRUQ9JD8KICBlbHNlCiAgICBfUkVESVNfU0VSVklDRV9FTkFCTEVEX09VVD0iJCgKICAgICAgc3VkbyBzZXJ2aWNlIHJlZGlzIHN0YXR1cyB8IGdyZXAgIkxvYWRlZDogIiB8IGdyZXAgIi5zZXJ2aWNlOyBlbmFibGVkOyIKICAgICkiCiAgICBfUkVESVNfU0VSVklDRV9ESVNBQkxFRD0xCiAgICBpZiBbIC1uICIkX1JFRElTX1NFUlZJQ0VfRU5BQkxFRF9PVVQiIF07IHRoZW4KICAgICAgX1JFRElTX1NFUlZJQ0VfRElTQUJMRUQ9MAogICAgZmk7CiAgZmk7CiAgaWYgWyAiJF9SRURJU19TRVJWSUNFX0RJU0FCTEVEIiAtZXEgMSBdOyB0aGVuCiAgICBwcmludGYgIiAgICAlcyIgIiRfTVNHX0VOQUJMSU5HIgogICAgX0VOQUJMRV9SRURJU19TRVJWRVJfT1VUUFVUPSQoCiAgICAgIHN1ZG8gc3lzdGVtY3RsIGVuYWJsZSByZWRpcy5zZXJ2aWNlIDI+JjEgPiAvZGV2L251bGwKICAgICkKICAgIF9FTkFCTEVfUkVESVNfU0VSVkVSX0VYSVRfQ09ERT0kPwogICAgaWYgWyAkX0VOQUJMRV9SRURJU19TRVJWRVJfRVhJVF9DT0RFIC1uZSAwIF07IHRoZW4KICAgICAgcHJpbnRmICIgXGVbOTFtXHhFMlx4OUNceDk1XGVbMzltXG4iID4mMgogICAgICBwcmludGYgIiVzXG4iICIkX01TR19FUlJPUl9FTkFCTElOR19TRVJWSUNFIiA+JjIKICAgICAgcHJpbnRmICIlczogJXNcbiIgIiRfTVNHX0VYSVRfQ09ERSIgIiRfRU5BQkxFX1JFRElTX1NFUlZFUl9FWElUX0NPREUiID4mMgogICAgICBwcmludGYgIiVzOiAlc1xuIiAiJF9NU0dfRVJST1IiICIkX0VOQUJMRV9SRURJU19TRVJWRVJfT1VUUFVUIiA+JjIKICAgICAgZXhpdCAkX0VOQUJMRV9SRURJU19TRVJWRVJfRVhJVF9DT0RFCiAgICBmaTsKICBlbHNlCiAgICBwcmludGYgIiAgICAlcyIgIiRfTVNHX0lUU19FTkFCTEVEIgogIGZpOwogIHByaW50ZiAiIFxlWzkybVx4RTJceDlDXHg5NFxlWzM5bVxuIgogIHByaW50SW5kZW50CiAgX1JFRElTX1NFUlZJQ0VfU1RBVFVTPSIkKAogICAgc3VkbyBzeXN0ZW1jdGwgc2hvdyAtcCBBY3RpdmVTdGF0ZSByZWRpcyB8ICAgICBjdXQgLWQnPScgLWYyCiAgKSIKICBpZiBbICIkX1JFRElTX1NFUlZJQ0VfU1RBVFVTIiAhPSAiYWN0aXZlIiBdOyB0aGVuCiAgICBwcmludGYgIiAgICAlcyIgIiRfTVNHX0VYRUNVVElORyIKICAgIHN1ZG8gc3lzdGVtY3RsIHN0YXJ0IHJlZGlzID4gL2Rldi9udWxsCiAgICBfUkVESVNfU0VSVklDRV9TVEFSVEVEPSQ/CiAgICBpZiBbICRfUkVESVNfU0VSVklDRV9TVEFSVEVEIC1uZSAwIF07IHRoZW4KICAgICAgcHJpbnRmICIgXGVbOTFtXHhFMlx4OUNceDk1XGVbMzltXG4iID4mMgogICAgICBwcmludGYgIiVzXG4iICIkX01TR19TRVJWSUNFX0NPVUxETlRfQkVfU1RBUlRFRCIgPiYyCiAgICAgIHByaW50ZiAiJXMgJyVzJy5cbiIgIiRfTVNHX0lUU19PTl9TVEFURSIgIiRfUkVESVNfU0VSVklDRV9TVEFUVVMiID4mMgogICAgICBleGl0ICRfUkVESVNfU0VSVklDRV9TVEFSVEVECiAgICBmaTsKICBlbHNlCiAgICBwcmludGYgIiAgICAlcyIgIiRfTVNHX0lUU19SVU5OSU5HIgogIGZpOwogIHByaW50ZiAiIFxlWzkybVx4RTJceDlDXHg5NFxlWzM5bVxuIgp9CmZ1bmN0aW9uIGNvbmZpZ3VyZVJlZGlzKCkgewogIGlmIFsgLWQgIi9ldGMvcmVkaXMiIF07IHRoZW4KICAgIHN1ZG8gcm0gLXJmIC9ldGMvcmVkaXMKICBmaTsKICBzdWRvIG1rZGlyIC9ldGMvcmVkaXMgfHwgZXhpdCAkPwogIHN1ZG8gY3AgL3RtcC9yZWRpcy1zdGFibGUvcmVkaXMuY29uZiAvZXRjL3JlZGlzIHx8IGV4aXQgJD8KICBzdWRvIHNlZCAtaSAncy9ec3VwZXJ2aXNlZCBuby9zdXBlcnZpc2VkIHN5c3RlbWQvJyAvZXRjL3JlZGlzL3JlZGlzLmNvbmYgfHwgICAgIGV4aXQgJD8KICBzdWRvIHNlZCAtaSAncy9eZGlyIFwuXC8vZGlyIFwvdmFyXC9saWJcL3JlZGlzLycgL2V0Yy9yZWRpcy9yZWRpcy5jb25mIHx8ICAgICBleGl0ICQ/CiAgcHJpbnRmICIgICAgJXMiICIkX01TR19DUkVBVElOR19TRVJWSUNFIgogIHN1ZG8gc3lzdGVtY3RsIGRhZW1vbi1yZWxvYWQKICBfUkVESVNfU0VSVklDRV9TVEFUVVM9JCgKICAgIHN1ZG8gc3lzdGVtY3RsIHNob3cgLXAgQWN0aXZlU3RhdGUgcmVkaXMgfCAgICAgY3V0IC1kJz0nIC1mMiB8ICAgICB0ciAtZCAnXG4nKQogIGlmIFsgIiRfUkVESVNfU0VSVklDRV9TVEFUVVMiICE9ICJpbmFjdGl2ZSIgXTsgdGhlbgogICAgc3VkbyBzeXN0ZW1jdGwgc3RvcCByZWRpcyA+IC9kZXYvbnVsbAogIGZpOwogIGlmIFsgLWYgIi9ldGMvc3lzdGVtZC9zeXN0ZW0vcmVkaXMuc2VydmljZSIgXTsgdGhlbgogICAgc3VkbyBybSAtZiAvZXRjL3N5c3RlbWQvc3lzdGVtL3JlZGlzLnNlcnZpY2UKICBmaTsKICBzdWRvIHRvdWNoIC9ldGMvc3lzdGVtZC9zeXN0ZW0vcmVkaXMuc2VydmljZQogIGNhdCA8PCBFT0YgPiAvZXRjL3N5c3RlbWQvc3lzdGVtL3JlZGlzLnNlcnZpY2UKW1VuaXRdCkRlc2NyaXB0aW9uPVJlZGlzIEluLU1lbW9yeSBEYXRhIFN0b3JlCkFmdGVyPW5ldHdvcmsudGFyZ2V0CltTZXJ2aWNlXQpVc2VyPXJlZGlzCkdyb3VwPXJlZGlzCkV4ZWNTdGFydD0vdXNyL2xvY2FsL2Jpbi9yZWRpcy1zZXJ2ZXIgL2V0Yy9yZWRpcy9yZWRpcy5jb25mCkV4ZWNTdG9wPS91c3IvbG9jYWwvYmluL3JlZGlzLWNsaSBzaHV0ZG93bgpSZXN0YXJ0PWFsd2F5cwpbSW5zdGFsbF0KV2FudGVkQnk9bXVsdGktdXNlci50YXJnZXQKRU9GCiAgaWYgWyAkPyAtbmUgMCBdOyB0aGVuCiAgICBleGl0ICQ/CiAgZmk7CiAgcHJpbnRmICIgXGVbOTJtXHhFMlx4OUNceDk0XGVbMzltXG4iCiAgcHJpbnRmICIgICAgJXMiICIkX01TR19DUkVBVElOR19VU0VSIgogIGlmICEgaWQgLXUgcmVkaXMgPiAvZGV2L251bGwgMj4mMTsgdGhlbgogICAgc3VkbyB1c2VyZGVsIC1mIHJlZGlzCiAgZmk7CiAgc3VkbyBhZGR1c2VyIC0tc3lzdGVtIC0tZ3JvdXAgLS1uby1jcmVhdGUtaG9tZSByZWRpcyA+IC9kZXYvbnVsbCB8fCBleGl0ICQ/CiAgcHJpbnRmICIgXGVbOTJtXHhFMlx4OUNceDk0XGVbMzltXG4iCiAgaWYgWyAtZCAiL3Zhci9saWIvcmVkaXMiIF07IHRoZW4KICAgIHN1ZG8gcm0gLXJmIC92YXIvbGliL3JlZGlzIHx8IGV4aXQgJD8KICBmaTsKICBzdWRvIG1rZGlyIC92YXIvbGliL3JlZGlzIHx8IGV4aXQgJD8KICBzdWRvIGNob3duIHJlZGlzOnJlZGlzIC92YXIvbGliL3JlZGlzIHx8IGV4aXQgJD8KICBzdWRvIGNobW9kIDc3MCAvdmFyL2xpYi9yZWRpcyB8fCBleGl0ICQ/CiAgc3VkbyBzeXN0ZW1jdGwgZGFlbW9uLXJlbG9hZAp9CmZ1bmN0aW9uIGluc3RhbGxSZWRpcygpIHsKICBpZiBbIC1kICJyZWRpcy1zdGFibGUiIF07IHRoZW4KICAgIHJtIC1yZiByZWRpcy1zdGFibGUKICBmaTsKICBwcmludEluZGVudAogIHByaW50ZiAiICAgICVzIiAiJF9NU0dfVU5aSVBQSU5HIgogIHRhciB4enZmICIkMSIgPiAvZGV2L251bGwgfHwgZXhpdCAkPwogIHJtIC1mICIkMSIgfHwgZXhpdCAkPwogIHByaW50ZiAiIFxlWzkybVx4RTJceDlDXHg5NFxlWzM5bVxuIgogIGNkIHJlZGlzLXN0YWJsZSB8fCBleGl0ICQ/CiAgYnVpbGRSZWRpcwogIGlmIFsgJF9URVNUIC1lcSAxIF07IHRoZW4KICAgIHRlc3RSZWRpc0J1aWxkCiAgZmk7CiAgc3VkbyBtYWtlIGluc3RhbGwgPiAvZGV2L251bGwgMj4mMSB8fCBleGl0ICQ/CiAgY29uZmlndXJlUmVkaXMKfQpmdW5jdGlvbiBtYWluKCkgewogIHByaW50SW5kZW50CiAgcHJpbnRmICIlc1xuIiAiJF9NU0dfU0VUVElOR19SRURJU19FQ09TWVNURU0iCiAgcHJpbnRJbmRlbnQKICBwcmludGYgIiAgJXNcbiIgIiRfTVNHX0NIRUNLSU5HX0JBU0VfREVQRU5ERU5DSUVTIgogIGluc3RhbGxTY3JpcHREZXBlbmRlbmNpZXMKICBjZCAvdG1wIHx8IGV4aXQgJD8KICBnZXRSZWRpc1NlcnZlckxhc3Rlc3RTdGFibGVWZXJzaW9uCiAgX1JFRElTX0JJTkFSWV9GSUxFUEFUSD0iJChjb21tYW5kIC12IHJlZGlzLXNlcnZlcikiCiAgaWYgWyAiJF9SRURJU19CSU5BUllfRklMRVBBVEgiID0gIiIgXTsgdGhlbgogICAgZG93bmxvYWRSZWRpc0xhc3Rlc3RTdGFibGVWZXJzaW9uIC90bXAvcmVkaXMtc3RhYmxlLnRhci5negogICAgcHJpbnRJbmRlbnQKICAgIHByaW50ZiAiICAlcyAodiVzKS4uLlxuIiAiJF9NU0dfSU5TVEFMTElOR19SRURJUyIgIiRfUkVESVNfTEFTVEVTVF9TVEFCTEVfVkVSU0lPTiIKICAgIGluc3RhbGxSZWRpcyAvdG1wL3JlZGlzLXN0YWJsZS50YXIuZ3oKICBlbHNlCiAgICBfUkVESVNfSU5TVEFMTEVEX1ZFUlNJT049JCgKICAgICAgcmVkaXMtc2VydmVyIC0tdmVyc2lvbiB8ICAgICAgIGN1dCAtZCc9JyAtZjIgfCAgICAgICBjdXQgLWQnICcgLWYxKQogICAgaWYgWyAiJF9SRURJU19JTlNUQUxMRURfVkVSU0lPTiIgIT0gIiRfUkVESVNfTEFTVEVTVF9TVEFCTEVfVkVSU0lPTiIgXTsgdGhlbgogICAgICBkb3dubG9hZFJlZGlzTGFzdGVzdFN0YWJsZVZlcnNpb24gL3RtcC9yZWRpcy1zdGFibGUudGFyLmd6CiAgICAgIHByaW50SW5kZW50CiAgICAgIHByaW50ZiAiICAlcyAodiVzIC0+IiAiJF9NU0dfVVBEQVRJTkdfUkVESVMiICIkX1JFRElTX0lOU1RBTExFRF9WRVJTSU9OIgogICAgICBwcmludGYgIiB2JXMpLi4uXG4iICIkX1JFRElTX0xBU1RFU1RfU1RBQkxFX1ZFUlNJT04iCiAgICAgIGluc3RhbGxSZWRpcyAvdG1wL3JlZGlzLXN0YWJsZS50YXIuZ3oKICAgIGVsc2UKICAgICAgcHJpbnRJbmRlbnQKICAgICAgcHJpbnRmICIgICVzICh2JXMpIiAiJF9NU0dfRk9VTkRfUkVESVNfSU5TVEFMTEVEIiAiJF9SRURJU19JTlNUQUxMRURfVkVSU0lPTiIKICAgICAgcHJpbnRmICIgXGVbOTJtXHhFMlx4OUNceDk0XGVbMzltXG4iCiAgICBmaTsKICBmaTsKICBpZiBbICIkX0NIRUNLX1NFUlZJQ0UiIC1lcSAxIF07IHRoZW4KICAgIGNoZWNrUmVkaXNTZXJ2aWNlQ29uZmlnCiAgZmk7CiAgY2QgIiRfT1JJR0lOX1BXRCIgfHwgZXhpdCAkPwp9CmlmIChyZXR1cm4gMCAyPi9kZXYvbnVsbCk7IHRoZW4KICBleHBvcnRWYXJpYWJsZXMKZWxzZQogIG1haW4KZmk7'
if (return 0 2>/dev/null); then
  source <(printf "%s" "$H" | base64 -d)
else
  echo "$(echo "$H" | base64 -d)" | bash -s -- "$@"
fi;
