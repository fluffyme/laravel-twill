@extends('twill::layouts.form')

@section('sideFieldset')

    @formField('medias', [
    'name' => 'image',
    'label' => 'Image Category',
    ])

@endsection

@section('contentFields')
    @formField('input', [
    'name' => 'title',
    'label' => 'Title',
    'translated' => true,
    ])

    @formField('input', [
    'name' => 'slug',
    'label' => 'Slug',
    'translated' => true,
    ])

    @formField('input', [
    'name' => 'description',
    'label' => 'Description',
    'translated' => true,
    'type' => 'textarea',
    'row' => 5
    ])
@stop
