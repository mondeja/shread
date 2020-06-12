#!/bin/bash
source <(printf 'IyEvYmluL2Jhc2gKIyAtKi0gRU5DT0RJTkc6IFVURi04IC0qLQpfTVNHX0VYRUNVVEVEX0FTX1NVUEVSVVNFUj0iRXN0ZSBzY3JpcHQgbmVjZXNpdGEgc2VyIGVqZWN1dGFkbyBjb21vIHN1cGVydXN1YXJpby4iCl9NU0dfQURESU5HX1JFUE89IkHDsWFkaWVuZG8gcmVwb3NpdG9yaW8uLi4iCl9NU0dfRVJST1JfUkVUUklFVklOR19QT1NUR1JFU1FMX1BVQkxJQ19LRVk9Ik9jdXJyacOzIHVuIGVycm9yIG9idGVuaWVuZG8gbGEgY2xhdmUgcMO6YmxpY2EgZGUgUG9zdGdyZVNRTCIKX01TR19VUERBVElOR19QQUNLQUdFUz0iQWN0dWFsaXphbmRvIHBhcXVldGVzLi4uIgpfTVNHX1JFTU9WSU5HX1BSRVZJT1VTX1BBQ0tBR0VTPSJFbGltaW5hbmRvIHBhcXVldGVzIGFudGVyaW9yZXMuLi4iCl9NU0dfUkVUUklFVklOR19MQVNURVNUX1NUQUJMRV9WRVJTSU9OPSJPYnRlbmllbmRvIGxhIMO6bHRpbWEgdmVyc2nDs24gZXN0YWJsZSBkaXNwb25pYmxlLi4uIgpfTVNHX0NIRUNLSU5HX0FWQUlMQUJMRV9WRVJTSU9OPSJDb21wcm9iYW5kbyB2ZXJzacOzbiBkaXNwb25pYmxlIgpfTVNHX1ZFUlNJT05fTk9UX09GRklDSUFMTFlfQVZBSUxBQkxFPSJWZXJzacOzbiBubyBkaXNwb25pYmxlIGVuIGxvcyByZXBvc2l0b3Jpb3MgZGUgUG9zdGdyZVNRTCBvZmljaWFsZXMiCl9NU0dfVkVSU0lPTl9PRl9QT1NUR0lTX1RSWUlOR19UT19JTlNUQUxMPSJMYSB2ZXJzacOzbiBkZSBQb3N0Z2lzIHF1ZSBlc3TDoXMgaW50ZW50YW5kbyBpbnN0YWxhciIKX01TR19ET0VTTlRfRVhJU1RTX0FTX0FQVF9QR19QQUNLQUdFPSJubyBleGlzdGUgY29tbyB1biBwYXF1ZXRlIEFQVCBwYXJhIFBvc3RncmVTUUwiCl9NU0dfVEhFX1BBQ0tBR0U9ImVsIHBhcXVldGUiCl9NU0dfRE9FU05UX0VYSVNUU19JTl9QR19PRkZJQ0lBTF9SRVBPUz0ibm8gZXhpc3RlIGVuIGxvcyByZXBvc2l0b3Jpb3Mgb2ZpY2lhbGVzIGRlIFBvc3RncmVTUUwuIgpfTVNHX1NQRUNJRllfQU5fRVhJU1RFTlRfVkVSU0lPTj0iRXNwZWNpZmljYSB1bmEgdmVyc2nDs24gZXhpc3RlbnRlIGRlIGVudHJlIGxhcyBzaWd1aWVudGVzIHVzYW5kbyBlbCBwYXLDoW1ldHJvICctLXBvc3RnaXMtdmVyc2lvbic6IgpfTVNHX0NIRUNLSU5HX1BHX1NFUlZJQ0VfQ09ORklHPSJDb21wcm9iYW5kbyBsYSBjb25maWd1cmFjacOzbiBkZWwgc2VydmljaW8gJ3Bvc3RncmVzcWwnLi4uIgpfTVNHX0VOQUJMSU5HPSJIYWJpbGl0YW5kby4uLiIKX01TR19JVFNfRU5BQkxFRD0iRXN0w6EgaGFiaWxpdGFkbyIKX01TR19FUlJPUl9FTkFCTElOR19QR19TRVJWSUNFPSJPY3VycmnDsyB1biBlcnJvciBoYWJpbGl0YW5kbyBlbCBzZXJ2aWNpbyAncG9zdGdyZXNxbCcuIgpfTVNHX0VSUk9SPSJFcnJvciIKX01TR19FWElUX0NPREU9IkPDs2RpZ28gZGUgc2FsaWRhIgpfTVNHX0xBVU5DSElORz0iRWplY3V0YW5kby4uLiIKX01TR19QR19TRVJWSUNFX0NPVUxETlRfQkVfU1RBUlRFRD0iRWwgc2VydmljaW8gJ3Bvc3RncmVzcWwnIG5vIHB1ZG8gc2VyIGluaWNpYWRvLiIKX01TR19JVFNfSU5fU1RBVEU9IlNlIGVuY3VlbnRyYSBlbiBlc3RhZG8iCl9NU0dfSVRTX1JVTk5JTkc9IkVzdGEgZW4gZWplY3VjacOzbiIKX01TR19JTlNUQUxMSU5HX1BHPSJJbnN0YWxhbmRvIFBvc3RncmVTUUwuLi4iCl9NU0dfSU5TVEFMTElOR19QQUNLQUdFUz0iSW5zdGFsYW5kbyBwYXF1ZXRlcy4uLiIKX01TR19DSEVLSU5HX1BHX0VOVj0iQ29tcHJvYmFuZG8gZW50b3JubyBQb3N0Z3JlU1FMLi4uIgpfTVNHX0NIRUNLSU5HX1BBQ0tBR0VTPSJDb21wcm9iYW5kbyBwYXF1ZXRlcy4uLiIKX01TR19ESVNUUk9fVkVSU0lPTl9OT1RfU1VQUE9SVEVEPSJUdSB2ZXJzacOzbiBkZSBEZWJpYW4vVWJ1bnR1IG5vIGVzdMOhIHNvcG9ydGFkYSBwb3IgbG9zIHJlcG9zaXRvcmlvcyBvZmljaWFsZXMgZGUgUG9zdGdyZVNRTCIKaWYgW1sgJCgvdXNyL2Jpbi9pZCAtdSkgLW5lIDAgXV07IHRoZW4KICBwcmludGYgIiVzXG4iICIkX01TR19FWEVDVVRFRF9BU19TVVBFUlVTRVIiID4mMgogIGV4aXQgMQpmaTsKSU5ERU5UX1NUUklORz0iIgpfVkVSU0lPTj0iIgpfSU5DTFVERV9QT1NUR0lTPTAKX1BPU1RHSVNfVkVSU0lPTj0iIgpfSU5DTFVERV9QR0FETUlOPTAKX0lOQ0xVREVfUExQWVRIT04zPTAKZm9yIGFyZyBpbiAiJEAiOyBkbwogIGNhc2UgJGFyZyBpbgogICAgLS12ZXJzaW9uKQogICAgc2hpZnQKICAgIF9WRVJTSU9OPSQxCiAgICBzaGlmdAogICAgOzsKICAgIC0taW5zdGFsbC1wb3N0Z2lzKQogICAgX0lOQ0xVREVfUE9TVEdJUz0xCiAgICBzaGlmdAogICAgOzsKICAgIC0tcG9zdGdpcy12ZXJzaW9uKQogICAgc2hpZnQKICAgIF9QT1NUR0lTX1ZFUlNJT049JDEKICAgIHNoaWZ0CiAgICA7OwogICAgLS1pbnN0YWxsLXBnYWRtaW4pCiAgICBfSU5DTFVERV9QR0FETUlOPTEKICAgIHNoaWZ0CiAgICA7OwogICAgLS1pbnN0YWxsLXBscHl0aG9uMykKICAgIF9JTkNMVURFX1BMUFlUSE9OMz0xCiAgICBzaGlmdAogICAgOzsKICAgIC0taW5kZW50KQogICAgc2hpZnQKICAgIElOREVOVF9TVFJJTkc9JDEKICAgIHNoaWZ0CiAgICA7OwogIGVzYWMKZG9uZQpmdW5jdGlvbiBwcmludEluZGVudCgpIHsKICBwcmludGYgIiVzIiAiJElOREVOVF9TVFJJTkciCn0KaWYgWyAiJChjb21tYW5kIC12IHBhY21hbikiID0gIiIgXTsgdGhlbgogIFNDUklQVF9GSUxFTkFNRT0iJChiYXNlbmFtZSAiJDAiKSIKICBpZiBbICIkU0NSSVBUX0ZJTEVOQU1FIiA9ICJtYWluLnNoIiBdOyB0aGVuCiAgICBmaWxlcGF0aD0ic3JjL3VuaXgvXy9kb3dubG9hZC9wYWNhcHQvbWFpbi5zaCIKICAgIGJhc2ggIiRmaWxlcGF0aCIgPiAvZGV2L251bGwKICBlbHNlCiAgICB1cmw9Imh0dHBzOi8vbW9uZGVqYS5naXRodWIuaW8vc2hyZWFkL3VuaXgvXy9kb3dubG9hZC9wYWNhcHQvJFNDUklQVF9GSUxFTkFNRSIKICAgIGN1cmwgLXNMICIkdXJsIiB8IHN1ZG8gYmFzaCAtID4gL2Rldi9udWxsCiAgZmk7CmZpOwpJTlNUQUxMQVRJT05fREVQRU5ERU5DSUVTPSgKICAid2dldCIKICAiYXB0aXR1ZGUiCikKZm9yIERFUCBpbiAiJHtJTlNUQUxMQVRJT05fREVQRU5ERU5DSUVTW0BdfSI7IGRvCiAgaWYgW1sgIiQoc3VkbyBwYWNtYW4gLVFpICIkREVQIiAyPiAvZGV2L251bGwgfCBncmVwIFN0YXR1cykiICE9ICJTdGF0dXM6IGluc3RhbGwgb2sgaW5zdGFsbGVkIiBdXTsgdGhlbgogICAgc3VkbyBwYWNtYW4gLVMgIiRERVAiID4gL2Rldi9udWxsIHx8IGV4aXQgJD8KICBmaTsKZG9uZTsKX1BHREdfU09VUkNFU19MSVNUX0ZJTEVQQVRIPSIvZXRjL2FwdC9zb3VyY2VzLmxpc3QuZC9wZ2RnIgpERUJJQU5fVkVSU0lPTj0iJChsc2JfcmVsZWFzZSAtYyAtcykiCmZ1bmN0aW9uIGNoZWNrRGViaWFuVmVyc2lvblN1cHBvcnRlZCgpIHsKICBERUJJQU5fVkVSU0lPTl9TVVBQT1JURUQ9MAogIF9HRVRfREVCSUFOX1ZFUlNJT05fU1VQUE9SVEVEPSQoCiAgICBjdXJsIC1zTCBodHRwOi8vYXB0LnBvc3RncmVzcWwub3JnL3B1Yi9yZXBvcy9hcHQvZGlzdHMvIHwgXAogICAgZ3JlcCAtbyAiJERFQklBTl9WRVJTSU9OLXBnZGciCiAgKQogIGlmIFsgIiRfR0VUX0RFQklBTl9WRVJTSU9OX1NVUFBPUlRFRCIgIT0gIiIgXTsgdGhlbgogICAgREVCSUFOX1ZFUlNJT05fU1VQUE9SVEVEPTEKICBmaTsKfQpmdW5jdGlvbiBzaWduU291cmNlcygpIHsKICBwcmludEluZGVudAogIHByaW50ZiAiICAgICVzIiAiJF9NU0dfQURESU5HX1JFUE8iCiAgU0lHTl9QR0RHX0dQR19LRVlfU1RERVJSPSQoCiAgICB3Z2V0IC1xTyAtIGh0dHBzOi8vd3d3LnBvc3RncmVzcWwub3JnL21lZGlhL2tleXMvQUNDQzRDRjguYXNjIHwgXAogICAgc3VkbyBhcHQta2V5IGFkZCAtIDI+JjEgPiAvZGV2L251bGwpCiAgU0lHTl9QR0RHX0dQR19LRVlfRVhJVF9DT0RFPSQ/CiAgaWYgWyAkU0lHTl9QR0RHX0dQR19LRVlfRVhJVF9DT0RFIC1uZSAwIF07IHRoZW4KICAgIHByaW50ZiAiIFxlWzkxbVx4RTJceDlDXHg5NVxlWzM5bVxuIiA+JjIKICAgIHByaW50ZiAiXG4lczpcbiIgIiRfTVNHX0VSUk9SX1JFVFJJRVZJTkdfUE9TVEdSRVNRTF9QVUJMSUNfS0VZIiA+JjIKICAgIHByaW50ZiAiJXNcbiIgIiRTSUdOX1BHREdfR1BHX0tFWV9TVERFUlIiID4mMgogICAgZXhpdCAkU0lHTl9QR0RHX0dQR19LRVlfRVhJVF9DT0RFCiAgZmk7CiAgcHJpbnRmICIgXGVbOTJtXHhFMlx4OUNceDk0XGVbMzltXG4iCiAgcHJpbnRJbmRlbnQKICBwcmludGYgIiAgICAlcyIgIiRfTVNHX1VQREFUSU5HX1BBQ0tBR0VTIgogIHN1ZG8gcGFjbWFuIHVwZGF0ZSA+IC9kZXYvbnVsbAogIHByaW50ZiAiIFxlWzkybVx4RTJceDlDXHg5NFxlWzM5bVxuIgp9CmZ1bmN0aW9uIHB1cmdlUHJldmlvdXNQYWNrYWdlcygpIHsKICBwcmludEluZGVudAogIHByaW50ZiAiICAgICVzIiAiJF9NU0dfUkVNT1ZJTkdfUFJFVklPVVNfUEFDS0FHRVMiCiAgc3VkbyBwYWNtYW4gLVJucyBwb3N0Z3Jlc3FsID4gL2Rldi9udWxsIHx8IGV4aXQgJD8KICBwcmludGYgIiBcZVs5Mm1ceEUyXHg5Q1x4OTRcZVszOW1cbiIKfQpmdW5jdGlvbiBjbGVhblByZXZpb3VzU291cmNlcygpIHsKICBfUEdER19TT1VSQ0VTX0VYVFM9KAogICAgImxpc3QiCiAgICAiZGlzdFVwZ3JhZGUiCiAgICAic2F2ZSIKICApCiAgZm9yIEVYVCBpbiAiJHtfUEdER19TT1VSQ0VTX0VYVFNbQF19IjsgZG8KICAgIGlmIFsgLWYgIiR7X1BHREdfU09VUkNFU19MSVNUX0ZJTEVQQVRIfS4ke0VYVH0iIF07IHRoZW4KICAgICAgc3VkbyBybSAtZiAiJHtfUEdER19TT1VSQ0VTX0xJU1RfRklMRVBBVEh9LiR7RVhUfSIgPiAvZGV2L251bGwgfHwgZXhpdCAkPwogICAgZmk7CiAgZG9uZQp9CmZ1bmN0aW9uIGNyZWF0ZVNvdXJjZXNMaXN0KCkgewogIHRvdWNoICIkX1BHREdfU09VUkNFU19MSVNUX0ZJTEVQQVRILmxpc3QiCiAgZWNobyAiZGViIGh0dHA6Ly9hcHQucG9zdGdyZXNxbC5vcmcvcHViL3JlcG9zL2FwdC8gJERFQklBTl9WRVJTSU9OLXBnZGcgbWFpbiIgPiBcCiAgICAiJF9QR0RHX1NPVVJDRVNfTElTVF9GSUxFUEFUSC5saXN0Igp9CmZ1bmN0aW9uIGNoZWNrUG9zdGdyZXNxbFNlcnZpY2VFeGlzdHMoKSB7CiAgX1BPU1RHUkVTUUxfU0VSVklDRV9FWElTVFM9MQogIGlmICEgc3VkbyBzeXN0ZW1jdGwgc3RhdHVzIHBvc3RncmVzcWwgPiAvZGV2L251bGwgMj4mMTsgdGhlbgogICAgX1BPU1RHUkVTUUxfU0VSVklDRV9FWElTVFM9MAogIGZpOwp9Cl9MQVNURVNUX1NUQUJMRV9QT1NUR1JFU19WRVJTSU9OPSIiCmZ1bmN0aW9uIGdldExhc3Rlc3RTdGFibGVQb3N0Z3Jlc1ZlcnNpb24oKSB7CiAgX0xBU1RFU1RfU1RBQkxFX1BPU1RHUkVTX1ZFUlNJT049JCgKICAgIHN1ZG8gYXB0aXR1ZGUgc2VhcmNoICJ+biBecG9zdGdyZXNxbCIgfCBcCiAgICBncmVwIC1FbyAiIHBvc3RncmVzcWwtWzAtOV17MSwzfS57MCwxfVswLTldezEsM30gIiB8IFwKICAgIGF3ayAneyBwcmludCAkMSB9JyB8IFwKICAgIHNvcnQgLS12ZXJzaW9uLXNvcnQgfCBcCiAgICB0YWlsIC1uIDEgfCBcCiAgICBjdXQgLWQnLScgLWYyCiAgKQp9Cl9QT1NUR1JFU19WRVJTSU9OX1RPX0lOU1RBTEw9IiIKZnVuY3Rpb24gZ2V0UG9zdGdyZXNWZXJzaW9uVG9JbnN0YWxsKCkgewogIGlmIFsgIiRfVkVSU0lPTiIgPSAiIiBdOyB0aGVuCiAgICBwcmludEluZGVudAogICAgcHJpbnRmICIgICVzIiAiJF9NU0dfUkVUUklFVklOR19MQVNURVNUX1NUQUJMRV9WRVJTSU9OIgogICAgZ2V0TGFzdGVzdFN0YWJsZVBvc3RncmVzVmVyc2lvbgogICAgX1BPU1RHUkVTX1ZFUlNJT05fVE9fSU5TVEFMTD0iJF9MQVNURVNUX1NUQUJMRV9QT1NUR1JFU19WRVJTSU9OIgogICAgcHJpbnRmICIgKHYlcykiICIkX1BPU1RHUkVTX1ZFUlNJT05fVE9fSU5TVEFMTCIKICBlbHNlCiAgICBwcmludEluZGVudAogICAgcHJpbnRmICIgICVzICglcykuLi4iICIkX01TR19DSEVDS0lOR19BVkFJTEFCTEVfVkVSU0lPTiIgIiRfVkVSU0lPTiIKICAgIF9QT1NUR1JFU19WRVJTSU9OX1RPX0lOU1RBTEw9JCgKICAgICAgc3VkbyBhcHRpdHVkZSBzZWFyY2ggIn5uIF5wb3N0Z3Jlc3FsIiB8IFwKICAgICAgZ3JlcCAtRW8gIiBwb3N0Z3Jlc3FsLVswLTldezEsM30uezAsMX1bMC05XXsxLDN9ICIgfCBcCiAgICAgIGF3ayAneyBwcmludCAkMSB9JyB8IFwKICAgICAgZ3JlcCAtbyAiJF9WRVJTSU9OIiB8IFwKICAgICAgdHIgLWQgJ1xuJwogICAgKQogICAgaWYgWyAiJF9QT1NUR1JFU19WRVJTSU9OX1RPX0lOU1RBTEwiID0gIiIgXTsgdGhlbgogICAgICBwcmludGYgIiBcZVs5MW1ceEUyXHg5Q1x4OTVcZVszOW1cbiIgPiYyCiAgICAgIHByaW50ZiAiICAgICVzICglcykuXG4iICIkX01TR19WRVJTSU9OX05PVF9PRkZJQ0lBTExZX0FWQUlMQUJMRSIgIiRfVkVSU0lPTiIgPiYyCiAgICAgIGV4aXQgMQogICAgZmk7CiAgZmk7CiAgcHJpbnRmICIgXGVbOTJtXHhFMlx4OUNceDk0XGVbMzltXG4iCn0KX1BPU1RHUkVTX1ZFUlNJT05fSU5TVEFMTEVEPSIiCmZ1bmN0aW9uIGdldEluc3RhbGxlZFBvc3RncmVzVmVyc2lvbigpIHsKICBfUE9TVEdSRVNfVkVSU0lPTl9JTlNUQUxMRUQ9JCgKICAgIHBzcWwgLS12ZXJzaW9uIHwgXAogICAgY3V0IC1kJyAnIC1mMyB8IFwKICAgIGN1dCAtZCcuJyAtZjEgfHwgZXhpdCAkPwogICkKfQpmdW5jdGlvbiBpbnN0YWxsUG9zdGdyZXNQYWNrYWdlcygpIHsKICBQT1NUR1JFU19QQUNLQUdFUz0oCiAgICAicG9zdGdyZXNxbC0kX1BPU1RHUkVTX1ZFUlNJT05fVE9fSU5TVEFMTCIKICAgICJwb3N0Z3Jlc3FsLWNsaWVudC0kX1BPU1RHUkVTX1ZFUlNJT05fVE9fSU5TVEFMTCIKICAgICJwb3N0Z3Jlc3FsLWNvbnRyaWItJF9QT1NUR1JFU19WRVJTSU9OX1RPX0lOU1RBTEwiCiAgICAicG9zdGdyZXNxbC1zZXJ2ZXItZGV2LSRfUE9TVEdSRVNfVkVSU0lPTl9UT19JTlNUQUxMIgogICAgImxpYnBxLWRldiIKICApCiAgaWYgWyAkX0lOQ0xVREVfUE9TVEdJUyAtZXEgMSBdOyB0aGVuCiAgICBpZiBbICIkX1BPU1RHSVNfVkVSU0lPTiIgPSAiIiBdOyB0aGVuCiAgICAgIF9QT1NUR0lTX1BBQ0tBR0U9JCgKICAgICAgICBzdWRvIGFwdGl0dWRlIHNlYXJjaCAifm4gXnBvc3RncmVzcWwtJHtfUE9TVEdSRVNfVkVSU0lPTl9UT19JTlNUQUxMfS1wb3N0Z2lzIiB8IFwKICAgICAgICBncmVwIC1FbyAiIHBvc3RncmVzcWwtJHtfUE9TVEdSRVNfVkVSU0lPTl9UT19JTlNUQUxMfS1wb3N0Z2lzLVswLTldezEsM30uezAsMX1bMC05XXswLDN9ICIgfCBcCiAgICAgICAgYXdrICd7IHByaW50ICQxIH0nIHwgXAogICAgICAgIHNvcnQgLS12ZXJzaW9uLXNvcnQgfCBcCiAgICAgICAgdGFpbCAtbiAxCiAgICAgICkKICAgIGVsc2UKICAgICAgX1BPU1RHSVNfUEFDS0FHRV9FWElTVFM9JCgKICAgICAgICBzdWRvIGFwdGl0dWRlIHNlYXJjaCAifm4gXnBvc3RncmVzcWwtJHtfUE9TVEdSRVNfVkVSU0lPTl9UT19JTlNUQUxMfS1wb3N0Z2lzLSR7X1BPU1RHSVNfVkVSU0lPTn0iCiAgICAgICkKICAgICAgaWYgWyAiJF9QT1NUR0lTX1BBQ0tBR0VfRVhJU1RTIiA9ICIiIF07IHRoZW4KICAgICAgICBwcmludGYgIlxuJXMgKHYlcykiICIkX01TR19WRVJTSU9OX09GX1BPU1RHSVNfVFJZSU5HX1RPX0lOU1RBTEwiICIkX1BPU1RHSVNfVkVSU0lPTiIgPiYyCiAgICAgICAgcHJpbnRmICIgJXMgdiVzIiAiJF9NU0dfRE9FU05UX0VYSVNUU19BU19BUFRfUEdfUEFDS0FHRSIgIiRfUE9TVEdSRVNfVkVSU0lPTl9UT19JTlNUQUxMIiA+JjIKICAgICAgICBwcmludGYgIiAoJXMgJ3Bvc3RncmVzcWwtJXMtcG9zdGdpcyVzJykiICIkX01TR19USEVfUEFDS0FHRSIgIiRfUE9TVEdSRVNfVkVSU0lPTl9UT19JTlNUQUxMIiAiJF9QT1NUR0lTX1ZFUlNJT04iID4mMgogICAgICAgIHByaW50ZiAiICVzXG4iICIkX01TR19ET0VTTlRfRVhJU1RTX0lOX1BHX09GRklDSUFMX1JFUE9TIiA+JjIKICAgICAgICBwcmludGYgIiVzXG4iICIkX01TR19TUEVDSUZZX0FOX0VYSVNURU5UX1ZFUlNJT04iID4mMgogICAgICAgIHN1ZG8gYXB0aXR1ZGUgc2VhcmNoICJ+biBecG9zdGdyZXNxbC0ke19QT1NUR1JFU19WRVJTSU9OX1RPX0lOU1RBTEx9LXBvc3RnaXMiID4mMgogICAgICAgIGV4aXQgMQogICAgICBmaTsKICAgICAgX1BPU1RHSVNfUEFDS0FHRT0icG9zdGdyZXNxbC0ke19QT1NUR1JFU19WRVJTSU9OX1RPX0lOU1RBTEx9LXBvc3RnaXMtJHtfUE9TVEdJU19WRVJTSU9OfSIKICAgIGZpOwogICAgUE9TVEdSRVNfUEFDS0FHRVMrPSgKICAgICAgIiRfUE9TVEdJU19QQUNLQUdFIgogICAgKQogIGZpOwogIGlmIFsgJF9JTkNMVURFX1BHQURNSU4gLWVxIDEgXTsgdGhlbgogICAgX0xBU1RFU1RfU1RBQkxFX1BHQURNSU5fUEFDS0FHRT0kKAogICAgICBzdWRvIGFwdGl0dWRlIHNlYXJjaCAifm4gXnBnYWRtaW4iIHwgXAogICAgICBncmVwIC1FbyAiIHBnYWRtaW5bMC05XXsxLDN9LnswLDF9WzAtOV17MCwzfSAiIHwgXAogICAgICBhd2sgJ3sgcHJpbnQgJDEgfScgfCBcCiAgICAgIHNvcnQgLS12ZXJzaW9uLXNvcnQgfCBcCiAgICAgIHRhaWwgLW4gMQogICAgKQogICAgUE9TVEdSRVNfUEFDS0FHRVMrPSgKICAgICAgIiRfTEFTVEVTVF9TVEFCTEVfUEdBRE1JTl9QQUNLQUdFIgogICAgKQogIGZpOwogIGlmIFsgJF9JTkNMVURFX1BMUFlUSE9OMyAtZXEgMSBdOyB0aGVuCiAgICBfTEFTVEVTVF9TVEFCTEVfUExQWVRIT04zX0NPTVBBVElCTEVfUEFDS0FHRT0kKAogICAgICBzdWRvIGFwdGl0dWRlIHNlYXJjaCAifm4gXnBvc3RncmVzcWwtcGxweXRob24zLSR7X1BPU1RHUkVTX1ZFUlNJT05fVE9fSU5TVEFMTH0iIHwgXAogICAgICBoZWFkIC1uIDEgfCBcCiAgICAgIGdyZXAgLW8gIiBwb3N0Z3Jlc3FsLXBscHl0aG9uMy0xMiIgfCBcCiAgICAgIGF3ayAneyBwcmludCAkMSB9JwogICAgKQogICAgaWYgWyAiJF9MQVNURVNUX1NUQUJMRV9QTFBZVEhPTjNfQ09NUEFUSUJMRV9QQUNLQUdFIiAhPSAiIiBdOyB0aGVuCiAgICAgIFBPU1RHUkVTX1BBQ0tBR0VTKz0oCiAgICAgICAgIiRfTEFTVEVTVF9TVEFCTEVfUExQWVRIT04zX0NPTVBBVElCTEVfUEFDS0FHRSIKICAgICAgKQogICAgZmk7CiAgZmk7CiAgcHJpbnRJbmRlbnQKICBwcmludGYgIiAgJXNcbiIgIiQxIgogIGZvciBQQUNLQUdFIGluICIke1BPU1RHUkVTX1BBQ0tBR0VTW0BdfSI7IGRvCiAgICBwcmludEluZGVudAogICAgcHJpbnRmICIgICAgJXMiICIkUEFDS0FHRSIKICAgIGlmIFtbICIkKGRwa2cgLXMgIiRQQUNLQUdFIiAyPiAvZGV2L251bGwgfCBncmVwIFN0YXR1cykiICE9ICJTdGF0dXM6IGluc3RhbGwgb2sgaW5zdGFsbGVkIiBdXTsgdGhlbgogICAgICBfQVBUX0lOU1RBTExfU1RERVJSPSQoCiAgICAgICAgc3VkbyBhcHQtZ2V0IGluc3RhbGwgLXkgLXFxcSAiJFBBQ0tBR0UiIDI+JjEKICAgICAgKQogICAgICBfQVBUX0lOU1RBTExfRVhJVF9DT0RFPSQ/CiAgICAgIGlmIFsgJF9BUFRfSU5TVEFMTF9FWElUX0NPREUgLW5lIDAgXTsgdGhlbgogICAgICAgIHByaW50ZiAiJXMiICIkX0FQVF9JTlNUQUxMX1NUREVSUiIgPiYyCiAgICAgICAgZXhpdCAkX0FQVF9JTlNUQUxMX0VYSVRfQ09ERQogICAgICBmaTsKICAgIGZpOwogICAgcHJpbnRmICIgXGVbOTJtXHhFMlx4OUNceDk0XGVbMzltXG4iCiAgZG9uZQp9CmZ1bmN0aW9uIGNoZWNrUG9zdGdyZXNxbFNlcnZpY2VDb25maWcoKSB7CiAgcHJpbnRJbmRlbnQKICBwcmludGYgIiAgJXNcbiIgIiRfTVNHX0NIRUNLSU5HX1BHX1NFUlZJQ0VfQ09ORklHIgogIHByaW50SW5kZW50CiAgX1BPU1RHUkVTUUxfU0VSVklDRV9FTkFCTEVEX0ZPVU5EPSQoCiAgICBzeXN0ZW1jdGwgbGlzdC11bml0LWZpbGVzIHwgXAogICAgZ3JlcCBlbmFibGVkIHwgXAogICAgZ3JlcCBwb3N0Z3Jlc3FsKQogIGlmIFsgIiRfUE9TVEdSRVNRTF9TRVJWSUNFX0VOQUJMRURfRk9VTkQiID0gIiIgXTsgdGhlbgogICAgcHJpbnRmICIgICAgJXMiICIkX01TR19FTkFCTElORyIKICAgIF9FTkFCTEVfUE9TVEdSRVNRTF9TRVJWRVJfT1VUUFVUPSQoCiAgICAgIHN1ZG8gc3lzdGVtY3RsIGVuYWJsZSBwb3N0Z3Jlc3FsLnNlcnZpY2UgMj4mMSA+IC9kZXYvbnVsbAogICAgKQogICAgX0VOQUJMRV9QT1NUR1JFU1FMX1NFUlZFUl9FWElUX0NPREU9JD8KICAgIGlmIFsgJF9FTkFCTEVfUE9TVEdSRVNRTF9TRVJWRVJfRVhJVF9DT0RFIC1uZSAwIF07IHRoZW4KICAgICAgcHJpbnRmICIgXGVbOTFtXHhFMlx4OUNceDk1XGVbMzltXG4iID4mMgogICAgICBwcmludGYgIiVzXG4iICIkX01TR19FUlJPUl9FTkFCTElOR19QR19TRVJWSUNFIiA+JjIKICAgICAgcHJpbnRmICIlczogJWRcbiIgIiRfTVNHX0VYSVRfQ09ERSIgIiRfRU5BQkxFX1BPU1RHUkVTUUxfU0VSVkVSX0VYSVRfQ09ERSIgPiYyCiAgICAgIHByaW50ZiAiJXM6ICVzXG4iICIkX01TR19FUlJPUiIgIiRfRU5BQkxFX1BPU1RHUkVTUUxfU0VSVkVSX09VVFBVVCIgPiYyCiAgICAgIGV4aXQgJF9FTkFCTEVfUE9TVEdSRVNRTF9TRVJWRVJfRVhJVF9DT0RFCiAgICBmaTsKICBlbHNlCiAgICBwcmludGYgIiAgICAlcyIgIiRfTVNHX0lUU19FTkFCTEVEIgogIGZpOwogIHByaW50ZiAiIFxlWzkybVx4RTJceDlDXHg5NFxlWzM5bVxuIgogIHByaW50SW5kZW50CiAgX1BPU1RHUkVTUUxfU0VSVklDRV9TVEFUVVM9JCgKICAgIHN1ZG8gc3lzdGVtY3RsIHNob3cgLXAgQWN0aXZlU3RhdGUgcG9zdGdyZXNxbCB8IFwKICAgIGN1dCAtZCc9JyAtZjIgfCBcCiAgICB0ciAtZCAnXG4nKQogIGlmIFsgIiRfUE9TVEdSRVNRTF9TRVJWSUNFX1NUQVRVUyIgIT0gImFjdGl2ZSIgXTsgdGhlbgogICAgcHJpbnRmICIgICAgJXMiICIkX01TR19MQVVOQ0hJTkciCiAgICBzdWRvIHN5c3RlbWN0bCBzdGFydCBwb3N0Z3Jlc3FsID4gL2Rldi9udWxsCiAgICBfUE9TVEdSRVNRTF9TRVJWSUNFX1NUQVJURUQ9JD8KICAgIGlmIFsgJF9QT1NUR1JFU1FMX1NFUlZJQ0VfU1RBUlRFRCAtbmUgMCBdOyB0aGVuCiAgICAgIHByaW50ZiAiIFxlWzkxbVx4RTJceDlDXHg5NVxlWzM5bVxuIiA+JjIKICAgICAgcHJpbnRmICIlc1xuIiAiJF9NU0dfUEdfU0VSVklDRV9DT1VMRE5UX0JFX1NUQVJURUQiID4mMgogICAgICBwcmludGYgIiVzICclcycuXG4iICIkX01TR19JVFNfSU5fU1RBVEUiICIkX1BPU1RHUkVTUUxfU0VSVklDRV9TVEFUVVMiID4mMgogICAgICBleGl0ICRfUE9TVEdSRVNRTF9TRVJWSUNFX1NUQVJURUQKICAgIGZpOwogIGVsc2UKICAgIHByaW50ZiAiICAgICVzIiAiJF9NU0dfSVRTX1JVTk5JTkciCiAgZmk7CiAgcHJpbnRmICIgXGVbOTJtXHhFMlx4OUNceDk0XGVbMzltXG4iCn0KZnVuY3Rpb24gaW5zdGFsbFBvc3RncmVTUUwoKSB7CiAgcHJpbnRJbmRlbnQKICBwcmludGYgIiAgJXNcbiIgIiRfTVNHX0lOU1RBTExJTkdfUEciCiAgY2hlY2tEZWJpYW5WZXJzaW9uU3VwcG9ydGVkCiAgaWYgWyAkREVCSUFOX1ZFUlNJT05fU1VQUE9SVEVEIC1lcSAwIF07IHRoZW4KICAgIHByaW50ZiAiJXMgKCVzKS4iICIkX01TR19ESVNUUk9fVkVSU0lPTl9OT1RfU1VQUE9SVEVEIiAiJERFQklBTl9WRVJTSU9OIiA+JjIKICAgIGV4aXQgMQogIGZpOwogIGNsZWFuUHJldmlvdXNTb3VyY2VzCiAgcHVyZ2VQcmV2aW91c1BhY2thZ2VzCiAgY3JlYXRlU291cmNlc0xpc3QKICBzaWduU291cmNlcwogIGdldFBvc3RncmVzVmVyc2lvblRvSW5zdGFsbAogIGluc3RhbGxQb3N0Z3Jlc1BhY2thZ2VzICIkX01TR19JTlNUQUxMSU5HX1BBQ0tBR0VTIgp9CmZ1bmN0aW9uIG1haW4oKSB7CiAgcHJpbnRJbmRlbnQKICBwcmludGYgIiVzXG4iICIkX01TR19DSEVLSU5HX1BHX0VOViIKICBjaGVja1Bvc3RncmVzcWxTZXJ2aWNlRXhpc3RzCiAgaWYgWyAkX1BPU1RHUkVTUUxfU0VSVklDRV9FWElTVFMgLWVxIDAgXTsgdGhlbgogICAgaW5zdGFsbFBvc3RncmVTUUwKICBlbHNlCiAgICBnZXRJbnN0YWxsZWRQb3N0Z3Jlc1ZlcnNpb24KICAgIF9QT1NUR1JFU19WRVJTSU9OX1RPX0lOU1RBTEw9JF9QT1NUR1JFU19WRVJTSU9OX0lOU1RBTExFRAogICAgaW5zdGFsbFBvc3RncmVzUGFja2FnZXMgIiRfTVNHX0NIRUNLSU5HX1BBQ0tBR0VTIgogIGZpOwogIGNoZWNrUG9zdGdyZXNxbFNlcnZpY2VDb25maWcKfQptYWluCg==' | base64 -d)
