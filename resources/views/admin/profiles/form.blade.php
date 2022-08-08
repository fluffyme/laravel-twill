@extends('twill::layouts.form')

@section('contentFields')
    @formField('input', [
        'name' => 'name',
        'label' => 'Name',
        'maxlength' => 100
    ])

    @formField('input', [
    'type' => 'textarea',
    'name' => 'description',
    'label' => 'Description',
    'maxlength' => 1000,
    ])

    @formField('checkbox', [
    'name' => 'is_vip',
    'label' => 'Can access all VIP content',
    ])
@stop
