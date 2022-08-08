@extends('twill::layouts.settings')

@section('contentFields')

    @formField('input', [
    'label' => 'Default SEO title',
    'name' => 'default_seo_title',
    'placeholder' => 'your title goes here',
    'textLimit' => '80',
    'required' => true,
    'type' => 'text',
    'translated' => true,
    ])

    @formField('input', [
    'label' => 'Default SEO description',
    'name' => 'default_seo_description',
    'placeholder' => 'your description goes here',
    'textLimit' => '80',
    'required' => true,
    'type' => 'text',
    'translated' => true,
    ])


    @formField('input', [
    'label' => 'Default SEO keywords',
    'name' => 'default_seo_keywords',
    'placeholder' => 'your keywords go here',
    'textLimit' => '80',
    'required' => true,
    'type' => 'text',
    'translated' => true,
    ])

    @formField('medias', [
    'label' => 'Default Open Graph image',
    'name' => 'image',
    ])
    

@stop
