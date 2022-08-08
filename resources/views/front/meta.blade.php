<!-- Main meta tags -->
@php $locale = LaravelLocalization::getCurrentLocale(); @endphp
<title>{{@$seoPage->title ? @$seoPage->title : @$seo['default_seo_title'][$locale]}}</title>
<meta name="description" content="{{@$seoPage->description ? @$seoPage->description : @$seo['default_seo_description'][$locale]}}">
<meta name="robots" content="{{@$seoPage->keywords ? @$seoPage->keywords : @$seo['default_seo_keywords'][$locale]}}">
<link rel="canonical" href="{{url()->current()}}" />
{{--<link rel="icon" href="{{$faviconSvg}}">--}}
<!-- Opengraph -->
<meta property="og:title" content="{{@$seoPage->title ? @$seoPage->title : @$seo['default_seo_title'][$locale]}}" />
<meta property="og:description" content="{{@$seoPage->description ? @$seoPage->description : @$seo['default_seo_description'][$locale]}}" />
<meta property="og:image" content="{{@$seoPage->og_image ? @$seoPage->og_image : @$seo['default_og_image']}}" />
<meta property="og:url" content="{{@$seoPage->title ? @$seoPage->title : @$seo['default_seo_title'][$locale]}}" />
<meta property="og:site_name" content="https://**.md/" />
<meta property="og:type" content="{{@$seoPage->title ? @$seoPage->title : @$seo['default_seo_title'][$locale]}}" />
<!-- Twitter Cards -->
<meta name="twitter:title" content="{{@$seoPage->title ? @$seoPage->title : @$seo['default_seo_title'][$locale]}}">
<meta name="twitter:description" content="{{@$seoPage->description ? @$seoPage->description : @$seo['default_seo_description'][$locale]}}">
<meta name="twitter:image" content="{{@$seoPage->og_image ? @$seoPage->og_image : @$seo['default_og_image']}}">
<meta name="twitter:site" content="https://**.md/">
<meta name="twitter:creator" content="DIS Software">
