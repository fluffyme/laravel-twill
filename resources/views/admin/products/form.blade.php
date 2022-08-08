@extends('twill::layouts.form')

@section('sideFieldset')

@endsection

@section('contentFields')
    @formField('input', [
    'name' => 'title',
    'label' => 'Title',
    'translated' => true,
    ])

    @formField('input', [
    'name' => 'slug',
    'label' => 'Slug',
    'translated' => true,
    ])

    @formField('browser', [
    'moduleName' => 'categories',
    'name' => 'categories',
    'label' => 'Product Category',
    'max' => 1,
    ])

    @formField('browser', [
    'moduleName' => 'brands',
    'name' => 'brands',
    'label' => 'Product Brand',
    'max' => 1,
    ])

    @formField('medias', [
    'name' => 'slideshow',
    'label' => 'Product Image',
    'max' => 5,
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

    @formField('browser', [
    'moduleName' => 'productAtributes',
    'name' => 'productAtributes',
    'label' => 'Product Attributes',
    'max' => 10,
    ])

    @formField('block_editor', [
    'blocks' => 'product-specs',
    ])

@stop
