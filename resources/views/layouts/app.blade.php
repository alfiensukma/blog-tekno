<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Tekno Article</title>
    @vite([
        'resources/sass/app.scss', 
        'resources/js/app.js', 
        'resources/css/app.css',
        ])
    <link rel="stylesheet" href="/fontawesome-free-6.4.2-web/css/all.min.css">
    <link rel="stylesheet" href="/css/dataTables.bootstrap5.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Inter:wght@400;800&display=swap">
</head>
<body>
    <header class="pt-5">
        @isset($header)
            {{ $header }}
        @endisset
    </header>

    <main class="container">
        {{ $slot }}
    </main>
    <script src="/js/jquery.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="/js/jquery.dataTables.js"></script>
    <script src="/js/dataTables.js"></script>
</body>
</html>