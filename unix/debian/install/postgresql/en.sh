#!/bin/bash
H='IyEvYmluL2Jhc2gKIyAtKi0gRU5DT0RJTkc6IFVURi04IC0qLQpfU0NSSVBUX0ZJTEVOQU1FPWVuLnNoCiMhL2Jpbi9iYXNoCl9NU0dfQURESU5HX1JFUE89IkFkZGluZyByZXBvc2l0b3J5Li4uIgpfTVNHX0VSUk9SX1JFVFJJRVZJTkdfUE9TVEdSRVNRTF9QVUJMSUNfS0VZPSJBbiBlcnJvciBoYXBwZW4gcmV0cmlldmluZyBQb3N0Z3JlU1FMIHB1YmxpYyBrZXkiCl9NU0dfVVBEQVRJTkdfUEFDS0FHRVM9IlVwZGF0aW5nIHBhY2thZ2VzLi4uIgpfTVNHX1JFTU9WSU5HX1BSRVZJT1VTX1BBQ0tBR0VTPSJSZW1vdmluZyBwcmV2aW91cyBwYWNrYWdlcy4uLiIKX01TR19SRVRSSUVWSU5HX0xBU1RFU1RfU1RBQkxFX1ZFUlNJT049IlJldHJpZXZpbmcgbGFzdGVzdCBzdGFibGUgYXZhaWxhYmxlIHZlcnNpb24uLi4iCl9NU0dfQ0hFQ0tJTkdfQVZBSUxBQkxFX1ZFUlNJT049IkNoZWNraW5nIHZlcnNpb24gYXZhaWxhYmxlIgpfTVNHX1ZFUlNJT05fTk9UX09GRklDSUFMTFlfQVZBSUxBQkxFPSJWZXJzaW9uIG5vdCBhdmFpbGFibGUgYXQgb2ZmaWNpYWwgUG9zdGdyZVNRTCByZXBvc2l0b3JpZXMiCl9NU0dfVkVSU0lPTl9PRl9QT1NUR0lTX1RSWUlOR19UT19JTlNUQUxMPSJUaGUgdmVyc2lvbiBvZiBQb3N0Z2lzIHRoYXQgeW91J3JlIHRyeWluZyB0byBpbnN0YWxsIgpfTVNHX0RPRVNOVF9FWElTVFNfQVNfQVBUX1BHX1BBQ0tBR0U9ImRvZXNuJ3QgZXhpc3RzIGFzIEFQVCBwYWNrYWdlIGZvciBQb3N0Z3JlU1FMIgpfTVNHX1RIRV9QQUNLQUdFPSJ0aGUgcGFja2FnZSIKX01TR19ET0VTTlRfRVhJU1RTX0lOX1BHX09GRklDSUFMX1JFUE9TPSJkb2Vzbid0IGV4aXN0cyBpbiBQb3N0Z3JlU1FMIG9mZmljaWFsIHJlcG9zaXRvcmllcy4iCl9NU0dfU1BFQ0lGWV9BTl9FWElTVEVOVF9WRVJTSU9OPSJTcGVjaWZ5IGFuIGV4aXN0ZW50IHZlcnNpb24gYmV0d2VlbiB0aGUgbmV4dCB1c2luZyB0aGUgcGFyYW0gJy0tcG9zdGdpcy12ZXJzaW9uJzoiCl9NU0dfQ0hFQ0tJTkdfUEdfU0VSVklDRV9DT05GSUc9IkNoZWNraW5nIHRoZSBjb25maWd1cmF0aW9uIG9mIHRoZSBzZXJ2aWNlICdwb3N0Z3Jlc3FsJy4uLiIKX01TR19FTkFCTElORz0iRW5hYmxpbmcuLi4iCl9NU0dfSVRTX0VOQUJMRUQ9Ikl0J3MgZW5hYmxlZCIKX01TR19FUlJPUl9FTkFCTElOR19QR19TRVJWSUNFPSJBbiBlcnJvciBoYXBwZW4gZW5hYmxpbmcgJ3Bvc3RncmVzcWwnIHNlcnZpY2UuIgpfTVNHX0VSUk9SPSJFcnJvciIKX01TR19FWElUX0NPREU9IkV4aXQgY29kZSIKX01TR19MQVVOQ0hJTkc9IkxhdW5jaGluZy4uLiIKX01TR19QR19TRVJWSUNFX0NPVUxETlRfQkVfU1RBUlRFRD0iVGhlICdwb3N0Z3Jlc3FsJyBzZXJ2aWNlIGNvdWxkbid0IGJlIHN0YXJ0ZWQuIgpfTVNHX0lUU19JTl9TVEFURT0iSXQncyBvbiBzdGF0ZSIKX01TR19JVFNfUlVOTklORz0iSXQncyBydW5uaW5nIgpfTVNHX0lOU1RBTExJTkdfUEc9Ikluc3RhbGxpbmcgUG9zdGdyZVNRTC4uLiIKX01TR19JTlNUQUxMSU5HX1BBQ0tBR0VTPSJJbnN0YWxsaW5nIHBhY2thZ2VzLi4uIgpfTVNHX0NIRUtJTkdfUEdfRU5WPSJDaGVja2luZyBQb3N0Z3JlU1FMIGVudmlyb25tZW50Li4uIgpfTVNHX0NIRUNLSU5HX1BBQ0tBR0VTPSJDaGVja2luZyBwYWNrYWdlcy4uLiIKX01TR19ESVNUUk9fVkVSU0lPTl9OT1RfU1VQUE9SVEVEPSJZb3VyIHZlcnNpb24gb2YgRGViaWFuL1VidW50dSBpcyBub3Qgc3VwcG9ydGVkIGJ5IG9mZmljaWFsIFBvc3RncmVTUUwgcmVwb3NpdG9yaWVzIgpfUEdER19TT1VSQ0VTX0xJU1RfRklMRVBBVEg9Ii9ldGMvYXB0L3NvdXJjZXMubGlzdC5kL3BnZGciCklOREVOVF9TVFJJTkc9IiIKX1ZFUlNJT049IiIKX0lOQ0xVREVfUE9TVEdJUz0wCl9QT1NUR0lTX1ZFUlNJT049IiIKX0lOQ0xVREVfUEdBRE1JTj0wCl9JTkNMVURFX1BMUFlUSE9OMz0wCmZ1bmN0aW9uIHVzYWdlIHsKICAgIGNhdCA8PEhFTFBfVVNBR0UKVXNhZ2U6IHVuaXgvZGViaWFuL2luc3RhbGwvcG9zdGdyZXNxbC8kX1NDUklQVF9GSUxFTkFNRSBbLWhdIFstaSBTVFJJTkddIFstcGd2IFBPU1RHUkVTUUxfVkVSU0lPTl0gWy1naXNdIFstZ2lzdiBQT1NUR0lTX1ZFUlNJT05dIFstcGdhZF0gWy1wbHB5M10KCiAgSW5zdGFsbHMgUG9zdGdyZVNRTCBwYWNrYWdlcyBhbmQsIG9wdGlvbmFsbHksIHNvbWUgYWRkaXRpb25hbCBwYWNrYWdlcyBmcm9tIG9mZmljaWFsIHNvdXJjZXMuCiAgQWxzbyBjaGVja3MgaWYgdGhlICdwb3N0Z3Jlcycgc2VydmljZSBpcyBydW5uaW5nIGFuZCBlbmFibGVzIGl0LCBpZiBpcyBub3QgYWxyZWFkeS4KCk9wdGlvbnM6CiAgLWgsIC0taGVscCAgICAgICAgICAgICAgICAgICAgICAgIFNob3cgdGhpcyBoZWxwIG1lc3NhZ2UgYW5kIGV4aXQuCiAgLWkgU1RSSU5HLCAtLWluZGVudCBTVFJJTkcgICAgICAgIEVhY2ggbGluZSBvZiB0aGUgc2NyaXB0IG91dHB1dCB3aWxsIGJlIHByZWNlZGVkIHdpdGggdGhlIHN0cmluZyBkZWZpbmVkIGluIHRoaXMgcGFyYW1ldGVyLgogIC1wZ3YgUE9TVEdSRVNRTF9WRVJTSU9OLCAtLXBvc3RncmVzcWwtdmVyc2lvbiBQT1NUR1JFU1FMX1ZFUlNJT04KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgUG9zdGdyZVNRTCB2ZXJzaW9uIHRvIGluc3RhbGwuIElmIG5vdCBwcm92aWRlZCwgdGhlIGxhdGVzdCB2ZXJzaW9uIGF2YWlsYWJsZSBpbiByZXBvc2l0b3JpZXMgd2lsbCBiZSBpbnN0YWxsZWQuCiAgLWdpcywgLS1pbnN0YWxsLXBvc3RnaXMgICAgICAgICAgIEluc3RhbGwgUG9zdGdpcyBwYWNrYWdlIGNvcnJlc3BvbmRlbnQgdG8gdGhlIFBvc3RncmVTUUwgdmVyc2lvbiB0byBpbnN0YWxsLgogIC1naXN2IFBPU1RHSVNfVkVSU0lPTiwgLS1wb3N0Z2lzLXZlcnNpb24gUE9TVEdJU19WRVJTSU9OCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFNwZWNpZmllcyB3aGF0IHZlcnNpb24gb2YgUG9zdEdJUyB3aWxsIGJlIGluc3RhbGxlZC4gT25seSBoYXMgZWZmZWN0IHBhc3NpbmcgJy0taW5zdGFsbC1wb3N0Z2lzJyBvcHRpb24uCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIElmIG5vdCBwcm92aWRlZCwgd2lsbCBiZSBpbnN0YWxsZWQgdGhlIGxhdGVzdCBhdmFpbGFibGUgdmVyc2lvbiBvZiB0aGUgcGFja2FnZS4KICAtcGdhZCwgLS1pbnN0YWxsLXBnYWRtaW4gICAgICAgICAgSW5zdGFsbCBsYXRlc3QgdmVyc2lvbiBhdmFpbGFibGUgb2YgJ3BnYWRtaW4nIHBhY2thZ2UuCiAgLXBscHkzLCAtLWluc3RhbGwtcGxweXRob24zICAgICAgIEluc3RhbGwgbGF0ZXN0IHZlcnNpb24gYXZhaWxhYmxlIG9mICdwb3N0Z3Jlc3FsLXBscHl0aG9uMy0qJyBwYWNrYWdlLgoKSEVMUF9VU0FHRQogICAgZXhpdCAxCn0KZm9yIGFyZyBpbiAiJEAiOyBkbwogIGNhc2UgJGFyZyBpbgogICAgLWl8LS1pbmRlbnQpCiAgICBJTkRFTlRfU1RSSU5HPSIkMiIKICAgIHNoaWZ0IDIKICAgIDs7CiAgICAtaHwtLWhlbHApCiAgICBzaGlmdAogICAgdXNhZ2UKICAgIDs7ICAgIAogICAgLXBndnwtLXBvc3RncmVzcWwtdmVyc2lvbikKICAgIHNoaWZ0CiAgICBfVkVSU0lPTj0kMQogICAgc2hpZnQKICAgIDs7CiAgICAtZ2lzfC0taW5zdGFsbC1wb3N0Z2lzKQogICAgX0lOQ0xVREVfUE9TVEdJUz0xCiAgICBzaGlmdAogICAgOzsKICAgIC1naXN2fC0tcG9zdGdpcy12ZXJzaW9uKQogICAgc2hpZnQKICAgIF9QT1NUR0lTX1ZFUlNJT049JDEKICAgIHNoaWZ0CiAgICA7OwogICAgLXBnYWR8LS1pbnN0YWxsLXBnYWRtaW4pCiAgICBfSU5DTFVERV9QR0FETUlOPTEKICAgIHNoaWZ0CiAgICA7OwogICAgLXBscHkzfC0taW5zdGFsbC1wbHB5dGhvbjMpCiAgICBfSU5DTFVERV9QTFBZVEhPTjM9MQogICAgc2hpZnQKICAgIDs7CiAgZXNhYwpkb25lCmZ1bmN0aW9uIHByaW50SW5kZW50KCkgewogIHByaW50ZiAiJXMiICIkSU5ERU5UX1NUUklORyIKfQpmdW5jdGlvbiBpbnN0YWxsUGFjbWFuSWZOb3RJbnN0YWxsZWQoKSB7CiAgaWYgWyAiJChjb21tYW5kIC12IHBhY21hbikiID0gIiIgXTsgdGhlbgogICAgdXJsPSJodHRwczovL21vbmRlamEuZ2l0aHViLmlvL3NocmVhZC91bml4L18vZG93bmxvYWQvcGFjYXB0LyRfU0NSSVBUX0ZJTEVOQU1FIgogICAgY3VybCAtc0wgIiR1cmwiIHwgc3VkbyBiYXNoIC0gPiAvZGV2L251bGwKICBmaTsKfQpmdW5jdGlvbiBpbnN0YWxsU2NyaXB0RGVwZW5kZW5jaWVzKCkgewogIGluc3RhbGxQYWNtYW5JZk5vdEluc3RhbGxlZAogIElOU1RBTExBVElPTl9ERVBFTkRFTkNJRVM9KAogICAgIndnZXQiCiAgICAiYXB0aXR1ZGUiCiAgICAiY3VybCIKICApCiAgZm9yIERFUCBpbiAiJHtJTlNUQUxMQVRJT05fREVQRU5ERU5DSUVTW0BdfSI7IGRvCiAgICBpZiBbWyAiJChzdWRvIHBhY21hbiAtUWkgIiRERVAiIDI+IC9kZXYvbnVsbCB8IGdyZXAgU3RhdHVzKSIgIT0gIlN0YXR1czogaW5zdGFsbCBvayBpbnN0YWxsZWQiIF1dOyB0aGVuCiAgICAgIHN1ZG8gcGFjbWFuIC1TIC0tIC15ICIkREVQIiA+IC9kZXYvbnVsbCB8fCBleGl0ICQ/CiAgICBmaTsKICBkb25lOwp9CkRFQklBTl9WRVJTSU9OPSIiCmZ1bmN0aW9uIGdldERlYmlhblZlcnNpb24oKSB7CiAgREVCSUFOX1ZFUlNJT049IiQobHNiX3JlbGVhc2UgLWMgLXMpIgp9CmZ1bmN0aW9uIGNoZWNrRGViaWFuVmVyc2lvblN1cHBvcnRlZCgpIHsKICBERUJJQU5fVkVSU0lPTl9TVVBQT1JURUQ9MAogIF9HRVRfREVCSUFOX1ZFUlNJT05fU1VQUE9SVEVEPSQoCiAgICBjdXJsIC1zTCBodHRwOi8vYXB0LnBvc3RncmVzcWwub3JnL3B1Yi9yZXBvcy9hcHQvZGlzdHMvIHwgICAgIGdyZXAgLW8gIiRERUJJQU5fVkVSU0lPTi1wZ2RnIgogICkKICBpZiBbICIkX0dFVF9ERUJJQU5fVkVSU0lPTl9TVVBQT1JURUQiICE9ICIiIF07IHRoZW4KICAgIERFQklBTl9WRVJTSU9OX1NVUFBPUlRFRD0xCiAgZmk7Cn0KZnVuY3Rpb24gc2lnblNvdXJjZXMoKSB7CiAgcHJpbnRJbmRlbnQKICBwcmludGYgIiAgICAlcyIgIiRfTVNHX0FERElOR19SRVBPIgogIFNJR05fUEdER19HUEdfS0VZX1NUREVSUj0kKAogICAgd2dldCAtcU8gLSBodHRwczovL3d3dy5wb3N0Z3Jlc3FsLm9yZy9tZWRpYS9rZXlzL0FDQ0M0Q0Y4LmFzYyB8ICAgICBzdWRvIGFwdC1rZXkgYWRkIC0gMj4mMSA+IC9kZXYvbnVsbCkKICBTSUdOX1BHREdfR1BHX0tFWV9FWElUX0NPREU9JD8KICBpZiBbICRTSUdOX1BHREdfR1BHX0tFWV9FWElUX0NPREUgLW5lIDAgXTsgdGhlbgogICAgcHJpbnRmICIgXGVbOTFtXHhFMlx4OUNceDk1XGVbMzltXG4iID4mMgogICAgcHJpbnRmICJcbiVzOlxuIiAiJF9NU0dfRVJST1JfUkVUUklFVklOR19QT1NUR1JFU1FMX1BVQkxJQ19LRVkiID4mMgogICAgcHJpbnRmICIlc1xuIiAiJFNJR05fUEdER19HUEdfS0VZX1NUREVSUiIgPiYyCiAgICBleGl0ICRTSUdOX1BHREdfR1BHX0tFWV9FWElUX0NPREUKICBmaTsKICBwcmludGYgIiBcZVs5Mm1ceEUyXHg5Q1x4OTRcZVszOW1cbiIKICBwcmludEluZGVudAogIHByaW50ZiAiICAgICVzIiAiJF9NU0dfVVBEQVRJTkdfUEFDS0FHRVMiCiAgc3VkbyBwYWNtYW4gdXBkYXRlID4gL2Rldi9udWxsCiAgcHJpbnRmICIgXGVbOTJtXHhFMlx4OUNceDk0XGVbMzltXG4iCn0KZnVuY3Rpb24gcHVyZ2VQcmV2aW91c1BhY2thZ2VzKCkgewogIHByaW50SW5kZW50CiAgcHJpbnRmICIgICAgJXMiICIkX01TR19SRU1PVklOR19QUkVWSU9VU19QQUNLQUdFUyIKICBzdWRvIHBhY21hbiAtUm5zIHBvc3RncmVzcWwgPiAvZGV2L251bGwgfHwgZXhpdCAkPwogIHByaW50ZiAiIFxlWzkybVx4RTJceDlDXHg5NFxlWzM5bVxuIgp9CmZ1bmN0aW9uIGNsZWFuUHJldmlvdXNTb3VyY2VzKCkgewogIF9QR0RHX1NPVVJDRVNfRVhUUz0oCiAgICAibGlzdCIKICAgICJzYXZlIgogICAgImRpc3RVcGdyYWRlIgogICkKICBmb3IgRVhUIGluICIke19QR0RHX1NPVVJDRVNfRVhUU1tAXX0iOyBkbwogICAgaWYgWyAtZiAiJHtfUEdER19TT1VSQ0VTX0xJU1RfRklMRVBBVEh9LiR7RVhUfSIgXTsgdGhlbgogICAgICBzdWRvIHJtIC1mICIke19QR0RHX1NPVVJDRVNfTElTVF9GSUxFUEFUSH0uJHtFWFR9IiA+IC9kZXYvbnVsbCB8fCBleGl0ICQ/CiAgICBmaTsKICBkb25lCn0KZnVuY3Rpb24gY3JlYXRlU291cmNlc0xpc3QoKSB7CiAgdG91Y2ggIiRfUEdER19TT1VSQ0VTX0xJU1RfRklMRVBBVEgubGlzdCIKICBlY2hvICJkZWIgaHR0cDovL2FwdC5wb3N0Z3Jlc3FsLm9yZy9wdWIvcmVwb3MvYXB0LyAkREVCSUFOX1ZFUlNJT04tcGdkZyBtYWluIiA+ICAgICAiJF9QR0RHX1NPVVJDRVNfTElTVF9GSUxFUEFUSC5saXN0Igp9CmZ1bmN0aW9uIGNoZWNrUG9zdGdyZXNxbFNlcnZpY2VFeGlzdHMoKSB7CiAgX1BPU1RHUkVTUUxfU0VSVklDRV9FWElTVFM9MQogIGlmICEgc3VkbyBzeXN0ZW1jdGwgc3RhdHVzIHBvc3RncmVzcWwgPiAvZGV2L251bGwgMj4mMTsgdGhlbgogICAgX1BPU1RHUkVTUUxfU0VSVklDRV9FWElTVFM9MAogIGZpOwp9Cl9MQVNURVNUX1NUQUJMRV9QT1NUR1JFU19WRVJTSU9OPSIiCmZ1bmN0aW9uIGdldExhc3Rlc3RTdGFibGVQb3N0Z3Jlc1ZlcnNpb24oKSB7CiAgX0xBU1RFU1RfU1RBQkxFX1BPU1RHUkVTX1ZFUlNJT049JCgKICAgIHN1ZG8gYXB0aXR1ZGUgc2VhcmNoICJ+biBecG9zdGdyZXNxbCIgfCAgICAgZ3JlcCAtRW8gIiBwb3N0Z3Jlc3FsLVswLTldezEsM30uezAsMX1bMC05XXsxLDN9ICIgfCAgICAgYXdrICd7IHByaW50ICQxIH0nIHwgICAgIHNvcnQgLS12ZXJzaW9uLXNvcnQgfCAgICAgdGFpbCAtbiAxIHwgICAgIGN1dCAtZCctJyAtZjIKICApCn0KX1BPU1RHUkVTX1ZFUlNJT05fVE9fSU5TVEFMTD0iIgpmdW5jdGlvbiBnZXRQb3N0Z3Jlc1ZlcnNpb25Ub0luc3RhbGwoKSB7CiAgaWYgWyAiJF9WRVJTSU9OIiA9ICIiIF07IHRoZW4KICAgIHByaW50SW5kZW50CiAgICBwcmludGYgIiAgJXMiICIkX01TR19SRVRSSUVWSU5HX0xBU1RFU1RfU1RBQkxFX1ZFUlNJT04iCiAgICBnZXRMYXN0ZXN0U3RhYmxlUG9zdGdyZXNWZXJzaW9uCiAgICBfUE9TVEdSRVNfVkVSU0lPTl9UT19JTlNUQUxMPSIkX0xBU1RFU1RfU1RBQkxFX1BPU1RHUkVTX1ZFUlNJT04iCiAgICBwcmludGYgIiAodiVzKSIgIiRfUE9TVEdSRVNfVkVSU0lPTl9UT19JTlNUQUxMIgogIGVsc2UKICAgIHByaW50SW5kZW50CiAgICBwcmludGYgIiAgJXMgKCVzKS4uLiIgIiRfTVNHX0NIRUNLSU5HX0FWQUlMQUJMRV9WRVJTSU9OIiAiJF9WRVJTSU9OIgogICAgX1BPU1RHUkVTX1ZFUlNJT05fVE9fSU5TVEFMTD0kKAogICAgICBzdWRvIGFwdGl0dWRlIHNlYXJjaCAifm4gXnBvc3RncmVzcWwiIHwgICAgICAgZ3JlcCAtRW8gIiBwb3N0Z3Jlc3FsLVswLTldezEsM30uezAsMX1bMC05XXsxLDN9ICIgfCAgICAgICBhd2sgJ3sgcHJpbnQgJDEgfScgfCAgICAgICBncmVwIC1vICIkX1ZFUlNJT04iIHwgICAgICAgdHIgLWQgJ1xuJwogICAgKQogICAgaWYgWyAiJF9QT1NUR1JFU19WRVJTSU9OX1RPX0lOU1RBTEwiID0gIiIgXTsgdGhlbgogICAgICBwcmludGYgIiBcZVs5MW1ceEUyXHg5Q1x4OTVcZVszOW1cbiIgPiYyCiAgICAgIHByaW50ZiAiICAgICVzICglcykuXG4iICIkX01TR19WRVJTSU9OX05PVF9PRkZJQ0lBTExZX0FWQUlMQUJMRSIgIiRfVkVSU0lPTiIgPiYyCiAgICAgIGV4aXQgMQogICAgZmk7CiAgZmk7CiAgcHJpbnRmICIgXGVbOTJtXHhFMlx4OUNceDk0XGVbMzltXG4iCn0KX1BPU1RHUkVTX1ZFUlNJT05fSU5TVEFMTEVEPSIiCmZ1bmN0aW9uIGdldEluc3RhbGxlZFBvc3RncmVzVmVyc2lvbigpIHsKICBfUE9TVEdSRVNfVkVSU0lPTl9JTlNUQUxMRUQ9JCgKICAgIHBzcWwgLS12ZXJzaW9uIHwgICAgIGN1dCAtZCcgJyAtZjMgfCAgICAgY3V0IC1kJy4nIC1mMSB8fCBleGl0ICQ/CiAgKQp9CmZ1bmN0aW9uIGluc3RhbGxQb3N0Z3Jlc1BhY2thZ2VzKCkgewogIFBPU1RHUkVTX1BBQ0tBR0VTPSgKICAgICJwb3N0Z3Jlc3FsLSRfUE9TVEdSRVNfVkVSU0lPTl9UT19JTlNUQUxMIgogICAgInBvc3RncmVzcWwtY2xpZW50LSRfUE9TVEdSRVNfVkVSU0lPTl9UT19JTlNUQUxMIgogICAgInBvc3RncmVzcWwtY29udHJpYi0kX1BPU1RHUkVTX1ZFUlNJT05fVE9fSU5TVEFMTCIKICAgICJwb3N0Z3Jlc3FsLXNlcnZlci1kZXYtJF9QT1NUR1JFU19WRVJTSU9OX1RPX0lOU1RBTEwiCiAgICAibGlicHEtZGV2IgogICkKICBpZiBbICRfSU5DTFVERV9QT1NUR0lTIC1lcSAxIF07IHRoZW4KICAgIGlmIFsgIiRfUE9TVEdJU19WRVJTSU9OIiA9ICIiIF07IHRoZW4KICAgICAgX1BPU1RHSVNfUEFDS0FHRT0kKAogICAgICAgIHN1ZG8gYXB0aXR1ZGUgc2VhcmNoICJ+biBecG9zdGdyZXNxbC0ke19QT1NUR1JFU19WRVJTSU9OX1RPX0lOU1RBTEx9LXBvc3RnaXMiIHwgICAgICAgICBncmVwIC1FbyAiIHBvc3RncmVzcWwtJHtfUE9TVEdSRVNfVkVSU0lPTl9UT19JTlNUQUxMfS1wb3N0Z2lzLVswLTldezEsM30uezAsMX1bMC05XXswLDN9ICIgfCAgICAgICAgIGF3ayAneyBwcmludCAkMSB9JyB8ICAgICAgICAgc29ydCAtLXZlcnNpb24tc29ydCB8ICAgICAgICAgdGFpbCAtbiAxCiAgICAgICkKICAgIGVsc2UKICAgICAgX1BPU1RHSVNfUEFDS0FHRV9FWElTVFM9JCgKICAgICAgICBzdWRvIGFwdGl0dWRlIHNlYXJjaCAifm4gXnBvc3RncmVzcWwtJHtfUE9TVEdSRVNfVkVSU0lPTl9UT19JTlNUQUxMfS1wb3N0Z2lzLSR7X1BPU1RHSVNfVkVSU0lPTn0iCiAgICAgICkKICAgICAgaWYgWyAiJF9QT1NUR0lTX1BBQ0tBR0VfRVhJU1RTIiA9ICIiIF07IHRoZW4KICAgICAgICBwcmludGYgIlxuJXMgKHYlcykiICIkX01TR19WRVJTSU9OX09GX1BPU1RHSVNfVFJZSU5HX1RPX0lOU1RBTEwiICIkX1BPU1RHSVNfVkVSU0lPTiIgPiYyCiAgICAgICAgcHJpbnRmICIgJXMgdiVzIiAiJF9NU0dfRE9FU05UX0VYSVNUU19BU19BUFRfUEdfUEFDS0FHRSIgIiRfUE9TVEdSRVNfVkVSU0lPTl9UT19JTlNUQUxMIiA+JjIKICAgICAgICBwcmludGYgIiAoJXMgJ3Bvc3RncmVzcWwtJXMtcG9zdGdpcyVzJykiICIkX01TR19USEVfUEFDS0FHRSIgIiRfUE9TVEdSRVNfVkVSU0lPTl9UT19JTlNUQUxMIiAiJF9QT1NUR0lTX1ZFUlNJT04iID4mMgogICAgICAgIHByaW50ZiAiICVzXG4iICIkX01TR19ET0VTTlRfRVhJU1RTX0lOX1BHX09GRklDSUFMX1JFUE9TIiA+JjIKICAgICAgICBwcmludGYgIiVzXG4iICIkX01TR19TUEVDSUZZX0FOX0VYSVNURU5UX1ZFUlNJT04iID4mMgogICAgICAgIHN1ZG8gYXB0aXR1ZGUgc2VhcmNoICJ+biBecG9zdGdyZXNxbC0ke19QT1NUR1JFU19WRVJTSU9OX1RPX0lOU1RBTEx9LXBvc3RnaXMiID4mMgogICAgICAgIGV4aXQgMQogICAgICBmaTsKICAgICAgX1BPU1RHSVNfUEFDS0FHRT0icG9zdGdyZXNxbC0ke19QT1NUR1JFU19WRVJTSU9OX1RPX0lOU1RBTEx9LXBvc3RnaXMtJHtfUE9TVEdJU19WRVJTSU9OfSIKICAgIGZpOwogICAgUE9TVEdSRVNfUEFDS0FHRVMrPSgKICAgICAgIiRfUE9TVEdJU19QQUNLQUdFIgogICAgKQogIGZpOwogIGlmIFsgJF9JTkNMVURFX1BHQURNSU4gLWVxIDEgXTsgdGhlbgogICAgX0xBU1RFU1RfU1RBQkxFX1BHQURNSU5fUEFDS0FHRT0kKAogICAgICBzdWRvIGFwdGl0dWRlIHNlYXJjaCAifm4gXnBnYWRtaW4iIHwgICAgICAgZ3JlcCAtRW8gIiBwZ2FkbWluWzAtOV17MSwzfS57MCwxfVswLTldezAsM30gIiB8ICAgICAgIGF3ayAneyBwcmludCAkMSB9JyB8ICAgICAgIHNvcnQgLS12ZXJzaW9uLXNvcnQgfCAgICAgICB0YWlsIC1uIDEKICAgICkKICAgIFBPU1RHUkVTX1BBQ0tBR0VTKz0oCiAgICAgICIkX0xBU1RFU1RfU1RBQkxFX1BHQURNSU5fUEFDS0FHRSIKICAgICkKICBmaTsKICBpZiBbICRfSU5DTFVERV9QTFBZVEhPTjMgLWVxIDEgXTsgdGhlbgogICAgX0xBU1RFU1RfU1RBQkxFX1BMUFlUSE9OM19DT01QQVRJQkxFX1BBQ0tBR0U9JCgKICAgICAgc3VkbyBhcHRpdHVkZSBzZWFyY2ggIn5uIF5wb3N0Z3Jlc3FsLXBscHl0aG9uMy0ke19QT1NUR1JFU19WRVJTSU9OX1RPX0lOU1RBTEx9IiB8ICAgICAgIGhlYWQgLW4gMSB8ICAgICAgIGdyZXAgLW8gIiBwb3N0Z3Jlc3FsLXBscHl0aG9uMy0xMiIgfCAgICAgICBhd2sgJ3sgcHJpbnQgJDEgfScKICAgICkKICAgIGlmIFsgIiRfTEFTVEVTVF9TVEFCTEVfUExQWVRIT04zX0NPTVBBVElCTEVfUEFDS0FHRSIgIT0gIiIgXTsgdGhlbgogICAgICBQT1NUR1JFU19QQUNLQUdFUys9KAogICAgICAgICIkX0xBU1RFU1RfU1RBQkxFX1BMUFlUSE9OM19DT01QQVRJQkxFX1BBQ0tBR0UiCiAgICAgICkKICAgIGZpOwogIGZpOwogIHByaW50SW5kZW50CiAgcHJpbnRmICIgICVzXG4iICIkMSIKICBmb3IgUEFDS0FHRSBpbiAiJHtQT1NUR1JFU19QQUNLQUdFU1tAXX0iOyBkbwogICAgcHJpbnRJbmRlbnQKICAgIHByaW50ZiAiICAgICVzIiAiJFBBQ0tBR0UiCiAgICBpZiBbWyAiJChzdWRvIHBhY21hbiAtUWkgIiRQQUNLQUdFIiAyPiAvZGV2L251bGwgfCBncmVwIFN0YXR1cykiICE9ICJTdGF0dXM6IGluc3RhbGwgb2sgaW5zdGFsbGVkIiBdXTsgdGhlbgogICAgICBfQVBUX0lOU1RBTExfU1RERVJSPSQoc3VkbyBwYWNtYW4gLVMgLS0gLXkgIiRQQUNLQUdFIiA+IC9kZXYvbnVsbCAyPiYxKQogICAgICBfQVBUX0lOU1RBTExfRVhJVF9DT0RFPSQ/CiAgICAgIGlmIFsgJF9BUFRfSU5TVEFMTF9FWElUX0NPREUgLW5lIDAgXTsgdGhlbgogICAgICAgIHByaW50ZiAiJXMiICIkX0FQVF9JTlNUQUxMX1NUREVSUiIgPiYyCiAgICAgICAgZXhpdCAkX0FQVF9JTlNUQUxMX0VYSVRfQ09ERQogICAgICBmaTsKICAgIGZpOwogICAgcHJpbnRmICIgXGVbOTJtXHhFMlx4OUNceDk0XGVbMzltXG4iCiAgZG9uZQp9CmZ1bmN0aW9uIGNoZWNrUG9zdGdyZXNxbFNlcnZpY2VDb25maWcoKSB7CiAgcHJpbnRJbmRlbnQKICBwcmludGYgIiAgJXNcbiIgIiRfTVNHX0NIRUNLSU5HX1BHX1NFUlZJQ0VfQ09ORklHIgogIHByaW50SW5kZW50CiAgX1BPU1RHUkVTUUxfU0VSVklDRV9FTkFCTEVEX0ZPVU5EPSQoCiAgICBzeXN0ZW1jdGwgbGlzdC11bml0LWZpbGVzIHwgICAgIGdyZXAgZW5hYmxlZCB8ICAgICBncmVwIHBvc3RncmVzcWwpCiAgaWYgWyAiJF9QT1NUR1JFU1FMX1NFUlZJQ0VfRU5BQkxFRF9GT1VORCIgPSAiIiBdOyB0aGVuCiAgICBwcmludGYgIiAgICAlcyIgIiRfTVNHX0VOQUJMSU5HIgogICAgX0VOQUJMRV9QT1NUR1JFU1FMX1NFUlZFUl9PVVRQVVQ9JCgKICAgICAgc3VkbyBzeXN0ZW1jdGwgZW5hYmxlIHBvc3RncmVzcWwuc2VydmljZSAyPiYxID4gL2Rldi9udWxsCiAgICApCiAgICBfRU5BQkxFX1BPU1RHUkVTUUxfU0VSVkVSX0VYSVRfQ09ERT0kPwogICAgaWYgWyAkX0VOQUJMRV9QT1NUR1JFU1FMX1NFUlZFUl9FWElUX0NPREUgLW5lIDAgXTsgdGhlbgogICAgICBwcmludGYgIiBcZVs5MW1ceEUyXHg5Q1x4OTVcZVszOW1cbiIgPiYyCiAgICAgIHByaW50ZiAiJXNcbiIgIiRfTVNHX0VSUk9SX0VOQUJMSU5HX1BHX1NFUlZJQ0UiID4mMgogICAgICBwcmludGYgIiVzOiAlZFxuIiAiJF9NU0dfRVhJVF9DT0RFIiAiJF9FTkFCTEVfUE9TVEdSRVNRTF9TRVJWRVJfRVhJVF9DT0RFIiA+JjIKICAgICAgcHJpbnRmICIlczogJXNcbiIgIiRfTVNHX0VSUk9SIiAiJF9FTkFCTEVfUE9TVEdSRVNRTF9TRVJWRVJfT1VUUFVUIiA+JjIKICAgICAgZXhpdCAkX0VOQUJMRV9QT1NUR1JFU1FMX1NFUlZFUl9FWElUX0NPREUKICAgIGZpOwogIGVsc2UKICAgIHByaW50ZiAiICAgICVzIiAiJF9NU0dfSVRTX0VOQUJMRUQiCiAgZmk7CiAgcHJpbnRmICIgXGVbOTJtXHhFMlx4OUNceDk0XGVbMzltXG4iCiAgcHJpbnRJbmRlbnQKICBfUE9TVEdSRVNRTF9TRVJWSUNFX1NUQVRVUz0kKAogICAgc3VkbyBzeXN0ZW1jdGwgc2hvdyAtcCBBY3RpdmVTdGF0ZSBwb3N0Z3Jlc3FsIHwgICAgIGN1dCAtZCc9JyAtZjIgfCAgICAgdHIgLWQgJ1xuJykKICBpZiBbICIkX1BPU1RHUkVTUUxfU0VSVklDRV9TVEFUVVMiICE9ICJhY3RpdmUiIF07IHRoZW4KICAgIHByaW50ZiAiICAgICVzIiAiJF9NU0dfTEFVTkNISU5HIgogICAgc3VkbyBzeXN0ZW1jdGwgc3RhcnQgcG9zdGdyZXNxbCA+IC9kZXYvbnVsbAogICAgX1BPU1RHUkVTUUxfU0VSVklDRV9TVEFSVEVEPSQ/CiAgICBpZiBbICRfUE9TVEdSRVNRTF9TRVJWSUNFX1NUQVJURUQgLW5lIDAgXTsgdGhlbgogICAgICBwcmludGYgIiBcZVs5MW1ceEUyXHg5Q1x4OTVcZVszOW1cbiIgPiYyCiAgICAgIHByaW50ZiAiJXNcbiIgIiRfTVNHX1BHX1NFUlZJQ0VfQ09VTEROVF9CRV9TVEFSVEVEIiA+JjIKICAgICAgcHJpbnRmICIlcyAnJXMnLlxuIiAiJF9NU0dfSVRTX0lOX1NUQVRFIiAiJF9QT1NUR1JFU1FMX1NFUlZJQ0VfU1RBVFVTIiA+JjIKICAgICAgZXhpdCAkX1BPU1RHUkVTUUxfU0VSVklDRV9TVEFSVEVECiAgICBmaTsKICBlbHNlCiAgICBwcmludGYgIiAgICAlcyIgIiRfTVNHX0lUU19SVU5OSU5HIgogIGZpOwogIHByaW50ZiAiIFxlWzkybVx4RTJceDlDXHg5NFxlWzM5bVxuIgp9CmZ1bmN0aW9uIGluc3RhbGxQb3N0Z3JlU1FMKCkgewogIHByaW50SW5kZW50CiAgcHJpbnRmICIgICVzXG4iICIkX01TR19JTlNUQUxMSU5HX1BHIgogIGdldERlYmlhblZlcnNpb24KICBjaGVja0RlYmlhblZlcnNpb25TdXBwb3J0ZWQKICBpZiBbICRERUJJQU5fVkVSU0lPTl9TVVBQT1JURUQgLWVxIDAgXTsgdGhlbgogICAgcHJpbnRmICIlcyAoJXMpLiIgIiRfTVNHX0RJU1RST19WRVJTSU9OX05PVF9TVVBQT1JURUQiICIkREVCSUFOX1ZFUlNJT04iID4mMgogICAgZXhpdCAxCiAgZmk7CiAgY2xlYW5QcmV2aW91c1NvdXJjZXMKICBwdXJnZVByZXZpb3VzUGFja2FnZXMKICBjcmVhdGVTb3VyY2VzTGlzdAogIHNpZ25Tb3VyY2VzCiAgZ2V0UG9zdGdyZXNWZXJzaW9uVG9JbnN0YWxsCiAgaW5zdGFsbFBvc3RncmVzUGFja2FnZXMgIiRfTVNHX0lOU1RBTExJTkdfUEFDS0FHRVMiCn0KZnVuY3Rpb24gbWFpbigpIHsKICBwcmludEluZGVudAogIHByaW50ZiAiJXNcbiIgIiRfTVNHX0NIRUtJTkdfUEdfRU5WIgogIGNoZWNrUG9zdGdyZXNxbFNlcnZpY2VFeGlzdHMKICBpZiBbICRfUE9TVEdSRVNRTF9TRVJWSUNFX0VYSVNUUyAtZXEgMCBdOyB0aGVuCiAgICBpbnN0YWxsUG9zdGdyZVNRTAogIGVsc2UKICAgIGdldEluc3RhbGxlZFBvc3RncmVzVmVyc2lvbgogICAgX1BPU1RHUkVTX1ZFUlNJT05fVE9fSU5TVEFMTD0kX1BPU1RHUkVTX1ZFUlNJT05fSU5TVEFMTEVECiAgICBpbnN0YWxsUG9zdGdyZXNQYWNrYWdlcyAiJF9NU0dfQ0hFQ0tJTkdfUEFDS0FHRVMiCiAgZmk7CiAgY2hlY2tQb3N0Z3Jlc3FsU2VydmljZUNvbmZpZwp9CmlmIChyZXR1cm4gMCAyPi9kZXYvbnVsbCk7IHRoZW4KICBleHBvcnRWYXJpYWJsZXMKZWxzZQogIG1haW4KZmk7'
if (return 0 2>/dev/null); then
  source <(printf "%s" "$H" | base64 -d)
else
  echo "$(echo "$H" | base64 -d)" | bash -s -- "$@"
fi;
