class redwoodtest {

    # You can use this class to deploy Airbyte on a server.

    # This manifest will:      
    # 1. Install Docker
    # 2. Install Docker Compose
    # 3. Install Git
    # 4. Clone the Airbyte repository
    # 5. Run the Airbyte installation script

    include docker, docker::compose, git

    file { '/tmp/airbyte':
    ensure => directory,
    }

    vcsrepo { 'airbyte repo':
    path     => '/tmp/airbyte',
    ensure   => present,
    provider => git,
    source   => "https://github.com/airbytehq/airbyte.git",
    require  => File['/tmp/airbyte'],
    }

    exec {runinstallscript:
    command => ['/bin/bash', 'run-ab-platform.sh > /dev/null 2>&1'],
    cwd     => '/tmp/airbyte',
    require => Vcsrepo['airbyte repo'],
    timeout => 0,
    }
}
