.class Lpl/jbzd/app/ui/view/comment/CommentsAdapter$6;
.super Ljava/lang/Object;
.source "CommentsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/jbzd/app/ui/view/comment/CommentsAdapter;->a(Landroid/view/View;Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;

.field final synthetic b:Lpl/jbzd/app/ui/view/comment/CommentsAdapter;


# direct methods
.method constructor <init>(Lpl/jbzd/app/ui/view/comment/CommentsAdapter;Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;)V
    .locals 0

    .prologue
    .line 346
    iput-object p1, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$6;->b:Lpl/jbzd/app/ui/view/comment/CommentsAdapter;

    iput-object p2, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$6;->a:Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 349
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$6;->b:Lpl/jbzd/app/ui/view/comment/CommentsAdapter;

    invoke-static {v0}, Lpl/jbzd/app/ui/view/comment/CommentsAdapter;->o(Lpl/jbzd/app/ui/view/comment/CommentsAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 350
    if-lez v0, :cond_0

    iget-object v1, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$6;->a:Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;

    invoke-virtual {v1}, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;->getAdapterPosition()I

    move-result v1

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$6;->a:Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;

    invoke-virtual {v0}, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;->getAdapterPosition()I

    move-result v0

    if-ltz v0, :cond_0

    .line 352
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lpl/jbzd/core/a/a;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 353
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a00c1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 361
    :cond_0
    :goto_0
    return-void

    .line 357
    :cond_1
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$6;->b:Lpl/jbzd/app/ui/view/comment/CommentsAdapter;

    invoke-static {v0}, Lpl/jbzd/app/ui/view/comment/CommentsAdapter;->b(Lpl/jbzd/app/ui/view/comment/CommentsAdapter;)Lpl/jbzd/app/ui/view/comment/CommentsAdapter$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$6;->b:Lpl/jbzd/app/ui/view/comment/CommentsAdapter;

    invoke-static {v0}, Lpl/jbzd/app/ui/view/comment/CommentsAdapter;->b(Lpl/jbzd/app/ui/view/comment/CommentsAdapter;)Lpl/jbzd/app/ui/view/comment/CommentsAdapter$b;

    move-result-object v1

    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$6;->b:Lpl/jbzd/app/ui/view/comment/CommentsAdapter;

    invoke-static {v0}, Lpl/jbzd/app/ui/view/comment/CommentsAdapter;->p(Lpl/jbzd/app/ui/view/comment/CommentsAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$6;->a:Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;

    invoke-virtual {v2}, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;->getAdapterPosition()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/model/Comment;

    iget-object v2, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$6;->a:Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;

    invoke-virtual {v2}, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;->getAdapterPosition()I

    move-result v2

    invoke-interface {v1, p1, v0, v2}, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$b;->d(Landroid/view/View;Lpl/jbzd/app/model/Comment;I)V

    goto :goto_0
.end method
