      program demo_del
      use M_list, only : dictionary
      implicit none
      type(dictionary) :: caps
      integer                       :: i
         ! create a character string dictionary
         call caps%set('A','aye')
         call caps%set('B','bee')
         call caps%set('C','see')
         call caps%set('D','dee')
         ! show current dictionary
         write(*,101)(trim(caps%key(i)),trim(caps%value(i)),i=1,size(caps%key)) ! show array
         ! delete dictionary entires
         call  caps%del('A')
         call  caps%del('C')
         call  caps%del('z') ! a noop as there is no key of 'z'
         ! show current dictionary
         write(*,101)(trim(caps%key(i)),trim(caps%value(i)),i=1,size(caps%key)) ! show array

      101 format (1x,*(a,"='",a,"'",:,","))
      end program demo_del
