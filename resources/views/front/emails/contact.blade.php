@component('mail::message')

    # {{__('emails.greeting')}}

    {{__('emails.good_news')}}

    {{ @$form_details['name'] }} {{__('emails.lets_talk')}}
    {{__('emails.email')}}: {{ @$form_details['email'] }}, {{__('emails.phone')}}: {{ @$form_details['phone'] }}.

    {{ @$form_details['description']}}

    {{__('emails.please_contact')}}

    {{__('emails.regards')}},
    {{ env('APP_NAME') }}

@endcomponent