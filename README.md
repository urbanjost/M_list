<!--
# M_list
![list](docs/images/list.gif)
-->

## M_list(3f) - maintain a sorted intrinsic type array in Fortran

## DESCRIPTION

   As shown in the examples the M_list(3f) module contains simple routines
   to add, replace  and delete values from an automatically sorted array
   allow for creating simple dictionaries.

   The advantage of this routine over more conventional methods is
   that the dictionary components are simple arrays which can be easily
   accessed with standard routines.

   Each time an entry is added or deleted the array is re-allocated.
   Because of the expense of reallocating the data these routines are best
   suited for maintaining small lists that do not change size frequently.

## BUILDING THE MODULE USING make(1) ![gmake](docs/images/gnu.gif)
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


## BUILD and TEST with fpm  ![fpm](docs/images/fpm_logo.gif)

Alternatively, download the github repository and build it with 
fpm ( as described at [Fortran Package Manager](https://github.com/fortran-lang/fpm) )

```bash
     git clone https://github.com/urbanjost/M_list.git
     cd M_list
     fpm test  # run unit tests
     # optionally run the example programs from the man-pages in the example/ directory
     fpm run --example "*"
```

or just list it as a dependency in your fpm.toml project file.

```toml
     [dependencies]
     M_list        = { git = "https://github.com/urbanjost/M_list.git" ,tag="v1.0.1"}
```
#### (registered at the [fpm(1) registry](https://github.com/fortran-lang/fpm-registry) )

## DOCUMENTATION   ![docs](docs/images/docs.gif)

### USER
 - A single page that uses javascript to combine all the HTML descriptions
   of the manpages is at
   [BOOK_M_list](https://urbanjost.github.io/M_list/BOOK_M_list.html).

 - An [index](https://urbanjost.github.io/M_list/man3.html) to HTML versions
   of the manpages 

 - manpages in 
    + [manpages.zip](https://urbanjost.github.io/M_list/manpages.zip) 
    + [manpages.tgz](https://urbanjost.github.io/M_list/manpages.tgz) 

### DEVELOPER
   - [ford(1) output](https://urbanjost.github.io/M_list/fpm-ford/index.html).
<!--
   - [doxygen(1) output](https://urbanjost.github.io/M_list/doxygen_out/html/index.html).
-->
   - [github action status](docs/STATUS.md) 

## DEMO PROGRAMS![demos](docs/images/demo.gif)

   There are demo programs extracted from the man pages in the example/ directory

