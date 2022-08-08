@extends('twill::layouts.form')

@section('contentFields')
    @formField('input', [
    'name' => 'title',
    'label' => 'Title',
    'translated' => true,
    ])

    @formField('wysiwyg', [
    'name' => 'description1',
    'label' => 'First Description',
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

    @formField('medias', [
    'name' => 'slideshow',
    'label' => 'Images between texts',
    'max' => 2,
    ])

    @formField('wysiwyg', [
    'name' => 'description2',
    'label' => 'Seccond Description',
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
@stop

@section('sideFieldset')
    @formField('medias', [
    'name' => 'cover',
    'label' => 'News cover',
    ])
@endsection
