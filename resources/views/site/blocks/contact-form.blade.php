<div class="form-contacts" style="background-image: url({{$block->image('image', 'no_crop')}});">
    <div class="form-contacts__container">
        <div class="form-contacts__body">
            <form action="{{route('contact.form')}}" class="form__form contact-form" id="contactForm" method="post">
                @csrf
                <h3 class="contact-form__name">{{$block->translatedinput('title')}}</h3>
                <h4 class="contact-form__subname">{{$block->translatedinput('text')}}</h4>
                <div class="contact-form__row">
                    <div class="contact-form__column">
                        <div class="contact-form__line">
                            <input class="contact-form__input" type="text" name="name" placeholder="{{$block->translatedinput('name')}}" required>
                        </div>
                        <div class="contact-form__line">
                            <input class="contact-form__input" type="text" name="surname" placeholder="{{$block->translatedinput('surname')}}" required>
                        </div>

                        <div class="contact-form__line">
                            <input class="contact-form__input" type="text" name="email" placeholder="{{$block->translatedinput('email')}}" required>
                        </div>
                    </div>
                    <div class="contact-form__column">
                        <div class="contact-form__line">
                            <input class="contact-form__input" type="text" name="phone" placeholder="{{$block->translatedinput('phone')}}" required>
                        </div>
                        <div class="contact-form__line">
                            <textarea class="contact-form__input contact-form__input_text" type="text" name="text" placeholder="{{$block->translatedinput('message')}}" required></textarea>
                        </div>
                    </div>
                </div>
                <button type="submit" class="contact-form__btn btn-block ">{{$block->translatedinput('btn')}}</button>
            </form>
        </div>
    </div>
</div>
