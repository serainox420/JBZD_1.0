.class public Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder_ViewBinding;
.super Ljava/lang/Object;
.source "CommentsAdapter$CommentViewHolder_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;


# direct methods
.method public constructor <init>(Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;Landroid/view/View;)V
    .locals 3

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder_ViewBinding;->b:Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;

    .line 24
    const v0, 0x7f110172

    const-string v1, "field \'avatar\'"

    const-class v2, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/b;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p1, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;->avatar:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 25
    const v0, 0x7f11016d

    const-string v1, "field \'btnVoteUp\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/b;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;->btnVoteUp:Landroid/widget/ImageView;

    .line 26
    const v0, 0x7f1101e4

    const-string v1, "field \'btnVoteDown\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/b;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;->btnVoteDown:Landroid/widget/ImageView;

    .line 27
    const v0, 0x7f1101e5

    const-string v1, "field \'votes\'"

    const-class v2, Lpl/jbzd/core/ui/view/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/b;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/core/ui/view/TextView;

    iput-object v0, p1, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;->votes:Lpl/jbzd/core/ui/view/TextView;

    .line 28
    const v0, 0x7f110187

    const-string v1, "field \'username\'"

    const-class v2, Lpl/jbzd/core/ui/view/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/b;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/core/ui/view/TextView;

    iput-object v0, p1, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;->username:Lpl/jbzd/core/ui/view/TextView;

    .line 29
    const v0, 0x7f1101b1

    const-string v1, "field \'time\'"

    const-class v2, Lpl/jbzd/core/ui/view/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/b;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/core/ui/view/TextView;

    iput-object v0, p1, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;->time:Lpl/jbzd/core/ui/view/TextView;

    .line 30
    const v0, 0x7f1101e6

    const-string v1, "field \'comment\'"

    const-class v2, Lpl/jbzd/core/ui/view/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/b;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/core/ui/view/TextView;

    iput-object v0, p1, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;->comment:Lpl/jbzd/core/ui/view/TextView;

    .line 31
    const v0, 0x7f1101e7

    const-string v1, "field \'btnNotice\'"

    const-class v2, Lpl/jbzd/core/ui/view/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/b;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/core/ui/view/TextView;

    iput-object v0, p1, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;->btnNotice:Lpl/jbzd/core/ui/view/TextView;

    .line 32
    const v0, 0x7f1101e8

    const-string v1, "field \'btnReply\'"

    const-class v2, Lpl/jbzd/core/ui/view/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/b;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/core/ui/view/TextView;

    iput-object v0, p1, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;->btnReply:Lpl/jbzd/core/ui/view/TextView;

    .line 33
    const v0, 0x7f1101e9

    const-string v1, "field \'btnShowReplies\'"

    const-class v2, Lpl/jbzd/core/ui/view/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/b;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/core/ui/view/TextView;

    iput-object v0, p1, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;->btnShowReplies:Lpl/jbzd/core/ui/view/TextView;

    .line 34
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder_ViewBinding;->b:Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;

    .line 40
    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_0
    iput-object v1, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder_ViewBinding;->b:Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;

    .line 43
    iput-object v1, v0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;->avatar:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 44
    iput-object v1, v0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;->btnVoteUp:Landroid/widget/ImageView;

    .line 45
    iput-object v1, v0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;->btnVoteDown:Landroid/widget/ImageView;

    .line 46
    iput-object v1, v0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;->votes:Lpl/jbzd/core/ui/view/TextView;

    .line 47
    iput-object v1, v0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;->username:Lpl/jbzd/core/ui/view/TextView;

    .line 48
    iput-object v1, v0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;->time:Lpl/jbzd/core/ui/view/TextView;

    .line 49
    iput-object v1, v0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;->comment:Lpl/jbzd/core/ui/view/TextView;

    .line 50
    iput-object v1, v0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;->btnNotice:Lpl/jbzd/core/ui/view/TextView;

    .line 51
    iput-object v1, v0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;->btnReply:Lpl/jbzd/core/ui/view/TextView;

    .line 52
    iput-object v1, v0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;->btnShowReplies:Lpl/jbzd/core/ui/view/TextView;

    .line 53
    return-void
.end method
