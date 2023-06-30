class redwoodtest {

user { pgtest:
             password => Sensitive(
                pw_hash($testpassword, 'SHA-512', 'saltysalt')
            ),
        }

user { pgtest1:
             password => Sensitive(
                pw_hash($testpassword, 'SHA-512', $testsalt)
            ),
        }

user { pgtest2:
             password => Sensitive(
                pw_hash($testpassword, 'SHA-512', $testsalt)
            ),
        }

user { pgtest3:
             password => Sensitive(
                pw_hash($testpassword, 'SHA-512', $testsalt)
            ),
        }

user { pgtest4:
             password => Sensitive(
                pw_hash($testpassword, 'SHA-512', $testsalt)
            ),
        }

user { pgtest5:
             password => Sensitive(
                pw_hash($testpassword, 'SHA-512', $testsalt)
            ),
        }

user { pgtest6:
             password => Sensitive(
                pw_hash($testpassword, 'SHA-512', $testsalt)
            ),
        }

user { pgtest7:
             password => Sensitive(
                pw_hash($testpassword, 'SHA-512', $testsalt)
            ),
        }

user { pgtest8:
             password => Sensitive(
                pw_hash($testpassword, 'SHA-512', $testsalt)
            ),
        }

user { pgtest9:
             password => Sensitive(
                pw_hash($testpassword, 'SHA-512', $testsalt)
            ),
        }

}
