@twillBlockTitle('About')
@twillBlockIcon('image-text')
@twillBlockGroup('app')

@formField('input', [
'name' => 'title',
'label' => 'Title',
'translated' => true,
])

@formField('input', [
'name' => 'description',
'label' => 'Description',
'translated' => true,
'type' => 'textarea',
'row' => 3,
])

@formField('repeater', ['type' => 'btn-item'])

@formField('medias', [
'name' => 'slideshow',
'label' => 'Images aside',
'max' => 3,
])