<?php

enum Page
{
    case Index;
    case Listing;
    case Private;
    case Search;
}

function isActive(Page $page): string
{
    $needle = match ($page) {
        Page::Listing =>
'listing', Page::Private => 'admin', Page::Search => 'form_recherche', default => 'index', }; return
str_contains($_SERVER['PHP_SELF'], $needle) ? 'active' : 'inactive'; } ?>

<body>
    <div class="bg-img"></div>
    <header>
        <nav>
            <div class="logo-wrapper">
                <a href="/">
                    <svg
                        width="32"
                        height="32"
                        viewBox="0 0 135 135"
                        xmlns="http://www.w3.org/2000/svg"
                        aria-label="Accueil"
                        aria-description="Logo de la Fondation"
                        overflow="visible">
                        <circle cx="67.7" cy="71.5" r="33" fill="none" stroke-width="6" />
                        <path
                            d="m51.9 11.9h31.7l3.07 11.4.944.391c19.4 8.03 32 26.9 32 47.9 0 2.26-.149 4.53-.445 6.77l-.133 1.01 8.37 8.37-15.8 27.4-11.4-3.06-.809.623c-9.06 6.95-20.2 10.7-31.6 10.7-11.4 6e-5-22.5-3.77-31.6-10.7l-.81-.623-11.4 3.06-15.8-27.4 8.37-8.37-.133-1.01c-.296-2.25-.445-4.51-.445-6.77.000141-21 12.6-39.9 32-47.9l.944-.391z"
                            fill="none"
                            stroke-width="4" />
                        <path
                            id="a"
                            d="m64.7 30.6v24h-5.08l8.08 14 8.08-14h-5.08l-.000265-24h-5.99" />
                        <path
                            id="b"
                            d="m 104.62044,89.351924 -20.784611,-12 2.54,-4.399409 -16.164355,-0.0025 8.084355,13.997485 2.54,-4.399409 20.784741,11.999771 2.995,-5.187492" />
                        <path
                            id="c"
                            d="m 33.77956,94.548077 20.784611,-12.000001 2.54,4.399409 8.084342,-13.997492 -16.164355,0.0025 2.54,4.399409 -20.784477,12.000228 2.995,5.187492" />
                    </svg>
                    <div class="text-wrapper">
                        <h2>Fondation SCP</h2>
                        <span class="scp">
                            <span class="sec">Secure,</span>
                            <span class="cont">Contain,</span>
                            <span class="pro">Protect</span>
                        </span>
                    </div>
                </a>
            </div>
            <a href="/" class="<?= isActive(Page::Index) ?>">Accueil</a>
            <a href="/listing.php" class="<?=isActive(Page::Listing) ?>">Liste de SCPs</a>
            <a href="/admin.php" class="<?= isActive(Page::Private) ?>">Privé</a>
            <a href="/form_recherche.php" class="<?= isActive(Page::Search) ?>">Search</a>
        </nav>
    </header>
