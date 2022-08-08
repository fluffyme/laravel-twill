@twillRepeaterTitle('Spec Item')
@twillRepeaterTrigger('Add Spec')
@twillRepeaterMax('3')

@formField('input', [
'name' => 'btn_title',
'label' => 'Btn Title',
'translated' => true,
])

@formField('input', [
'name' => 'tab_title',
'label' => 'Tab Title',
'translated' => true,
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

@formField('checkbox', [
'name' => 'video_check',
'label' => 'Video'
])

@formConnectedFields([
'fieldName' => 'video_check',
'fieldValues' => true,
'renderForBlocks' => true,
])

@formField('input', [
'name' => 'url',
'label' => 'Video Url',
'note' => 'Youtube videos',
'placeholder' => 'https://www.youtube.com/watch?v=p9rgHcO26hg',
])


@formField('medias', [
'label' => 'Image for video',
'name' => 'image',
])
@endformConnectedFields