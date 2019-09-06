#!/usr/bin/env nextflow

cheers = Channel.from 'Bonjour', 'Ciao', 'Hello', 'Hola', 'Czesc'

params.universe = 'World' //setting default value, modify at runtime with e.g.: --world Mundo

process sayHello {
  echo true

  input:
    val cheer from cheers
  script:
    """
    echo "$cheer $params.universe!"
    """
}