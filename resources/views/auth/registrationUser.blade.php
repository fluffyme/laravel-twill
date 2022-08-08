@extends('front.layouts.app')

@section('container')

    <div class="registration">
        <div class="registratios__container">
            <div class="form-contacts__container">
                <div class="form-contacts__body">
                    <form action="{{route('register.user')}}" class="form__form contact-form" id="registerForm">
                        @csrf
                        <h3 class="contact-form__name">РЕГИСТРАЦИЯ</h3>
                        <h4 class="contact-form__subname">ФИЗИЧЕСКОЕ ЛИЦО</h4>
                        <div class="contact-form__row">
                            <div class="contact-form__column">
                                <div class="contact-form__line">
                                    <input class="contact-form__input" type="text" name="name" placeholder="Имя" required>
                                </div>

                                <div class="contact-form__line">
                                    <input class="contact-form__input" type="text" name="email" placeholder="Эл. Почта" required>
                                </div>
                            </div>
                            <div class="contact-form__column">
                                <div class="contact-form__line">
                                    <input class="contact-form__input" type="text" name="phone" placeholder="Телефон" required>
                                </div>
                                <div class="contact-form__line">
                                    <input class="contact-form__input" type="password" name="password" placeholder="Пароль" required>
                                </div>
                            </div>
                        </div>
                        <button type="submit" class="contact-form__btn btn-block">Зарегистрироваться</button>
                    </form>
                </div>

            </div>

        </div>
    </div>

@endsection