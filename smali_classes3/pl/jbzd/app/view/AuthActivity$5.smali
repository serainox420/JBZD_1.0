.class Lpl/jbzd/app/view/AuthActivity$5;
.super Lpl/jbzd/api/callback/LoginApiCallback;
.source "AuthActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/jbzd/app/view/AuthActivity;->a(Lpl/jbzd/app/ui/view/dialog/SignUpDialog;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lpl/jbzd/app/ui/view/dialog/SignUpDialog;

.field final synthetic b:Lpl/jbzd/app/view/AuthActivity;


# direct methods
.method constructor <init>(Lpl/jbzd/app/view/AuthActivity;Landroid/content/Context;Lpl/jbzd/app/ui/view/dialog/SignUpDialog;)V
    .locals 0

    .prologue
    .line 312
    iput-object p1, p0, Lpl/jbzd/app/view/AuthActivity$5;->b:Lpl/jbzd/app/view/AuthActivity;

    iput-object p3, p0, Lpl/jbzd/app/view/AuthActivity$5;->a:Lpl/jbzd/app/ui/view/dialog/SignUpDialog;

    invoke-direct {p0, p2}, Lpl/jbzd/api/callback/LoginApiCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(Lpl/jbzd/api/response/UserResponse;)V
    .locals 3

    .prologue
    .line 316
    iget-object v0, p0, Lpl/jbzd/app/view/AuthActivity$5;->b:Lpl/jbzd/app/view/AuthActivity;

    invoke-virtual {v0}, Lpl/jbzd/app/view/AuthActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 318
    const/4 v0, -0x1

    .line 320
    iget-object v1, p0, Lpl/jbzd/app/view/AuthActivity$5;->a:Lpl/jbzd/app/ui/view/dialog/SignUpDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lpl/jbzd/app/view/AuthActivity$5;->a:Lpl/jbzd/app/ui/view/dialog/SignUpDialog;

    invoke-virtual {v1}, Lpl/jbzd/app/ui/view/dialog/SignUpDialog;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lpl/jbzd/app/view/AuthActivity$5;->a:Lpl/jbzd/app/ui/view/dialog/SignUpDialog;

    invoke-virtual {v1}, Lpl/jbzd/app/ui/view/dialog/SignUpDialog;->getShowsDialog()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 321
    iget-object v0, p0, Lpl/jbzd/app/view/AuthActivity$5;->a:Lpl/jbzd/app/ui/view/dialog/SignUpDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lpl/jbzd/app/ui/view/dialog/SignUpDialog;->a(Z)V

    .line 322
    iget-object v0, p0, Lpl/jbzd/app/view/AuthActivity$5;->a:Lpl/jbzd/app/ui/view/dialog/SignUpDialog;

    invoke-virtual {v0}, Lpl/jbzd/app/ui/view/dialog/SignUpDialog;->a()I

    move-result v0

    .line 323
    iget-object v1, p0, Lpl/jbzd/app/view/AuthActivity$5;->a:Lpl/jbzd/app/ui/view/dialog/SignUpDialog;

    invoke-virtual {v1}, Lpl/jbzd/app/ui/view/dialog/SignUpDialog;->dismissAllowingStateLoss()V

    .line 326
    :cond_0
    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_3

    .line 327
    iget-object v0, p0, Lpl/jbzd/app/view/AuthActivity$5;->b:Lpl/jbzd/app/view/AuthActivity;

    invoke-virtual {v0}, Lpl/jbzd/app/view/AuthActivity;->b()V

    .line 333
    :cond_1
    :goto_0
    iget-object v0, p0, Lpl/jbzd/app/view/AuthActivity$5;->b:Lpl/jbzd/app/view/AuthActivity;

    invoke-virtual {v0}, Lpl/jbzd/app/view/AuthActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a012b

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 335
    :cond_2
    return-void

    .line 329
    :cond_3
    const/16 v1, 0x3ea

    if-ne v0, v1, :cond_1

    .line 330
    iget-object v0, p0, Lpl/jbzd/app/view/AuthActivity$5;->b:Lpl/jbzd/app/view/AuthActivity;

    invoke-virtual {v0}, Lpl/jbzd/app/view/AuthActivity;->c()V

    goto :goto_0
.end method

.method public onError(Lpl/jbzd/api/exception/ApiException;)V
    .locals 3

    .prologue
    .line 340
    iget-object v0, p0, Lpl/jbzd/app/view/AuthActivity$5;->b:Lpl/jbzd/app/view/AuthActivity;

    invoke-virtual {v0}, Lpl/jbzd/app/view/AuthActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 342
    iget-object v0, p0, Lpl/jbzd/app/view/AuthActivity$5;->a:Lpl/jbzd/app/ui/view/dialog/SignUpDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpl/jbzd/app/view/AuthActivity$5;->a:Lpl/jbzd/app/ui/view/dialog/SignUpDialog;

    invoke-virtual {v0}, Lpl/jbzd/app/ui/view/dialog/SignUpDialog;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpl/jbzd/app/view/AuthActivity$5;->a:Lpl/jbzd/app/ui/view/dialog/SignUpDialog;

    invoke-virtual {v0}, Lpl/jbzd/app/ui/view/dialog/SignUpDialog;->getShowsDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lpl/jbzd/app/view/AuthActivity$5;->a:Lpl/jbzd/app/ui/view/dialog/SignUpDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lpl/jbzd/app/ui/view/dialog/SignUpDialog;->a(Z)V

    .line 346
    :cond_0
    iget-object v0, p0, Lpl/jbzd/app/view/AuthActivity$5;->b:Lpl/jbzd/app/view/AuthActivity;

    invoke-virtual {v0}, Lpl/jbzd/app/view/AuthActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lpl/jbzd/api/exception/ApiException;->message()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 348
    :cond_1
    return-void
.end method

.method public synthetic onSuccess(Lpl/jbzd/api/response/BaseApiResponse;)V
    .locals 0

    .prologue
    .line 312
    check-cast p1, Lpl/jbzd/api/response/UserResponse;

    invoke-virtual {p0, p1}, Lpl/jbzd/app/view/AuthActivity$5;->a(Lpl/jbzd/api/response/UserResponse;)V

    return-void
.end method
