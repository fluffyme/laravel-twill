@twillBlockTitle('Advantages Section')
@twillBlockIcon('image-text')
@twillBlockGroup('app')


@formField('medias', [
'name' => 'image',
'label' => 'Image Cover',
])

@formField('input', [
'name' => 'title',
'label' => 'Title',
'translated' => true,
])

@formField('repeater', ['type' => 'adv-item'])