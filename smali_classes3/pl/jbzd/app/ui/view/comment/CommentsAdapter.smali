.class public Lpl/jbzd/app/ui/view/comment/CommentsAdapter;
.super Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter;
.source "CommentsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpl/jbzd/app/ui/view/comment/CommentsAdapter$ErrorPageViewHolder;,
        Lpl/jbzd/app/ui/view/comment/CommentsAdapter$ErrorFirstViewHolder;,
        Lpl/jbzd/app/ui/view/comment/CommentsAdapter$LoadingPageViewHolder;,
        Lpl/jbzd/app/ui/view/comment/CommentsAdapter$LoadingFirstViewHolder;,
        Lpl/jbzd/app/ui/view/comment/CommentsAdapter$EmptyViewHolder;,
        Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;,
        Lpl/jbzd/app/ui/view/comment/CommentsAdapter$b;,
        Lpl/jbzd/app/ui/view/comment/CommentsAdapter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter",
        "<",
        "Lpl/jbzd/app/model/Comment;",
        ">;"
    }
.end annotation


# instance fields
.field private c:Lpl/jbzd/app/ui/view/comment/CommentsAdapter$b;

.field private d:Lpl/jbzd/app/ui/view/comment/CommentsAdapter$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/widget/RecyclerView;Lpl/jbzd/core/ui/b/a;Lpl/jbzd/app/ui/view/comment/CommentsAdapter$a;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/support/v7/widget/RecyclerView;",
            "Lpl/jbzd/core/ui/b/a;",
            "Lpl/jbzd/app/ui/view/comment/CommentsAdapter$a;",
            "Ljava/util/ArrayList",
            "<",
            "Lpl/jbzd/app/model/Comment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 170
    invoke-direct {p0, p2, p3, p5}, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter;-><init>(Landroid/support/v7/widget/RecyclerView;Lpl/jbzd/core/ui/b/a;Ljava/util/ArrayList;)V

    .line 171
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lpl/jbzd/app/ui/view/comment/CommentsAdapter;->setHasStableIds(Z)V

    .line 172
    iput-object p4, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter;->d:Lpl/jbzd/app/ui/view/comment/CommentsAdapter$a;

    .line 173
    return-void
.end method

