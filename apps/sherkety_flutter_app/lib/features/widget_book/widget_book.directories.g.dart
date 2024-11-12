// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_import, prefer_relative_imports, directives_ordering

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AppGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:sherkety_flutter_app/features/auth/presentation/view/complete_login_view.dart'
    as _i2;
import 'package:sherkety_flutter_app/features/auth/presentation/view/login_view.dart'
    as _i3;
import 'package:sherkety_flutter_app/features/auth/presentation/view/register_view.dart'
    as _i4;
import 'package:sherkety_flutter_app/features/auth/presentation/view/widgets/change_number_button.dart'
    as _i5;
import 'package:sherkety_flutter_app/features/auth/presentation/view/widgets/have_an_account.dart'
    as _i6;
import 'package:sherkety_flutter_app/features/auth/presentation/view/widgets/no_account_login.dart'
    as _i7;
import 'package:sherkety_flutter_app/features/auth/presentation/view/widgets/remeber_pass.dart'
    as _i8;
import 'package:sherkety_flutter_app/features/auth/presentation/view/widgets/terms_of_service_privacy_policy.dart'
    as _i9;
import 'package:sherkety_flutter_app/features/auth/presentation/view/widgets/text_register_with.dart'
    as _i10;
import 'package:sherkety_flutter_app/features/auth/presentation/view/widgets/verify_phone_view_body.dart'
    as _i11;
import 'package:sherkety_flutter_app/features/home/presentation/views/home_view.dart'
    as _i12;
import 'package:sherkety_flutter_app/features/home/presentation/views/widgets/bottom_sheet_body.dart'
    as _i13;
import 'package:sherkety_flutter_app/features/home/presentation/views/widgets/company_app_bar.dart'
    as _i14;
import 'package:sherkety_flutter_app/features/home/presentation/views/widgets/home_view_body.dart'
    as _i15;
import 'package:widgetbook/widgetbook.dart' as _i1;

final directories = <_i1.WidgetbookNode>[
  _i1.WidgetbookFolder(
    name: 'features',
    children: [
      _i1.WidgetbookFolder(
        name: 'auth',
        children: [
          _i1.WidgetbookFolder(
            name: 'presentation',
            children: [
              _i1.WidgetbookFolder(
                name: 'view',
                children: [
                  _i1.WidgetbookLeafComponent(
                    name: 'CompleteLoginView',
                    useCase: _i1.WidgetbookUseCase(
                      name: 'Complete Login',
                      builder: _i2.passwordChangeSuccessPage,
                    ),
                  ),
                  _i1.WidgetbookLeafComponent(
                    name: 'LoginView',
                    useCase: _i1.WidgetbookUseCase(
                      name: 'Login Page',
                      builder: _i3.loginUseCase,
                    ),
                  ),
                  _i1.WidgetbookLeafComponent(
                    name: 'RegisterView',
                    useCase: _i1.WidgetbookUseCase(
                      name: 'signup Page',
                      builder: _i4.registerViewuseCase,
                    ),
                  ),
                  _i1.WidgetbookFolder(
                    name: 'widgets',
                    children: [
                      _i1.WidgetbookLeafComponent(
                        name: 'ChangeNumberButton',
                        useCase: _i1.WidgetbookUseCase(
                          name: 'change number button',
                          builder: _i5.changeNumberButtonUseCase,
                        ),
                      ),
                      _i1.WidgetbookLeafComponent(
                        name: 'HaveAnAccount',
                        useCase: _i1.WidgetbookUseCase(
                          name: 'have an account',
                          builder: _i6.haveAnAccount,
                        ),
                      ),
                      _i1.WidgetbookLeafComponent(
                        name: 'NoAccountLogin',
                        useCase: _i1.WidgetbookUseCase(
                          name: 'no an account',
                          builder: _i7.noAccountLogin,
                        ),
                      ),
                      _i1.WidgetbookLeafComponent(
                        name: 'RemeberPass',
                        useCase: _i1.WidgetbookUseCase(
                          name: 'remember',
                          builder: _i8.remeberPass,
                        ),
                      ),
                      _i1.WidgetbookLeafComponent(
                        name: 'TermsOfServicePrivacyPolicy',
                        useCase: _i1.WidgetbookUseCase(
                          name: 'terms of service privacy policy',
                          builder: _i9.termsOfServicePrivacyPolicy,
                        ),
                      ),
                      _i1.WidgetbookLeafComponent(
                        name: 'TextRegisterWith',
                        useCase: _i1.WidgetbookUseCase(
                          name: 'text register with',
                          builder: _i10.haveAnAccount,
                        ),
                      ),
                      _i1.WidgetbookLeafComponent(
                        name: 'VerifyViewBody',
                        useCase: _i1.WidgetbookUseCase(
                          name: 'verify Page',
                          builder: _i11.VerifyViewBodyUseCase,
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          )
        ],
      ),
      _i1.WidgetbookFolder(
        name: 'home',
        children: [
          _i1.WidgetbookFolder(
            name: 'presentation',
            children: [
              _i1.WidgetbookFolder(
                name: 'views',
                children: [
                  _i1.WidgetbookLeafComponent(
                    name: 'HomeView',
                    useCase: _i1.WidgetbookUseCase(
                      name: 'home Page',
                      builder: _i12.homeViewuseCase,
                    ),
                  ),
                  _i1.WidgetbookFolder(
                    name: 'widgets',
                    children: [
                      _i1.WidgetbookLeafComponent(
                        name: 'BottomSheetBody',
                        useCase: _i1.WidgetbookUseCase(
                          name: 'bottom sheet',
                          builder: _i13.bottomSheetBodyuseCase,
                        ),
                      ),
                      _i1.WidgetbookLeafComponent(
                        name: 'CompanyAppBar',
                        useCase: _i1.WidgetbookUseCase(
                          name: 'Company App Bar',
                          builder: _i14.companyAppBarUseCase,
                        ),
                      ),
                      _i1.WidgetbookLeafComponent(
                        name: 'HomeViewBody',
                        useCase: _i1.WidgetbookUseCase(
                          name: 'home view body',
                          builder: _i15.homeViewBodyuseCase,
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          )
        ],
      ),
    ],
  )
];
