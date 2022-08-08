@extends('twill::layouts.form')

@section('sideFieldset')

    @formField('select', [
    'name' => 'status',
    'label' => 'Status',
    'placeholder' => 'Change Status',
    'options' => [
    [
    'value' => 'unread',
    'label' => 'unread'
    ],
    [
    'value' => 'read',
    'label' => 'read'
    ],
    ]
    ])
@endsection

@section('contentFields')
    @formField('input', [
    'name' => 'name',
    'label' => 'Name',
    ])

    @formField('input', [
    'name' => 'phone',
    'label' => 'Phone',
    ])

    @formField('browser', [
    'routePrefix' => 'services',
    'moduleName' => 'services',
    'name' => 'services',
    'label' => 'Services',
    'max' => 1,
    'connectedBrowserField' => 'service_id',
    ])

    @formField('input', [
    'name' => 'length',
    'label' => 'Length',
    ])


    @formField('input', [
    'name' => 'width',
    'label' => 'Width',
    ])
@stop
