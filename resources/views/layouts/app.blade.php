<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <title>@yield('title')</title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <link href="/css/app.css" rel="stylesheet">
    <script src="/js/app.js"></script>
    <script type="text/javascript">
        const baseUrl = '{{ url('/') }}\/';
    </script>
</head>

<body>
<div class="header">
    @yield('header')
</div>
<div class="content">
    @yield('content')
</div>
</body>
</html>
