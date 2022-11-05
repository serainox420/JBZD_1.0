.class Lpl/jbzd/app/view/user/UserActivity$3;
.super Lpl/jbzd/api/callback/SimpleApiCallback;
.source "UserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/jbzd/app/view/user/UserActivity;->a(Landroid/view/View;Lpl/jbzd/app/model/Comment;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpl/jbzd/api/callback/SimpleApiCallback",
        "<",
        "Lpl/jbzd/api/response/CommentResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lpl/jbzd/app/view/user/UserActivity;


# direct methods
.method constructor <init>(Lpl/jbzd/app/view/user/UserActivity;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lpl/jbzd/app/view/user/UserActivity$3;->a:Lpl/jbzd/app/view/user/UserActivity;

    invoke-direct {p0}, Lpl/jbzd/api/callback/SimpleApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lpl/jbzd/api/response/CommentResponse;)V
    .locals 4

    .prologue
    .line 192
    iget-object v0, p0, Lpl/jbzd/app/view/user/UserActivity$3;->a:Lpl/jbzd/app/view/user/UserActivity;

    invoke-virtual {v0}, Lpl/jbzd/app/view/user/UserActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    const/4 v0, 0x3

    iget-object v1, p0, Lpl/jbzd/app/view/user/UserActivity$3;->a:Lpl/jbzd/app/view/user/UserActivity;

    const v2, 0x7f0a00fe

    invoke-virtual {v1, v2}, Lpl/jbzd/app/view/user/UserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lpl/jbzd/app/view/user/UserActivity$3;->a:Lpl/jbzd/app/view/user/UserActivity;

    const v3, 0x7f0a0104

    invoke-virtual {v2, v3}, Lpl/jbzd/app/view/user/UserActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lpl/jbzd/app/ui/view/dialog/StatusDialog;->a(ILjava/lang/String;Ljava/lang/String;)Lpl/jbzd/app/ui/view/dialog/StatusDialog;

    move-result-object v0

    .line 195
    invoke-virtual {v0}, Lpl/jbzd/app/ui/view/dialog/StatusDialog;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lpl/jbzd/app/view/user/UserActivity$3;->a:Lpl/jbzd/app/view/user/UserActivity;

    invoke-virtual {v1}, Lpl/jbzd/app/view/user/UserActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-class v2, Lpl/jbzd/app/ui/view/dialog/StatusDialog;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lpl/jbzd/app/ui/view/dialog/StatusDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 197
    :cond_0
    return-void
.end method

.method public onError(Lpl/jbzd/api/exception/ApiException;)V
    .locals 3

    .prologue
    .line 202
    iget-object v0, p0, Lpl/jbzd/app/view/user/UserActivity$3;->a:Lpl/jbzd/app/view/user/UserActivity;

    invoke-virtual {v0}, Lpl/jbzd/app/view/user/UserActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    iget-object v0, p0, Lpl/jbzd/app/view/user/UserActivity$3;->a:Lpl/jbzd/app/view/user/UserActivity;

    invoke-virtual {p1}, Lpl/jbzd/api/exception/ApiException;->message()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 205
    :cond_0
    return-void
.end method

.method public synthetic onSuccess(Lpl/jbzd/api/response/BaseApiResponse;)V
    .locals 0

    .prologue
    .line 188
    check-cast p1, Lpl/jbzd/api/response/CommentResponse;

    invoke-virtual {p0, p1}, Lpl/jbzd/app/view/user/UserActivity$3;->a(Lpl/jbzd/api/response/CommentResponse;)V

    return-void
.end method
