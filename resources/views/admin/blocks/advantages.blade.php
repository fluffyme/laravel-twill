@twillBlockTitle('Advantages')
@twillBlockIcon('image-text')
@twillBlockGroup('app')

@formField('input', [
'name' => 'title',
'label' => 'Title',
'translated' => true,
])

@formField('medias', [
'name' => 'image',
'label' => 'Image Background',
])

@formField('repeater', ['type' => 'adv-item'])