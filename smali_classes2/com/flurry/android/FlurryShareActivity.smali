.class public Lcom/flurry/android/FlurryShareActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field private static final d:Ljava/lang/String;


# instance fields
.field a:Z

.field b:Z

.field c:Lcom/flurry/sdk/ho;

.field private e:Lcom/flurry/sdk/fb;

.field private f:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/flurry/android/FlurryShareActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/FlurryShareActivity;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 32
    iput-boolean v0, p0, Lcom/flurry/android/FlurryShareActivity;->a:Z

    .line 33
    iput-boolean v0, p0, Lcom/flurry/android/FlurryShareActivity;->b:Z

    .line 126
    new-instance v0, Lcom/flurry/android/FlurryShareActivity$1;

    invoke-direct {v0, p0}, Lcom/flurry/android/FlurryShareActivity$1;-><init>(Lcom/flurry/android/FlurryShareActivity;)V

    iput-object v0, p0, Lcom/flurry/android/FlurryShareActivity;->c:Lcom/flurry/sdk/ho;

    return-void
.end method

.method static synthetic a(Lcom/flurry/android/FlurryShareActivity;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/flurry/android/FlurryShareActivity;->f:Landroid/widget/RelativeLayout;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {p0}, Lcom/flurry/android/FlurryShareActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 40
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/flurry/android/FlurryShareActivity;->f:Landroid/widget/RelativeLayout;

    .line 41
    iget-object v1, p0, Lcom/flurry/android/FlurryShareActivity;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1}, Lcom/flurry/android/FlurryShareActivity;->setContentView(Landroid/view/View;)V

    .line 43
    invoke-virtual {p0}, Lcom/flurry/android/FlurryShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 44
    new-instance v2, Lcom/flurry/sdk/fb;

    invoke-direct {v2, p0}, Lcom/flurry/sdk/fb;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/flurry/android/FlurryShareActivity;->e:Lcom/flurry/sdk/fb;

    .line 45
    iget-object v2, p0, Lcom/flurry/android/FlurryShareActivity;->e:Lcom/flurry/sdk/fb;

    iget-object v3, p0, Lcom/flurry/android/FlurryShareActivity;->c:Lcom/flurry/sdk/ho;

    .line 1076
    if-eqz v1, :cond_1

    if-eqz v3, :cond_1

    .line 1380
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1381
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, v2, Lcom/flurry/sdk/fb;->c:Landroid/os/Bundle;

    .line 1382
    const/4 v0, 0x1

    .line 1076
    :cond_0
    if-nez v0, :cond_2

    .line 1077
    :cond_1
    const/4 v0, 0x5

    sget-object v1, Lcom/flurry/sdk/fb;->a:Ljava/lang/String;

    const-string v3, "Invalid intent."

    invoke-static {v0, v1, v3}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1078
    sget-object v0, Lcom/flurry/sdk/ei;->a:Lcom/flurry/sdk/ei;

    iget v1, v2, Lcom/flurry/sdk/fb;->f:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/eh;->a(Lcom/flurry/sdk/ei;ILjava/lang/String;)V

    .line 2096
    :goto_0
    return-void

    .line 1083
    :cond_2
    invoke-virtual {v2}, Lcom/flurry/sdk/fb;->c()V

    .line 1084
    iput-object v3, v2, Lcom/flurry/sdk/fb;->d:Lcom/flurry/sdk/ho;

    .line 2089
    sget-object v0, Lcom/flurry/sdk/fb$a;->b:Lcom/flurry/sdk/fb$a;

    invoke-virtual {v2, v0}, Lcom/flurry/sdk/fb;->a(Lcom/flurry/sdk/fb$a;)V

    .line 2362
    iget-object v0, v2, Lcom/flurry/sdk/fb;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 2388
    iget-object v0, v2, Lcom/flurry/sdk/fb;->c:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    .line 2389
    iget-object v0, v2, Lcom/flurry/sdk/fb;->c:Landroid/os/Bundle;

    const-string v1, "com.flurry.android.post_id"

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v2, Lcom/flurry/sdk/fb;->f:I

    .line 2092
    :cond_3
    invoke-static {}, Lcom/flurry/sdk/ki;->a()Lcom/flurry/sdk/ki;

    move-result-object v0

    const-string v1, "com.flurry.android.impl.analytics.tumblr.TumblrEvents"

    iget-object v3, v2, Lcom/flurry/sdk/fb;->g:Lcom/flurry/sdk/kh;

    invoke-virtual {v0, v1, v3}, Lcom/flurry/sdk/ki;->a(Ljava/lang/String;Lcom/flurry/sdk/kh;)V

    .line 2094
    invoke-static {}, Lcom/flurry/sdk/ed;->c()Lcom/flurry/sdk/el;

    move-result-object v0

    .line 2095
    invoke-virtual {v0}, Lcom/flurry/sdk/el;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2096
    invoke-virtual {v2}, Lcom/flurry/sdk/fb;->a()V

    goto :goto_0

    .line 2098
    :cond_4
    sget-object v0, Lcom/flurry/sdk/fb$a;->f:Lcom/flurry/sdk/fb$a;

    invoke-virtual {v2, v0}, Lcom/flurry/sdk/fb;->a(Lcom/flurry/sdk/fb$a;)V

    .line 2099
    invoke-virtual {v2}, Lcom/flurry/sdk/fb;->b()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 95
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 97
    iget-object v0, p0, Lcom/flurry/android/FlurryShareActivity;->e:Lcom/flurry/sdk/fb;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/flurry/android/FlurryShareActivity;->e:Lcom/flurry/sdk/fb;

    .line 3293
    sget-object v1, Lcom/flurry/sdk/fb$a;->g:Lcom/flurry/sdk/fb$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/fb;->a(Lcom/flurry/sdk/fb$a;)V

    .line 102
    :cond_0
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    .line 110
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/android/FlurryShareActivity;->d:Ljava/lang/String;

    const-string v2, "onKeyUp"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 112
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/flurry/android/FlurryShareActivity;->e:Lcom/flurry/sdk/fb;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/flurry/android/FlurryShareActivity;->e:Lcom/flurry/sdk/fb;

    .line 3297
    sget-object v1, Lcom/flurry/sdk/fb$a;->g:Lcom/flurry/sdk/fb$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/fb;->a(Lcom/flurry/sdk/fb$a;)V

    .line 3298
    iget-object v0, v0, Lcom/flurry/sdk/fb;->d:Lcom/flurry/sdk/ho;

    invoke-interface {v0}, Lcom/flurry/sdk/ho;->a()V

    .line 116
    const/4 v0, 0x1

    .line 120
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 51
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 52
    const-string v0, ""

    .line 53
    if-eqz v1, :cond_0

    .line 54
    const-string v0, "oauth_verifier"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3043
    :cond_0
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v1

    .line 3097
    iget-object v1, v1, Lcom/flurry/sdk/jy;->a:Landroid/content/Context;

    .line 3043
    const-string v2, "FLURRY_SHARED_PREFERENCES"

    invoke-virtual {v1, v2, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 3045
    const-string v2, "com.flurry.sdk.request_token"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3046
    const-string v3, "com.flurry.sdk.request_secret"

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3047
    new-instance v3, Lcom/flurry/sdk/el;

    invoke-direct {v3, v2, v1}, Lcom/flurry/sdk/el;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Lcom/flurry/android/FlurryShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "com.flurry.android.post_id"

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 62
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v3}, Lcom/flurry/sdk/el;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 63
    :cond_1
    sget-object v0, Lcom/flurry/sdk/ei;->p:Lcom/flurry/sdk/ei;

    const-string v2, "Chrome tab error"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/eh;->a(Lcom/flurry/sdk/ei;ILjava/lang/String;)V

    .line 64
    sget-object v0, Lcom/flurry/android/FlurryShareActivity;->d:Ljava/lang/String;

    const-string v1, "Incoming intent uri must have tumblr_post param, verifier string and token."

    invoke-static {v0, v1}, Lcom/flurry/sdk/km;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Lcom/flurry/android/FlurryShareActivity;->finish()V

    .line 77
    :goto_0
    return-void

    .line 69
    :cond_2
    sget-object v1, Lcom/flurry/android/FlurryShareActivity;->d:Ljava/lang/String;

    const-string v2, "Successfully returned to activity from chrome tab"

    invoke-static {v1, v2}, Lcom/flurry/sdk/km;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iput-boolean v5, p0, Lcom/flurry/android/FlurryShareActivity;->a:Z

    .line 73
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/flurry/android/FlurryShareActivity;->b:Z

    .line 76
    iget-object v1, p0, Lcom/flurry/android/FlurryShareActivity;->e:Lcom/flurry/sdk/fb;

    invoke-virtual {v1, v3, v0}, Lcom/flurry/sdk/fb;->a(Lcom/flurry/sdk/el;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/flurry/android/FlurryShareActivity;->a:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/flurry/android/FlurryShareActivity;->b:Z

    if-nez v0, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/flurry/android/FlurryShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.flurry.android.post_id"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 85
    sget-object v1, Lcom/flurry/sdk/ei;->i:Lcom/flurry/sdk/ei;

    const-string v2, "Returned from Chrome Tab without authentication"

    invoke-static {v1, v0, v2}, Lcom/flurry/sdk/eh;->a(Lcom/flurry/sdk/ei;ILjava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lcom/flurry/android/FlurryShareActivity;->finish()V

    .line 90
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 91
    return-void
.end method
