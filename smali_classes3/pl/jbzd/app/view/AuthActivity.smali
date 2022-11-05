.class public abstract Lpl/jbzd/app/view/AuthActivity;
.super Lpl/jbzd/core/MvpBaseActivity;
.source "AuthActivity.java"

# interfaces
.implements Lpl/jbzd/app/ui/view/dialog/NotificationDialog$a;
.implements Lpl/jbzd/app/ui/view/dialog/RestorePasswordDialog$a;
.implements Lpl/jbzd/app/ui/view/dialog/ShareMenuDialog$a;
.implements Lpl/jbzd/app/ui/view/dialog/SignInDialog$a;
.implements Lpl/jbzd/app/ui/view/dialog/SignUpDialog$a;
.implements Lpl/jbzd/app/ui/view/dialog/StatusDialog$a;


# instance fields
.field protected a:Lcom/google/android/gms/analytics/Tracker;

.field protected b:Lpl/jbzd/app/ui/view/dialog/a;

.field protected c:Lcom/facebook/CallbackManager;

.field private d:Lpl/jbzd/app/ui/view/dialog/ShareMenuDialog;

.field private e:Landroid/view/View;

.field private f:Lpl/jbzd/app/model/Media;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lpl/jbzd/core/MvpBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Lpl/jbzd/app/model/Media;)V
    .locals 3

    .prologue
    .line 482
    invoke-virtual {p0}, Lpl/jbzd/app/view/AuthActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-class v1, Lpl/jbzd/app/ui/view/dialog/ShareMenuDialog;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/ui/view/dialog/ShareMenuDialog;

    .line 484
    if-nez v0, :cond_0

    new-instance v0, Lpl/jbzd/app/ui/view/dialog/ShareMenuDialog;

    invoke-direct {v0}, Lpl/jbzd/app/ui/view/dialog/ShareMenuDialog;-><init>()V

    .line 485
    :cond_0
    invoke-virtual {v0}, Lpl/jbzd/app/ui/view/dialog/ShareMenuDialog;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lpl/jbzd/app/ui/view/dialog/ShareMenuDialog;->dismissAllowingStateLoss()V

    .line 487
    :cond_1
    invoke-virtual {v0, p2}, Lpl/jbzd/app/ui/view/dialog/ShareMenuDialog;->a(Lpl/jbzd/app/model/Media;)V

    .line 488
    invoke-virtual {p0}, Lpl/jbzd/app/view/AuthActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-class v2, Lpl/jbzd/app/ui/view/dialog/SignInDialog;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lpl/jbzd/app/ui/view/dialog/ShareMenuDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 489
    return-void
.end method

