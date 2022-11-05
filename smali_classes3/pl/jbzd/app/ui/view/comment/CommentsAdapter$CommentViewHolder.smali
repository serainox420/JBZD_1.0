.class public Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;
.super Lpl/jbzd/core/ui/view/a;
.source "CommentsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/jbzd/app/ui/view/comment/CommentsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CommentViewHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lpl/jbzd/app/model/Comment;",
        ">",
        "Lpl/jbzd/core/ui/view/a",
        "<TT;>;"
    }
.end annotation


# instance fields
.field public avatar:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field public btnNotice:Lpl/jbzd/core/ui/view/TextView;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field public btnReply:Lpl/jbzd/core/ui/view/TextView;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field public btnShowReplies:Lpl/jbzd/core/ui/view/TextView;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field public btnVoteDown:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field public btnVoteUp:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field public comment:Lpl/jbzd/core/ui/view/TextView;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field public time:Lpl/jbzd/core/ui/view/TextView;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field public username:Lpl/jbzd/core/ui/view/TextView;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field public votes:Lpl/jbzd/core/ui/view/TextView;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lpl/jbzd/core/ui/view/a;-><init>(Landroid/view/View;)V

    .line 72
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 111
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;->btnReply:Lpl/jbzd/core/ui/view/TextView;

    invoke-virtual {v0, v1}, Lpl/jbzd/core/ui/view/TextView;->setVisibility(I)V

    .line 113
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;->btnShowReplies:Lpl/jbzd/core/ui/view/TextView;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;->btnShowReplies:Lpl/jbzd/core/ui/view/TextView;

    invoke-virtual {v0, v1}, Lpl/jbzd/core/ui/view/TextView;->setVisibility(I)V

    .line 116
    :cond_0
    return-void
.end method

.method public a(Lpl/jbzd/app/model/Comment;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    const v4, 0x7f02005c

    const v3, 0x7f020070

    .line 77
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;->votes:Lpl/jbzd/core/ui/view/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lpl/jbzd/app/model/Comment;->realmGet$plus()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lpl/jbzd/app/model/Comment;->realmGet$minus()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpl/jbzd/core/ui/view/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v1, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;->username:Lpl/jbzd/core/ui/view/TextView;

    invoke-virtual {p1}, Lpl/jbzd/app/model/Comment;->realmGet$user()Lpl/jbzd/app/model/User;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lpl/jbzd/app/model/Comment;->realmGet$user()Lpl/jbzd/app/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lpl/jbzd/app/model/User;->realmGet$username()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lpl/jbzd/core/ui/view/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;->time:Lpl/jbzd/core/ui/view/TextView;

    invoke-virtual {p1}, Lpl/jbzd/app/model/Comment;->realmGet$created_at()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lpl/jbzd/core/a/f;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpl/jbzd/core/ui/view/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;->comment:Lpl/jbzd/core/ui/view/TextView;

    invoke-virtual {p1}, Lpl/jbzd/app/model/Comment;->realmGet$comment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpl/jbzd/core/ui/view/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;->btnShowReplies:Lpl/jbzd/core/ui/view/TextView;

    if-eqz v0, :cond_1

    .line 83
    iget-object v1, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;->btnShowReplies:Lpl/jbzd/core/ui/view/TextView;

    invoke-virtual {p1}, Lpl/jbzd/app/model/Comment;->realmGet$replies()Lio/realm/q;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/q;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lpl/jbzd/app/model/Comment;->showReplies:Z

    if-eqz v0, :cond_3

    :cond_0
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Lpl/jbzd/core/ui/view/TextView;->setVisibility(I)V

    .line 86
    :cond_1
    invoke-virtual {p1}, Lpl/jbzd/app/model/Comment;->realmGet$voted()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 87
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;->btnVoteUp:Landroid/widget/ImageView;

    const v1, 0x7f020076

    iget-object v2, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;->btnVoteUp:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lpl/jbzd/core/a/a;->a(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 88
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;->btnVoteDown:Landroid/widget/ImageView;

    iget-object v1, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;->btnVoteDown:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v3, v1}, Lpl/jbzd/core/a/a;->a(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 99
    :goto_2
    invoke-virtual {p1}, Lpl/jbzd/app/model/Comment;->realmGet$user()Lpl/jbzd/app/model/User;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lpl/jbzd/app/model/Comment;->realmGet$user()Lpl/jbzd/app/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lpl/jbzd/app/model/User;->realmGet$avatar()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lpl/jbzd/app/model/Comment;->realmGet$user()Lpl/jbzd/app/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lpl/jbzd/app/model/User;->realmGet$avatar()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 101
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;->avatar:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0}, Lcom/facebook/drawee/view/SimpleDraweeView;->getHierarchy()Lcom/facebook/drawee/interfaces/DraweeHierarchy;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;

    invoke-virtual {v0, v4}, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->setPlaceholderImage(I)V

    .line 102
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;->avatar:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p1}, Lpl/jbzd/app/model/Comment;->realmGet$user()Lpl/jbzd/app/model/User;

    move-result-object v1

    invoke-virtual {v1}, Lpl/jbzd/app/model/User;->realmGet$avatar()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Landroid/net/Uri;)V

    .line 107
    :goto_3
    return-void

    .line 78
    :cond_2
    const-string v0, "Anonimowy"

    goto/16 :goto_0

    .line 83
    :cond_3
    const/16 v0, 0x8

    goto :goto_1

    .line 90
    :cond_4
    invoke-virtual {p1}, Lpl/jbzd/app/model/Comment;->realmGet$voted()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_5

    .line 91
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;->btnVoteUp:Landroid/widget/ImageView;

    iget-object v1, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;->btnVoteUp:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v3, v1}, Lpl/jbzd/core/a/a;->a(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 92
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;->btnVoteDown:Landroid/widget/ImageView;

    const v1, 0x7f020074

    iget-object v2, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;->btnVoteDown:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lpl/jbzd/core/a/a;->a(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 95
    :cond_5
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;->btnVoteUp:Landroid/widget/ImageView;

    iget-object v1, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;->btnVoteUp:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v3, v1}, Lpl/jbzd/core/a/a;->a(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 96
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;->btnVoteDown:Landroid/widget/ImageView;

    iget-object v1, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;->btnVoteDown:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v3, v1}, Lpl/jbzd/core/a/a;->a(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 105
    :cond_6
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;->avatar:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0}, Lcom/facebook/drawee/view/SimpleDraweeView;->getHierarchy()Lcom/facebook/drawee/interfaces/DraweeHierarchy;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;

    invoke-virtual {v0, v4}, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->setPlaceholderImage(I)V

    goto :goto_3
.end method
