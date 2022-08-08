@extends('twill::layouts.form')

@section('contentFields')
    @formField('input', [
    'name' => 'title',
    'label' => 'Title',
    'translated' => true,
    ])

    @formField('browser', [
    'moduleName' => 'productAtributes',
    'name' => 'productAtributes',
    'label' => 'Parent Attributes',
    'max' => 1,
    ])

    @formField('input', [
    'name' => 'description',
    'label' => 'Description',
    'translated' => true,
    'type' => 'textarea',
    'row' => 5
    ])

@stop