.method static synthetic a(Lpl/jbzd/app/ui/view/comment/CommentsAdapter;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method private a(Landroid/view/View;Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;)V
    .locals 2

    .prologue
    .line 206
    iget-object v0, p2, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;->avatar:Lcom/facebook/drawee/view/SimpleDraweeView;

    new-instance v1, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$1;

    invoke-direct {v1, p0, p2}, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$1;-><init>(Lpl/jbzd/app/ui/view/comment/CommentsAdapter;Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;)V

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    iget-object v0, p2, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;->username:Lpl/jbzd/core/ui/view/TextView;

    new-instance v1, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$2;

    invoke-direct {v1, p0, p2}, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$2;-><init>(Lpl/jbzd/app/ui/view/comment/CommentsAdapter;Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;)V

    invoke-virtual {v0, v1}, Lpl/jbzd/core/ui/view/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    iget-object v0, p2, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;->btnVoteUp:Landroid/widget/ImageView;

    new-instance v1, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$3;

    invoke-direct {v1, p0, p2}, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$3;-><init>(Lpl/jbzd/app/ui/view/comment/CommentsAdapter;Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    iget-object v0, p2, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;->btnVoteDown:Landroid/widget/ImageView;

    new-instance v1, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$4;

    invoke-direct {v1, p0, p2}, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$4;-><init>(Lpl/jbzd/app/ui/view/comment/CommentsAdapter;Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    iget-object v0, p2, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;->btnReply:Lpl/jbzd/core/ui/view/TextView;

    new-instance v1, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$5;

    invoke-direct {v1, p0, p2}, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$5;-><init>(Lpl/jbzd/app/ui/view/comment/CommentsAdapter;Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;)V

    invoke-virtual {v0, v1}, Lpl/jbzd/core/ui/view/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 346
    iget-object v0, p2, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;->btnNotice:Lpl/jbzd/core/ui/view/TextView;

    new-instance v1, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$6;

    invoke-direct {v1, p0, p2}, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$6;-><init>(Lpl/jbzd/app/ui/view/comment/CommentsAdapter;Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;)V

    invoke-virtual {v0, v1}, Lpl/jbzd/core/ui/view/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 364
    iget-object v0, p2, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;->btnShowReplies:Lpl/jbzd/core/ui/view/TextView;

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p2, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;->btnShowReplies:Lpl/jbzd/core/ui/view/TextView;

    new-instance v1, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$7;

    invoke-direct {v1, p0, p2}, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$7;-><init>(Lpl/jbzd/app/ui/view/comment/CommentsAdapter;Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;)V

    invoke-virtual {v0, v1}, Lpl/jbzd/core/ui/view/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 397
    :cond_0
    return-void
.end method

.method static synthetic b(Lpl/jbzd/app/ui/view/comment/CommentsAdapter;)Lpl/jbzd/app/ui/view/comment/CommentsAdapter$b;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter;->c:Lpl/jbzd/app/ui/view/comment/CommentsAdapter$b;

    return-object v0
.end method

.method static synthetic c(Lpl/jbzd/app/ui/view/comment/CommentsAdapter;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic d(Lpl/jbzd/app/ui/view/comment/CommentsAdapter;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic e(Lpl/jbzd/app/ui/view/comment/CommentsAdapter;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic f(Lpl/jbzd/app/ui/view/comment/CommentsAdapter;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic g(Lpl/jbzd/app/ui/view/comment/CommentsAdapter;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic h(Lpl/jbzd/app/ui/view/comment/CommentsAdapter;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic i(Lpl/jbzd/app/ui/view/comment/CommentsAdapter;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic j(Lpl/jbzd/app/ui/view/comment/CommentsAdapter;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic k(Lpl/jbzd/app/ui/view/comment/CommentsAdapter;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic l(Lpl/jbzd/app/ui/view/comment/CommentsAdapter;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic m(Lpl/jbzd/app/ui/view/comment/CommentsAdapter;)Lpl/jbzd/app/ui/view/comment/CommentsAdapter$a;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter;->d:Lpl/jbzd/app/ui/view/comment/CommentsAdapter$a;

    return-object v0
.end method

.method static synthetic n(Lpl/jbzd/app/ui/view/comment/CommentsAdapter;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic o(Lpl/jbzd/app/ui/view/comment/CommentsAdapter;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic p(Lpl/jbzd/app/ui/view/comment/CommentsAdapter;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic q(Lpl/jbzd/app/ui/view/comment/CommentsAdapter;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic r(Lpl/jbzd/app/ui/view/comment/CommentsAdapter;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic s(Lpl/jbzd/app/ui/view/comment/CommentsAdapter;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic t(Lpl/jbzd/app/ui/view/comment/CommentsAdapter;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic u(Lpl/jbzd/app/ui/view/comment/CommentsAdapter;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic v(Lpl/jbzd/app/ui/view/comment/CommentsAdapter;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic w(Lpl/jbzd/app/ui/view/comment/CommentsAdapter;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic x(Lpl/jbzd/app/ui/view/comment/CommentsAdapter;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic y(Lpl/jbzd/app/ui/view/comment/CommentsAdapter;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic z(Lpl/jbzd/app/ui/view/comment/CommentsAdapter;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter;->b:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public a(I)I
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/model/Comment;

    .line 467
    invoke-virtual {v0}, Lpl/jbzd/app/model/Comment;->realmGet$parent_id()I

    move-result v0

    if-lez v0, :cond_0

    .line 468
    sget-object v0, Lpl/jbzd/app/ui/view/comment/CommentViewType;->COMMENT_SUBCOMMENT:Lpl/jbzd/app/ui/view/comment/CommentViewType;

    iget v0, v0, Lpl/jbzd/app/ui/view/comment/CommentViewType;->id:I

    .line 471
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lpl/jbzd/app/ui/view/comment/CommentViewType;->COMMENT:Lpl/jbzd/app/ui/view/comment/CommentViewType;

    iget v0, v0, Lpl/jbzd/app/ui/view/comment/CommentViewType;->id:I

    goto :goto_0
.end method

.method public a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$u;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 178
    const/4 v0, 0x0

    .line 181
    sget-object v1, Lpl/jbzd/app/ui/view/comment/CommentViewType;->COMMENT:Lpl/jbzd/app/ui/view/comment/CommentViewType;

    iget v1, v1, Lpl/jbzd/app/ui/view/comment/CommentViewType;->id:I

    if-eq p2, v1, :cond_0

    sget-object v1, Lpl/jbzd/app/ui/view/comment/CommentViewType;->COMMENT_REPLIES:Lpl/jbzd/app/ui/view/comment/CommentViewType;

    iget v1, v1, Lpl/jbzd/app/ui/view/comment/CommentViewType;->id:I

    if-ne p2, v1, :cond_2

    .line 183
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040099

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 184
    new-instance v0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;

    invoke-direct {v0, v1}, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;-><init>(Landroid/view/View;)V

    .line 185
    invoke-direct {p0, v1, v0}, Lpl/jbzd/app/ui/view/comment/CommentsAdapter;->a(Landroid/view/View;Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;)V

    .line 194
    :cond_1
    :goto_0
    return-object v0

    .line 187
    :cond_2
    sget-object v1, Lpl/jbzd/app/ui/view/comment/CommentViewType;->COMMENT_SUBCOMMENT:Lpl/jbzd/app/ui/view/comment/CommentViewType;

    iget v1, v1, Lpl/jbzd/app/ui/view/comment/CommentViewType;->id:I

    if-ne p2, v1, :cond_1

    .line 189
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04009a

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 190
    new-instance v0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;

    invoke-direct {v0, v1}, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;-><init>(Landroid/view/View;)V

    .line 191
    invoke-direct {p0, v1, v0}, Lpl/jbzd/app/ui/view/comment/CommentsAdapter;->a(Landroid/view/View;Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;)V

    goto :goto_0
.end method

.method public a(Landroid/view/ViewGroup;Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;I)Landroid/support/v7/widget/RecyclerView$u;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 414
    sget-object v0, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;->EMPTY:Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;

    invoke-virtual {v0, p2}, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04004b

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 416
    const v0, 0x7f110159

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lpl/jbzd/core/ui/view/TextView;

    const v2, 0x7f0a00f6

    invoke-virtual {v0, v2}, Lpl/jbzd/core/ui/view/TextView;->setText(I)V

    .line 417
    new-instance v0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$EmptyViewHolder;

    invoke-direct {v0, v1}, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$EmptyViewHolder;-><init>(Landroid/view/View;)V

    .line 455
    :goto_0
    return-object v0

    .line 419
    :cond_0
    sget-object v0, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;->LOADING_FIST:Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;

    invoke-virtual {v0, p2}, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 420
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04005a

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 421
    new-instance v0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$LoadingFirstViewHolder;

    invoke-direct {v0, v1}, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$LoadingFirstViewHolder;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 423
    :cond_1
    sget-object v0, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;->LOADING_PAGE:Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;

    invoke-virtual {v0, p2}, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 424
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04005b

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 425
    new-instance v0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$LoadingPageViewHolder;

    invoke-direct {v0, v1}, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$LoadingPageViewHolder;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 427
    :cond_2
    sget-object v0, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;->ERROR_FIRST:Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;

    invoke-virtual {v0, p2}, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 429
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04004c

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 431
    new-instance v0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$ErrorFirstViewHolder;

    invoke-direct {v0, v1}, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$ErrorFirstViewHolder;-><init>(Landroid/view/View;)V

    .line 432
    iget-object v0, v0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$ErrorFirstViewHolder;->btn:Lpl/jbzd/core/ui/view/TextView;

    new-instance v2, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$8;

    invoke-direct {v2, p0}, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$8;-><init>(Lpl/jbzd/app/ui/view/comment/CommentsAdapter;)V

    invoke-virtual {v0, v2}, Lpl/jbzd/core/ui/view/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 439
    new-instance v0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$ErrorFirstViewHolder;

    invoke-direct {v0, v1}, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$ErrorFirstViewHolder;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 441
    :cond_3
    sget-object v0, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;->ERROR_PAGE:Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;

    invoke-virtual {v0, p2}, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 442
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04004d

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 444
    new-instance v0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$ErrorPageViewHolder;

    invoke-direct {v0, v1}, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$ErrorPageViewHolder;-><init>(Landroid/view/View;)V

    .line 445
    iget-object v1, v0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$ErrorPageViewHolder;->btn:Lpl/jbzd/core/ui/view/TextView;

    new-instance v2, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$9;

    invoke-direct {v2, p0}, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$9;-><init>(Lpl/jbzd/app/ui/view/comment/CommentsAdapter;)V

    invoke-virtual {v1, v2}, Lpl/jbzd/core/ui/view/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 455
    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$u;II)V
    .locals 1

    .prologue
    .line 403
    sget-object v0, Lpl/jbzd/app/ui/view/comment/CommentViewType;->COMMENT:Lpl/jbzd/app/ui/view/comment/CommentViewType;

    iget v0, v0, Lpl/jbzd/app/ui/view/comment/CommentViewType;->id:I

    if-eq p2, v0, :cond_0

    sget-object v0, Lpl/jbzd/app/ui/view/comment/CommentViewType;->COMMENT_REPLIES:Lpl/jbzd/app/ui/view/comment/CommentViewType;

    iget v0, v0, Lpl/jbzd/app/ui/view/comment/CommentViewType;->id:I

    if-eq p2, v0, :cond_0

    sget-object v0, Lpl/jbzd/app/ui/view/comment/CommentViewType;->COMMENT_SUBCOMMENT:Lpl/jbzd/app/ui/view/comment/CommentViewType;

    iget v0, v0, Lpl/jbzd/app/ui/view/comment/CommentViewType;->id:I

    if-ne p2, v0, :cond_1

    .line 405
    :cond_0
    check-cast p1, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;

    .line 407
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/model/Comment;

    invoke-virtual {p1, v0}, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;->a(Lpl/jbzd/app/model/Comment;)V

    .line 409
    :cond_1
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$u;Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;II)V
    .locals 0

    .prologue
    .line 460
    return-void
.end method

.method public a(Lpl/jbzd/app/ui/view/comment/CommentsAdapter$b;)V
    .locals 0

    .prologue
    .line 480
    iput-object p1, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter;->c:Lpl/jbzd/app/ui/view/comment/CommentsAdapter$b;

    .line 481
    return-void
.end method

.method public a()[Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;
    .locals 3

    .prologue
    .line 476
    const/4 v0, 0x5

    new-array v0, v0, [Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;

    const/4 v1, 0x0

    sget-object v2, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;->EMPTY:Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;->LOADING_FIST:Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;->LOADING_PAGE:Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;->ERROR_FIRST:Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;->ERROR_PAGE:Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/model/Comment;

    .line 201
    :goto_0
    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lpl/jbzd/app/ui/view/comment/CommentsAdapter;->getItemViewType(I)I

    move-result v0

    neg-int v0, v0

    int-to-long v0, v0

    :goto_1
    return-wide v0

    .line 200
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 201
    :cond_1
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/model/Comment;

    invoke-virtual {v0}, Lpl/jbzd/app/model/Comment;->realmGet$id()I

    move-result v0

    int-to-long v0, v0

    goto :goto_1
.end method
