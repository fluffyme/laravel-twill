@twillRepeaterTitle('Btn Img')
@twillRepeaterTrigger('Add Btn Img')
@twillRepeaterMax('2')

@formField('input', [
'name' => 'title',
'label' => 'Title',
'translated' => true,
])

@formField('repeater', ['type' => 'btn-item'])

@formField('medias', [
'name' => 'image',
'label' => 'Image',
])