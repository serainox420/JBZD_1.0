.class Lpl/jbzd/app/ui/view/comment/CommentsView$5;
.super Lpl/jbzd/core/ui/b/a;
.source "CommentsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/jbzd/app/ui/view/comment/CommentsView;->a(Landroid/support/v7/widget/LinearLayoutManager;)Lpl/jbzd/core/ui/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lpl/jbzd/app/ui/view/comment/CommentsView;


# direct methods
.method constructor <init>(Lpl/jbzd/app/ui/view/comment/CommentsView;Landroid/content/Context;Landroid/support/v7/widget/LinearLayoutManager;)V
    .locals 0

    .prologue
    .line 770
    iput-object p1, p0, Lpl/jbzd/app/ui/view/comment/CommentsView$5;->a:Lpl/jbzd/app/ui/view/comment/CommentsView;

    invoke-direct {p0, p2, p3}, Lpl/jbzd/core/ui/b/a;-><init>(Landroid/content/Context;Landroid/support/v7/widget/LinearLayoutManager;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 787
    const/4 v0, 0x0

    return v0
.end method

.method public a(II)V
    .locals 1

    .prologue
    .line 774
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView$5;->a:Lpl/jbzd/app/ui/view/comment/CommentsView;

    invoke-static {v0}, Lpl/jbzd/app/ui/view/comment/CommentsView;->h(Lpl/jbzd/app/ui/view/comment/CommentsView;)Lpl/jbzd/app/model/Media;

    move-result-object v0

    if-nez v0, :cond_0

    .line 775
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView$5;->a:Lpl/jbzd/app/ui/view/comment/CommentsView;

    invoke-static {v0}, Lpl/jbzd/app/ui/view/comment/CommentsView;->i(Lpl/jbzd/app/ui/view/comment/CommentsView;)Lpl/jbzd/app/ui/view/comment/CommentsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lpl/jbzd/app/ui/view/comment/CommentsAdapter;->e()V

    .line 780
    :goto_0
    return-void

    .line 779
    :cond_0
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView$5;->a:Lpl/jbzd/app/ui/view/comment/CommentsView;

    invoke-static {v0, p1}, Lpl/jbzd/app/ui/view/comment/CommentsView;->b(Lpl/jbzd/app/ui/view/comment/CommentsView;I)V

    goto :goto_0
.end method

.method public b(II)Z
    .locals 1

    .prologue
    .line 783
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView$5;->a:Lpl/jbzd/app/ui/view/comment/CommentsView;

    invoke-static {v0}, Lpl/jbzd/app/ui/view/comment/CommentsView;->l(Lpl/jbzd/app/ui/view/comment/CommentsView;)Z

    move-result v0

    return v0
.end method
