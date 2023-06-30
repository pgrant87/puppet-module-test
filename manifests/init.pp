class redwoodtest {

user { pgtest:
             password => Sensitive(
                pw_hash('passypassword', 'SHA-512', 'saltysalt')
            ),
        }

user { pgtest1:
             password => Sensitive(
                pw_hash('passypassword', 'SHA-512', 'saltysalt')
            ),
        }

user { pgtest2:
             password => Sensitive(
                pw_hash('passypassword', 'SHA-512', 'saltysalt')
            ),
        }

user { pgtest3:
             password => Sensitive(
                pw_hash('passypassword', 'SHA-512', 'saltysalt')
            ),
        }

user { pgtest4:
             password => Sensitive(
                pw_hash('passypassword', 'SHA-512', 'saltysalt')
            ),
        }

user { pgtest5:
             password => Sensitive(
                pw_hash('passypassword', 'SHA-512', 'saltysalt')
            ),
        }

user { pgtest6:
             password => Sensitive(
                pw_hash('passypassword', 'SHA-512', 'saltysalt')
            ),
        }

user { pgtest7:
             password => Sensitive(
                pw_hash('passypassword', 'SHA-512', 'saltysalt')
            ),
        }

user { pgtest8:
             password => Sensitive(
                pw_hash('passypassword', 'SHA-512', 'saltysalt')
            ),
        }

user { pgtest9:
             password => Sensitive(
                pw_hash('passypassword', 'SHA-512', 'saltysalt')
            ),
        }

}
