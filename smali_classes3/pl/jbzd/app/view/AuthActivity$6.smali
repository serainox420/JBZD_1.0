.class Lpl/jbzd/app/view/AuthActivity$6;
.super Lpl/jbzd/api/callback/SimpleApiCallback;
.source "AuthActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/jbzd/app/view/AuthActivity;->a(Lpl/jbzd/app/ui/view/dialog/RestorePasswordDialog;Landroid/view/View;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpl/jbzd/api/callback/SimpleApiCallback",
        "<",
        "Lpl/jbzd/api/response/UserRetrievePasswordResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lpl/jbzd/app/ui/view/dialog/RestorePasswordDialog;

.field final synthetic b:Lpl/jbzd/app/view/AuthActivity;


# direct methods
.method constructor <init>(Lpl/jbzd/app/view/AuthActivity;Lpl/jbzd/app/ui/view/dialog/RestorePasswordDialog;)V
    .locals 0

    .prologue
    .line 411
    iput-object p1, p0, Lpl/jbzd/app/view/AuthActivity$6;->b:Lpl/jbzd/app/view/AuthActivity;

    iput-object p2, p0, Lpl/jbzd/app/view/AuthActivity$6;->a:Lpl/jbzd/app/ui/view/dialog/RestorePasswordDialog;

    invoke-direct {p0}, Lpl/jbzd/api/callback/SimpleApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lpl/jbzd/api/response/UserRetrievePasswordResponse;)V
    .locals 3

    .prologue
    .line 415
    iget-object v0, p0, Lpl/jbzd/app/view/AuthActivity$6;->b:Lpl/jbzd/app/view/AuthActivity;

    invoke-virtual {v0}, Lpl/jbzd/app/view/AuthActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 417
    iget-object v0, p0, Lpl/jbzd/app/view/AuthActivity$6;->a:Lpl/jbzd/app/ui/view/dialog/RestorePasswordDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpl/jbzd/app/view/AuthActivity$6;->a:Lpl/jbzd/app/ui/view/dialog/RestorePasswordDialog;

    invoke-virtual {v0}, Lpl/jbzd/app/ui/view/dialog/RestorePasswordDialog;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpl/jbzd/app/view/AuthActivity$6;->a:Lpl/jbzd/app/ui/view/dialog/RestorePasswordDialog;

    invoke-virtual {v0}, Lpl/jbzd/app/ui/view/dialog/RestorePasswordDialog;->getShowsDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lpl/jbzd/app/view/AuthActivity$6;->a:Lpl/jbzd/app/ui/view/dialog/RestorePasswordDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lpl/jbzd/app/ui/view/dialog/RestorePasswordDialog;->a(Z)V

    .line 419
    iget-object v0, p0, Lpl/jbzd/app/view/AuthActivity$6;->a:Lpl/jbzd/app/ui/view/dialog/RestorePasswordDialog;

    invoke-virtual {v0}, Lpl/jbzd/app/ui/view/dialog/RestorePasswordDialog;->dismissAllowingStateLoss()V

    .line 422
    :cond_0
    iget-object v0, p0, Lpl/jbzd/app/view/AuthActivity$6;->b:Lpl/jbzd/app/view/AuthActivity;

    invoke-virtual {v0}, Lpl/jbzd/app/view/AuthActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0108

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 424
    :cond_1
    return-void
.end method

.method public onError(Lpl/jbzd/api/exception/ApiException;)V
    .locals 3

    .prologue
    .line 429
    iget-object v0, p0, Lpl/jbzd/app/view/AuthActivity$6;->b:Lpl/jbzd/app/view/AuthActivity;

    invoke-virtual {v0}, Lpl/jbzd/app/view/AuthActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 431
    iget-object v0, p0, Lpl/jbzd/app/view/AuthActivity$6;->a:Lpl/jbzd/app/ui/view/dialog/RestorePasswordDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpl/jbzd/app/view/AuthActivity$6;->a:Lpl/jbzd/app/ui/view/dialog/RestorePasswordDialog;

    invoke-virtual {v0}, Lpl/jbzd/app/ui/view/dialog/RestorePasswordDialog;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpl/jbzd/app/view/AuthActivity$6;->a:Lpl/jbzd/app/ui/view/dialog/RestorePasswordDialog;

    invoke-virtual {v0}, Lpl/jbzd/app/ui/view/dialog/RestorePasswordDialog;->getShowsDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lpl/jbzd/app/view/AuthActivity$6;->a:Lpl/jbzd/app/ui/view/dialog/RestorePasswordDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lpl/jbzd/app/ui/view/dialog/RestorePasswordDialog;->a(Z)V

    .line 435
    :cond_0
    iget-object v0, p0, Lpl/jbzd/app/view/AuthActivity$6;->b:Lpl/jbzd/app/view/AuthActivity;

    invoke-virtual {v0}, Lpl/jbzd/app/view/AuthActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lpl/jbzd/api/exception/ApiException;->message()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 437
    :cond_1
    return-void
.end method

.method public synthetic onSuccess(Lpl/jbzd/api/response/BaseApiResponse;)V
    .locals 0

    .prologue
    .line 411
    check-cast p1, Lpl/jbzd/api/response/UserRetrievePasswordResponse;

    invoke-virtual {p0, p1}, Lpl/jbzd/app/view/AuthActivity$6;->a(Lpl/jbzd/api/response/UserRetrievePasswordResponse;)V

    return-void
.end method
