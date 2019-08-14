#!/usr/bin/env nextflow
echo true

cheers = Channel.from 'Bonjour', 'Ciao', 'Hello', 'Hola'
params.world = 'world' //setting default value, modify at runtime with e.g.: --world Mundo

process sayHello {
  input:
    val x from cheers
  script:
    """
    echo '$x $params.world!'
    """
}