@extends('twill::layouts.form')

@section('contentFields')
    @formField('input', [
    'name' => 'title',
    'label' => 'Title',
    'translated' => true,
    ])

    @formField('medias', [
    'name' => 'image',
    'label' => 'Service Images',
    'max' => 10,
    ])

    @formField('browser', [
    'routePrefix' => 'services',
    'moduleName' => 'serviceCategories',
    'name' => 'serviceCategories',
    'label' => 'Service Categories',
    ])

    @formField('wysiwyg', [
    'name' => 'description',
    'label' => 'Description',
    'toolbarOptions' => [
    ['header' => [2, 3, 4, 5, 6, false]],
    'bold',
    'italic',
    'underline',
    'strike',
    ["script" => "super"],
    ["script" => "sub"],
    "blockquote",
    "code-block",
    ['list' => 'ordered'],
    ['list' => 'bullet'],
    ['indent' => '-1'],
    ['indent' => '+1'],
    ["align" => []],
    ["direction" => "rtl"],
    'link',
    "clean",
    ],
    'placeholder' => 'Text',
    'editSource' => true,
    'note' => 'Hint message`',
    'translated' => true,
    ])

    @formField('input', [
    'name' => 'price',
    'label' => 'Price',
    ])
@stop
