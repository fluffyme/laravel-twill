<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class SendMail extends Mailable
{
    use Queueable, SerializesModels;

    public  $title;
    public $form_details;

    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct($form_details)
    {
        $this->form_details = $form_details;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        return $this->subject('New Message from eCurat')->markdown('front.emails.contact');
    }
}
