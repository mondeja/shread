#!/bin/bash
source <(printf 'X01TR19FWEVDVVRFRF9BU19TVVBFUlVTRVI9IkVzdGUgc2NyaXB0IG5lY2VzaXRhIHNlciBlamVjdXRhZG8gY29tbyBzdXBlcnVzdWFyaW8uIgpfTVNHX0FERElOR19SRVBPPSJBw7FhZGllbmRvIHJlcG9zaXRvcmlvLi4uIgpfTVNHX0VSUk9SX1JFVFJJRVZJTkdfUE9TVEdSRVNRTF9QVUJMSUNfS0VZPSJPY3VycmnDsyB1biBlcnJvciBvYnRlbmllbmRvIGxhIGNsYXZlIHDDumJsaWNhIGRlIFBvc3RncmVTUUwiCl9NU0dfVVBEQVRJTkdfUEFDS0FHRVM9IkFjdHVhbGl6YW5kbyBwYXF1ZXRlcy4uLiIKX01TR19SRU1PVklOR19QUkVWSU9VU19QQUNLQUdFUz0iRWxpbWluYW5kbyBwYXF1ZXRlcyBhbnRlcmlvcmVzLi4uIgpfTVNHX1JFVFJJRVZJTkdfTEFTVEVTVF9TVEFCTEVfVkVSU0lPTj0iT2J0ZW5pZW5kbyBsYSDDumx0aW1hIHZlcnNpw7NuIGVzdGFibGUgZGlzcG9uaWJsZS4uLiIKX01TR19DSEVDS0lOR19BVkFJTEFCTEVfVkVSU0lPTj0iQ29tcHJvYmFuZG8gdmVyc2nDs24gZGlzcG9uaWJsZSIKX01TR19WRVJTSU9OX05PVF9PRkZJQ0lBTExZX0FWQUlMQUJMRT0iVmVyc2nDs24gbm8gZGlzcG9uaWJsZSBlbiBsb3MgcmVwb3NpdG9yaW9zIGRlIFBvc3RncmVTUUwgb2ZpY2lhbGVzIgpfTVNHX1ZFUlNJT05fT0ZfUE9TVEdJU19UUllJTkdfVE9fSU5TVEFMTD0iTGEgdmVyc2nDs24gZGUgUG9zdGdpcyBxdWUgZXN0w6FzIGludGVudGFuZG8gaW5zdGFsYXIiCl9NU0dfRE9FU05UX0VYSVNUU19BU19BUFRfUEdfUEFDS0FHRT0ibm8gZXhpc3RlIGNvbW8gdW4gcGFxdWV0ZSBBUFQgcGFyYSBQb3N0Z3JlU1FMIgpfTVNHX1RIRV9QQUNLQUdFPSJlbCBwYXF1ZXRlIgpfTVNHX0RPRVNOVF9FWElTVFNfSU5fUEdfT0ZGSUNJQUxfUkVQT1M9Im5vIGV4aXN0ZSBlbiBsb3MgcmVwb3NpdG9yaW9zIG9maWNpYWxlcyBkZSBQb3N0Z3JlU1FMLiIKX01TR19TUEVDSUZZX0FOX0VYSVNURU5UX1ZFUlNJT049IkVzcGVjaWZpY2EgdW5hIHZlcnNpw7NuIGV4aXN0ZW50ZSBkZSBlbnRyZSBsYXMgc2lndWllbnRlcyB1c2FuZG8gZWwgcGFyw6FtZXRybyAnLS1wb3N0Z2lzLXZlcnNpb24nOiIKX01TR19DSEVDS0lOR19QR19TRVJWSUNFX0NPTkZJRz0iQ29tcHJvYmFuZG8gbGEgY29uZmlndXJhY2nDs24gZGVsIHNlcnZpY2lvICdwb3N0Z3Jlc3FsJy4uLiIKX01TR19FTkFCTElORz0iSGFiaWxpdGFuZG8uLi4iCl9NU0dfSVRTX0VOQUJMRUQ9IkVzdMOhIGhhYmlsaXRhZG8iCl9NU0dfRVJST1JfRU5BQkxJTkdfUEdfU0VSVklDRT0iT2N1cnJpw7MgdW4gZXJyb3IgaGFiaWxpdGFuZG8gZWwgc2VydmljaW8gJ3Bvc3RncmVzcWwnLiIKX01TR19FUlJPUj0iRXJyb3IiCl9NU0dfRVhJVF9DT0RFPSJDw7NkaWdvIGRlIHNhbGlkYSIKX01TR19MQVVOQ0hJTkc9IkVqZWN1dGFuZG8uLi4iCl9NU0dfUEdfU0VSVklDRV9DT1VMRE5UX0JFX1NUQVJURUQ9IkVsIHNlcnZpY2lvICdwb3N0Z3Jlc3FsJyBubyBwdWRvIHNlciBpbmljaWFkby4iCl9NU0dfSVRTX0lOX1NUQVRFPSJTZSBlbmN1ZW50cmEgZW4gZXN0YWRvIgpfTVNHX0lUU19SVU5OSU5HPSJFc3RhIGVuIGVqZWN1Y2nDs24iCl9NU0dfSU5TVEFMTElOR19QRz0iSW5zdGFsYW5kbyBQb3N0Z3JlU1FMLi4uIgpfTVNHX0lOU1RBTExJTkdfUEFDS0FHRVM9Ikluc3RhbGFuZG8gcGFxdWV0ZXMuLi4iCl9NU0dfQ0hFS0lOR19QR19FTlY9IkNvbXByb2JhbmRvIGVudG9ybm8gUG9zdGdyZVNRTC4uLiIKX01TR19DSEVDS0lOR19QQUNLQUdFUz0iQ29tcHJvYmFuZG8gcGFxdWV0ZXMuLi4iCl9NU0dfRElTVFJPX1ZFUlNJT05fTk9UX1NVUFBPUlRFRD0iVHUgdmVyc2nDs24gZGUgRGViaWFuL1VidW50dSBubyBlc3TDoSBzb3BvcnRhZGEgcG9yIGxvcyByZXBvc2l0b3Jpb3Mgb2ZpY2lhbGVzIGRlIFBvc3RncmVTUUwiCmlmIFtbICQoL3Vzci9iaW4vaWQgLXUpIC1uZSAwIF1dOyB0aGVuCiAgcHJpbnRmICIlc1xuIiAiJF9NU0dfRVhFQ1VURURfQVNfU1VQRVJVU0VSIiA+JjIKICBleGl0IDEKZmk7Cl9QUkVQRU5EX1NURE9VVF9TVFJJTkc9IiIKX1ZFUlNJT049IiIKX0lOQ0xVREVfUE9TVEdJUz0wCl9QT1NUR0lTX1ZFUlNJT049IiIKX0lOQ0xVREVfUEdBRE1JTj0wCl9JTkNMVURFX1BMUFlUSE9OMz0wCmZvciBhcmcgaW4gIiRAIgpkbwogICAgY2FzZSAkYXJnIGluCiAgICAgICAgLS12ZXJzaW9uKQogICAgICAgIHNoaWZ0CiAgICAgICAgX1ZFUlNJT049JDEKICAgICAgICBzaGlmdAogICAgICAgIDs7CiAgICAgICAgLS1pbnN0YWxsLXBvc3RnaXMpCiAgICAgICAgX0lOQ0xVREVfUE9TVEdJUz0xCiAgICAgICAgc2hpZnQKICAgICAgICA7OwogICAgICAgIC0tcG9zdGdpcy12ZXJzaW9uKQogICAgICAgIHNoaWZ0CiAgICAgICAgX1BPU1RHSVNfVkVSU0lPTj0kMQogICAgICAgIHNoaWZ0CiAgICAgICAgOzsKICAgICAgICAtLWluc3RhbGwtcGdhZG1pbikKICAgICAgICBfSU5DTFVERV9QR0FETUlOPTEKICAgICAgICBzaGlmdAogICAgICAgIDs7CiAgICAgICAgLS1pbnN0YWxsLXBscHl0aG9uMykKICAgICAgICBfSU5DTFVERV9QTFBZVEhPTjM9MQogICAgICAgIHNoaWZ0CiAgICAgICAgOzsKICAgICAgICAtLXByZXBlbmQtc3Rkb3V0KQogICAgICAgIHNoaWZ0CiAgICAgICAgX1BSRVBFTkRfU1RET1VUX1NUUklORz0kMQogICAgICAgIHNoaWZ0CiAgICAgICAgOzsKICAgIGVzYWMKZG9uZQpmdW5jdGlvbiBwcmludFByZXBlbmRlZFN0ZG91dCgpIHsKICBwcmludGYgIiVzIiAiJF9QUkVQRU5EX1NURE9VVF9TVFJJTkciCn0KSU5TVEFMTEFUSU9OX0RFUEVOREVOQ0lFUz0oCiAgIndnZXQiCiAgImFwdGl0dWRlIgopCmZvciBERVAgaW4gIiR7SU5TVEFMTEFUSU9OX0RFUEVOREVOQ0lFU1tAXX0iOyBkbwogIGlmIFtbICIkKGRwa2cgLXMgIiRERVAiIDI+IC9kZXYvbnVsbCB8IGdyZXAgU3RhdHVzKSIgIT0gIlN0YXR1czogaW5zdGFsbCBvayBpbnN0YWxsZWQiIF1dOyB0aGVuCiAgICBzdWRvIGFwdC1nZXQgaW5zdGFsbCAteSAtcXFxICIkREVQIiA+IC9kZXYvbnVsbCB8fCBleGl0ICQ/CiAgZmk7CmRvbmU7Cl9QR0RHX1NPVVJDRVNfTElTVF9GSUxFUEFUSD0iL2V0Yy9hcHQvc291cmNlcy5saXN0LmQvcGdkZyIKREVCSUFOX1ZFUlNJT049IiQobHNiX3JlbGVhc2UgLWMgLXMpIgpmdW5jdGlvbiBjaGVja0RlYmlhblZlcnNpb25TdXBwb3J0ZWQoKSB7CiAgREVCSUFOX1ZFUlNJT05fU1VQUE9SVEVEPTAKICBfR0VUX0RFQklBTl9WRVJTSU9OX1NVUFBPUlRFRD0kKAogICAgY3VybCAtc0wgaHR0cDovL2FwdC5wb3N0Z3Jlc3FsLm9yZy9wdWIvcmVwb3MvYXB0L2Rpc3RzLyB8IFwKICAgIGdyZXAgLW8gIiRERUJJQU5fVkVSU0lPTi1wZ2RnIgogICkKICBpZiBbICIkX0dFVF9ERUJJQU5fVkVSU0lPTl9TVVBQT1JURUQiICE9ICIiIF07IHRoZW4KICAgIERFQklBTl9WRVJTSU9OX1NVUFBPUlRFRD0xCiAgZmk7Cn0KZnVuY3Rpb24gc2lnblNvdXJjZXMoKSB7CiAgcHJpbnRQcmVwZW5kZWRTdGRvdXQKICBwcmludGYgIiAgICAlcyIgIiRfTVNHX0FERElOR19SRVBPIgogIFNJR05fUEdER19HUEdfS0VZX1NUREVSUj0kKAogICAgd2dldCAtcU8gLSBodHRwczovL3d3dy5wb3N0Z3Jlc3FsLm9yZy9tZWRpYS9rZXlzL0FDQ0M0Q0Y4LmFzYyB8IFwKICAgIHN1ZG8gYXB0LWtleSBhZGQgLSAyPiYxID4gL2Rldi9udWxsKQogIFNJR05fUEdER19HUEdfS0VZX0VYSVRfQ09ERT0kPwogIGlmIFsgJFNJR05fUEdER19HUEdfS0VZX0VYSVRfQ09ERSAtbmUgMCBdOyB0aGVuCiAgICBwcmludGYgIiBcZVs5MW1ceEUyXHg5Q1x4OTVcZVszOW1cbiIgPiYyCiAgICBwcmludGYgIlxuJXM6XG4iICIkX01TR19FUlJPUl9SRVRSSUVWSU5HX1BPU1RHUkVTUUxfUFVCTElDX0tFWSIgPiYyCiAgICBwcmludGYgIiVzXG4iICIkU0lHTl9QR0RHX0dQR19LRVlfU1RERVJSIiA+JjIKICAgIGV4aXQgJFNJR05fUEdER19HUEdfS0VZX0VYSVRfQ09ERQogIGZpOwogIHByaW50ZiAiIFxlWzkybVx4RTJceDlDXHg5NFxlWzM5bVxuIgogIHByaW50UHJlcGVuZGVkU3Rkb3V0CiAgcHJpbnRmICIgICAgJXMiICIkX01TR19VUERBVElOR19QQUNLQUdFUyIKICBzdWRvIGFwdC1nZXQgdXBkYXRlIC1xcXEgPiAvZGV2L251bGwKICBwcmludGYgIiBcZVs5Mm1ceEUyXHg5Q1x4OTRcZVszOW1cbiIKfQpmdW5jdGlvbiBwdXJnZVByZXZpb3VzUGFja2FnZXMoKSB7CiAgcHJpbnRQcmVwZW5kZWRTdGRvdXQKICBwcmludGYgIiAgICAlcyIgIiRfTVNHX1JFTU9WSU5HX1BSRVZJT1VTX1BBQ0tBR0VTIgogIHN1ZG8gYXB0LWdldCBwdXJnZSAteSBwb3N0Z3Jlc3FsID4gL2Rldi9udWxsIHx8IGV4aXQgJD8KICBwcmludGYgIiBcZVs5Mm1ceEUyXHg5Q1x4OTRcZVszOW1cbiIKfQpmdW5jdGlvbiBjbGVhblByZXZpb3VzU291cmNlcygpIHsKICBfUEdER19TT1VSQ0VTX0VYVFM9KAogICAgImxpc3QiCiAgICAiZGlzdFVwZ3JhZGUiCiAgICAic2F2ZSIKICApCiAgZm9yIEVYVCBpbiAiJHtfUEdER19TT1VSQ0VTX0VYVFNbQF19IgogIGRvCiAgICBpZiBbIC1mICIke19QR0RHX1NPVVJDRVNfTElTVF9GSUxFUEFUSH0uJHtFWFR9IiBdOyB0aGVuCiAgICAgIHN1ZG8gcm0gLWYgIiR7X1BHREdfU09VUkNFU19MSVNUX0ZJTEVQQVRIfS4ke0VYVH0iID4gL2Rldi9udWxsIHx8IGV4aXQgJD8KICAgIGZpOwogIGRvbmUKfQpmdW5jdGlvbiBjcmVhdGVTb3VyY2VzTGlzdCgpIHsKICB0b3VjaCAiJF9QR0RHX1NPVVJDRVNfTElTVF9GSUxFUEFUSC5saXN0IgogIGVjaG8gImRlYiBodHRwOi8vYXB0LnBvc3RncmVzcWwub3JnL3B1Yi9yZXBvcy9hcHQvICRERUJJQU5fVkVSU0lPTi1wZ2RnIG1haW4iID4gXAogICAgIiRfUEdER19TT1VSQ0VTX0xJU1RfRklMRVBBVEgubGlzdCIKfQpmdW5jdGlvbiBjaGVja1Bvc3RncmVzcWxTZXJ2aWNlRXhpc3RzKCkgewogIF9QT1NUR1JFU1FMX1NFUlZJQ0VfRVhJU1RTPTEKICBpZiAhIHN1ZG8gc3lzdGVtY3RsIHN0YXR1cyBwb3N0Z3Jlc3FsID4gL2Rldi9udWxsIDI+JjE7IHRoZW4KICAgIF9QT1NUR1JFU1FMX1NFUlZJQ0VfRVhJU1RTPTAKICBmaTsKfQpfTEFTVEVTVF9TVEFCTEVfUE9TVEdSRVNfVkVSU0lPTj0iIgpmdW5jdGlvbiBnZXRMYXN0ZXN0U3RhYmxlUG9zdGdyZXNWZXJzaW9uKCkgewogIF9MQVNURVNUX1NUQUJMRV9QT1NUR1JFU19WRVJTSU9OPSQoCiAgICBzdWRvIGFwdGl0dWRlIHNlYXJjaCAifm4gXnBvc3RncmVzcWwiIHwgXAogICAgZ3JlcCAtRW8gIiBwb3N0Z3Jlc3FsLVswLTldezEsM30uezAsMX1bMC05XXsxLDN9ICIgfCBcCiAgICBhd2sgJ3sgcHJpbnQgJDEgfScgfCBcCiAgICBzb3J0IC0tdmVyc2lvbi1zb3J0IHwgXAogICAgdGFpbCAtbiAxIHwgXAogICAgY3V0IC1kJy0nIC1mMgogICkKfQpfUE9TVEdSRVNfVkVSU0lPTl9UT19JTlNUQUxMPSIiCmZ1bmN0aW9uIGdldFBvc3RncmVzVmVyc2lvblRvSW5zdGFsbCgpIHsKICBpZiBbICIkX1ZFUlNJT04iID0gIiIgXTsgdGhlbgogICAgcHJpbnRQcmVwZW5kZWRTdGRvdXQKICAgIHByaW50ZiAiICAlcyIgIiRfTVNHX1JFVFJJRVZJTkdfTEFTVEVTVF9TVEFCTEVfVkVSU0lPTiIKICAgIGdldExhc3Rlc3RTdGFibGVQb3N0Z3Jlc1ZlcnNpb24KICAgIF9QT1NUR1JFU19WRVJTSU9OX1RPX0lOU1RBTEw9IiRfTEFTVEVTVF9TVEFCTEVfUE9TVEdSRVNfVkVSU0lPTiIKICAgIHByaW50ZiAiICh2JXMpIiAiJF9QT1NUR1JFU19WRVJTSU9OX1RPX0lOU1RBTEwiCiAgZWxzZQogICAgcHJpbnRQcmVwZW5kZWRTdGRvdXQKICAgIHByaW50ZiAiICAlcyAoJXMpLi4uIiAiJF9NU0dfQ0hFQ0tJTkdfQVZBSUxBQkxFX1ZFUlNJT04iICIkX1ZFUlNJT04iCiAgICBfUE9TVEdSRVNfVkVSU0lPTl9UT19JTlNUQUxMPSQoCiAgICAgIHN1ZG8gYXB0aXR1ZGUgc2VhcmNoICJ+biBecG9zdGdyZXNxbCIgfCBcCiAgICAgIGdyZXAgLUVvICIgcG9zdGdyZXNxbC1bMC05XXsxLDN9LnswLDF9WzAtOV17MSwzfSAiIHwgXAogICAgICBhd2sgJ3sgcHJpbnQgJDEgfScgfCBcCiAgICAgIGdyZXAgLW8gIiRfVkVSU0lPTiIgfCBcCiAgICAgIHRyIC1kICdcbicKICAgICkKICAgIGlmIFsgIiRfUE9TVEdSRVNfVkVSU0lPTl9UT19JTlNUQUxMIiA9ICIiIF07IHRoZW4KICAgICAgcHJpbnRmICIgXGVbOTFtXHhFMlx4OUNceDk1XGVbMzltXG4iID4mMgogICAgICBwcmludGYgIiAgICAlcyAoJXMpLlxuIiAiJF9NU0dfVkVSU0lPTl9OT1RfT0ZGSUNJQUxMWV9BVkFJTEFCTEUiICIkX1ZFUlNJT04iID4mMgogICAgICBleGl0IDEKICAgIGZpOwogIGZpOwogIHByaW50ZiAiIFxlWzkybVx4RTJceDlDXHg5NFxlWzM5bVxuIgp9Cl9QT1NUR1JFU19WRVJTSU9OX0lOU1RBTExFRD0iIgpmdW5jdGlvbiBnZXRJbnN0YWxsZWRQb3N0Z3Jlc1ZlcnNpb24oKSB7CiAgX1BPU1RHUkVTX1ZFUlNJT05fSU5TVEFMTEVEPSQoCiAgICBwc3FsIC0tdmVyc2lvbiB8IFwKICAgIGN1dCAtZCcgJyAtZjMgfCBcCiAgICBjdXQgLWQnLicgLWYxIHx8IGV4aXQgJD8KICApCn0KZnVuY3Rpb24gaW5zdGFsbFBvc3RncmVzUGFja2FnZXMoKSB7CiAgUE9TVEdSRVNfUEFDS0FHRVM9KAogICAgInBvc3RncmVzcWwtJF9QT1NUR1JFU19WRVJTSU9OX1RPX0lOU1RBTEwiCiAgICAicG9zdGdyZXNxbC1jbGllbnQtJF9QT1NUR1JFU19WRVJTSU9OX1RPX0lOU1RBTEwiCiAgICAicG9zdGdyZXNxbC1jb250cmliLSRfUE9TVEdSRVNfVkVSU0lPTl9UT19JTlNUQUxMIgogICAgInBvc3RncmVzcWwtc2VydmVyLWRldi0kX1BPU1RHUkVTX1ZFUlNJT05fVE9fSU5TVEFMTCIKICAgICJsaWJwcS1kZXYiCiAgKQogIGlmIFsgJF9JTkNMVURFX1BPU1RHSVMgLWVxIDEgXTsgdGhlbgogICAgaWYgWyAiJF9QT1NUR0lTX1ZFUlNJT04iID0gIiIgXTsgdGhlbgogICAgICBfUE9TVEdJU19QQUNLQUdFPSQoCiAgICAgICAgc3VkbyBhcHRpdHVkZSBzZWFyY2ggIn5uIF5wb3N0Z3Jlc3FsLSR7X1BPU1RHUkVTX1ZFUlNJT05fVE9fSU5TVEFMTH0tcG9zdGdpcyIgfCBcCiAgICAgICAgZ3JlcCAtRW8gIiBwb3N0Z3Jlc3FsLSR7X1BPU1RHUkVTX1ZFUlNJT05fVE9fSU5TVEFMTH0tcG9zdGdpcy1bMC05XXsxLDN9LnswLDF9WzAtOV17MCwzfSAiIHwgXAogICAgICAgIGF3ayAneyBwcmludCAkMSB9JyB8IFwKICAgICAgICBzb3J0IC0tdmVyc2lvbi1zb3J0IHwgXAogICAgICAgIHRhaWwgLW4gMQogICAgICApCiAgICBlbHNlCiAgICAgIF9QT1NUR0lTX1BBQ0tBR0VfRVhJU1RTPSQoCiAgICAgICAgc3VkbyBhcHRpdHVkZSBzZWFyY2ggIn5uIF5wb3N0Z3Jlc3FsLSR7X1BPU1RHUkVTX1ZFUlNJT05fVE9fSU5TVEFMTH0tcG9zdGdpcy0ke19QT1NUR0lTX1ZFUlNJT059IgogICAgICApCiAgICAgIGlmIFsgIiRfUE9TVEdJU19QQUNLQUdFX0VYSVNUUyIgPSAiIiBdOyB0aGVuCiAgICAgICAgcHJpbnRmICJcbiVzICh2JXMpIiAiJF9NU0dfVkVSU0lPTl9PRl9QT1NUR0lTX1RSWUlOR19UT19JTlNUQUxMIiAiJF9QT1NUR0lTX1ZFUlNJT04iID4mMgogICAgICAgIHByaW50ZiAiICVzIHYlcyIgIiRfTVNHX0RPRVNOVF9FWElTVFNfQVNfQVBUX1BHX1BBQ0tBR0UiICIkX1BPU1RHUkVTX1ZFUlNJT05fVE9fSU5TVEFMTCIgPiYyCiAgICAgICAgcHJpbnRmICIgKCVzICdwb3N0Z3Jlc3FsLSVzLXBvc3RnaXMlcycpIiAiJF9NU0dfVEhFX1BBQ0tBR0UiICIkX1BPU1RHUkVTX1ZFUlNJT05fVE9fSU5TVEFMTCIgIiRfUE9TVEdJU19WRVJTSU9OIiA+JjIKICAgICAgICBwcmludGYgIiAlc1xuIiAiJF9NU0dfRE9FU05UX0VYSVNUU19JTl9QR19PRkZJQ0lBTF9SRVBPUyIgPiYyCiAgICAgICAgcHJpbnRmICIlc1xuIiAiJF9NU0dfU1BFQ0lGWV9BTl9FWElTVEVOVF9WRVJTSU9OIiA+JjIKICAgICAgICBzdWRvIGFwdGl0dWRlIHNlYXJjaCAifm4gXnBvc3RncmVzcWwtJHtfUE9TVEdSRVNfVkVSU0lPTl9UT19JTlNUQUxMfS1wb3N0Z2lzIiA+JjIKICAgICAgICBleGl0IDEKICAgICAgZmk7CiAgICAgIF9QT1NUR0lTX1BBQ0tBR0U9InBvc3RncmVzcWwtJHtfUE9TVEdSRVNfVkVSU0lPTl9UT19JTlNUQUxMfS1wb3N0Z2lzLSR7X1BPU1RHSVNfVkVSU0lPTn0iCiAgICBmaTsKICAgIFBPU1RHUkVTX1BBQ0tBR0VTKz0oCiAgICAgICIkX1BPU1RHSVNfUEFDS0FHRSIKICAgICkKICBmaTsKICBpZiBbICRfSU5DTFVERV9QR0FETUlOIC1lcSAxIF07IHRoZW4KICAgIF9MQVNURVNUX1NUQUJMRV9QR0FETUlOX1BBQ0tBR0U9JCgKICAgICAgc3VkbyBhcHRpdHVkZSBzZWFyY2ggIn5uIF5wZ2FkbWluIiB8IFwKICAgICAgZ3JlcCAtRW8gIiBwZ2FkbWluWzAtOV17MSwzfS57MCwxfVswLTldezAsM30gIiB8IFwKICAgICAgYXdrICd7IHByaW50ICQxIH0nIHwgXAogICAgICBzb3J0IC0tdmVyc2lvbi1zb3J0IHwgXAogICAgICB0YWlsIC1uIDEKICAgICkKICAgIFBPU1RHUkVTX1BBQ0tBR0VTKz0oCiAgICAgICIkX0xBU1RFU1RfU1RBQkxFX1BHQURNSU5fUEFDS0FHRSIKICAgICkKICBmaTsKICBpZiBbICRfSU5DTFVERV9QTFBZVEhPTjMgLWVxIDEgXTsgdGhlbgogICAgX0xBU1RFU1RfU1RBQkxFX1BMUFlUSE9OM19DT01QQVRJQkxFX1BBQ0tBR0U9JCgKICAgICAgc3VkbyBhcHRpdHVkZSBzZWFyY2ggIn5uIF5wb3N0Z3Jlc3FsLXBscHl0aG9uMy0ke19QT1NUR1JFU19WRVJTSU9OX1RPX0lOU1RBTEx9IiB8IFwKICAgICAgaGVhZCAtbiAxIHwgXAogICAgICBncmVwIC1vICIgcG9zdGdyZXNxbC1wbHB5dGhvbjMtMTIiIHwgXAogICAgICBhd2sgJ3sgcHJpbnQgJDEgfScKICAgICkKICAgIGlmIFsgIiRfTEFTVEVTVF9TVEFCTEVfUExQWVRIT04zX0NPTVBBVElCTEVfUEFDS0FHRSIgIT0gIiIgXTsgdGhlbgogICAgICBQT1NUR1JFU19QQUNLQUdFUys9KAogICAgICAgICIkX0xBU1RFU1RfU1RBQkxFX1BMUFlUSE9OM19DT01QQVRJQkxFX1BBQ0tBR0UiCiAgICAgICkKICAgIGZpOwogIGZpOwogIHByaW50UHJlcGVuZGVkU3Rkb3V0CiAgcHJpbnRmICIgICVzXG4iICIkMSIKICBmb3IgUEFDS0FHRSBpbiAiJHtQT1NUR1JFU19QQUNLQUdFU1tAXX0iOyBkbwogICAgcHJpbnRQcmVwZW5kZWRTdGRvdXQKICAgIHByaW50ZiAiICAgICVzIiAiJFBBQ0tBR0UiCiAgICBpZiBbWyAiJChkcGtnIC1zICIkUEFDS0FHRSIgMj4gL2Rldi9udWxsIHwgZ3JlcCBTdGF0dXMpIiAhPSAiU3RhdHVzOiBpbnN0YWxsIG9rIGluc3RhbGxlZCIgXV07IHRoZW4KICAgICAgX0FQVF9JTlNUQUxMX1NUREVSUj0kKAogICAgICAgIHN1ZG8gYXB0LWdldCBpbnN0YWxsIC15IC1xcXEgIiRQQUNLQUdFIiAyPiYxCiAgICAgICkKICAgICAgX0FQVF9JTlNUQUxMX0VYSVRfQ09ERT0kPwogICAgICBpZiBbICRfQVBUX0lOU1RBTExfRVhJVF9DT0RFIC1uZSAwIF07IHRoZW4KICAgICAgICBwcmludGYgIiVzIiAiJF9BUFRfSU5TVEFMTF9TVERFUlIiID4mMgogICAgICAgIGV4aXQgJF9BUFRfSU5TVEFMTF9FWElUX0NPREUKICAgICAgZmk7CiAgICBmaTsKICAgIHByaW50ZiAiIFxlWzkybVx4RTJceDlDXHg5NFxlWzM5bVxuIgogIGRvbmUKfQpmdW5jdGlvbiBjaGVja1Bvc3RncmVzcWxTZXJ2aWNlQ29uZmlnKCkgewogIHByaW50UHJlcGVuZGVkU3Rkb3V0CiAgcHJpbnRmICIgICVzXG4iICIkX01TR19DSEVDS0lOR19QR19TRVJWSUNFX0NPTkZJRyIKICBwcmludFByZXBlbmRlZFN0ZG91dAogIF9QT1NUR1JFU1FMX1NFUlZJQ0VfRU5BQkxFRF9GT1VORD0kKAogICAgc3lzdGVtY3RsIGxpc3QtdW5pdC1maWxlcyB8IFwKICAgIGdyZXAgZW5hYmxlZCB8IFwKICAgIGdyZXAgcG9zdGdyZXNxbCkKICBpZiBbICIkX1BPU1RHUkVTUUxfU0VSVklDRV9FTkFCTEVEX0ZPVU5EIiA9ICIiIF07IHRoZW4KICAgIHByaW50ZiAiICAgICVzIiAiJF9NU0dfRU5BQkxJTkciCiAgICBfRU5BQkxFX1BPU1RHUkVTUUxfU0VSVkVSX09VVFBVVD0kKAogICAgICBzdWRvIHN5c3RlbWN0bCBlbmFibGUgcG9zdGdyZXNxbC5zZXJ2aWNlIDI+JjEgPiAvZGV2L251bGwKICAgICkKICAgIF9FTkFCTEVfUE9TVEdSRVNRTF9TRVJWRVJfRVhJVF9DT0RFPSQ/CiAgICBpZiBbICRfRU5BQkxFX1BPU1RHUkVTUUxfU0VSVkVSX0VYSVRfQ09ERSAtbmUgMCBdOyB0aGVuCiAgICAgIHByaW50ZiAiIFxlWzkxbVx4RTJceDlDXHg5NVxlWzM5bVxuIiA+JjIKICAgICAgcHJpbnRmICIlc1xuIiAiJF9NU0dfRVJST1JfRU5BQkxJTkdfUEdfU0VSVklDRSIgPiYyCiAgICAgIHByaW50ZiAiJXM6ICVkXG4iICIkX01TR19FWElUX0NPREUiICIkX0VOQUJMRV9QT1NUR1JFU1FMX1NFUlZFUl9FWElUX0NPREUiID4mMgogICAgICBwcmludGYgIiVzOiAlc1xuIiAiJF9NU0dfRVJST1IiICIkX0VOQUJMRV9QT1NUR1JFU1FMX1NFUlZFUl9PVVRQVVQiID4mMgogICAgICBleGl0ICRfRU5BQkxFX1BPU1RHUkVTUUxfU0VSVkVSX0VYSVRfQ09ERQogICAgZmk7CiAgZWxzZQogICAgcHJpbnRmICIgICAgJXMiICIkX01TR19JVFNfRU5BQkxFRCIKICBmaTsKICBwcmludGYgIiBcZVs5Mm1ceEUyXHg5Q1x4OTRcZVszOW1cbiIKICBwcmludFByZXBlbmRlZFN0ZG91dAogIF9QT1NUR1JFU1FMX1NFUlZJQ0VfU1RBVFVTPSQoCiAgICBzdWRvIHN5c3RlbWN0bCBzaG93IC1wIEFjdGl2ZVN0YXRlIHBvc3RncmVzcWwgfCBcCiAgICBjdXQgLWQnPScgLWYyIHwgXAogICAgdHIgLWQgJ1xuJykKICBpZiBbICIkX1BPU1RHUkVTUUxfU0VSVklDRV9TVEFUVVMiICE9ICJhY3RpdmUiIF07IHRoZW4KICAgIHByaW50ZiAiICAgICVzIiAiJF9NU0dfTEFVTkNISU5HIgogICAgc3VkbyBzeXN0ZW1jdGwgc3RhcnQgcG9zdGdyZXNxbCA+IC9kZXYvbnVsbAogICAgX1BPU1RHUkVTUUxfU0VSVklDRV9TVEFSVEVEPSQ/CiAgICBpZiBbICRfUE9TVEdSRVNRTF9TRVJWSUNFX1NUQVJURUQgLW5lIDAgXTsgdGhlbgogICAgICBwcmludGYgIiBcZVs5MW1ceEUyXHg5Q1x4OTVcZVszOW1cbiIgPiYyCiAgICAgIHByaW50ZiAiJXNcbiIgIiRfTVNHX1BHX1NFUlZJQ0VfQ09VTEROVF9CRV9TVEFSVEVEIiA+JjIKICAgICAgcHJpbnRmICIlcyAnJXMnLlxuIiAiJF9NU0dfSVRTX0lOX1NUQVRFIiAiJF9QT1NUR1JFU1FMX1NFUlZJQ0VfU1RBVFVTIiA+JjIKICAgICAgZXhpdCAkX1BPU1RHUkVTUUxfU0VSVklDRV9TVEFSVEVECiAgICBmaTsKICBlbHNlCiAgICBwcmludGYgIiAgICAlcyIgIiRfTVNHX0lUU19SVU5OSU5HIgogIGZpOwogIHByaW50ZiAiIFxlWzkybVx4RTJceDlDXHg5NFxlWzM5bVxuIgp9CmZ1bmN0aW9uIGluc3RhbGxQb3N0Z3JlU1FMKCkgewogIHByaW50UHJlcGVuZGVkU3Rkb3V0CiAgcHJpbnRmICIgICVzXG4iICIkX01TR19JTlNUQUxMSU5HX1BHIgogIGNoZWNrRGViaWFuVmVyc2lvblN1cHBvcnRlZAogIGlmIFsgJERFQklBTl9WRVJTSU9OX1NVUFBPUlRFRCAtZXEgMCBdOyB0aGVuCiAgICBwcmludGYgIiVzICglcykuIiAiJF9NU0dfRElTVFJPX1ZFUlNJT05fTk9UX1NVUFBPUlRFRCIgIiRERUJJQU5fVkVSU0lPTiIgPiYyCiAgICBleGl0IDEKICBmaTsKICBjbGVhblByZXZpb3VzU291cmNlcwogIHB1cmdlUHJldmlvdXNQYWNrYWdlcwogIGNyZWF0ZVNvdXJjZXNMaXN0CiAgc2lnblNvdXJjZXMKICBnZXRQb3N0Z3Jlc1ZlcnNpb25Ub0luc3RhbGwKICBpbnN0YWxsUG9zdGdyZXNQYWNrYWdlcyAiJF9NU0dfSU5TVEFMTElOR19QQUNLQUdFUyIKfQpmdW5jdGlvbiBtYWluKCkgewogIHByaW50UHJlcGVuZGVkU3Rkb3V0CiAgcHJpbnRmICIlc1xuIiAiJF9NU0dfQ0hFS0lOR19QR19FTlYiCiAgY2hlY2tQb3N0Z3Jlc3FsU2VydmljZUV4aXN0cwogIGlmIFsgJF9QT1NUR1JFU1FMX1NFUlZJQ0VfRVhJU1RTIC1lcSAwIF07IHRoZW4KICAgIGluc3RhbGxQb3N0Z3JlU1FMCiAgZWxzZQogICAgZ2V0SW5zdGFsbGVkUG9zdGdyZXNWZXJzaW9uCiAgICBfUE9TVEdSRVNfVkVSU0lPTl9UT19JTlNUQUxMPSRfUE9TVEdSRVNfVkVSU0lPTl9JTlNUQUxMRUQKICAgIGluc3RhbGxQb3N0Z3Jlc1BhY2thZ2VzICIkX01TR19DSEVDS0lOR19QQUNLQUdFUyIKICBmaTsKICBjaGVja1Bvc3RncmVzcWxTZXJ2aWNlQ29uZmlnCn0KbWFpbgo=' | base64 -d)
