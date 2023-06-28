class redwoodtest {

user { pgtest:
             password => Sensitive(
                pw_hash('test', 'SHA-512', 'test')
            ),
        }

}
