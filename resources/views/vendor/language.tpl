<!-- Language Menu -->
<li class="dropdown">
    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
        <i class="fa fa-language" aria-hidden="true"></i>
        <span class="description-text">{{ config('locales.'.App::getLocale(), config('locales.'.config('app.fallback_locale')))['short_name'] }}</span>
        <span class="caret"></span>
    </a>
    <ul class="dropdown-menu" role="menu">
        @foreach(config('locales') as $code => $langInfo)
            @if (!isset($langInfo['alias']))
                <li class="locale"><a href="?lang={{ $code }}">{{ $langInfo['name'] }}</a></li>
            @endif
        @endforeach
    </ul>
</li>
