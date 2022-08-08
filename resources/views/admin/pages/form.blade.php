@extends('twill::layouts.form')

@section('contentFields')
    @formField('input', [
        'name' => 'title',
        'label' => 'Page Name',
        'maxlength' => 100,
        'translated' => true,
    ])

    @if ($item->template ?? false)
        {{--
            On update, we show the selected template in a disabled field.
            For simplicity, templates cannot be modified once an item has been created.
        --}}

        @formField('input', [
        'name' => 'template_label',
        'label' => 'Template',
        'disabled' => true,
        ])
    @endif

    @formField('block_editor', [
    'blocks' => $item->blockSelection,
    ])
@stop
