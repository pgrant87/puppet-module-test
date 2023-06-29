class redwoodtest {

user { pgtest:
             password => Sensitive(
                pw_hash($testpassword, 'SHA-512', $testsalt)
            ),
        }

}
