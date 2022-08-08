<?php

return [

    'main' => [
        'title' => 'Settings',
        'route' => 'admin.main.social.settings',
        'params' => ['section' => 'social-media-links'],
        'primary_navigation' => [
            'social' => [
                'title' => 'Social Media Links',
                'route' => 'admin.main.social.settings',
                'params' => ['section' => 'social-media-links'],
            ],
            'contact' => [
                'title' => 'Contact Fields',
                'route' => 'admin.main.contact.settings',
                'params' => ['section' => 'contact-fields'],
            ],
            'default-seo' => [
                'title' => 'Default SEO Fields',
                'route' => 'admin.main.seo.settings',
                'params' => ['section' => 'default-seo-fields'],
            ],
            'favicon' => [
                'title' => 'Others',
                'route' => 'admin.main.favicon.settings',
                'params' => ['section' => 'favicon'],
            ],
        ]
    ],

    'menus' => [
        'title' => 'Menus',
        'module' => true,
    ],

    'pages' => [
        'title' => 'Pages',
        'module' => true,
    ],

    'products' => [
        'title' => 'Products',
        'route' => 'admin.products.products.index',
        'params' => ['section' => 'Products'],
        'primary_navigation' => [

            'products' => [
                'title' => 'Products',
                'module' => true,
            ],

            'categories' => [
                'title' => 'Categories',
                'module' => true,
            ],
            'productAtributes' => [
                'title' => 'ProductAttributes',
                'module' => true,
            ],
            'brands' => [
                'title' => 'Brands',
                'module' => true,
            ],
        ],
    ],

    'services' => [
        'title' => 'Services',
        'route' => 'admin.services.services.index',
        'params' => ['section' => 'Services'],
        'primary_navigation' => [

            'services' => [
                'title' => 'Services',
                'module' => true,
            ],
            'serviceCategories' => [
                'title' => 'ServiceCategories',
                'module' => true,
            ],
            'serviceOrders' => [
                'title' => 'ServiceOrders',
                'module' => true,
            ],

        ],
    ],


    'news' => [
        'title' => 'News',
        'module' => true,
    ],


    'profiles' => [
        'title' => 'Profiles',
        'module' => true,
    ],


    'contacts' => [
        'title' => 'Contacts',
        'route' => 'admin.contacts.contacts.index',
        'params' => ['section' => 'Contacts'],
        'primary_navigation' => [
            'contacts' => [
                'title' => 'Contacts',
                'module' => true,
            ],
//            'subscribers' => [
//                'title' => 'Subscribers',
//                'module' => true,
//            ],
        ]
    ],

    'productOrders' => [
        'title' => 'ProductOrders',
        'module' => true,
    ],

];
