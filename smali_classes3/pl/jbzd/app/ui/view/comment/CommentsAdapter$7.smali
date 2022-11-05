.class Lpl/jbzd/app/ui/view/comment/CommentsAdapter$7;
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
    .line 366
    iput-object p1, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$7;->b:Lpl/jbzd/app/ui/view/comment/CommentsAdapter;

    iput-object p2, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$7;->a:Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 370
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$7;->b:Lpl/jbzd/app/ui/view/comment/CommentsAdapter;

    invoke-static {v0}, Lpl/jbzd/app/ui/view/comment/CommentsAdapter;->q(Lpl/jbzd/app/ui/view/comment/CommentsAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 371
    iget-object v3, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$7;->a:Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;

    invoke-virtual {v3}, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;->getAdapterPosition()I

    move-result v3

    .line 372
    if-lt v0, v1, :cond_0

    if-ltz v3, :cond_0

    if-lt v3, v0, :cond_1

    .line 394
    :cond_0
    :goto_0
    return-void

    .line 376
    :cond_1
    add-int/lit8 v0, v0, -0x1

    if-ne v3, v0, :cond_3

    move v0, v1

    .line 378
    :goto_1
    if-nez v0, :cond_2

    add-int/lit8 v4, v3, 0x1

    iget-object v5, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$7;->b:Lpl/jbzd/app/ui/view/comment/CommentsAdapter;

    invoke-static {v5}, Lpl/jbzd/app/ui/view/comment/CommentsAdapter;->r(Lpl/jbzd/app/ui/view/comment/CommentsAdapter;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    iget-object v4, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$7;->b:Lpl/jbzd/app/ui/view/comment/CommentsAdapter;

    invoke-static {v4}, Lpl/jbzd/app/ui/view/comment/CommentsAdapter;->s(Lpl/jbzd/app/ui/view/comment/CommentsAdapter;)Ljava/util/ArrayList;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 379
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$7;->b:Lpl/jbzd/app/ui/view/comment/CommentsAdapter;

    invoke-static {v0}, Lpl/jbzd/app/ui/view/comment/CommentsAdapter;->t(Lpl/jbzd/app/ui/view/comment/CommentsAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/model/Comment;

    invoke-virtual {v0}, Lpl/jbzd/app/model/Comment;->realmGet$id()I

    move-result v4

    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$7;->b:Lpl/jbzd/app/ui/view/comment/CommentsAdapter;

    invoke-static {v0}, Lpl/jbzd/app/ui/view/comment/CommentsAdapter;->u(Lpl/jbzd/app/ui/view/comment/CommentsAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/model/Comment;

    invoke-virtual {v0}, Lpl/jbzd/app/model/Comment;->realmGet$parent_id()I

    move-result v0

    if-eq v4, v0, :cond_4

    move v0, v1

    .line 382
    :cond_2
    :goto_2
    if-eqz v0, :cond_5

    .line 384
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$7;->a:Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;

    iget-object v0, v0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;->btnShowReplies:Lpl/jbzd/core/ui/view/TextView;

    const v1, 0x7f0a00d7

    invoke-virtual {v0, v1}, Lpl/jbzd/core/ui/view/TextView;->setText(I)V

    .line 385
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$7;->b:Lpl/jbzd/app/ui/view/comment/CommentsAdapter;

    invoke-static {v0}, Lpl/jbzd/app/ui/view/comment/CommentsAdapter;->w(Lpl/jbzd/app/ui/view/comment/CommentsAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    add-int/lit8 v2, v3, 0x1

    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$7;->b:Lpl/jbzd/app/ui/view/comment/CommentsAdapter;

    invoke-static {v0}, Lpl/jbzd/app/ui/view/comment/CommentsAdapter;->v(Lpl/jbzd/app/ui/view/comment/CommentsAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/model/Comment;

    invoke-virtual {v0}, Lpl/jbzd/app/model/Comment;->getReplies()Lio/realm/q;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 386
    iget-object v1, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$7;->b:Lpl/jbzd/app/ui/view/comment/CommentsAdapter;

    add-int/lit8 v2, v3, 0x1

    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$7;->b:Lpl/jbzd/app/ui/view/comment/CommentsAdapter;

    invoke-static {v0}, Lpl/jbzd/app/ui/view/comment/CommentsAdapter;->x(Lpl/jbzd/app/ui/view/comment/CommentsAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/model/Comment;

    invoke-virtual {v0}, Lpl/jbzd/app/model/Comment;->getReplies()Lio/realm/q;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/q;->size()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lpl/jbzd/app/ui/view/comment/CommentsAdapter;->notifyItemRangeInserted(II)V

    goto/16 :goto_0

    :cond_3
    move v0, v2

    .line 376
    goto/16 :goto_1

    :cond_4
    move v0, v2

    .line 379
    goto :goto_2

    .line 390
    :cond_5
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$7;->a:Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;

    iget-object v0, v0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;->btnShowReplies:Lpl/jbzd/core/ui/view/TextView;

    const v1, 0x7f0a00ae

    invoke-virtual {v0, v1}, Lpl/jbzd/core/ui/view/TextView;->setText(I)V

    .line 391
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$7;->b:Lpl/jbzd/app/ui/view/comment/CommentsAdapter;

    invoke-static {v0}, Lpl/jbzd/app/ui/view/comment/CommentsAdapter;->z(Lpl/jbzd/app/ui/view/comment/CommentsAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$7;->b:Lpl/jbzd/app/ui/view/comment/CommentsAdapter;

    invoke-static {v0}, Lpl/jbzd/app/ui/view/comment/CommentsAdapter;->y(Lpl/jbzd/app/ui/view/comment/CommentsAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/model/Comment;

    invoke-virtual {v0}, Lpl/jbzd/app/model/Comment;->getReplies()Lio/realm/q;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 392
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$7;->b:Lpl/jbzd/app/ui/view/comment/CommentsAdapter;

    invoke-virtual {v0}, Lpl/jbzd/app/ui/view/comment/CommentsAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0
.end method
