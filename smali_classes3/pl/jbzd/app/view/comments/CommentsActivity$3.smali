.class Lpl/jbzd/app/view/comments/CommentsActivity$3;
.super Lpl/jbzd/api/callback/SimpleApiCallback;
.source "CommentsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/jbzd/app/view/comments/CommentsActivity;->d(Landroid/view/View;Lpl/jbzd/app/model/Comment;I)V
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
.field final synthetic a:Lpl/jbzd/app/view/comments/CommentsActivity;


# direct methods
.method constructor <init>(Lpl/jbzd/app/view/comments/CommentsActivity;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lpl/jbzd/app/view/comments/CommentsActivity$3;->a:Lpl/jbzd/app/view/comments/CommentsActivity;

    invoke-direct {p0}, Lpl/jbzd/api/callback/SimpleApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lpl/jbzd/api/response/CommentResponse;)V
    .locals 3

    .prologue
    .line 240
    iget-object v0, p0, Lpl/jbzd/app/view/comments/CommentsActivity$3;->a:Lpl/jbzd/app/view/comments/CommentsActivity;

    invoke-virtual {v0}, Lpl/jbzd/app/view/comments/CommentsActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 242
    iget-object v0, p0, Lpl/jbzd/app/view/comments/CommentsActivity$3;->a:Lpl/jbzd/app/view/comments/CommentsActivity;

    const v1, 0x7f0a00fe

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 248
    :cond_0
    return-void
.end method

.method public onError(Lpl/jbzd/api/exception/ApiException;)V
    .locals 3

    .prologue
    .line 253
    iget-object v0, p0, Lpl/jbzd/app/view/comments/CommentsActivity$3;->a:Lpl/jbzd/app/view/comments/CommentsActivity;

    invoke-virtual {v0}, Lpl/jbzd/app/view/comments/CommentsActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 254
    iget-object v0, p0, Lpl/jbzd/app/view/comments/CommentsActivity$3;->a:Lpl/jbzd/app/view/comments/CommentsActivity;

    invoke-virtual {p1}, Lpl/jbzd/api/exception/ApiException;->message()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 256
    :cond_0
    return-void
.end method

.method public synthetic onSuccess(Lpl/jbzd/api/response/BaseApiResponse;)V
    .locals 0

    .prologue
    .line 236
    check-cast p1, Lpl/jbzd/api/response/CommentResponse;

    invoke-virtual {p0, p1}, Lpl/jbzd/app/view/comments/CommentsActivity$3;->a(Lpl/jbzd/api/response/CommentResponse;)V

    return-void
.end method
