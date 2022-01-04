# M_list
<!--
![list](docs/images/list.gif)
-->

## M_list(3f) - [M_list] maintain simple lists

## DESCRIPTION

   The M_list(3fm) module allows for maintaining an array as a sorted
   list. An example is given that creates a keyword-value dictionary
   using the lists.

   The lists are maintained as simple allocatable arrays. Each time an
   entry is added or deleted the array is re-allocated.  Because of the
   expense of reallocating the data these routines are best suited for
   maintaining small lists that do not change size frequently.

   The advantage is that the dictionary components are simple arrays
   which can be easily accessed with standard routines.

## DOWNLOAD AND BUILD
Just download the github repository, enter the src/ directory and run make(1):

     git clone https://github.com/urbanjost/M_list.git
     cd M_list/src
     # change Makefile if not using one of the listed compilers
     
     # for gfortran
     make clean
     make F90=gfortran gfortran
     
     # for ifort
     make clean
     make F90=ifort ifort

     # for nvfortran
     make clean
     make F90=nvfortran nvfortran

     # optionally
     make run  # run all the demo programs from the manpages
     make help # see other developer options

This will compile the M_list(3f) module.


## SUPPORTS FPM ![fpm](docs/images/fpm_logo.gif)
#### (registered at the [fpm(1) registry](https://github.com/fortran-lang/fpm-registry) )

Alternatively, download the github repository and build it with 
fpm ( as described at [Fortran Package Manager](https://github.com/fortran-lang/fpm) )

```bash
     git clone https://github.com/urbanjost/M_list.git
     cd M_list
     fpm test  # run unit tests
     # optionally run the example programs from the man-pages in the example/ directory
     fpm run --example
```

or just list it as a dependency in your fpm.toml project file.

```toml
     [dependencies]
     M_list        = { git = "https://github.com/urbanjost/M_list.git" ,tag="v1.0.1"}
```

## DEMO PROGRAMS![demos](docs/images/demo.gif)

   There are demo programs extracted from the man pages in the example/ directory


## USER DOCUMENTATION
 - A single page that uses javascript to combine all the HTML descriptions
   of the manpages is at
   [BOOK_M_list](https://urbanjost.github.io/M_list/BOOK_M_list.html).

 - An [index](https://urbanjost.github.io/M_list/man3.html) to HTML versions
   of the manpages 

in addition in the docs/ directory there is

 - manpages in 
    + [manpages.zip](https://urbanjost.github.io/M_list/manpages.zip) 
    + [manpages.tgz](https://urbanjost.github.io/M_list/manpages.tgz) 
