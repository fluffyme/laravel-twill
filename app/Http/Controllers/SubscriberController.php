<?php

namespace App\Http\Controllers;

use App\Mail\Subscribe;
use App\Models\Subscriber;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Validator;

class SubscriberController extends Controller
{
    public function subscribe(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'email' => 'required|email|unique:subscribers'
        ]);

        if ($validator->fails()) {
            return new JsonResponse(['success' => false, 'message' => $validator->errors()], 422);
        }

        $email = $request->get('email');

        $subscriber = Subscriber::create([
                'email' => $email,
            ]
        );

        if ($subscriber) {
            Mail::to($email)->send(new Subscribe($email));

            return response()->json(['success' => true, 'message' => __('emails.thank_you_subscribe_form')]);
        }
    }
}
