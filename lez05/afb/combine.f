      program combine
      implicit none
      integer i
      double precision d1(150),d2(150),dcomb(150),minv(150)
      double precision err1(150), err2(150)

      open(unit=11,
     &  file='numbers_LHC_bare_mu/lhc_z_mu_minb_oal_norec_150.dat',
     &  status='old')
      open(unit=12,
     &  file='numbers_LHC_bare_mu_bis/lhc_z_mu_minb_oal_norec_150.dat',
     &  status='old')
      open(unit=13,
     &  file='numbers_LHC_bare_mu/lhc_z_mu_minb_oal_norec_comb.dat',
     &  status='new')

      do i = 1,150
         read(11,*) minv(i),d1(i),err1(i)
         read(12,*) minv(i),d2(i),err2(i)
      end do
      do i = 1,11
         write(13,*) minv(i),d1(i),err1(i)
      end do
      do i = 12,150
       write(13,*) minv(i),(d1(i)+d2(i))/2d0,
     &             sqrt(err1(i)**2+err2(i)**2)/sqrt(2d0)
      end do





      end