.method public a(Landroid/view/View;I)Z
    .locals 1

    .prologue
    .line 461
    const/4 v0, 0x1

    if-ne v0, p2, :cond_0

    .line 462
    invoke-virtual {p0}, Lpl/jbzd/app/view/AuthActivity;->d()V

    .line 465
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public a(Lpl/jbzd/app/ui/view/dialog/RestorePasswordDialog;Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 455
    const/4 v0, 0x0

    return v0
.end method

.method public a(Lpl/jbzd/app/ui/view/dialog/RestorePasswordDialog;Landroid/view/View;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 404
    invoke-static {p0}, Lpl/jbzd/core/a/a;->c(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 405
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a00c1

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 440
    :goto_0
    return v0

    .line 409
    :cond_0
    invoke-virtual {p1, v1}, Lpl/jbzd/app/ui/view/dialog/RestorePasswordDialog;->a(Z)V

    .line 411
    invoke-static {}, Lpl/jbzd/api/ApiClient;->getApiService()Lpl/jbzd/api/ApiService;

    move-result-object v0

    invoke-interface {v0, p3}, Lpl/jbzd/api/ApiService;->user_retrieve_password(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    new-instance v2, Lpl/jbzd/app/view/AuthActivity$6;

    invoke-direct {v2, p0, p1}, Lpl/jbzd/app/view/AuthActivity$6;-><init>(Lpl/jbzd/app/view/AuthActivity;Lpl/jbzd/app/ui/view/dialog/RestorePasswordDialog;)V

    invoke-interface {v0, v2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    move v0, v1

    .line 440
    goto :goto_0
.end method

.method public a(Lpl/jbzd/app/ui/view/dialog/ShareMenuDialog;Landroid/view/View;Lpl/jbzd/app/model/Media;)Z
    .locals 3

    .prologue
    .line 494
    iget-object v0, p0, Lpl/jbzd/app/view/AuthActivity;->a:Lcom/google/android/gms/analytics/Tracker;

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lpl/jbzd/app/view/AuthActivity;->a:Lcom/google/android/gms/analytics/Tracker;

    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    const-string v2, "Social"

    .line 496
    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    const-string v2, "Share obrazka"

    .line 497
    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    .line 498
    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v1

    .line 495
    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 501
    :cond_0
    invoke-virtual {p3}, Lpl/jbzd/app/model/Media;->realmGet$title()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lpl/jbzd/app/model/Media;->realmGet$share_url()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lpl/jbzd/core/a/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 502
    const v1, 0x7f0a0116

    invoke-virtual {p0, v1}, Lpl/jbzd/app/view/AuthActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lpl/jbzd/app/view/AuthActivity;->startActivity(Landroid/content/Intent;)V

    .line 503
    const/4 v0, 0x0

    return v0
.end method

.method public a(Lpl/jbzd/app/ui/view/dialog/SignInDialog;Landroid/view/View;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 242
    invoke-static {p0}, Lpl/jbzd/core/a/a;->c(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 243
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a00c1

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 250
    :goto_0
    return v0

    .line 247
    :cond_0
    invoke-virtual {p1, v1}, Lpl/jbzd/app/ui/view/dialog/SignInDialog;->a(Z)V

    .line 248
    iput-object p1, p0, Lpl/jbzd/app/view/AuthActivity;->b:Lpl/jbzd/app/ui/view/dialog/a;

    .line 249
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v2

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "public_profile"

    aput-object v4, v3, v0

    const-string v0, "user_friends"

    aput-object v0, v3, v1

    const/4 v0, 0x2

    const-string v4, "email"

    aput-object v4, v3, v0

    const/4 v0, 0x3

    const-string v4, "user_birthday"

    aput-object v4, v3, v0

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, p0, v0}, Lcom/facebook/login/LoginManager;->logInWithReadPermissions(Landroid/app/Activity;Ljava/util/Collection;)V

    move v0, v1

    .line 250
    goto :goto_0
.end method

.method public a(Lpl/jbzd/app/ui/view/dialog/SignInDialog;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 190
    invoke-static {p0}, Lpl/jbzd/core/a/a;->c(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 191
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a00c1

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 236
    :goto_0
    return v0

    .line 195
    :cond_0
    invoke-virtual {p1, v1}, Lpl/jbzd/app/ui/view/dialog/SignInDialog;->a(Z)V

    .line 197
    invoke-static {}, Lpl/jbzd/api/ApiClient;->getApiService()Lpl/jbzd/api/ApiService;

    move-result-object v0

    invoke-interface {v0, p3, p4}, Lpl/jbzd/api/ApiService;->user_sign_in(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    new-instance v2, Lpl/jbzd/app/view/AuthActivity$4;

    invoke-direct {v2, p0, p0, p1}, Lpl/jbzd/app/view/AuthActivity$4;-><init>(Lpl/jbzd/app/view/AuthActivity;Landroid/content/Context;Lpl/jbzd/app/ui/view/dialog/SignInDialog;)V

    invoke-interface {v0, v2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    move v0, v1

    .line 236
    goto :goto_0
.end method

.method public a(Lpl/jbzd/app/ui/view/dialog/SignUpDialog;Landroid/view/View;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 357
    invoke-static {p0}, Lpl/jbzd/core/a/a;->c(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 358
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a00c1

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 365
    :goto_0
    return v0

    .line 362
    :cond_0
    invoke-virtual {p1, v1}, Lpl/jbzd/app/ui/view/dialog/SignUpDialog;->a(Z)V

    .line 363
    iput-object p1, p0, Lpl/jbzd/app/view/AuthActivity;->b:Lpl/jbzd/app/ui/view/dialog/a;

    .line 364
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v2

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "public_profile"

    aput-object v4, v3, v0

    const-string v0, "user_friends"

    aput-object v0, v3, v1

    const/4 v0, 0x2

    const-string v4, "email"

    aput-object v4, v3, v0

    const/4 v0, 0x3

    const-string v4, "user_birthday"

    aput-object v4, v3, v0

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, p0, v0}, Lcom/facebook/login/LoginManager;->logInWithReadPermissions(Landroid/app/Activity;Ljava/util/Collection;)V

    move v0, v1

    .line 365
    goto :goto_0
.end method

.method public a(Lpl/jbzd/app/ui/view/dialog/SignUpDialog;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 305
    invoke-static {p0}, Lpl/jbzd/core/a/a;->c(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 306
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a00c1

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 351
    :goto_0
    return v0

    .line 310
    :cond_0
    invoke-virtual {p1, v1}, Lpl/jbzd/app/ui/view/dialog/SignUpDialog;->a(Z)V

    .line 312
    invoke-static {}, Lpl/jbzd/api/ApiClient;->getApiService()Lpl/jbzd/api/ApiService;

    move-result-object v0

    invoke-interface {v0, p3, p4, p5, p6}, Lpl/jbzd/api/ApiService;->user_sign_up(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    new-instance v2, Lpl/jbzd/app/view/AuthActivity$5;

    invoke-direct {v2, p0, p0, p1}, Lpl/jbzd/app/view/AuthActivity$5;-><init>(Lpl/jbzd/app/view/AuthActivity;Landroid/content/Context;Lpl/jbzd/app/ui/view/dialog/SignUpDialog;)V

    invoke-interface {v0, v2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    move v0, v1

    .line 351
    goto :goto_0
.end method

.method public abstract b()V
.end method

.method public b(Landroid/view/View;Z)Z
    .locals 3

    .prologue
    .line 729
    iget-object v0, p0, Lpl/jbzd/app/view/AuthActivity;->a:Lcom/google/android/gms/analytics/Tracker;

    if-eqz v0, :cond_0

    .line 730
    iget-object v1, p0, Lpl/jbzd/app/view/AuthActivity;->a:Lcom/google/android/gms/analytics/Tracker;

    new-instance v0, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v0}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    const-string v2, "Menu"

    .line 731
    invoke-virtual {v0, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v0

    const-string v2, "notyfikacje"

    .line 732
    invoke-virtual {v0, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    if-eqz p2, :cond_1

    const-string v0, "on"

    .line 733
    :goto_0
    invoke-virtual {v2, v0}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v0

    .line 734
    invoke-virtual {v0}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v0

    .line 730
    invoke-virtual {v1, v0}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 737
    :cond_0
    invoke-virtual {p0}, Lpl/jbzd/app/view/AuthActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lpl/jbzd/app/view/AuthActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "NOTIFICATIONS_ON"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 738
    const/4 v0, 0x1

    return v0

    .line 732
    :cond_1
    const-string v0, "off"

    goto :goto_0
.end method

.method public b(Lpl/jbzd/app/ui/view/dialog/ShareMenuDialog;Landroid/view/View;Lpl/jbzd/app/model/Media;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 509
    const-string v0, "clipboard"

    invoke-virtual {p0, v0}, Lpl/jbzd/app/view/AuthActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 510
    const-string v1, "jbzd"

    invoke-virtual {p3}, Lpl/jbzd/app/model/Media;->realmGet$share_url()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    .line 511
    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 513
    invoke-virtual {p0}, Lpl/jbzd/app/view/AuthActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a00ba

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 514
    return v3
.end method

.method public b(Lpl/jbzd/app/ui/view/dialog/SignInDialog;Landroid/view/View;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 256
    invoke-static {p0}, Lpl/jbzd/core/a/a;->c(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 257
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a00c1

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 263
    :goto_0
    return v0

    .line 261
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "https://jbzdy.pl/polityka-prywatnosci"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 262
    invoke-virtual {p0, v0}, Lpl/jbzd/app/view/AuthActivity;->startActivity(Landroid/content/Intent;)V

    .line 263
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(Lpl/jbzd/app/ui/view/dialog/SignUpDialog;Landroid/view/View;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 371
    invoke-static {p0}, Lpl/jbzd/core/a/a;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 372
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a00c1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 385
    :cond_0
    :goto_0
    return v3

    .line 376
    :cond_1
    invoke-virtual {p0}, Lpl/jbzd/app/view/AuthActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-class v1, Lpl/jbzd/app/ui/view/dialog/SignInDialog;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/ui/view/dialog/SignInDialog;

    .line 377
    if-nez v0, :cond_2

    new-instance v0, Lpl/jbzd/app/ui/view/dialog/SignInDialog;

    invoke-direct {v0}, Lpl/jbzd/app/ui/view/dialog/SignInDialog;-><init>()V

    .line 379
    :cond_2
    invoke-virtual {v0}, Lpl/jbzd/app/ui/view/dialog/SignInDialog;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 381
    invoke-virtual {p1}, Lpl/jbzd/app/ui/view/dialog/SignUpDialog;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lpl/jbzd/app/ui/view/dialog/SignInDialog;->a(I)V

    .line 382
    invoke-virtual {p0}, Lpl/jbzd/app/view/AuthActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-class v2, Lpl/jbzd/app/ui/view/dialog/SignInDialog;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lpl/jbzd/app/ui/view/dialog/SignInDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public abstract c()V
.end method

.method public c(Lpl/jbzd/app/ui/view/dialog/ShareMenuDialog;Landroid/view/View;Lpl/jbzd/app/model/Media;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const v5, 0x7f0a00c7

    const/4 v1, 0x0

    .line 569
    invoke-static {p0}, Lpl/jbzd/core/a/a;->c(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 570
    const v0, 0x7f0a00c1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 718
    :goto_0
    return v1

    .line 576
    :cond_0
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_2

    .line 578
    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v2}, Landroid/support/v4/content/b;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    .line 580
    :goto_1
    if-nez v0, :cond_2

    .line 582
    iput-object p1, p0, Lpl/jbzd/app/view/AuthActivity;->d:Lpl/jbzd/app/ui/view/dialog/ShareMenuDialog;

    .line 583
    iput-object p2, p0, Lpl/jbzd/app/view/AuthActivity;->e:Landroid/view/View;

    .line 584
    iput-object p3, p0, Lpl/jbzd/app/view/AuthActivity;->f:Lpl/jbzd/app/model/Media;

    .line 586
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v3, v0, v2

    const/16 v2, 0x70

    invoke-static {p0, v0, v2}, Landroid/support/v4/app/a;->a(Landroid/app/Activity;[Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 713
    :catch_0
    move-exception v0

    .line 714
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 715
    invoke-virtual {p0}, Lpl/jbzd/app/view/AuthActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v5, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 578
    goto :goto_1

    .line 591
    :cond_2
    if-nez p3, :cond_3

    .line 592
    :try_start_1
    invoke-virtual {p0}, Lpl/jbzd/app/view/AuthActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0a00c7

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 595
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lpl/jbzd/app/view/AuthActivity;->d:Lpl/jbzd/app/ui/view/dialog/ShareMenuDialog;

    .line 596
    const/4 v0, 0x0

    iput-object v0, p0, Lpl/jbzd/app/view/AuthActivity;->e:Landroid/view/View;

    .line 597
    const/4 v0, 0x0

    iput-object v0, p0, Lpl/jbzd/app/view/AuthActivity;->f:Lpl/jbzd/app/model/Media;

    .line 599
    new-instance v0, Ljava/io/File;

    sget-object v2, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    const-string v3, "JBZD"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 601
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_4

    .line 603
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 606
    :cond_4
    sget-object v2, Lpl/jbzd/app/view/feed/FeedViewType;->GIF:Lpl/jbzd/app/view/feed/FeedViewType;

    iget-object v2, v2, Lpl/jbzd/app/view/feed/FeedViewType;->name:Ljava/lang/String;

    invoke-virtual {p3}, Lpl/jbzd/app/model/Media;->realmGet$type()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    sget-object v2, Lpl/jbzd/app/view/feed/FeedViewType;->VIDEO:Lpl/jbzd/app/view/feed/FeedViewType;

    iget-object v2, v2, Lpl/jbzd/app/view/feed/FeedViewType;->name:Ljava/lang/String;

    invoke-virtual {p3}, Lpl/jbzd/app/model/Media;->realmGet$type()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 608
    :cond_5
    invoke-virtual {p3}, Lpl/jbzd/app/model/Media;->realmGet$movie()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {p3}, Lpl/jbzd/app/model/Media;->realmGet$movie()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 610
    invoke-virtual {p0}, Lpl/jbzd/app/view/AuthActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a00f3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 612
    invoke-virtual {p0}, Lpl/jbzd/app/view/AuthActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p3}, Lpl/jbzd/app/model/Media;->realmGet$movie()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lpl/jbzd/app/view/AuthActivity$9;

    invoke-direct {v4, p0}, Lpl/jbzd/app/view/AuthActivity$9;-><init>(Lpl/jbzd/app/view/AuthActivity;)V

    invoke-static {v2, v3, v0, v4}, Lpl/jbzd/app/c/b;->c(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Lpl/jbzd/app/c/b$a;)V

    goto/16 :goto_0

    .line 642
    :cond_6
    invoke-virtual {p3}, Lpl/jbzd/app/model/Media;->realmGet$youtube()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {p3}, Lpl/jbzd/app/model/Media;->realmGet$youtube()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    .line 644
    invoke-virtual {p0}, Lpl/jbzd/app/view/AuthActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a00f3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 646
    invoke-virtual {p0}, Lpl/jbzd/app/view/AuthActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p3}, Lpl/jbzd/app/model/Media;->realmGet$youtube()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lpl/jbzd/app/view/AuthActivity$10;

    invoke-direct {v4, p0}, Lpl/jbzd/app/view/AuthActivity$10;-><init>(Lpl/jbzd/app/view/AuthActivity;)V

    invoke-static {v2, v3, v0, v4}, Lpl/jbzd/app/c/b;->b(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Lpl/jbzd/app/c/b$a;)V

    goto/16 :goto_0

    .line 677
    :cond_7
    invoke-virtual {p0}, Lpl/jbzd/app/view/AuthActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0a00c7

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 682
    :cond_8
    invoke-virtual {p0}, Lpl/jbzd/app/view/AuthActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p3}, Lpl/jbzd/app/model/Media;->realmGet$image()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lpl/jbzd/app/view/AuthActivity$2;

    invoke-direct {v4, p0}, Lpl/jbzd/app/view/AuthActivity$2;-><init>(Lpl/jbzd/app/view/AuthActivity;)V

    invoke-static {v2, v3, v0, v4}, Lpl/jbzd/app/c/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Lpl/jbzd/app/c/b$a;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public c(Lpl/jbzd/app/ui/view/dialog/SignInDialog;Landroid/view/View;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 269
    invoke-static {p0}, Lpl/jbzd/core/a/a;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 270
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a00c1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 277
    :cond_0
    :goto_0
    return v3

    .line 274
    :cond_1
    invoke-virtual {p0}, Lpl/jbzd/app/view/AuthActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-class v1, Lpl/jbzd/app/ui/view/dialog/RestorePasswordDialog;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/ui/view/dialog/RestorePasswordDialog;

    .line 275
    if-nez v0, :cond_2

    new-instance v0, Lpl/jbzd/app/ui/view/dialog/RestorePasswordDialog;

    invoke-direct {v0}, Lpl/jbzd/app/ui/view/dialog/RestorePasswordDialog;-><init>()V

    .line 276
    :cond_2
    invoke-virtual {v0}, Lpl/jbzd/app/ui/view/dialog/RestorePasswordDialog;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lpl/jbzd/app/view/AuthActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-class v2, Lpl/jbzd/app/ui/view/dialog/RestorePasswordDialog;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lpl/jbzd/app/ui/view/dialog/RestorePasswordDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public c(Lpl/jbzd/app/ui/view/dialog/SignUpDialog;Landroid/view/View;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 391
    invoke-static {p0}, Lpl/jbzd/core/a/a;->c(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 392
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a00c1

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 398
    :goto_0
    return v0

    .line 396
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "https://jbzdy.pl/polityka-prywatnosci"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 397
    invoke-virtual {p0, v0}, Lpl/jbzd/app/view/AuthActivity;->startActivity(Landroid/content/Intent;)V

    .line 398
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public d()V
    .locals 2

    .prologue
    .line 470
    invoke-static {}, Lpl/jbzd/api/ApiClient;->getInstance()Lpl/jbzd/api/ApiClient;

    move-result-object v0

    invoke-virtual {v0}, Lpl/jbzd/api/ApiClient;->getLogoutCallbacks()Ljava/util/List;

    move-result-object v0

    .line 472
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/api/auth/LogoutCallback;

    .line 473
    if-eqz v0, :cond_0

    .line 474
    invoke-interface {v0}, Lpl/jbzd/api/auth/LogoutCallback;->onSuccess()V

    goto :goto_0

    .line 477
    :cond_1
    return-void
.end method

.method public d(Lpl/jbzd/app/ui/view/dialog/ShareMenuDialog;Landroid/view/View;Lpl/jbzd/app/model/Media;)Z
    .locals 1

    .prologue
    .line 723
    const/4 v0, 0x0

    return v0
.end method

.method public d(Lpl/jbzd/app/ui/view/dialog/SignInDialog;Landroid/view/View;)Z
    .locals 3

    .prologue
    .line 283
    iget-object v0, p0, Lpl/jbzd/app/view/AuthActivity;->a:Lcom/google/android/gms/analytics/Tracker;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lpl/jbzd/app/view/AuthActivity;->a:Lcom/google/android/gms/analytics/Tracker;

    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    const-string v2, "Menu"

    .line 285
    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    const-string v2, "rejestracja"

    .line 286
    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    .line 287
    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v1

    .line 284
    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 290
    :cond_0
    invoke-virtual {p0}, Lpl/jbzd/app/view/AuthActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-class v1, Lpl/jbzd/app/ui/view/dialog/SignUpDialog;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/ui/view/dialog/SignUpDialog;

    .line 291
    if-nez v0, :cond_1

    new-instance v0, Lpl/jbzd/app/ui/view/dialog/SignUpDialog;

    invoke-direct {v0}, Lpl/jbzd/app/ui/view/dialog/SignUpDialog;-><init>()V

    .line 293
    :cond_1
    invoke-virtual {v0}, Lpl/jbzd/app/ui/view/dialog/SignUpDialog;->isAdded()Z

    move-result v1

    if-nez v1, :cond_2

    .line 295
    invoke-virtual {p1}, Lpl/jbzd/app/ui/view/dialog/SignInDialog;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lpl/jbzd/app/ui/view/dialog/SignUpDialog;->a(I)V

    .line 296
    invoke-virtual {p0}, Lpl/jbzd/app/view/AuthActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-class v2, Lpl/jbzd/app/ui/view/dialog/SignUpDialog;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lpl/jbzd/app/ui/view/dialog/SignUpDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 299
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public d(Lpl/jbzd/app/ui/view/dialog/SignUpDialog;Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 450
    const/4 v0, 0x0

    return v0
.end method

.method public e()Lcom/google/android/gms/analytics/Tracker;
    .locals 1

    .prologue
    .line 742
    iget-object v0, p0, Lpl/jbzd/app/view/AuthActivity;->a:Lcom/google/android/gms/analytics/Tracker;

    return-object v0
.end method

.method public e(Lpl/jbzd/app/ui/view/dialog/SignInDialog;Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 445
    const/4 v0, 0x0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 183
    invoke-super {p0, p1, p2, p3}, Lpl/jbzd/core/MvpBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 184
    iget-object v0, p0, Lpl/jbzd/app/view/AuthActivity;->c:Lcom/facebook/CallbackManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/CallbackManager;->onActivityResult(IILandroid/content/Intent;)Z

    .line 185
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 93
    invoke-super {p0, p1}, Lpl/jbzd/core/MvpBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 94
    invoke-virtual {p0}, Lpl/jbzd/app/view/AuthActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/MyApplication;

    invoke-virtual {v0}, Lpl/jbzd/app/MyApplication;->a()Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    iput-object v0, p0, Lpl/jbzd/app/view/AuthActivity;->a:Lcom/google/android/gms/analytics/Tracker;

    .line 96
    invoke-static {}, Lcom/facebook/CallbackManager$Factory;->create()Lcom/facebook/CallbackManager;

    move-result-object v0

    iput-object v0, p0, Lpl/jbzd/app/view/AuthActivity;->c:Lcom/facebook/CallbackManager;

    .line 97
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    iget-object v1, p0, Lpl/jbzd/app/view/AuthActivity;->c:Lcom/facebook/CallbackManager;

    new-instance v2, Lpl/jbzd/app/view/AuthActivity$1;

    invoke-direct {v2, p0}, Lpl/jbzd/app/view/AuthActivity$1;-><init>(Lpl/jbzd/app/view/AuthActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/login/LoginManager;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    .line 166
    invoke-static {}, Lpl/jbzd/api/ApiClient;->getInstance()Lpl/jbzd/api/ApiClient;

    move-result-object v0

    new-instance v1, Lpl/jbzd/app/view/AuthActivity$3;

    invoke-direct {v1, p0}, Lpl/jbzd/app/view/AuthActivity$3;-><init>(Lpl/jbzd/app/view/AuthActivity;)V

    invoke-virtual {v0, v1}, Lpl/jbzd/api/ApiClient;->addLogoutCallback(Lpl/jbzd/api/auth/LogoutCallback;)V

    .line 172
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 10

    .prologue
    const-wide/16 v8, 0xfa

    const v6, 0x7f0a00fc

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 520
    packed-switch p1, :pswitch_data_0

    .line 564
    :goto_0
    return-void

    .line 524
    :pswitch_0
    array-length v0, p3

    if-eqz v0, :cond_0

    aget v0, p3, v3

    if-eqz v0, :cond_3

    .line 525
    :cond_0
    invoke-virtual {p0}, Lpl/jbzd/app/view/AuthActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a00fd

    invoke-virtual {p0, v1}, Lpl/jbzd/app/view/AuthActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 534
    :goto_1
    :pswitch_1
    array-length v0, p3

    if-lt v0, v5, :cond_1

    aget v0, p3, v3

    if-nez v0, :cond_1

    aget v0, p3, v4

    if-eqz v0, :cond_4

    .line 535
    :cond_1
    invoke-virtual {p0}, Lpl/jbzd/app/view/AuthActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v6}, Lpl/jbzd/app/view/AuthActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 550
    :goto_2
    :pswitch_2
    array-length v0, p3

    if-lt v0, v5, :cond_2

    aget v0, p3, v3

    if-nez v0, :cond_2

    aget v0, p3, v4

    if-eqz v0, :cond_5

    .line 551
    :cond_2
    invoke-virtual {p0}, Lpl/jbzd/app/view/AuthActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v6}, Lpl/jbzd/app/view/AuthActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 528
    :cond_3
    iget-object v0, p0, Lpl/jbzd/app/view/AuthActivity;->d:Lpl/jbzd/app/ui/view/dialog/ShareMenuDialog;

    iget-object v1, p0, Lpl/jbzd/app/view/AuthActivity;->e:Landroid/view/View;

    iget-object v2, p0, Lpl/jbzd/app/view/AuthActivity;->f:Lpl/jbzd/app/model/Media;

    invoke-virtual {p0, v0, v1, v2}, Lpl/jbzd/app/view/AuthActivity;->c(Lpl/jbzd/app/ui/view/dialog/ShareMenuDialog;Landroid/view/View;Lpl/jbzd/app/model/Media;)Z

    goto :goto_1

    .line 539
    :cond_4
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lpl/jbzd/app/view/AuthActivity$7;

    invoke-direct {v1, p0}, Lpl/jbzd/app/view/AuthActivity$7;-><init>(Lpl/jbzd/app/view/AuthActivity;)V

    invoke-virtual {v0, v1, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 555
    :cond_5
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lpl/jbzd/app/view/AuthActivity$8;

    invoke-direct {v1, p0}, Lpl/jbzd/app/view/AuthActivity$8;-><init>(Lpl/jbzd/app/view/AuthActivity;)V

    invoke-virtual {v0, v1, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 520
    :pswitch_data_0
    .packed-switch 0x70
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 177
    invoke-super {p0}, Lpl/jbzd/core/MvpBaseActivity;->onResume()V

    .line 178
    return-void
.end method
