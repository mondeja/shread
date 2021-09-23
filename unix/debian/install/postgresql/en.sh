#!/bin/bash
H='IyEvYmluL2Jhc2gKIyAtKi0gRU5DT0RJTkc6IFVURi04IC0qLQpfU0NSSVBUX0ZJTEVOQU1FPWVuLnNoCiMhL2Jpbi9iYXNoCl9NU0dfQURESU5HX1JFUE89IkFkZGluZyByZXBvc2l0b3J5Li4uIgpfTVNHX0VSUk9SX1JFVFJJRVZJTkdfUE9TVEdSRVNRTF9QVUJMSUNfS0VZPSJBbiBlcnJvciBoYXBwZW4gcmV0cmlldmluZyBQb3N0Z3JlU1FMIHB1YmxpYyBrZXkiCl9NU0dfVVBEQVRJTkdfUEFDS0FHRVM9IlVwZGF0aW5nIHBhY2thZ2VzLi4uIgpfTVNHX1JFTU9WSU5HX1BSRVZJT1VTX1BBQ0tBR0VTPSJSZW1vdmluZyBwcmV2aW91cyBwYWNrYWdlcy4uLiIKX01TR19SRVRSSUVWSU5HX0xBU1RFU1RfU1RBQkxFX1ZFUlNJT049IlJldHJpZXZpbmcgbGFzdGVzdCBzdGFibGUgYXZhaWxhYmxlIHZlcnNpb24uLi4iCl9NU0dfQ0hFQ0tJTkdfQVZBSUxBQkxFX1ZFUlNJT049IkNoZWNraW5nIHZlcnNpb24gYXZhaWxhYmxlIgpfTVNHX1ZFUlNJT05fTk9UX09GRklDSUFMTFlfQVZBSUxBQkxFPSJWZXJzaW9uIG5vdCBhdmFpbGFibGUgYXQgb2ZmaWNpYWwgUG9zdGdyZVNRTCByZXBvc2l0b3JpZXMiCl9NU0dfVkVSU0lPTl9PRl9QT1NUR0lTX1RSWUlOR19UT19JTlNUQUxMPSJUaGUgdmVyc2lvbiBvZiBQb3N0Z2lzIHRoYXQgeW91J3JlIHRyeWluZyB0byBpbnN0YWxsIgpfTVNHX0RPRVNOVF9FWElTVFNfQVNfQVBUX1BHX1BBQ0tBR0U9ImRvZXNuJ3QgZXhpc3RzIGFzIEFQVCBwYWNrYWdlIGZvciBQb3N0Z3JlU1FMIgpfTVNHX1RIRV9QQUNLQUdFPSJ0aGUgcGFja2FnZSIKX01TR19ET0VTTlRfRVhJU1RTX0lOX1BHX09GRklDSUFMX1JFUE9TPSJkb2Vzbid0IGV4aXN0cyBpbiBQb3N0Z3JlU1FMIG9mZmljaWFsIHJlcG9zaXRvcmllcy4iCl9NU0dfU1BFQ0lGWV9BTl9FWElTVEVOVF9WRVJTSU9OPSJTcGVjaWZ5IGFuIGV4aXN0ZW50IHZlcnNpb24gYmV0d2VlbiB0aGUgbmV4dCB1c2luZyB0aGUgcGFyYW0gJy0tcG9zdGdpcy12ZXJzaW9uJzoiCl9NU0dfQ0hFQ0tJTkdfUEdfU0VSVklDRV9DT05GSUc9IkNoZWNraW5nIHRoZSBjb25maWd1cmF0aW9uIG9mIHRoZSBzZXJ2aWNlICdwb3N0Z3Jlc3FsJy4uLiIKX01TR19FTkFCTElORz0iRW5hYmxpbmcuLi4iCl9NU0dfSVRTX0VOQUJMRUQ9Ikl0J3MgZW5hYmxlZCIKX01TR19FUlJPUl9FTkFCTElOR19QR19TRVJWSUNFPSJBbiBlcnJvciBoYXBwZW4gZW5hYmxpbmcgJ3Bvc3RncmVzcWwnIHNlcnZpY2UuIgpfTVNHX0VSUk9SPSJFcnJvciIKX01TR19FWElUX0NPREU9IkV4aXQgY29kZSIKX01TR19MQVVOQ0hJTkc9IkxhdW5jaGluZy4uLiIKX01TR19QR19TRVJWSUNFX0NPVUxETlRfQkVfU1RBUlRFRD0iVGhlICdwb3N0Z3Jlc3FsJyBzZXJ2aWNlIGNvdWxkbid0IGJlIHN0YXJ0ZWQuIgpfTVNHX0lUU19JTl9TVEFURT0iSXQncyBvbiBzdGF0ZSIKX01TR19JVFNfUlVOTklORz0iSXQncyBydW5uaW5nIgpfTVNHX0lOU1RBTExJTkdfUEc9Ikluc3RhbGxpbmcgUG9zdGdyZVNRTC4uLiIKX01TR19JTlNUQUxMSU5HX1BBQ0tBR0VTPSJJbnN0YWxsaW5nIHBhY2thZ2VzLi4uIgpfTVNHX0NIRUtJTkdfUEdfRU5WPSJDaGVja2luZyBQb3N0Z3JlU1FMIGVudmlyb25tZW50Li4uIgpfTVNHX0NIRUNLSU5HX1BBQ0tBR0VTPSJDaGVja2luZyBwYWNrYWdlcy4uLiIKX01TR19ESVNUUk9fVkVSU0lPTl9OT1RfU1VQUE9SVEVEPSJZb3VyIHZlcnNpb24gb2YgRGViaWFuL1VidW50dSBpcyBub3Qgc3VwcG9ydGVkIGJ5IG9mZmljaWFsIFBvc3RncmVTUUwgcmVwb3NpdG9yaWVzIgpfUEdER19TT1VSQ0VTX0xJU1RfRklMRVBBVEg9Ii9ldGMvYXB0L3NvdXJjZXMubGlzdC5kL3BnZGciCklOREVOVF9TVFJJTkc9IiIKX1ZFUlNJT049IiIKX0lOQ0xVREVfUE9TVEdJUz0wCl9QT1NUR0lTX1ZFUlNJT049IiIKX0lOQ0xVREVfUEdBRE1JTj0wCl9JTkNMVURFX1BMUFlUSE9OMz0wCl9DSEVDS19TRVJWSUNFPTEKZnVuY3Rpb24gdXNhZ2UgewogICAgY2F0IDw8SEVMUF9VU0FHRQpVc2FnZTogdW5peC9kZWJpYW4vaW5zdGFsbC9wb3N0Z3Jlc3FsLyRfU0NSSVBUX0ZJTEVOQU1FIFstaF0gWy1pIFNUUklOR10gWy1wZ3YgUE9TVEdSRVNRTF9WRVJTSU9OXSBbLWdpc10gWy1naXN2IFBPU1RHSVNfVkVSU0lPTl0gWy1wZ2FkXSBbLXBscHkzXQoKICBJbnN0YWxscyBQb3N0Z3JlU1FMIHBhY2thZ2VzIGFuZCwgb3B0aW9uYWxseSwgc29tZSBhZGRpdGlvbmFsIHBhY2thZ2VzIGZyb20gb2ZmaWNpYWwgc291cmNlcy4KICBBbHNvIGNoZWNrcyBpZiB0aGUgJ3Bvc3RncmVzJyBzZXJ2aWNlIGlzIHJ1bm5pbmcgYW5kIGVuYWJsZXMgaXQsIGlmIGlzIG5vdCBhbHJlYWR5LgoKT3B0aW9uczoKICAtaCwgLS1oZWxwICAgICAgICAgICAgICAgICAgICAgICAgU2hvdyB0aGlzIGhlbHAgbWVzc2FnZSBhbmQgZXhpdC4KICAtaSBTVFJJTkcsIC0taW5kZW50IFNUUklORyAgICAgICAgRWFjaCBsaW5lIG9mIHRoZSBzY3JpcHQgb3V0cHV0IHdpbGwgYmUgcHJlY2VkZWQgd2l0aCB0aGUgc3RyaW5nIGRlZmluZWQgaW4gdGhpcyBwYXJhbWV0ZXIuCiAgLXBndiBQT1NUR1JFU1FMX1ZFUlNJT04sIC0tcG9zdGdyZXNxbC12ZXJzaW9uIFBPU1RHUkVTUUxfVkVSU0lPTgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBQb3N0Z3JlU1FMIHZlcnNpb24gdG8gaW5zdGFsbC4gSWYgbm90IHByb3ZpZGVkLCB0aGUgbGF0ZXN0IHZlcnNpb24gYXZhaWxhYmxlIGluIHJlcG9zaXRvcmllcyB3aWxsIGJlIGluc3RhbGxlZC4KICAtZ2lzLCAtLWluc3RhbGwtcG9zdGdpcyAgICAgICAgICAgSW5zdGFsbCBQb3N0Z2lzIHBhY2thZ2UgY29ycmVzcG9uZGVudCB0byB0aGUgUG9zdGdyZVNRTCB2ZXJzaW9uIHRvIGluc3RhbGwuCiAgLWdpc3YgUE9TVEdJU19WRVJTSU9OLCAtLXBvc3RnaXMtdmVyc2lvbiBQT1NUR0lTX1ZFUlNJT04KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgU3BlY2lmaWVzIHdoYXQgdmVyc2lvbiBvZiBQb3N0R0lTIHdpbGwgYmUgaW5zdGFsbGVkLiBPbmx5IGhhcyBlZmZlY3QgcGFzc2luZyAnLS1pbnN0YWxsLXBvc3RnaXMnIG9wdGlvbi4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgSWYgbm90IHByb3ZpZGVkLCB3aWxsIGJlIGluc3RhbGxlZCB0aGUgbGF0ZXN0IGF2YWlsYWJsZSB2ZXJzaW9uIG9mIHRoZSBwYWNrYWdlLgogIC1wZ2FkLCAtLWluc3RhbGwtcGdhZG1pbiAgICAgICAgICBJbnN0YWxsIGxhdGVzdCB2ZXJzaW9uIGF2YWlsYWJsZSBvZiAncGdhZG1pbicgcGFja2FnZS4KICAtcGxweTMsIC0taW5zdGFsbC1wbHB5dGhvbjMgICAgICAgSW5zdGFsbCBsYXRlc3QgdmVyc2lvbiBhdmFpbGFibGUgb2YgJ3Bvc3RncmVzcWwtcGxweXRob24zLSonIHBhY2thZ2UuCiAgLS1uby1jaGVjay1zZXJ2aWNlICAgICAgICAgICAgICAgIERvIG5vdCBjaGVjayB0aGF0IHRoZSBzZXJ2aWNlIGlzIGNvbmZpZ3VyZWQgdG8gcnVuIGF0IGJvb3QgdGltZS4KCkhFTFBfVVNBR0UKICAgIGV4aXQgMQp9CmZvciBhcmcgaW4gIiRAIjsgZG8KICBjYXNlICRhcmcgaW4KICAgIC1pfC0taW5kZW50KQogICAgSU5ERU5UX1NUUklORz0iJDIiCiAgICBzaGlmdCAyCiAgICA7OwogICAgLWh8LS1oZWxwKQogICAgc2hpZnQKICAgIHVzYWdlCiAgICA7OyAgICAKICAgIC1wZ3Z8LS1wb3N0Z3Jlc3FsLXZlcnNpb24pCiAgICBzaGlmdAogICAgX1ZFUlNJT049JDEKICAgIHNoaWZ0CiAgICA7OwogICAgLWdpc3wtLWluc3RhbGwtcG9zdGdpcykKICAgIF9JTkNMVURFX1BPU1RHSVM9MQogICAgc2hpZnQKICAgIDs7CiAgICAtZ2lzdnwtLXBvc3RnaXMtdmVyc2lvbikKICAgIHNoaWZ0CiAgICBfUE9TVEdJU19WRVJTSU9OPSQxCiAgICBzaGlmdAogICAgOzsKICAgIC1wZ2FkfC0taW5zdGFsbC1wZ2FkbWluKQogICAgX0lOQ0xVREVfUEdBRE1JTj0xCiAgICBzaGlmdAogICAgOzsKICAgIC1wbHB5M3wtLWluc3RhbGwtcGxweXRob24zKQogICAgX0lOQ0xVREVfUExQWVRIT04zPTEKICAgIHNoaWZ0CiAgICA7OwogICAgLS1uby1jaGVjay1zZXJ2aWNlKQogICAgX0NIRUNLX1NFUlZJQ0U9MAogICAgc2hpZnQKICAgIDs7CiAgZXNhYwpkb25lCmZ1bmN0aW9uIHByaW50SW5kZW50KCkgewogIHByaW50ZiAiJXMiICIkSU5ERU5UX1NUUklORyIKfQpmdW5jdGlvbiBpbnN0YWxsUGFjbWFuSWZOb3RJbnN0YWxsZWQoKSB7CiAgaWYgWyAiJChjb21tYW5kIC12IHBhY21hbikiID0gIiIgXTsgdGhlbgogICAgdXJsPSJodHRwczovL21vbmRlamEuZ2l0aHViLmlvL3NocmVhZC91bml4L18vZG93bmxvYWQvcGFjYXB0LyRfU0NSSVBUX0ZJTEVOQU1FIgogICAgY3VybCAtc0wgIiR1cmwiIHwgc3VkbyBiYXNoIC0gPiAvZGV2L251bGwKICBmaTsKfQpmdW5jdGlvbiBpbnN0YWxsU2NyaXB0RGVwZW5kZW5jaWVzKCkgewogIGluc3RhbGxQYWNtYW5JZk5vdEluc3RhbGxlZAogIElOU1RBTExBVElPTl9ERVBFTkRFTkNJRVM9KAogICAgIndnZXQiCiAgICAiYXB0aXR1ZGUiCiAgICAiY3VybCIKICApCiAgZm9yIERFUCBpbiAiJHtJTlNUQUxMQVRJT05fREVQRU5ERU5DSUVTW0BdfSI7IGRvCiAgICBpZiBbWyAiJChzdWRvIHBhY21hbiAtUWkgIiRERVAiIDI+IC9kZXYvbnVsbCB8IGdyZXAgU3RhdHVzKSIgIT0gIlN0YXR1czogaW5zdGFsbCBvayBpbnN0YWxsZWQiIF1dOyB0aGVuCiAgICAgIHN1ZG8gcGFjbWFuIC1TIC0tIC15ICIkREVQIiA+IC9kZXYvbnVsbCB8fCBleGl0ICQ/CiAgICBmaTsKICBkb25lOwp9CkRFQklBTl9WRVJTSU9OPSIiCmZ1bmN0aW9uIGdldERlYmlhblZlcnNpb24oKSB7CiAgREVCSUFOX1ZFUlNJT049IiQobHNiX3JlbGVhc2UgLWMgLXMpIgp9CmZ1bmN0aW9uIGNoZWNrRGViaWFuVmVyc2lvblN1cHBvcnRlZCgpIHsKICBERUJJQU5fVkVSU0lPTl9TVVBQT1JURUQ9MAogIF9HRVRfREVCSUFOX1ZFUlNJT05fU1VQUE9SVEVEPSQoCiAgICBjdXJsIC1zTCBodHRwOi8vYXB0LnBvc3RncmVzcWwub3JnL3B1Yi9yZXBvcy9hcHQvZGlzdHMvIHwgICAgIGdyZXAgLW8gIiRERUJJQU5fVkVSU0lPTi1wZ2RnIgogICkKICBpZiBbICIkX0dFVF9ERUJJQU5fVkVSU0lPTl9TVVBQT1JURUQiICE9ICIiIF07IHRoZW4KICAgIERFQklBTl9WRVJTSU9OX1NVUFBPUlRFRD0xCiAgZmk7Cn0KZnVuY3Rpb24gc2lnblNvdXJjZXMoKSB7CiAgcHJpbnRJbmRlbnQKICBwcmludGYgIiAgICAlcyIgIiRfTVNHX0FERElOR19SRVBPIgogIFNJR05fUEdER19HUEdfS0VZX1NUREVSUj0kKAogICAgd2dldCAtcU8gLSBodHRwczovL3d3dy5wb3N0Z3Jlc3FsLm9yZy9tZWRpYS9rZXlzL0FDQ0M0Q0Y4LmFzYyB8ICAgICBzdWRvIGFwdC1rZXkgYWRkIC0gMj4mMSA+IC9kZXYvbnVsbCkKICBTSUdOX1BHREdfR1BHX0tFWV9FWElUX0NPREU9JD8KICBpZiBbICRTSUdOX1BHREdfR1BHX0tFWV9FWElUX0NPREUgLW5lIDAgXTsgdGhlbgogICAgcHJpbnRmICIgXGVbOTFtXHhFMlx4OUNceDk1XGVbMzltXG4iID4mMgogICAgcHJpbnRmICJcbiVzOlxuIiAiJF9NU0dfRVJST1JfUkVUUklFVklOR19QT1NUR1JFU1FMX1BVQkxJQ19LRVkiID4mMgogICAgcHJpbnRmICIlc1xuIiAiJFNJR05fUEdER19HUEdfS0VZX1NUREVSUiIgPiYyCiAgICBleGl0ICRTSUdOX1BHREdfR1BHX0tFWV9FWElUX0NPREUKICBmaTsKICBwcmludGYgIiBcZVs5Mm1ceEUyXHg5Q1x4OTRcZVszOW1cbiIKICBwcmludEluZGVudAogIHByaW50ZiAiICAgICVzIiAiJF9NU0dfVVBEQVRJTkdfUEFDS0FHRVMiCiAgc3VkbyBwYWNtYW4gdXBkYXRlID4gL2Rldi9udWxsCiAgcHJpbnRmICIgXGVbOTJtXHhFMlx4OUNceDk0XGVbMzltXG4iCn0KZnVuY3Rpb24gcHVyZ2VQcmV2aW91c1BhY2thZ2VzKCkgewogIHByaW50SW5kZW50CiAgcHJpbnRmICIgICAgJXMiICIkX01TR19SRU1PVklOR19QUkVWSU9VU19QQUNLQUdFUyIKICBzdWRvIHBhY21hbiAtUm5zIHBvc3RncmVzcWwgPiAvZGV2L251bGwgfHwgZXhpdCAkPwogIHByaW50ZiAiIFxlWzkybVx4RTJceDlDXHg5NFxlWzM5bVxuIgp9CmZ1bmN0aW9uIGNsZWFuUHJldmlvdXNTb3VyY2VzKCkgewogIF9QR0RHX1NPVVJDRVNfRVhUUz0oCiAgICAibGlzdCIKICAgICJzYXZlIgogICAgImRpc3RVcGdyYWRlIgogICkKICBmb3IgRVhUIGluICIke19QR0RHX1NPVVJDRVNfRVhUU1tAXX0iOyBkbwogICAgaWYgWyAtZiAiJHtfUEdER19TT1VSQ0VTX0xJU1RfRklMRVBBVEh9LiR7RVhUfSIgXTsgdGhlbgogICAgICBzdWRvIHJtIC1mICIke19QR0RHX1NPVVJDRVNfTElTVF9GSUxFUEFUSH0uJHtFWFR9IiA+IC9kZXYvbnVsbCB8fCBleGl0ICQ/CiAgICBmaTsKICBkb25lCn0KZnVuY3Rpb24gY3JlYXRlU291cmNlc0xpc3QoKSB7CiAgdG91Y2ggIiRfUEdER19TT1VSQ0VTX0xJU1RfRklMRVBBVEgubGlzdCIKICBlY2hvICJkZWIgaHR0cDovL2FwdC5wb3N0Z3Jlc3FsLm9yZy9wdWIvcmVwb3MvYXB0LyAkREVCSUFOX1ZFUlNJT04tcGdkZyBtYWluIiA+ICAgICAiJF9QR0RHX1NPVVJDRVNfTElTVF9GSUxFUEFUSC5saXN0Igp9CmZ1bmN0aW9uIGNoZWNrUG9zdGdyZXNxbFNlcnZpY2VFeGlzdHMoKSB7CiAgX1BPU1RHUkVTUUxfU0VSVklDRV9FWElTVFM9MQogIGlmICEgc3VkbyBzeXN0ZW1jdGwgc3RhdHVzIHBvc3RncmVzcWwgPiAvZGV2L251bGwgMj4mMTsgdGhlbgogICAgX1BPU1RHUkVTUUxfU0VSVklDRV9FWElTVFM9MAogIGZpOwp9Cl9MQVNURVNUX1NUQUJMRV9QT1NUR1JFU19WRVJTSU9OPSIiCmZ1bmN0aW9uIGdldExhc3Rlc3RTdGFibGVQb3N0Z3Jlc1ZlcnNpb24oKSB7CiAgX0xBU1RFU1RfU1RBQkxFX1BPU1RHUkVTX1ZFUlNJT049JCgKICAgIHN1ZG8gYXB0aXR1ZGUgc2VhcmNoICJ+biBecG9zdGdyZXNxbCIgfCAgICAgZ3JlcCAtRW8gIiBwb3N0Z3Jlc3FsLVswLTldezEsM30uezAsMX1bMC05XXsxLDN9ICIgfCAgICAgYXdrICd7IHByaW50ICQxIH0nIHwgICAgIHNvcnQgLS12ZXJzaW9uLXNvcnQgfCAgICAgdGFpbCAtbiAxIHwgICAgIGN1dCAtZCctJyAtZjIKICApCn0KX1BPU1RHUkVTX1ZFUlNJT05fVE9fSU5TVEFMTD0iIgpmdW5jdGlvbiBnZXRQb3N0Z3Jlc1ZlcnNpb25Ub0luc3RhbGwoKSB7CiAgaWYgWyAiJF9WRVJTSU9OIiA9ICIiIF07IHRoZW4KICAgIHByaW50SW5kZW50CiAgICBwcmludGYgIiAgJXMiICIkX01TR19SRVRSSUVWSU5HX0xBU1RFU1RfU1RBQkxFX1ZFUlNJT04iCiAgICBnZXRMYXN0ZXN0U3RhYmxlUG9zdGdyZXNWZXJzaW9uCiAgICBfUE9TVEdSRVNfVkVSU0lPTl9UT19JTlNUQUxMPSIkX0xBU1RFU1RfU1RBQkxFX1BPU1RHUkVTX1ZFUlNJT04iCiAgICBwcmludGYgIiAodiVzKSIgIiRfUE9TVEdSRVNfVkVSU0lPTl9UT19JTlNUQUxMIgogIGVsc2UKICAgIHByaW50SW5kZW50CiAgICBwcmludGYgIiAgJXMgKCVzKS4uLiIgIiRfTVNHX0NIRUNLSU5HX0FWQUlMQUJMRV9WRVJTSU9OIiAiJF9WRVJTSU9OIgogICAgX1BPU1RHUkVTX1ZFUlNJT05fVE9fSU5TVEFMTD0kKAogICAgICBzdWRvIGFwdGl0dWRlIHNlYXJjaCAifm4gXnBvc3RncmVzcWwiIHwgICAgICAgZ3JlcCAtRW8gIiBwb3N0Z3Jlc3FsLVswLTldezEsM30uezAsMX1bMC05XXsxLDN9ICIgfCAgICAgICBhd2sgJ3sgcHJpbnQgJDEgfScgfCAgICAgICBncmVwIC1vICIkX1ZFUlNJT04iIHwgICAgICAgdHIgLWQgJ1xuJwogICAgKQogICAgaWYgWyAiJF9QT1NUR1JFU19WRVJTSU9OX1RPX0lOU1RBTEwiID0gIiIgXTsgdGhlbgogICAgICBwcmludGYgIiBcZVs5MW1ceEUyXHg5Q1x4OTVcZVszOW1cbiIgPiYyCiAgICAgIHByaW50ZiAiICAgICVzICglcykuXG4iICIkX01TR19WRVJTSU9OX05PVF9PRkZJQ0lBTExZX0FWQUlMQUJMRSIgIiRfVkVSU0lPTiIgPiYyCiAgICAgIGV4aXQgMQogICAgZmk7CiAgZmk7CiAgcHJpbnRmICIgXGVbOTJtXHhFMlx4OUNceDk0XGVbMzltXG4iCn0KX1BPU1RHUkVTX1ZFUlNJT05fSU5TVEFMTEVEPSIiCmZ1bmN0aW9uIGdldEluc3RhbGxlZFBvc3RncmVzVmVyc2lvbigpIHsKICBfUE9TVEdSRVNfVkVSU0lPTl9JTlNUQUxMRUQ9JCgKICAgIHBzcWwgLS12ZXJzaW9uIHwgICAgIGN1dCAtZCcgJyAtZjMgfCAgICAgY3V0IC1kJy4nIC1mMSB8fCBleGl0ICQ/CiAgKQp9CmZ1bmN0aW9uIGluc3RhbGxQb3N0Z3Jlc1BhY2thZ2VzKCkgewogIFBPU1RHUkVTX1BBQ0tBR0VTPSgKICAgICJwb3N0Z3Jlc3FsLSRfUE9TVEdSRVNfVkVSU0lPTl9UT19JTlNUQUxMIgogICAgInBvc3RncmVzcWwtY2xpZW50LSRfUE9TVEdSRVNfVkVSU0lPTl9UT19JTlNUQUxMIgogICAgInBvc3RncmVzcWwtY29udHJpYi0kX1BPU1RHUkVTX1ZFUlNJT05fVE9fSU5TVEFMTCIKICAgICJwb3N0Z3Jlc3FsLXNlcnZlci1kZXYtJF9QT1NUR1JFU19WRVJTSU9OX1RPX0lOU1RBTEwiCiAgICAibGlicHEtZGV2IgogICkKICBpZiBbICRfSU5DTFVERV9QT1NUR0lTIC1lcSAxIF07IHRoZW4KICAgIGlmIFsgIiRfUE9TVEdJU19WRVJTSU9OIiA9ICIiIF07IHRoZW4KICAgICAgX1BPU1RHSVNfUEFDS0FHRT0kKAogICAgICAgIHN1ZG8gYXB0aXR1ZGUgc2VhcmNoICJ+biBecG9zdGdyZXNxbC0ke19QT1NUR1JFU19WRVJTSU9OX1RPX0lOU1RBTEx9LXBvc3RnaXMiIHwgICAgICAgICBncmVwIC1FbyAiIHBvc3RncmVzcWwtJHtfUE9TVEdSRVNfVkVSU0lPTl9UT19JTlNUQUxMfS1wb3N0Z2lzLVswLTldezEsM30uezAsMX1bMC05XXswLDN9ICIgfCAgICAgICAgIGF3ayAneyBwcmludCAkMSB9JyB8ICAgICAgICAgc29ydCAtLXZlcnNpb24tc29ydCB8ICAgICAgICAgdGFpbCAtbiAxCiAgICAgICkKICAgIGVsc2UKICAgICAgX1BPU1RHSVNfUEFDS0FHRV9FWElTVFM9JCgKICAgICAgICBzdWRvIGFwdGl0dWRlIHNlYXJjaCAifm4gXnBvc3RncmVzcWwtJHtfUE9TVEdSRVNfVkVSU0lPTl9UT19JTlNUQUxMfS1wb3N0Z2lzLSR7X1BPU1RHSVNfVkVSU0lPTn0iCiAgICAgICkKICAgICAgaWYgWyAiJF9QT1NUR0lTX1BBQ0tBR0VfRVhJU1RTIiA9ICIiIF07IHRoZW4KICAgICAgICBwcmludGYgIlxuJXMgKHYlcykiICIkX01TR19WRVJTSU9OX09GX1BPU1RHSVNfVFJZSU5HX1RPX0lOU1RBTEwiICIkX1BPU1RHSVNfVkVSU0lPTiIgPiYyCiAgICAgICAgcHJpbnRmICIgJXMgdiVzIiAiJF9NU0dfRE9FU05UX0VYSVNUU19BU19BUFRfUEdfUEFDS0FHRSIgIiRfUE9TVEdSRVNfVkVSU0lPTl9UT19JTlNUQUxMIiA+JjIKICAgICAgICBwcmludGYgIiAoJXMgJ3Bvc3RncmVzcWwtJXMtcG9zdGdpcyVzJykiICIkX01TR19USEVfUEFDS0FHRSIgIiRfUE9TVEdSRVNfVkVSU0lPTl9UT19JTlNUQUxMIiAiJF9QT1NUR0lTX1ZFUlNJT04iID4mMgogICAgICAgIHByaW50ZiAiICVzXG4iICIkX01TR19ET0VTTlRfRVhJU1RTX0lOX1BHX09GRklDSUFMX1JFUE9TIiA+JjIKICAgICAgICBwcmludGYgIiVzXG4iICIkX01TR19TUEVDSUZZX0FOX0VYSVNURU5UX1ZFUlNJT04iID4mMgogICAgICAgIHN1ZG8gYXB0aXR1ZGUgc2VhcmNoICJ+biBecG9zdGdyZXNxbC0ke19QT1NUR1JFU19WRVJTSU9OX1RPX0lOU1RBTEx9LXBvc3RnaXMiID4mMgogICAgICAgIGV4aXQgMQogICAgICBmaTsKICAgICAgX1BPU1RHSVNfUEFDS0FHRT0icG9zdGdyZXNxbC0ke19QT1NUR1JFU19WRVJTSU9OX1RPX0lOU1RBTEx9LXBvc3RnaXMtJHtfUE9TVEdJU19WRVJTSU9OfSIKICAgIGZpOwogICAgUE9TVEdSRVNfUEFDS0FHRVMrPSgKICAgICAgIiRfUE9TVEdJU19QQUNLQUdFIgogICAgKQogIGZpOwogIGlmIFsgJF9JTkNMVURFX1BHQURNSU4gLWVxIDEgXTsgdGhlbgogICAgX0xBU1RFU1RfU1RBQkxFX1BHQURNSU5fUEFDS0FHRT0kKAogICAgICBzdWRvIGFwdGl0dWRlIHNlYXJjaCAifm4gXnBnYWRtaW4iIHwgICAgICAgZ3JlcCAtRW8gIiBwZ2FkbWluWzAtOV17MSwzfS57MCwxfVswLTldezAsM30gIiB8ICAgICAgIGF3ayAneyBwcmludCAkMSB9JyB8ICAgICAgIHNvcnQgLS12ZXJzaW9uLXNvcnQgfCAgICAgICB0YWlsIC1uIDEKICAgICkKICAgIFBPU1RHUkVTX1BBQ0tBR0VTKz0oCiAgICAgICIkX0xBU1RFU1RfU1RBQkxFX1BHQURNSU5fUEFDS0FHRSIKICAgICkKICBmaTsKICBpZiBbICRfSU5DTFVERV9QTFBZVEhPTjMgLWVxIDEgXTsgdGhlbgogICAgX0xBU1RFU1RfU1RBQkxFX1BMUFlUSE9OM19DT01QQVRJQkxFX1BBQ0tBR0U9JCgKICAgICAgc3VkbyBhcHRpdHVkZSBzZWFyY2ggIn5uIF5wb3N0Z3Jlc3FsLXBscHl0aG9uMy0ke19QT1NUR1JFU19WRVJTSU9OX1RPX0lOU1RBTEx9IiB8ICAgICAgIGhlYWQgLW4gMSB8ICAgICAgIGdyZXAgLW8gIiBwb3N0Z3Jlc3FsLXBscHl0aG9uMy0ke19QT1NUR1JFU19WRVJTSU9OX1RPX0lOU1RBTEx9IiB8ICAgICAgIGF3ayAneyBwcmludCAkMSB9JwogICAgKQogICAgaWYgWyAiJF9MQVNURVNUX1NUQUJMRV9QTFBZVEhPTjNfQ09NUEFUSUJMRV9QQUNLQUdFIiAhPSAiIiBdOyB0aGVuCiAgICAgIFBPU1RHUkVTX1BBQ0tBR0VTKz0oCiAgICAgICAgIiRfTEFTVEVTVF9TVEFCTEVfUExQWVRIT04zX0NPTVBBVElCTEVfUEFDS0FHRSIKICAgICAgKQogICAgZmk7CiAgZmk7CiAgcHJpbnRJbmRlbnQKICBwcmludGYgIiAgJXNcbiIgIiQxIgogIGZvciBQQUNLQUdFIGluICIke1BPU1RHUkVTX1BBQ0tBR0VTW0BdfSI7IGRvCiAgICBwcmludEluZGVudAogICAgcHJpbnRmICIgICAgJXMiICIkUEFDS0FHRSIKICAgIGlmIFtbICIkKHN1ZG8gcGFjbWFuIC1RaSAiJFBBQ0tBR0UiIDI+IC9kZXYvbnVsbCB8IGdyZXAgU3RhdHVzKSIgIT0gIlN0YXR1czogaW5zdGFsbCBvayBpbnN0YWxsZWQiIF1dOyB0aGVuCiAgICAgIF9BUFRfSU5TVEFMTF9TVERFUlI9JChzdWRvIHBhY21hbiAtUyAtLSAteSAiJFBBQ0tBR0UiID4gL2Rldi9udWxsIDI+JjEpCiAgICAgIF9BUFRfSU5TVEFMTF9FWElUX0NPREU9JD8KICAgICAgaWYgWyAkX0FQVF9JTlNUQUxMX0VYSVRfQ09ERSAtbmUgMCBdOyB0aGVuCiAgICAgICAgcHJpbnRmICIlcyIgIiRfQVBUX0lOU1RBTExfU1RERVJSIiA+JjIKICAgICAgICBleGl0ICRfQVBUX0lOU1RBTExfRVhJVF9DT0RFCiAgICAgIGZpOwogICAgZmk7CiAgICBwcmludGYgIiBcZVs5Mm1ceEUyXHg5Q1x4OTRcZVszOW1cbiIKICBkb25lCn0KZnVuY3Rpb24gY2hlY2tQb3N0Z3Jlc3FsU2VydmljZUNvbmZpZygpIHsKICBwcmludEluZGVudAogIHByaW50ZiAiICAlc1xuIiAiJF9NU0dfQ0hFQ0tJTkdfUEdfU0VSVklDRV9DT05GSUciCiAgcHJpbnRJbmRlbnQKICBzZXJ2aWNlX3Byb3ZpZGVyPSIkKHBzIC1wIDEgLW8gY29tbT0pIgogIGlmIFsgIiRzZXJ2aWNlX3Byb3ZpZGVyIiA9ICJzeXN0ZW1kIiBdOyB0aGVuCiAgICBzdWRvIHN5c3RlbWN0bCBpcy1lbmFibGVkIHBvc3RncmVzcWwgPiAvZGV2L251bGwgMj4mMQogICAgX1BPU1RHUkVTUUxfU0VSVklDRV9ESVNBQkxFRD0kPwogIGVsc2UKICAgIF9QT1NUR1JFU1FMX1NFUlZJQ0VfRU5BQkxFRF9PVVQ9IiQoCiAgICAgIHN1ZG8gc2VydmljZSBwb3N0Z3Jlc3FsIHN0YXR1cyB8IGdyZXAgIkxvYWRlZDogIiB8IGdyZXAgIi5zZXJ2aWNlOyBlbmFibGVkOyIKICAgICkiCiAgICBfUE9TVEdSRVNRTF9TRVJWSUNFX0RJU0FCTEVEPTEKICAgIGlmIFsgLW4gIiRfUE9TVEdSRVNRTF9TRVJWSUNFX0VOQUJMRURfT1VUIiBdOyB0aGVuCiAgICAgIF9QT1NUR1JFU1FMX1NFUlZJQ0VfRElTQUJMRUQ9MAogICAgZmk7CiAgZmk7CiAgaWYgWyAiJF9QT1NUR1JFU1FMX1NFUlZJQ0VfRElTQUJMRUQiIC1lcSAxIF07IHRoZW4KICAgIHByaW50ZiAiICAgICVzIiAiJF9NU0dfRU5BQkxJTkciCiAgICBpZiBbICIkc2VydmljZV9wcm92aWRlciIgPSAic3lzdGVtZCIgXTsgdGhlbgogICAgICBfRU5BQkxFX1BPU1RHUkVTUUxfU0VSVkVSX09VVFBVVD0iJChzdWRvIHN5c3RlbWN0bCBlbmFibGUgcG9zdGdyZXNxbC5zZXJ2aWNlKSIKICAgICAgX0VOQUJMRV9QT1NUR1JFU1FMX1NFUlZFUl9FWElUX0NPREU9JD8KICAgIGVsc2UKICAgICAgX0VOQUJMRV9QT1NUR1JFU1FMX1NFUlZFUl9PVVRQVVQ9IiQoc3VkbyB1cGRhdGUtcmMuZCBlbmFibGUgcG9zdGdyZXNxbCkiCiAgICAgIF9FTkFCTEVfUE9TVEdSRVNRTF9TRVJWRVJfRVhJVF9DT0RFPSQ/CiAgICBmaTsKICAgIGlmIFsgJF9FTkFCTEVfUE9TVEdSRVNRTF9TRVJWRVJfRVhJVF9DT0RFIC1uZSAwIF07IHRoZW4KICAgICAgcHJpbnRmICIgXGVbOTFtXHhFMlx4OUNceDk1XGVbMzltXG4iID4mMgogICAgICBwcmludGYgIiVzXG4iICIkX01TR19FUlJPUl9FTkFCTElOR19QR19TRVJWSUNFIiA+JjIKICAgICAgcHJpbnRmICIlczogJWRcbiIgIiRfTVNHX0VYSVRfQ09ERSIgIiRfRU5BQkxFX1BPU1RHUkVTUUxfU0VSVkVSX0VYSVRfQ09ERSIgPiYyCiAgICAgIHByaW50ZiAiJXM6ICVzXG4iICIkX01TR19FUlJPUiIgIiRfRU5BQkxFX1BPU1RHUkVTUUxfU0VSVkVSX09VVFBVVCIgPiYyCiAgICAgIGV4aXQgJF9FTkFCTEVfUE9TVEdSRVNRTF9TRVJWRVJfRVhJVF9DT0RFCiAgICBmaTsKICBlbHNlCiAgICBwcmludGYgIiAgICAlcyIgIiRfTVNHX0lUU19FTkFCTEVEIgogIGZpOwogIHByaW50ZiAiIFxlWzkybVx4RTJceDlDXHg5NFxlWzM5bVxuIgogIHByaW50SW5kZW50CiAgaWYgWyAiJHNlcnZpY2VfcHJvdmlkZXIiID0gInN5c3RlbWQiIF07IHRoZW4KICAgIF9QT1NUR1JFU1FMX1NFUlZJQ0VfU1RBVFVTPSQoCiAgICAgIHN1ZG8gc3lzdGVtY3RsIHNob3cgLXAgQWN0aXZlU3RhdGUgcG9zdGdyZXNxbCAgICAgICB8IGN1dCAtZCc9JyAtZjIKICAgICkKICBlbHNlCiAgICBfQ0hFQ0tfQUNUSVZFX09VVFBVVD0iJCgKICAgICAgZWNobyAiJChzdWRvIHNlcnZpY2UgcG9zdGdyZXNxbCBzdGF0dXMgMj4mMSB8fCBlY2hvICIiKSIgICAgICAgfCBncmVwICJBY3RpdmU6ICIgICAgICAgfCBncmVwICIgYWN0aXZlIChydW5uaW5nKSIKICAgICkiCiAgICBfUE9TVEdSRVNRTF9TRVJWSUNFX1NUQVRVUz0iaW5hY3RpdmUiCiAgICBpZiBbIC1uICIkX0NIRUNLX0FDVElWRV9PVVRQVVQiIF07IHRoZW4KICAgICAgX1BPU1RHUkVTUUxfU0VSVklDRV9TVEFUVVM9ImFjdGl2ZSIKICAgIGZpOwogIGZpOwogIGlmIFsgIiRfUE9TVEdSRVNRTF9TRVJWSUNFX1NUQVRVUyIgIT0gImFjdGl2ZSIgXTsgdGhlbgogICAgcHJpbnRmICIgICAgJXMiICIkX01TR19MQVVOQ0hJTkciCiAgICBpZiBbICIkc2VydmljZV9wcm92aWRlciIgPSAic3lzdGVtZCIgXTsgdGhlbgogICAgICBzdWRvIHN5c3RlbWN0bCBzdGFydCBwb3N0Z3Jlc3FsID4gL2Rldi9udWxsCiAgICAgIF9QT1NUR1JFU1FMX1NFUlZJQ0VfU1RBUlRFRD0kPwogICAgZWxzZQogICAgICBzdWRvIHNlcnZpY2UgcG9zdGdyZXNxbCBzdGFydAogICAgICBfUE9TVEdSRVNRTF9TRVJWSUNFX1NUQVJURUQ9JD8KICAgIGZpOwogICAgaWYgWyAkX1BPU1RHUkVTUUxfU0VSVklDRV9TVEFSVEVEIC1uZSAwIF07IHRoZW4KICAgICAgcHJpbnRmICIgXGVbOTFtXHhFMlx4OUNceDk1XGVbMzltXG4iID4mMgogICAgICBwcmludGYgIiVzXG4iICIkX01TR19QR19TRVJWSUNFX0NPVUxETlRfQkVfU1RBUlRFRCIgPiYyCiAgICAgIHByaW50ZiAiJXMgJyVzJy5cbiIgIiRfTVNHX0lUU19JTl9TVEFURSIgIiRfUE9TVEdSRVNRTF9TRVJWSUNFX1NUQVRVUyIgPiYyCiAgICAgIGV4aXQgJF9QT1NUR1JFU1FMX1NFUlZJQ0VfU1RBUlRFRAogICAgZmk7CiAgZWxzZQogICAgcHJpbnRmICIgICAgJXMiICIkX01TR19JVFNfUlVOTklORyIKICBmaTsKICBwcmludGYgIiBcZVs5Mm1ceEUyXHg5Q1x4OTRcZVszOW1cbiIKfQpmdW5jdGlvbiBpbnN0YWxsUG9zdGdyZVNRTCgpIHsKICBwcmludEluZGVudAogIHByaW50ZiAiICAlc1xuIiAiJF9NU0dfSU5TVEFMTElOR19QRyIKICBnZXREZWJpYW5WZXJzaW9uCiAgY2hlY2tEZWJpYW5WZXJzaW9uU3VwcG9ydGVkCiAgaWYgWyAkREVCSUFOX1ZFUlNJT05fU1VQUE9SVEVEIC1lcSAwIF07IHRoZW4KICAgIHByaW50ZiAiJXMgKCVzKS4iICIkX01TR19ESVNUUk9fVkVSU0lPTl9OT1RfU1VQUE9SVEVEIiAiJERFQklBTl9WRVJTSU9OIiA+JjIKICAgIGV4aXQgMQogIGZpOwogIGNsZWFuUHJldmlvdXNTb3VyY2VzCiAgcHVyZ2VQcmV2aW91c1BhY2thZ2VzCiAgY3JlYXRlU291cmNlc0xpc3QKICBzaWduU291cmNlcwogIGdldFBvc3RncmVzVmVyc2lvblRvSW5zdGFsbAogIGluc3RhbGxQb3N0Z3Jlc1BhY2thZ2VzICIkX01TR19JTlNUQUxMSU5HX1BBQ0tBR0VTIgp9CmZ1bmN0aW9uIG1haW4oKSB7CiAgcHJpbnRJbmRlbnQKICBwcmludGYgIiVzXG4iICIkX01TR19DSEVLSU5HX1BHX0VOViIKICBjaGVja1Bvc3RncmVzcWxTZXJ2aWNlRXhpc3RzCiAgaWYgWyAkX1BPU1RHUkVTUUxfU0VSVklDRV9FWElTVFMgLWVxIDAgXTsgdGhlbgogICAgaW5zdGFsbFBvc3RncmVTUUwKICBlbHNlCiAgICBnZXRJbnN0YWxsZWRQb3N0Z3Jlc1ZlcnNpb24KICAgIF9QT1NUR1JFU19WRVJTSU9OX1RPX0lOU1RBTEw9JF9QT1NUR1JFU19WRVJTSU9OX0lOU1RBTExFRAogICAgaW5zdGFsbFBvc3RncmVzUGFja2FnZXMgIiRfTVNHX0NIRUNLSU5HX1BBQ0tBR0VTIgogIGZpOwogIGlmIFsgIiRfQ0hFQ0tfU0VSVklDRSIgLWVxIDEgXTsgdGhlbgogICAgY2hlY2tQb3N0Z3Jlc3FsU2VydmljZUNvbmZpZwogIGZpOwp9CmlmIChyZXR1cm4gMCAyPi9kZXYvbnVsbCk7IHRoZW4KICBleHBvcnRWYXJpYWJsZXMKZWxzZQogIG1haW4KZmk7'
if (return 0 2>/dev/null); then
  source <(printf "%s" "$H" | base64 -d)
else
  echo "$(echo "$H" | base64 -d)" | bash -s -- "$@"
fi;
