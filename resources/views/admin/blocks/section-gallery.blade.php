@twillBlockTitle('Section Gallery')
@twillBlockIcon('image-text')
@twillBlockGroup('app')

@formField('input', [
'name' => 'title',
'label' => 'Gallery Title',
'translated' => true,
])

@formField('medias', [
'name' => 'slideshow',
'label' => 'Gallery images',
'max' => 5,
])