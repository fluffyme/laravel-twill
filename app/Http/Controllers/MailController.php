<?php

namespace App\Http\Controllers;

use App\Mail\SendMail;
use App\Models\Contact;
use App\Models\ServiceOrder;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\Mail;

class MailController extends Controller
{
    public function contactForm(Request $request) {

        // Form validation
        $this->validate($request, [
            'name' => 'required',
            'email' => 'required|email',
            'phone' => 'required|regex:/^([0-9\s\-\+\(\)]*)$/|min:10',
            'surname' => 'required',
            'text' => 'required',
        ]);

        $fields = $request->all();

        $fields['status'] = Contact::UNREAD;
        //  Store data in database
        Contact::create($fields);

        $formData = [
            'name' => $request->get('name'),
            'email' => $request->get('email'),
            'phone' => $request->get('phone'),
            'description' => $request->get('text'),
        ];

        //  Send mail to admin
        $adminMail = env("MAIL_TO_ADDRESS");

        Mail::to($adminMail)->send(new SendMail($formData));

        return response()->json(['success' => true, 'message' => __('emails.we_received_message')]);
    }

    public function servicesForm(Request $request) {

        // Form validation
        $this->validate($request, [
            'name' => 'required',
            'phone' => 'required|regex:/^([0-9\s\-\+\(\)]*)$/|min:10',
            'service_id' => 'required',
            'length' => 'numeric',
            'width' => 'numeric',
        ]);

        $fields = $request->all();

        $fields['status'] = ServiceOrder::UNREAD;
        //  Store data in database
        ServiceOrder::create($fields);

        $formData = [
            'name' => $request->get('name'),
            'phone' => $request->get('phone'),
            'service' => $request->get('text'),
        ];

        //  Send mail to admin
        $adminMail = env("MAIL_TO_ADDRESS");

        Mail::to($adminMail)->send(new SendMail($formData));

        return response()->json(['success' => true, 'message' => __('emails.we_received_message')]);
    }
}
