@twillBlockTitle('Section Services')
@twillBlockIcon('image-text')
@twillBlockGroup('app')

@formField('input', [
'name' => 'title',
'label' => 'Section Title',
'translated' => true,
])

{{--@formField('browser', [--}}
{{--'routePrefix' => 'products',--}}
{{--'moduleName' => 'services',--}}
{{--'name' => 'services',--}}
{{--'label' => 'Services',--}}
{{--'max' => 1,--}}
{{--])--}}

@formField('input', [
'name' => 'btn',
'label' => 'Button Title',
'translated' => true,
])

@formField('input', [
'name' => 'btnUrl',
'label' => 'URL',
])
