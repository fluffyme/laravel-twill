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
    'name' => 'surname',
    'label' => 'Surname',
    ])

    @formField('input', [
    'name' => 'email',
    'label' => 'Email',
    ])

    @formField('input', [
    'name' => 'phone',
    'label' => 'Phone',
    ])

    @formField('input', [
    'name' => 'text',
    'label' => 'Message',
    'type' => 'textarea',
    'rows' => 5,
    ])
@stop
