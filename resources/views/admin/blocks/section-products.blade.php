@twillBlockTitle('Section Products')
@twillBlockIcon('image-text')
@twillBlockGroup('app')

@formField('input', [
'name' => 'title',
'label' => 'Title',
'translated' => true,
])

@formField('browser', [
'routePrefix' => 'products',
'moduleName' => 'products',
'name' => 'products',
'label' => 'Products',
'max' => 12,
])

@formField('input', [
'name' => 'btn',
'label' => 'Button Title',
'translated' => true,
])

@formField('input', [
'name' => 'btnUrl',
'label' => 'URL',
])


