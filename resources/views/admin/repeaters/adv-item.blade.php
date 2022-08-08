@twillRepeaterTitle('Advantage Item')
@twillRepeaterTrigger('Add Advantage')
@twillRepeaterMax('5')

@formField('medias', [
'name' => 'svg',
'label' => 'Svg Icon',
])

@formField('input', [
'name' => 'title',
'label' => 'Title',
'translated' => true,
])

@formField('input', [
'name' => 'text',
'label' => 'Advantage Info Text ',
'type' => 'textarea',
'rows' => 5,
'translated' => true,
])