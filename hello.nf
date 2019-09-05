#!/usr/bin/env nextflow
echo true

cheers = Channel.from 'Bonjour', 'Ciao', 'Hello', 'Hola', 'Czesc'

process sayHello {
  input:
    val cheer from cheers
  script:
    """
    echo "$cheer World!"
    """
}