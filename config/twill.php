<?php

return [
    'enabled' => [
        'users-management' => true,
        'media-library' => true,
        'file-library' => true,
        'block-editor' => true,
        'buckets' => true,
        'users-image' => false,
        'settings' => true,
        'dashboard' => true,
        'search' => true,
        'users-description' => false,
        'activitylog' => true,
        'users-2fa' => false,
        'users-oauth' => false,
    ],

    'block_editor' => [
//        'files' => ['icon', 'svg', 'gif'],
        'crops' => [
            'image' => [
                'no_crop' => [
                    [
                        'name' => 'no_crop',
                        'ratio' => 0,
                    ],
                ],
                'desktop' => [
                    [
                        'name' => 'desktop',
                        'ratio' => 16 / 9,
                        'minValues' => [
                            'width' => 1600,
                            'height' => 900,
                        ],
                    ],
                ],
                'tablet' => [
                    [
                        'name' => 'tablet',
                        'ratio' => 4 / 3,
                        'minValues' => [
                            'width' => 1024,
                            'height' => 768,
                        ],
                    ],
                ],
                'mobile' => [
                    [
                        'name' => 'mobile',
                        'ratio' => 4 / 3,
                        'minValues' => [
                            'width' => 768,
                            'height' => 576,
                        ],
                    ],
                ],
            ],
            'favicon' => [
                '192x192' => [
                    [
                        'name' => '192x192',
                        'ratio' => 1,
                        'minValues' => [
                            'width' => 192,
                            'height' => 192,
                        ],
                    ],
                ],
                '180x180' => [
                    [
                        'name' => '180x180',
                        'ratio' => 1,
                        'minValues' => [
                            'width' => 180,
                            'height' => 180,
                        ],
                    ],
                ],
                '32x32' => [
                    [
                        'name' => '32x32',
                        'ratio' => 1,
                        'minValues' => [
                            'width' => 32,
                            'height' => 32,
                        ],
                    ],
                ],
                '16x16' => [
                    [
                        'name' => '16x16',
                        'ratio' => 1,
                        'minValues' => [
                            'width' => 16,
                            'height' => 16,
                        ],
                    ],
                ],
            ],
            'svg' => [
                'no_crop' => [
                    [
                        'name' => 'no_crop',
                        'ratio' => 0,
                    ],
                ],
            ],
            'slideshow' => [
                'no_crop' => [
                    [
                        'name' => 'no_crop',
                        'ratio' => 0,
                    ],
                ],
            ],
        ],
    ],

    'glide' => [
        'original_media_for_extensions' => ['svg', 'gif', 'png', 'jpg', 'jpeg', 'webp'],
    ],

    'media_library' => [

        'disk' => 'twill_media_library',

        'endpoint_type' => env('MEDIA_LIBRARY_ENDPOINT_TYPE', 's3'),

        'cascade_delete' => env('MEDIA_LIBRARY_CASCADE_DELETE', false),

        'local_path' => env('MEDIA_LIBRARY_LOCAL_PATH', 'uploads'),

        'image_service' => env('MEDIA_LIBRARY_IMAGE_SERVICE', 'A17\Twill\Services\MediaLibrary\Imgix'),

        'acl' => env('MEDIA_LIBRARY_ACL', 'private'),

        'filesize_limit' => env('MEDIA_LIBRARY_FILESIZE_LIMIT', 500),

        'allowed_extensions' => ['svg', 'jpg', 'gif', 'png', 'jpeg', 'webp'],

        'init_alt_text_from_filename' => true,

        'prefix_uuid_with_local_path' => config('twill.file_library.prefix_uuid_with_local_path', false),

        'translated_form_fields' => false,
    ],
];
