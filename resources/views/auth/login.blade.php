<div class="registration">
    <div class="registratios__container">
        <div class="form-contacts__container">
            <div class="form-contacts__body">
                <form action="{{route('login')}}" class="form__form contact-form" method="post">
                    @csrf
                    <div class="contact-form__row">
                        <div class="contact-form__column contact-form__column_user">
                            <h3 class="contact-form__name">{{__('user.log_in')}}</h3>
                            <div class="contact-form__line">
                                <input class="contact-form__input" type="text" name="email" placeholder="{{__('user.email')}}" required>
                            </div>
                            <div class="contact-form__line">
                                <input class="contact-form__input" type="password" name="password" placeholder="{{__('user.psw')}}" required>
                                <a href="about.html#" class="contact-form__link">{{__('user.forgot_psw')}}</a>
                            </div>

                            <button type="submit" class="contact-form__btn btn-block ">{{__('user.log_in')}}</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>