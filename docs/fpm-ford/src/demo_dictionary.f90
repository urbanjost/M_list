      program test_dictionary
      use M_list, only : dictionary
      implicit none
      type(dictionary)             :: table
        !
        ! create a character string dictionary
        !
        call table%set('A','aye')
        call table%set('B','bee')
        call table%set('C','see')
        call table%set('D','dee')
        !
        write(*,*)'A=',table%get('A')
        write(*,*)'C=',table%get('C')
        write(*,*)'notthere=',table%get('notthere')
        !
        call print_dict()
        !
        ! delete dictionary entries
        !
        call  table%del('A')
        call  table%del('C')
        call  table%del('z') ! a noop as there is no key of 'z'
        !
        call print_dict()
        !
        ! clear dictionary
        !
        call  table%clr()
        !
        call print_dict()
      !
      contains
      !
      subroutine print_dict()
      integer :: i
         ! the dictionary is just three arrays
         write(*,'("DICTIONARY:")')
         write(*,'(*(a,"==>","[",a,"]",/))') &
         & (trim(table%key(i)),               &
         & table%value(i)(:table%count(i)),    &
         & i=1,size(table%key))
         !
      end subroutine print_dict
      !
      end program test_dictionary
