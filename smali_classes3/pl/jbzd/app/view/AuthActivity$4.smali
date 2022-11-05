.class Lpl/jbzd/app/view/AuthActivity$4;
.super Lpl/jbzd/api/callback/LoginApiCallback;
.source "AuthActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/jbzd/app/view/AuthActivity;->a(Lpl/jbzd/app/ui/view/dialog/SignInDialog;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lpl/jbzd/app/ui/view/dialog/SignInDialog;

.field final synthetic b:Lpl/jbzd/app/view/AuthActivity;


# direct methods
.method constructor <init>(Lpl/jbzd/app/view/AuthActivity;Landroid/content/Context;Lpl/jbzd/app/ui/view/dialog/SignInDialog;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lpl/jbzd/app/view/AuthActivity$4;->b:Lpl/jbzd/app/view/AuthActivity;

    iput-object p3, p0, Lpl/jbzd/app/view/AuthActivity$4;->a:Lpl/jbzd/app/ui/view/dialog/SignInDialog;

    invoke-direct {p0, p2}, Lpl/jbzd/api/callback/LoginApiCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(Lpl/jbzd/api/response/UserResponse;)V
    .locals 3

    .prologue
    .line 201
    iget-object v0, p0, Lpl/jbzd/app/view/AuthActivity$4;->b:Lpl/jbzd/app/view/AuthActivity;

    invoke-virtual {v0}, Lpl/jbzd/app/view/AuthActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 203
    const/4 v0, -0x1

    .line 205
    iget-object v1, p0, Lpl/jbzd/app/view/AuthActivity$4;->a:Lpl/jbzd/app/ui/view/dialog/SignInDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lpl/jbzd/app/view/AuthActivity$4;->a:Lpl/jbzd/app/ui/view/dialog/SignInDialog;

    invoke-virtual {v1}, Lpl/jbzd/app/ui/view/dialog/SignInDialog;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lpl/jbzd/app/view/AuthActivity$4;->a:Lpl/jbzd/app/ui/view/dialog/SignInDialog;

    invoke-virtual {v1}, Lpl/jbzd/app/ui/view/dialog/SignInDialog;->getShowsDialog()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 206
    iget-object v0, p0, Lpl/jbzd/app/view/AuthActivity$4;->a:Lpl/jbzd/app/ui/view/dialog/SignInDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lpl/jbzd/app/ui/view/dialog/SignInDialog;->a(Z)V

    .line 207
    iget-object v0, p0, Lpl/jbzd/app/view/AuthActivity$4;->a:Lpl/jbzd/app/ui/view/dialog/SignInDialog;

    invoke-virtual {v0}, Lpl/jbzd/app/ui/view/dialog/SignInDialog;->a()I

    move-result v0

    .line 208
    iget-object v1, p0, Lpl/jbzd/app/view/AuthActivity$4;->a:Lpl/jbzd/app/ui/view/dialog/SignInDialog;

    invoke-virtual {v1}, Lpl/jbzd/app/ui/view/dialog/SignInDialog;->dismissAllowingStateLoss()V

    .line 211
    :cond_0
    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_3

    .line 212
    iget-object v0, p0, Lpl/jbzd/app/view/AuthActivity$4;->b:Lpl/jbzd/app/view/AuthActivity;

    invoke-virtual {v0}, Lpl/jbzd/app/view/AuthActivity;->b()V

    .line 218
    :cond_1
    :goto_0
    iget-object v0, p0, Lpl/jbzd/app/view/AuthActivity$4;->b:Lpl/jbzd/app/view/AuthActivity;

    invoke-virtual {v0}, Lpl/jbzd/app/view/AuthActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a011d

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 220
    :cond_2
    return-void

    .line 214
    :cond_3
    const/16 v1, 0x3ea

    if-ne v0, v1, :cond_1

    .line 215
    iget-object v0, p0, Lpl/jbzd/app/view/AuthActivity$4;->b:Lpl/jbzd/app/view/AuthActivity;

    invoke-virtual {v0}, Lpl/jbzd/app/view/AuthActivity;->c()V

    goto :goto_0
.end method

.method public onError(Lpl/jbzd/api/exception/ApiException;)V
    .locals 3

    .prologue
    .line 225
    iget-object v0, p0, Lpl/jbzd/app/view/AuthActivity$4;->b:Lpl/jbzd/app/view/AuthActivity;

    invoke-virtual {v0}, Lpl/jbzd/app/view/AuthActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 227
    iget-object v0, p0, Lpl/jbzd/app/view/AuthActivity$4;->a:Lpl/jbzd/app/ui/view/dialog/SignInDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpl/jbzd/app/view/AuthActivity$4;->a:Lpl/jbzd/app/ui/view/dialog/SignInDialog;

    invoke-virtual {v0}, Lpl/jbzd/app/ui/view/dialog/SignInDialog;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpl/jbzd/app/view/AuthActivity$4;->a:Lpl/jbzd/app/ui/view/dialog/SignInDialog;

    invoke-virtual {v0}, Lpl/jbzd/app/ui/view/dialog/SignInDialog;->getShowsDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lpl/jbzd/app/view/AuthActivity$4;->a:Lpl/jbzd/app/ui/view/dialog/SignInDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lpl/jbzd/app/ui/view/dialog/SignInDialog;->a(Z)V

    .line 231
    :cond_0
    iget-object v0, p0, Lpl/jbzd/app/view/AuthActivity$4;->b:Lpl/jbzd/app/view/AuthActivity;

    invoke-virtual {v0}, Lpl/jbzd/app/view/AuthActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lpl/jbzd/api/exception/ApiException;->message()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 233
    :cond_1
    return-void
.end method

.method public synthetic onSuccess(Lpl/jbzd/api/response/BaseApiResponse;)V
    .locals 0

    .prologue
    .line 197
    check-cast p1, Lpl/jbzd/api/response/UserResponse;

    invoke-virtual {p0, p1}, Lpl/jbzd/app/view/AuthActivity$4;->a(Lpl/jbzd/api/response/UserResponse;)V

    return-void
.end method
