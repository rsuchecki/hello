#!/usr/bin/env nextflow
echo true

cheers = Channel.from 'Bonjour', 'Ciao', 'Hello', 'Hola', 'Czesc'

params.world = 'World' //setting default value, modify at runtime with e.g.: --world Mundo

process sayHello {
  executor 'slurm'

  input:
    val cheer from cheers
  script:
    """
    echo "$cheer $params.world! From ${task.executor} \$HOSTNAME."
    """
}