.class Lpl/jbzd/app/ui/view/comment/CommentsAdapter$2;
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
    .line 216
    iput-object p1, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$2;->b:Lpl/jbzd/app/ui/view/comment/CommentsAdapter;

    iput-object p2, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$2;->a:Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 219
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$2;->b:Lpl/jbzd/app/ui/view/comment/CommentsAdapter;

    invoke-static {v0}, Lpl/jbzd/app/ui/view/comment/CommentsAdapter;->d(Lpl/jbzd/app/ui/view/comment/CommentsAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 220
    iget-object v1, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$2;->b:Lpl/jbzd/app/ui/view/comment/CommentsAdapter;

    invoke-static {v1}, Lpl/jbzd/app/ui/view/comment/CommentsAdapter;->b(Lpl/jbzd/app/ui/view/comment/CommentsAdapter;)Lpl/jbzd/app/ui/view/comment/CommentsAdapter$b;

    move-result-object v1

    if-eqz v1, :cond_0

    if-lez v0, :cond_0

    iget-object v1, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$2;->a:Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;

    invoke-virtual {v1}, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;->getAdapterPosition()I

    move-result v1

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$2;->a:Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;

    invoke-virtual {v0}, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;->getAdapterPosition()I

    move-result v0

    if-ltz v0, :cond_0

    .line 221
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$2;->b:Lpl/jbzd/app/ui/view/comment/CommentsAdapter;

    invoke-static {v0}, Lpl/jbzd/app/ui/view/comment/CommentsAdapter;->b(Lpl/jbzd/app/ui/view/comment/CommentsAdapter;)Lpl/jbzd/app/ui/view/comment/CommentsAdapter$b;

    move-result-object v1

    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$2;->b:Lpl/jbzd/app/ui/view/comment/CommentsAdapter;

    invoke-static {v0}, Lpl/jbzd/app/ui/view/comment/CommentsAdapter;->e(Lpl/jbzd/app/ui/view/comment/CommentsAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$2;->a:Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;

    invoke-virtual {v2}, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;->getAdapterPosition()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/model/Comment;

    iget-object v2, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$2;->a:Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;

    invoke-virtual {v2}, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;->getAdapterPosition()I

    move-result v2

    invoke-interface {v1, p1, v0, v2}, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$b;->b(Landroid/view/View;Lpl/jbzd/app/model/Comment;I)V

    .line 223
    :cond_0
    return-void
.end method
