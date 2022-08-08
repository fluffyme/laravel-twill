@formField('input', [
'name' => $titleFormKey ?? 'title',
'label' => $titleFormKey === 'title' ? twillTrans('twill::lang.modal.title-field') : ucfirst($titleFormKey),
'translated' => $translateTitle ?? false,
'required' => true,
'onChange' => 'formatPermalink'
])

@if ($item->template ?? false)
    {{--
        On update, we show the selected template in a disabled field.
        For simplicity, templates cannot be modified once an item has been created.
    --}}

    @formField('input', [
    'name' => 'template_label',
    'label' => 'Template',
    'disabled' => true,
    ])
@else
    {{--
        On create, we show a select field with all possible templates.
    --}}

    @formField('select', [
    'name' => 'template',
    'label' => 'Template',
    'default' => \App\Models\Page::DEFAULT_TEMPLATE,
    'options' => \App\Models\Page::AVAILABLE_TEMPLATES,
    ])
@endif

@if ($permalink ?? true)
    @formField('input', [
    'name' => 'slug',
    'label' => twillTrans('twill::lang.modal.permalink-field'),
    'translated' => true,
    'ref' => 'permalink',
    'prefix' => $permalinkPrefix ?? ''
    ])
@endif
