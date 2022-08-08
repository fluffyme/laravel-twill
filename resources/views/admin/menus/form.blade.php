@extends('twill::layouts.form')

@section('contentFields')

    @formField('input', [
    'name' => 'title',
    'label' => 'Title',
    'maxlength' => 100,
    'translated' => true,
    ])

    @formField('browser', [
    'moduleName' => 'menus',
    'name' => 'parent',
    'label' => 'Parent Menu',
    'max' => 1,
    ])

    @formField('browser', [
    'moduleName' => 'pages',
    'name' => 'pages',
    'label' => 'Pages',
    'max' => 10,
    ])

    @formField('browser', [
    'routePrefix' => 'products',
    'moduleName' => 'categories',
    'name' => 'categories',
    'label' => 'Categories',
    'max' => 10,
    ])
@stop
