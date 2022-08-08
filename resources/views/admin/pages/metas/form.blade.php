@extends('twill::layouts.form')

@section('contentFields')
@formField('input', [
'name' => 'title',
'label' => 'Meta title',
'translated' => true,
])

@formField('input', [
'name' => 'description',
'label' => 'Meta description',
'translated' => true,
])

@formField('input', [
'name' => 'keywords',
'label' => 'Meta keywords',
'translated' => true,
])

@formField('input', [
'name' => 'og_title',
'label' => 'Og Title',
'translated' => true,
])

@formField('input', [
'name' => 'og_type',
'label' => 'Og type',
])

@formField('medias', [
'label' => 'Og image',
'name' => 'cover',
])

@formField('input', [
'name' => 'og_url',
'label' => 'Og url',
])

@stop
