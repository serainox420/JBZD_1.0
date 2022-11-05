.class Lpl/jbzd/app/ui/view/comment/CommentsAdapter$4$1;
.super Lpl/jbzd/api/callback/SimpleApiCallback;
.source "CommentsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/jbzd/app/ui/view/comment/CommentsAdapter$4;->onClick(Landroid/view/View;)V
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
.field final synthetic a:Lpl/jbzd/app/ui/view/comment/CommentsAdapter$4;


# direct methods
.method constructor <init>(Lpl/jbzd/app/ui/view/comment/CommentsAdapter$4;)V
    .locals 0

    .prologue
    .line 309
    iput-object p1, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$4$1;->a:Lpl/jbzd/app/ui/view/comment/CommentsAdapter$4;

    invoke-direct {p0}, Lpl/jbzd/api/callback/SimpleApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lpl/jbzd/api/response/CommentResponse;)V
    .locals 3

    .prologue
    .line 313
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$4$1;->a:Lpl/jbzd/app/ui/view/comment/CommentsAdapter$4;

    iget-object v0, v0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$4;->b:Lpl/jbzd/app/ui/view/comment/CommentsAdapter;

    invoke-static {v0}, Lpl/jbzd/app/ui/view/comment/CommentsAdapter;->b(Lpl/jbzd/app/ui/view/comment/CommentsAdapter;)Lpl/jbzd/app/ui/view/comment/CommentsAdapter$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$4$1;->a:Lpl/jbzd/app/ui/view/comment/CommentsAdapter$4;

    iget-object v0, v0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$4;->b:Lpl/jbzd/app/ui/view/comment/CommentsAdapter;

    invoke-static {v0}, Lpl/jbzd/app/ui/view/comment/CommentsAdapter;->b(Lpl/jbzd/app/ui/view/comment/CommentsAdapter;)Lpl/jbzd/app/ui/view/comment/CommentsAdapter$b;

    move-result-object v0

    iget-object v1, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$4$1;->a:Lpl/jbzd/app/ui/view/comment/CommentsAdapter$4;

    iget-object v1, v1, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$4;->a:Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;

    invoke-virtual {v1}, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;->getAdapterPosition()I

    move-result v1

    const/4 v2, -0x1

    invoke-interface {v0, p1, v1, v2}, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$b;->a(Lpl/jbzd/api/response/CommentResponse;II)V

    .line 316
    :cond_0
    return-void
.end method

.method public onError(Lpl/jbzd/api/exception/ApiException;)V
    .locals 0

    .prologue
    .line 319
    return-void
.end method

.method public synthetic onSuccess(Lpl/jbzd/api/response/BaseApiResponse;)V
    .locals 0

    .prologue
    .line 309
    check-cast p1, Lpl/jbzd/api/response/CommentResponse;

    invoke-virtual {p0, p1}, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$4$1;->a(Lpl/jbzd/api/response/CommentResponse;)V

    return-void
.end method
