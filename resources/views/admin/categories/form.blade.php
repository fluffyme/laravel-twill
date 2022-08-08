@extends('twill::layouts.form')

@section('sideFieldset')

    @formField('medias', [
    'name' => 'image',
    'label' => 'Cover Category',
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

    @formField('browser', [
    'moduleName' => 'categories',
    'name' => 'categories',
    'label' => 'Parent Category',
    'max' => 1,
    ])

    @formField('input', [
        'name' => 'description',
        'label' => 'Description',
        'translated' => true,
        'type' => 'textarea',
        'row' => 5
    ])

    {{--@formField('checkbox', [--}}
    {{--'name' => 'menu_item',--}}
    {{--'label' => 'Include in Menu'--}}
    {{--])--}}
@stop
