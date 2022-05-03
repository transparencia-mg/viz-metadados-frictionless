---
title: Catalogação
toc: true
---

A catalogação está focada na perspectiva da experiência que o produtor de dados possui para publicar pacotes de dados no Portal de Dados Abertos.

O objetivo é oferecer tanto uma interface web GUI, quanto uma interface CLI (dpckan) para a catalogação.

## Links

- [Publish Data - Datopian](https://github.com/datopian/tech.datopian.com/tree/master/publish)

    Publish functionality covers the whole area of creating and editing datasets and resources, including data upload. The core job story is something like:

    > When a Data Curator has a data file or dataset they want to add it to their data portal/platform quickly and easily so that it is available there.

    Publication can be divided by its *mode*:

    * **Manual**: publication is done by people via a user interfaces or other tool
    * **Programmatic**: publication is done programatically using APIs and is usually part of automated processes
    * **Hybrid**: which combines manual and programmatic. An example would be harvesting where setup and configuration may be done in a UI manually with the process then running automatically and programmatically (in addition, some new harvesting flows require manual programmatic setup e.g. writing a harvester in Python for a new source data format).