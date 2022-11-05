.class Lpl/jbzd/app/ui/view/comment/CommentsAdapter$4;
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
    .line 277
    iput-object p1, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$4;->b:Lpl/jbzd/app/ui/view/comment/CommentsAdapter;

    iput-object p2, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$4;->a:Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v2, 0x0

    .line 281
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$4;->b:Lpl/jbzd/app/ui/view/comment/CommentsAdapter;

    invoke-static {v0}, Lpl/jbzd/app/ui/view/comment/CommentsAdapter;->h(Lpl/jbzd/app/ui/view/comment/CommentsAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 282
    if-lez v0, :cond_0

    iget-object v1, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$4;->a:Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;

    invoke-virtual {v1}, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;->getAdapterPosition()I

    move-result v1

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$4;->a:Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;

    invoke-virtual {v0}, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;->getAdapterPosition()I

    move-result v0

    if-ltz v0, :cond_0

    .line 284
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lpl/jbzd/core/a/a;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 285
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a00c1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 323
    :cond_0
    :goto_0
    return-void

    .line 289
    :cond_1
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$4;->b:Lpl/jbzd/app/ui/view/comment/CommentsAdapter;

    invoke-static {v0}, Lpl/jbzd/app/ui/view/comment/CommentsAdapter;->i(Lpl/jbzd/app/ui/view/comment/CommentsAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$4;->a:Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;

    invoke-virtual {v1}, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/model/Comment;

    .line 291
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lpl/jbzd/app/model/Comment;->realmGet$voted()I

    move-result v1

    if-nez v1, :cond_0

    .line 293
    invoke-static {}, Lio/realm/l;->k()Lio/realm/l;

    move-result-object v1

    const-class v3, Lpl/jbzd/app/model/Comment;

    invoke-virtual {v1, v3}, Lio/realm/l;->a(Ljava/lang/Class;)Lio/realm/v;

    move-result-object v1

    const-string v3, "id"

    invoke-virtual {v0}, Lpl/jbzd/app/model/Comment;->realmGet$id()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lio/realm/v;->a(Ljava/lang/String;Ljava/lang/Integer;)Lio/realm/v;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/v;->c()Lio/realm/t;

    move-result-object v1

    check-cast v1, Lpl/jbzd/app/model/Comment;

    .line 295
    invoke-static {}, Lio/realm/l;->k()Lio/realm/l;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/l;->b()V

    .line 296
    invoke-virtual {v1}, Lpl/jbzd/app/model/Comment;->realmGet$minus()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Lpl/jbzd/app/model/Comment;->setMinus(I)V

    invoke-virtual {v0}, Lpl/jbzd/app/model/Comment;->realmGet$minus()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Lpl/jbzd/app/model/Comment;->setMinus(I)V

    .line 297
    invoke-virtual {v1}, Lpl/jbzd/app/model/Comment;->realmGet$voted()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    invoke-virtual {v1}, Lpl/jbzd/app/model/Comment;->realmGet$plus()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v1, v3}, Lpl/jbzd/app/model/Comment;->setPlus(I)V

    invoke-virtual {v0}, Lpl/jbzd/app/model/Comment;->realmGet$plus()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v0, v3}, Lpl/jbzd/app/model/Comment;->setPlus(I)V

    .line 298
    :cond_2
    invoke-virtual {v1, v5}, Lpl/jbzd/app/model/Comment;->setVoted(I)V

    invoke-virtual {v0, v5}, Lpl/jbzd/app/model/Comment;->setVoted(I)V

    .line 299
    invoke-static {}, Lio/realm/l;->k()Lio/realm/l;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/l;->c()V

    .line 301
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$4;->a:Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;

    iget-object v0, v0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;->btnVoteUp:Landroid/widget/ImageView;

    const v3, 0x7f020070

    iget-object v4, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$4;->a:Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;

    iget-object v4, v4, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;->btnVoteUp:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lpl/jbzd/core/a/a;->a(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 302
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$4;->a:Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;

    iget-object v0, v0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;->btnVoteDown:Landroid/widget/ImageView;

    const v3, 0x7f020074

    iget-object v4, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$4;->a:Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;

    iget-object v4, v4, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;->btnVoteDown:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lpl/jbzd/core/a/a;->a(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 303
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$4;->a:Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;

    iget-object v3, v0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;->votes:Lpl/jbzd/core/ui/view/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lpl/jbzd/app/model/Comment;->realmGet$plus()I

    move-result v0

    if-gez v0, :cond_4

    move v0, v2

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " / "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lpl/jbzd/app/model/Comment;->realmGet$minus()I

    move-result v4

    if-gez v4, :cond_5

    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lpl/jbzd/core/ui/view/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$4;->b:Lpl/jbzd/app/ui/view/comment/CommentsAdapter;

    invoke-static {v0}, Lpl/jbzd/app/ui/view/comment/CommentsAdapter;->b(Lpl/jbzd/app/ui/view/comment/CommentsAdapter;)Lpl/jbzd/app/ui/view/comment/CommentsAdapter$b;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 306
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$4;->b:Lpl/jbzd/app/ui/view/comment/CommentsAdapter;

    invoke-static {v0}, Lpl/jbzd/app/ui/view/comment/CommentsAdapter;->b(Lpl/jbzd/app/ui/view/comment/CommentsAdapter;)Lpl/jbzd/app/ui/view/comment/CommentsAdapter$b;

    move-result-object v2

    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$4;->b:Lpl/jbzd/app/ui/view/comment/CommentsAdapter;

    invoke-static {v0}, Lpl/jbzd/app/ui/view/comment/CommentsAdapter;->j(Lpl/jbzd/app/ui/view/comment/CommentsAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v3, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$4;->a:Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;

    invoke-virtual {v3}, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;->getAdapterPosition()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/model/Comment;

    iget-object v3, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$4;->a:Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;

    invoke-virtual {v3}, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;->getAdapterPosition()I

    move-result v3

    invoke-interface {v2, p1, v0, v3, v5}, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$b;->a(Landroid/view/View;Lpl/jbzd/app/model/Comment;II)V

    .line 309
    :cond_3
    invoke-static {}, Lpl/jbzd/api/ApiClient;->getApiService()Lpl/jbzd/api/ApiService;

    move-result-object v0

    invoke-virtual {v1}, Lpl/jbzd/app/model/Comment;->realmGet$id()I

    move-result v1

    const-string v2, "down"

    invoke-interface {v0, v1, v2}, Lpl/jbzd/api/ApiService;->comment_vote(ILjava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$4$1;

    invoke-direct {v1, p0}, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$4$1;-><init>(Lpl/jbzd/app/ui/view/comment/CommentsAdapter$4;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    goto/16 :goto_0

    .line 303
    :cond_4
    invoke-virtual {v1}, Lpl/jbzd/app/model/Comment;->realmGet$plus()I

    move-result v0

    goto :goto_1

    :cond_5
    invoke-virtual {v1}, Lpl/jbzd/app/model/Comment;->realmGet$minus()I

    move-result v2

    goto :goto_2
.end method
