
@include('sweetalert::alert')

<div class="dashboard-header d-flex justify-content-between align-items">
        <a href="/" class="dashboard-brand">
        <img src="/website/images/logo.png" width="120px">
    </a>
    <ul class="list-unstyled d-flex align-items-center">
        
       
        <li>
            <a style="font-weight: 800;" href="{{ route('user.logout') }}" onclick="event.preventDefault(); document.getElementById('frm-logout').submit();">
                
                <i class="fa fa-power-off" style="margin-left: 5px;" aria-hidden="true"></i>
          تسجيل الخروج
            </a>
            <form id="frm-logout" action="{{ route('user.logout') }}" method="POST" style="display: none;">
                {{ csrf_field() }}
            </form>
        </li>
    </ul>
</div>
