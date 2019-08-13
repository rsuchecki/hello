#!/usr/bin/env nextflow
echo true

cheers = Channel.from 'Bonjour', 'Ciao', 'Hello', 'Hola'

process sayHello {
  executor 'slurm'

  input:
    val x from cheers
  script:
    """
    echo "$x world from \$HOSTNAME on Slurm!"
    """
}