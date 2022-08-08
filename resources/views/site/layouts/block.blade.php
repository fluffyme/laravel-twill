<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <meta content="width=device-width, initial-scale=1, shrink-to-fit=no" name="viewport"/>
    <title>Blocks rendering</title>
    <link href="https://rsms.me/inter/inter.css" rel="stylesheet"/>
    <link rel="stylesheet" href="{{asset('/assets/front/css/style.min.css')}}">
</head>
<body>
<div class="wrapper">
    @yield('content')
</div>
<script src="{{asset('/assets/front/js/app.min.js')}}"></script>
<script src="{{asset('/assets/front/js/vendors.min.js')}}"></script>
</body>
</html>