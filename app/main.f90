      program demo_insert
      ! used for timing.
      use M_list, only : locate, insert
      implicit none
      character(len=30) :: line
      character(len=:),allocatable :: arr(:)
      integer                      :: i

      ! add or replace values
      do i=1,10000
         write(line,*)i
         call update(arr,trim(line))
      enddo
      write(*,*)arr(size(arr)),size(arr)

      contains
      subroutine update(arr,string)
      character(len=:),allocatable :: arr(:)
      character(len=*)             :: string
      integer                      :: place, end, i

      end=size(arr)
      ! find where string is or should be
      call locate(arr,string,place)
      ! if string was not found insert it
      if(place.lt.1)then
         call insert(arr,string,abs(place))
      endif
      ! show array
      end=size(arr)
      !write(*,'("array is now SIZE=",i0,1x,*(a,","))')end, (trim(arr(i)),i=1,end)

      end subroutine update
      end program demo_insert
