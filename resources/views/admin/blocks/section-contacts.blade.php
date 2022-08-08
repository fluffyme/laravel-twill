@twillBlockTitle('Section Contacts')
@twillBlockIcon('image-text')
@twillBlockGroup('app')

@formField('input', [
'name' => 'title',
'label' => 'Contacts Title',
'translated' => true,
])

@formField('input', [
'name' => 'phone',
'label' => 'Phone',
'translated' => true,
'note' => 'Text before text number',
])

@formField('input', [
'name' => 'email',
'label' => 'Email',
'translated' => true,
'note' => 'Text before text email',
])


@formField('medias', [
'label' => 'Image Cover',
'name' => 'image',
])

