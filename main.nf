#!/usr/bin/env nextflow
echo true

cheers = Channel.from 'Bonjour', 'Ciao', 'Hello', 'Hola', 'Czesc'

params.universe = 'World' //setting default value, modify at runtime with e.g.: --world Mundo

process sayHello {
  input:
    val cheer from cheers
  script:
    """
    echo "$cheer ${params.universe}!  -- from ${task.executor} \$HOSTNAME"
    """
}