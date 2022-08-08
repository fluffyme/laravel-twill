@twillRepeaterTitle('Des Img Item')
@twillRepeaterTrigger('Add Des Img')
@twillRepeaterMax('5')

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

@formField('medias', [
'label' => 'Image PNG',
'name' => 'image',
])