.class Lpl/jbzd/app/ui/view/comment/CommentsView$2;
.super Lpl/jbzd/api/callback/SimpleApiCallback;
.source "CommentsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/jbzd/app/ui/view/comment/CommentsView;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpl/jbzd/api/callback/SimpleApiCallback",
        "<",
        "Lpl/jbzd/api/response/CommentListResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lpl/jbzd/app/ui/view/comment/CommentsView;


# direct methods
.method constructor <init>(Lpl/jbzd/app/ui/view/comment/CommentsView;)V
    .locals 0

    .prologue
    .line 639
    iput-object p1, p0, Lpl/jbzd/app/ui/view/comment/CommentsView$2;->a:Lpl/jbzd/app/ui/view/comment/CommentsView;

    invoke-direct {p0}, Lpl/jbzd/api/callback/SimpleApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lpl/jbzd/api/response/CommentListResponse;)V
    .locals 2

    .prologue
    .line 642
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView$2;->a:Lpl/jbzd/app/ui/view/comment/CommentsView;

    iget-object v1, p1, Lpl/jbzd/api/response/CommentListResponse;->response:Ljava/util/List;

    invoke-static {v0, v1}, Lpl/jbzd/app/ui/view/comment/CommentsView;->b(Lpl/jbzd/app/ui/view/comment/CommentsView;Ljava/util/List;)V

    .line 643
    return-void
.end method

.method public onError(Lpl/jbzd/api/exception/ApiException;)V
    .locals 3

    .prologue
    .line 647
    iget-object v1, p0, Lpl/jbzd/app/ui/view/comment/CommentsView$2;->a:Lpl/jbzd/app/ui/view/comment/CommentsView;

    invoke-virtual {p1}, Lpl/jbzd/api/exception/ApiException;->code()I

    move-result v0

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_0

    invoke-virtual {p1}, Lpl/jbzd/api/exception/ApiException;->message()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v1, v0}, Lpl/jbzd/app/ui/view/comment/CommentsView;->a(Lpl/jbzd/app/ui/view/comment/CommentsView;Ljava/lang/String;)V

    .line 648
    return-void

    .line 647
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic onSuccess(Lpl/jbzd/api/response/BaseApiResponse;)V
    .locals 0

    .prologue
    .line 639
    check-cast p1, Lpl/jbzd/api/response/CommentListResponse;

    invoke-virtual {p0, p1}, Lpl/jbzd/app/ui/view/comment/CommentsView$2;->a(Lpl/jbzd/api/response/CommentListResponse;)V

    return-void
.end method
