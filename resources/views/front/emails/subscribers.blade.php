@component('mail::message')
    # {{__('emails.greeting')}}

{{__('emails.thank_you_subscription')}}

@component('mail::button', ['url' => url('/')])
    {{ env('APP_NAME') }}
@endcomponent

    {{__('emails.regards')}},
    {{ env('APP_NAME') }}

@endcomponent
