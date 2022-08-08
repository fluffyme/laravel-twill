@extends('twill::layouts.settings')

@section('contentFields')

    @formField('input', [
    'label' => 'Phone field',
    'name' => 'phone',
    'placeholder' => '+(373)69000001',
    'textLimit' => '80',
    'required' => true,
    'type' => 'text',
    'note' => 'many numbers delimited by semicolon (;)',
    ])

    @formField('input', [
    'label' => 'Address field',
    'name' => 'office_address',
    'placeholder' => ' Chisinau, Mircea cel Batran 11/6',
    'textLimit' => '80',
    'required' => true,
    'type' => 'text',
    'translated' => true,
    ])

    @formField('input', [
    'label' => 'Address map url',
    'name' => 'office_map_url',
    'placeholder' => 'https://www.google.com/',
    'textLimit' => '80',
    'required' => true,
    'type' => 'text',
    ])

    @formField('input', [
    'label' => 'Email field',
    'name' => 'email',
    'placeholder' => 'info@domain.com',
    'textLimit' => '80',
    'required' => true,
    'type' => 'text',
    ])

    @formField('input', [
    'label' => 'Working hours',
    'name' => 'working_hours',
    'placeholder' => 'Пн-Пт: 10:00 - 19:00 </br> Сб: 14:00 - 18:00',
    'textLimit' => '80',
    'required' => true,
    'type' => 'text',
    'translated' => true,
    ])

@stop