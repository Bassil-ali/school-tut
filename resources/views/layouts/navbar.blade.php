<!-- BEGIN: Main Menu-->

@include('sweetalert::alert')

<div class="main-menu menu-fixed menu-light menu-accordion menu-shadow" style="top: 0;" data-scroll-to-active="true">
    <div class="navbar-header">
      <ul class="nav navbar-nav flex-row">
        <li class="nav-item mr-auto"><a class="navbar-brand" href="/admin">
            <h2 class="brand-text">منصة العباقرة</h2></a></li>
        <li class="nav-item nav-toggle"><a class="nav-link modern-nav-toggle pr-0" data-toggle="collapse"><i class="d-block d-xl-none text-primary toggle-icon font-medium-4" data-feather="x"></i><i class="d-none d-xl-block collapse-toggle-icon font-medium-4  text-primary" data-feather="disc" data-ticon="disc"></i></a></li>
      </ul>
    </div>
    <div class="shadow-bottom"></div>
    <div class="main-menu-content">
      <ul class="navigation navigation-main" id="main-menu-navigation" data-menu="menu-navigation">
        <li class="active nav-item"><a class="d-flex align-items-center" href="/admin"><i data-feather="home"></i><span class="menu-title text-truncate" data-i18n="الرئيسية">الرئيسية</span></a>
        </li>
        <li class=" navigation-header"><span data-i18n="Apps &amp; Pages">الاعدادات</span><i data-feather="more-horizontal"></i>
        </li>
        <li class=" nav-item"><a class="d-flex align-items-center" href="#"><i data-feather="settings"></i>
            <span class="menu-title text-truncate" data-i18n="Invoice">الاعدادات العامة</span></a>
          <ul class="menu-content">

            <li><a class="d-flex align-items-center" href="{{route('level.index')}}"><i data-feather="circle"></i>
              <span class="menu-item text-truncate" data-i18n="الصفوف الدراسية">الصفوف الدراسية</span></a>
            </li>

            <li><a class="d-flex align-items-center" href="{{route('subject.index')}}"><i data-feather="circle"></i>
              <span class="menu-item text-truncate" data-i18n="">المواد الدراسية</span></a>
            </li>

            <li><a class="d-flex align-items-center" href="{{route('group.index')}}"><i data-feather="circle"></i>
                <span class="menu-item text-truncate" data-i18n="المجاميع الدراسية">المجاميع الدراسية</span></a>
            </li>

            <li><a class="d-flex align-items-center" href="{{ route('bill.admin.index') }}"><i data-feather="circle"></i>
                <span class="menu-item text-truncate" data-i18n="الفواتير">الفواتير</span></a>
            </li>

          </ul>
        </li>

        <li class=" navigation-header"><span data-i18n="">النظام</span><i data-feather="more-horizontal"></i>
        </li>
                  <li class=" nav-item"><a class="d-flex align-items-center" href="#"><i data-feather="settings"></i><span class="menu-title text-truncate" data-i18n="Invoice">بيانات النظام</span><span class="badge mr-1 ml-auto badge-light-success badge-pill">جديد</span></a>
          <ul class="menu-content">
            <li><a class="d-flex align-items-center" href="#"><i data-feather="circle"></i><span class="menu-item text-truncate" data-i18n="">المشرفين</span><span class="badge mr-1 ml-auto badge-light-warning badge-pill">قريبا</span></a>
            </li>
            <li><a class="d-flex align-items-center" href="#"><i data-feather="circle"></i><span class="menu-item text-truncate" data-i18n="">المدرسين</span><span class="badge mr-1 ml-auto badge-light-warning badge-pill">قريبا</span></a>
            </li>
            <li><a class="d-flex align-items-center" href="{{route('admin_students.index')}}"><i data-feather="circle"></i><span class="menu-item text-truncate" data-i18n="">الطلاب</span></a>
            </li>
            


          </ul>
        </li>

         <li class=" navigation-header"><span data-i18n="">التعليم الالكتروني</span><i data-feather="more-horizontal"></i>
        </li>

          <li class=" nav-item"><a class="d-flex align-items-center" href="#"><i data-feather="settings"></i><span class="menu-title text-truncate" data-i18n="Invoice">التعليم الالكتروني</span><span class="badge mr-1 ml-auto badge-light-success badge-pill">جديد</span></a>
          <ul class="menu-content">
            <li>
              <a class="d-flex align-items-center" href="{{route('classes.index')}}">
                <i data-feather="circle"></i>
                <span class="menu-item text-truncate" data-i18n="">المحاضرات والدروس</span></a>
            </li>
            <li>
              <a class="d-flex align-items-center" href="{{route('exam.index')}}"><i data-feather="circle"></i>
                <span class="menu-item text-truncate" data-i18n="">الامتحانات والاختبارات</span></a>
            </li>
            <li>
              <a class="d-flex align-items-center" href="{{route('quiz.index')}}">
                <i data-feather="circle"></i>
                <span class="menu-item text-truncate" data-i18n="">بنك الاسئلة</span></a>
            </li>
            <li>
              <a class="d-flex align-items-center" href="{{ route('home_work.index') }}"><i data-feather="circle"></i>
                <span class="menu-item text-truncate" data-i18n="">الواجب المنزلي</span>
                <span class="badge mr-1 ml-auto badge-light-warning badge-pill">قريبا</span></a>
            </li>
            <li>
              <a class="d-flex align-items-center" href="{{ route('home_work.index') }}"><i data-feather="circle"></i>
                <span class="menu-item text-truncate" data-i18n="">الواجب المنزلي</span>
                <span class="badge mr-1 ml-auto badge-light-warning badge-pill">قريبا</span></a>
            </li>


          </ul>
        </li>

         <li class=" navigation-header"><span data-i18n="">الادارة</span><i data-feather="more-horizontal"></i>
        </li>
        
        <li class=" nav-item"><a class="d-flex align-items-center" href="https://www.facebook.com/Online.edu.eg/"><i data-feather="users"></i><span class="menu-title text-truncate" data-i18n="Invoice">الدعم الفني</span></a>
</li>
      </ul>
    </div>
  </div>
  <!-- END: Main Menu-->
