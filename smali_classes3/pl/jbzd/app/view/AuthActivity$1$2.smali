.class Lpl/jbzd/app/view/AuthActivity$1$2;
.super Lpl/jbzd/api/callback/LoginApiCallback;
.source "AuthActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/jbzd/app/view/AuthActivity$1;->a(Lcom/facebook/login/LoginResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lpl/jbzd/app/view/AuthActivity$1;


# direct methods
.method constructor <init>(Lpl/jbzd/app/view/AuthActivity$1;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lpl/jbzd/app/view/AuthActivity$1$2;->a:Lpl/jbzd/app/view/AuthActivity$1;

    invoke-direct {p0, p2}, Lpl/jbzd/api/callback/LoginApiCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(Lpl/jbzd/api/response/UserResponse;)V
    .locals 3

    .prologue
    .line 117
    iget-object v0, p0, Lpl/jbzd/app/view/AuthActivity$1$2;->a:Lpl/jbzd/app/view/AuthActivity$1;

    iget-object v0, v0, Lpl/jbzd/app/view/AuthActivity$1;->a:Lpl/jbzd/app/view/AuthActivity;

    invoke-virtual {v0}, Lpl/jbzd/app/view/AuthActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 119
    const/4 v0, -0x1

    .line 121
    iget-object v1, p0, Lpl/jbzd/app/view/AuthActivity$1$2;->a:Lpl/jbzd/app/view/AuthActivity$1;

    iget-object v1, v1, Lpl/jbzd/app/view/AuthActivity$1;->a:Lpl/jbzd/app/view/AuthActivity;

    iget-object v1, v1, Lpl/jbzd/app/view/AuthActivity;->b:Lpl/jbzd/app/ui/view/dialog/a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lpl/jbzd/app/view/AuthActivity$1$2;->a:Lpl/jbzd/app/view/AuthActivity$1;

    iget-object v1, v1, Lpl/jbzd/app/view/AuthActivity$1;->a:Lpl/jbzd/app/view/AuthActivity;

    iget-object v1, v1, Lpl/jbzd/app/view/AuthActivity;->b:Lpl/jbzd/app/ui/view/dialog/a;

    invoke-virtual {v1}, Lpl/jbzd/app/ui/view/dialog/a;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lpl/jbzd/app/view/AuthActivity$1$2;->a:Lpl/jbzd/app/view/AuthActivity$1;

    iget-object v1, v1, Lpl/jbzd/app/view/AuthActivity$1;->a:Lpl/jbzd/app/view/AuthActivity;

    iget-object v1, v1, Lpl/jbzd/app/view/AuthActivity;->b:Lpl/jbzd/app/ui/view/dialog/a;

    invoke-virtual {v1}, Lpl/jbzd/app/ui/view/dialog/a;->getShowsDialog()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    iget-object v0, p0, Lpl/jbzd/app/view/AuthActivity$1$2;->a:Lpl/jbzd/app/view/AuthActivity$1;

    iget-object v0, v0, Lpl/jbzd/app/view/AuthActivity$1;->a:Lpl/jbzd/app/view/AuthActivity;

    iget-object v0, v0, Lpl/jbzd/app/view/AuthActivity;->b:Lpl/jbzd/app/ui/view/dialog/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lpl/jbzd/app/ui/view/dialog/a;->a(Z)V

    .line 123
    iget-object v0, p0, Lpl/jbzd/app/view/AuthActivity$1$2;->a:Lpl/jbzd/app/view/AuthActivity$1;

    iget-object v0, v0, Lpl/jbzd/app/view/AuthActivity$1;->a:Lpl/jbzd/app/view/AuthActivity;

    iget-object v0, v0, Lpl/jbzd/app/view/AuthActivity;->b:Lpl/jbzd/app/ui/view/dialog/a;

    invoke-virtual {v0}, Lpl/jbzd/app/ui/view/dialog/a;->a()I

    move-result v0

    .line 124
    iget-object v1, p0, Lpl/jbzd/app/view/AuthActivity$1$2;->a:Lpl/jbzd/app/view/AuthActivity$1;

    iget-object v1, v1, Lpl/jbzd/app/view/AuthActivity$1;->a:Lpl/jbzd/app/view/AuthActivity;

    iget-object v1, v1, Lpl/jbzd/app/view/AuthActivity;->b:Lpl/jbzd/app/ui/view/dialog/a;

    invoke-virtual {v1}, Lpl/jbzd/app/ui/view/dialog/a;->dismissAllowingStateLoss()V

    .line 127
    :cond_0
    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_3

    .line 128
    iget-object v0, p0, Lpl/jbzd/app/view/AuthActivity$1$2;->a:Lpl/jbzd/app/view/AuthActivity$1;

    iget-object v0, v0, Lpl/jbzd/app/view/AuthActivity$1;->a:Lpl/jbzd/app/view/AuthActivity;

    invoke-virtual {v0}, Lpl/jbzd/app/view/AuthActivity;->b()V

    .line 134
    :cond_1
    :goto_0
    iget-object v0, p0, Lpl/jbzd/app/view/AuthActivity$1$2;->a:Lpl/jbzd/app/view/AuthActivity$1;

    iget-object v0, v0, Lpl/jbzd/app/view/AuthActivity$1;->a:Lpl/jbzd/app/view/AuthActivity;

    invoke-virtual {v0}, Lpl/jbzd/app/view/AuthActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a011d

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 136
    :cond_2
    return-void

    .line 130
    :cond_3
    const/16 v1, 0x3ea

    if-ne v0, v1, :cond_1

    .line 131
    iget-object v0, p0, Lpl/jbzd/app/view/AuthActivity$1$2;->a:Lpl/jbzd/app/view/AuthActivity$1;

    iget-object v0, v0, Lpl/jbzd/app/view/AuthActivity$1;->a:Lpl/jbzd/app/view/AuthActivity;

    invoke-virtual {v0}, Lpl/jbzd/app/view/AuthActivity;->c()V

    goto :goto_0
.end method

.method public onError(Lpl/jbzd/api/exception/ApiException;)V
    .locals 3

    .prologue
    .line 141
    iget-object v0, p0, Lpl/jbzd/app/view/AuthActivity$1$2;->a:Lpl/jbzd/app/view/AuthActivity$1;

    iget-object v0, v0, Lpl/jbzd/app/view/AuthActivity$1;->a:Lpl/jbzd/app/view/AuthActivity;

    invoke-virtual {v0}, Lpl/jbzd/app/view/AuthActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 143
    iget-object v0, p0, Lpl/jbzd/app/view/AuthActivity$1$2;->a:Lpl/jbzd/app/view/AuthActivity$1;

    iget-object v0, v0, Lpl/jbzd/app/view/AuthActivity$1;->a:Lpl/jbzd/app/view/AuthActivity;

    iget-object v0, v0, Lpl/jbzd/app/view/AuthActivity;->b:Lpl/jbzd/app/ui/view/dialog/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpl/jbzd/app/view/AuthActivity$1$2;->a:Lpl/jbzd/app/view/AuthActivity$1;

    iget-object v0, v0, Lpl/jbzd/app/view/AuthActivity$1;->a:Lpl/jbzd/app/view/AuthActivity;

    iget-object v0, v0, Lpl/jbzd/app/view/AuthActivity;->b:Lpl/jbzd/app/ui/view/dialog/a;

    invoke-virtual {v0}, Lpl/jbzd/app/ui/view/dialog/a;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpl/jbzd/app/view/AuthActivity$1$2;->a:Lpl/jbzd/app/view/AuthActivity$1;

    iget-object v0, v0, Lpl/jbzd/app/view/AuthActivity$1;->a:Lpl/jbzd/app/view/AuthActivity;

    iget-object v0, v0, Lpl/jbzd/app/view/AuthActivity;->b:Lpl/jbzd/app/ui/view/dialog/a;

    invoke-virtual {v0}, Lpl/jbzd/app/ui/view/dialog/a;->getShowsDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lpl/jbzd/app/view/AuthActivity$1$2;->a:Lpl/jbzd/app/view/AuthActivity$1;

    iget-object v0, v0, Lpl/jbzd/app/view/AuthActivity$1;->a:Lpl/jbzd/app/view/AuthActivity;

    iget-object v0, v0, Lpl/jbzd/app/view/AuthActivity;->b:Lpl/jbzd/app/ui/view/dialog/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lpl/jbzd/app/ui/view/dialog/a;->a(Z)V

    .line 147
    :cond_0
    iget-object v0, p0, Lpl/jbzd/app/view/AuthActivity$1$2;->a:Lpl/jbzd/app/view/AuthActivity$1;

    iget-object v0, v0, Lpl/jbzd/app/view/AuthActivity$1;->a:Lpl/jbzd/app/view/AuthActivity;

    invoke-virtual {v0}, Lpl/jbzd/app/view/AuthActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lpl/jbzd/api/exception/ApiException;->message()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 149
    :cond_1
    return-void
.end method

.method public synthetic onSuccess(Lpl/jbzd/api/response/BaseApiResponse;)V
    .locals 0

    .prologue
    .line 113
    check-cast p1, Lpl/jbzd/api/response/UserResponse;

    invoke-virtual {p0, p1}, Lpl/jbzd/app/view/AuthActivity$1$2;->a(Lpl/jbzd/api/response/UserResponse;)V

    return-void
.end method
