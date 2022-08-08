@extends('twill::layouts.settings')

@section('contentFields')

    @formField('input', [
    'label' => 'Facebook Site',
    'name' => 'facebook_site',
    'placeholder' => 'https://www.facebook.com/{page}',
    'textLimit' => '80',
    'required' => true,
    'type' => 'text',
    ])

    @formField('input', [
    'label' => 'Telegram',
    'name' => 'telegram_url',
    'placeholder' => 'https://telegram.me/telegramUsername',
    'textLimit' => '80',
    'required' => true,
    'type' => 'text',
    ])

    @formField('input', [
    'name' => 'viber_url',
    'label' => 'Viber Url',
    ])

    @formField('input', [
    'name' => 'whatt_url',
    'label' => 'Whats App Url',
    ])

@stop