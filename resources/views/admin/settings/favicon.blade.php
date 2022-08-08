@extends('twill::layouts.settings')

@section('contentFields')

    @formField('input', [
    'label' => 'Logo Text',
    'name' => 'logo_text',
    'note' => 'used in footer',
    'translated' => true,
    ])

    @formField('input', [
    'label' => 'Currency',
    'name' => 'currency',
    'note' => 'used for products',
    'translated' => true,
    ])

    @formField('input', [
    'label' => '* Product Text',
    'name' => 'product_text',
    'note' => 'used for products',
    'translated' => true,
    ])

    @formField('medias', [
    'label' => 'Favicon',
    'name' => 'favicon',
    'note' => 'recommended: at least 192x192 pixels',
    ])

    @formField('medias', [
    'label' => 'Favicon SVG',
    'name' => 'svg',
    ])
@stop
