@twillBlockTitle('Contact form')
@twillBlockIcon('image-text')
@twillBlockGroup('app')

@formField('medias', [
'label' => 'Image Cover',
'name' => 'image',
])

@formField('input', [
'name' => 'title',
'label' => 'Form Title',
'translated' => true,
])

@formField('input', [
'name' => 'text',
'label' => 'Form subTitle',
'translated' => true,
])


@formField('input', [
'name' => 'name',
'label' => 'Name',
'translated' => true,
'note' => 'Form placeholder',
])

@formField('input', [
'name' => 'surname',
'label' => 'Surname',
'translated' => true,
'note' => 'Form placeholder',
])

@formField('input', [
'name' => 'phone',
'label' => 'Phone',
'translated' => true,
'note' => 'Form placeholder',
])

@formField('input', [
'name' => 'email',
'label' => 'Email',
'translated' => true,
'note' => 'Form placeholder',
])

@formField('input', [
'name' => 'message',
'label' => 'Message',
'translated' => true,
'note' => 'Form placeholder',
])

@formField('input', [
'name' => 'btn',
'label' => 'Button',
'translated' => true,
'note' => 'Form Btn Name',
])
