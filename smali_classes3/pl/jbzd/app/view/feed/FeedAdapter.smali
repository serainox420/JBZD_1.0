.class public Lpl/jbzd/app/view/feed/FeedAdapter;
.super Lpl/jbzd/core/ui/view/lce/c;
.source "FeedAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpl/jbzd/app/view/feed/FeedAdapter$a;,
        Lpl/jbzd/app/view/feed/FeedAdapter$ErrorPageViewHolder;,
        Lpl/jbzd/app/view/feed/FeedAdapter$ErrorFirstViewHolder;,
        Lpl/jbzd/app/view/feed/FeedAdapter$LoadingPageViewHolder;,
        Lpl/jbzd/app/view/feed/FeedAdapter$LoadingFirstViewHolder;,
        Lpl/jbzd/app/view/feed/FeedAdapter$c;,
        Lpl/jbzd/app/view/feed/FeedAdapter$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpl/jbzd/core/ui/view/lce/c",
        "<",
        "Lpl/jbzd/app/view/feed/a/a;",
        "Landroid/support/v7/widget/RecyclerView$u;",
        ">;"
    }
.end annotation


# static fields
.field public static a:I

.field public static b:I

.field public static c:I


# instance fields
.field public d:Lpl/jbzd/app/view/BaseActivity;

.field private g:Lpl/jbzd/app/view/feed/FeedAdapter$a;

.field private final h:Lpl/jbzd/app/view/feed/FeedAdapter$b;

.field private i:J

.field private j:Lpl/jbzd/app/view/feed/holders/UserViewHolder;

.field private k:I

.field private l:I

.field private m:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 58
    sput v0, Lpl/jbzd/app/view/feed/FeedAdapter;->a:I

    .line 59
    sput v0, Lpl/jbzd/app/view/feed/FeedAdapter;->b:I

    .line 60
    sput v0, Lpl/jbzd/app/view/feed/FeedAdapter;->c:I

    return-void
.end method

.method public constructor <init>(Lpl/jbzd/app/view/BaseActivity;Landroid/support/v7/widget/RecyclerView;Lpl/jbzd/core/ui/b/a;Lpl/jbzd/app/view/feed/FeedAdapter$b;Ljava/util/ArrayList;II)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpl/jbzd/app/view/BaseActivity;",
            "Landroid/support/v7/widget/RecyclerView;",
            "Lpl/jbzd/core/ui/b/a;",
            "Lpl/jbzd/app/view/feed/FeedAdapter$b;",
            "Ljava/util/ArrayList",
            "<",
            "Lpl/jbzd/app/view/feed/a/a;",
            ">;II)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 139
    invoke-direct {p0, p5}, Lpl/jbzd/core/ui/view/lce/c;-><init>(Ljava/util/List;)V

    .line 126
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lpl/jbzd/app/view/feed/FeedAdapter;->i:J

    .line 130
    iput v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter;->k:I

    .line 131
    iput v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter;->l:I

    .line 132
    iput v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter;->m:I

    .line 140
    iput-object p1, p0, Lpl/jbzd/app/view/feed/FeedAdapter;->d:Lpl/jbzd/app/view/BaseActivity;

    .line 141
    invoke-virtual {p0, v1}, Lpl/jbzd/app/view/feed/FeedAdapter;->setHasStableIds(Z)V

    .line 143
    iput-object p4, p0, Lpl/jbzd/app/view/feed/FeedAdapter;->h:Lpl/jbzd/app/view/feed/FeedAdapter$b;

    .line 144
    iput p6, p0, Lpl/jbzd/app/view/feed/FeedAdapter;->k:I

    .line 145
    if-ge p7, v1, :cond_1

    :goto_0
    iput v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter;->l:I

    .line 146
    sget-object v0, Lpl/jbzd/app/view/feed/FeedAdapter$a;->a:Lpl/jbzd/app/view/feed/FeedAdapter$a;

    iput-object v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter;->g:Lpl/jbzd/app/view/feed/FeedAdapter$a;

    .line 148
    add-int/lit8 v0, p7, -0x1

    div-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter;->m:I

    .line 149
    iget v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter;->m:I

    if-ge v0, v1, :cond_0

    iput v1, p0, Lpl/jbzd/app/view/feed/FeedAdapter;->m:I

    .line 151
    :cond_0
    if-nez p4, :cond_2

    .line 152
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "OnItemClickListener cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v0, p7

    .line 145
    goto :goto_0

    .line 155
    :cond_2
    invoke-static {p1}, Lpl/jbzd/core/a/a;->a(Landroid/content/Context;)I

    move-result v0

    .line 156
    int-to-double v0, v0

    const-wide v2, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4089000000000000L    # 800.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    double-to-int v0, v0

    sput v0, Lpl/jbzd/app/view/feed/FeedAdapter;->b:I

    .line 157
    sget v0, Lpl/jbzd/app/view/feed/FeedAdapter;->b:I

    sput v0, Lpl/jbzd/app/view/feed/FeedAdapter;->c:I

    .line 159
    invoke-static {p1}, Lpl/jbzd/core/a/a;->b(Landroid/content/Context;)I

    move-result v0

    sget v1, Lpl/jbzd/app/view/feed/FeedFragment;->b:I

    sub-int/2addr v0, v1

    sput v0, Lpl/jbzd/app/view/feed/FeedAdapter;->a:I

    .line 160
    return-void
.end method

.method private a(Landroid/view/View;Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;)V
    .locals 2

    .prologue
    .line 834
    iget-object v0, p2, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;->btnVoteUp:Landroid/widget/ImageView;

    new-instance v1, Lpl/jbzd/app/view/feed/FeedAdapter$7;

    invoke-direct {v1, p0, p2}, Lpl/jbzd/app/view/feed/FeedAdapter$7;-><init>(Lpl/jbzd/app/view/feed/FeedAdapter;Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 926
    iget-object v0, p2, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;->btnNotice:Lpl/jbzd/core/ui/view/TextView;

    new-instance v1, Lpl/jbzd/app/view/feed/FeedAdapter$8;

    invoke-direct {v1, p0, p2, p1}, Lpl/jbzd/app/view/feed/FeedAdapter$8;-><init>(Lpl/jbzd/app/view/feed/FeedAdapter;Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lpl/jbzd/core/ui/view/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 934
    return-void
.end method

.method private a(Landroid/view/View;Lpl/jbzd/app/view/feed/holders/GalleryViewHolder;)V
    .locals 2

    .prologue
    .line 817
    invoke-direct {p0, p1, p2}, Lpl/jbzd/app/view/feed/FeedAdapter;->a(Landroid/view/View;Lpl/jbzd/app/view/feed/holders/StandardViewHolder;)V

    .line 819
    new-instance v0, Lpl/jbzd/app/view/feed/FeedAdapter$6;

    invoke-direct {v0, p0, p2}, Lpl/jbzd/app/view/feed/FeedAdapter$6;-><init>(Lpl/jbzd/app/view/feed/FeedAdapter;Lpl/jbzd/app/view/feed/holders/GalleryViewHolder;)V

    .line 828
    iget-object v1, p2, Lpl/jbzd/app/view/feed/holders/GalleryViewHolder;->image:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v1, v0}, Lcom/facebook/drawee/view/SimpleDraweeView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 829
    iget-object v1, p2, Lpl/jbzd/app/view/feed/holders/GalleryViewHolder;->btnShow:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 830
    return-void
.end method

.method private a(Landroid/view/View;Lpl/jbzd/app/view/feed/holders/StandardViewHolder;)V
    .locals 2

    .prologue
    .line 453
    iget-object v0, p2, Lpl/jbzd/app/view/feed/holders/StandardViewHolder;->txtComments:Lpl/jbzd/core/ui/view/TextView;

    new-instance v1, Lpl/jbzd/app/view/feed/FeedAdapter$1;

    invoke-direct {v1, p0, p2}, Lpl/jbzd/app/view/feed/FeedAdapter$1;-><init>(Lpl/jbzd/app/view/feed/FeedAdapter;Lpl/jbzd/app/view/feed/holders/StandardViewHolder;)V

    invoke-virtual {v0, v1}, Lpl/jbzd/core/ui/view/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 462
    iget-object v0, p2, Lpl/jbzd/app/view/feed/holders/StandardViewHolder;->btnFavorite:Landroid/widget/ImageView;

    new-instance v1, Lpl/jbzd/app/view/feed/FeedAdapter$11;

    invoke-direct {v1, p0, p2}, Lpl/jbzd/app/view/feed/FeedAdapter$11;-><init>(Lpl/jbzd/app/view/feed/FeedAdapter;Lpl/jbzd/app/view/feed/holders/StandardViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 501
    iget-object v0, p2, Lpl/jbzd/app/view/feed/holders/StandardViewHolder;->btnVoteUp:Lpl/jbzd/core/ui/view/TextView;

    new-instance v1, Lpl/jbzd/app/view/feed/FeedAdapter$12;

    invoke-direct {v1, p0, p2}, Lpl/jbzd/app/view/feed/FeedAdapter$12;-><init>(Lpl/jbzd/app/view/feed/FeedAdapter;Lpl/jbzd/app/view/feed/holders/StandardViewHolder;)V

    invoke-virtual {v0, v1}, Lpl/jbzd/core/ui/view/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 581
    iget-object v0, p2, Lpl/jbzd/app/view/feed/holders/StandardViewHolder;->btnMore:Landroid/widget/ImageView;

    new-instance v1, Lpl/jbzd/app/view/feed/FeedAdapter$13;

    invoke-direct {v1, p0, p2}, Lpl/jbzd/app/view/feed/FeedAdapter$13;-><init>(Lpl/jbzd/app/view/feed/FeedAdapter;Lpl/jbzd/app/view/feed/holders/StandardViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 590
    iget-object v0, p2, Lpl/jbzd/app/view/feed/holders/StandardViewHolder;->btnExpand:Lpl/jbzd/core/ui/view/TextView;

    new-instance v1, Lpl/jbzd/app/view/feed/FeedAdapter$14;

    invoke-direct {v1, p0, p2}, Lpl/jbzd/app/view/feed/FeedAdapter$14;-><init>(Lpl/jbzd/app/view/feed/FeedAdapter;Lpl/jbzd/app/view/feed/holders/StandardViewHolder;)V

    invoke-virtual {v0, v1}, Lpl/jbzd/core/ui/view/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 603
    iget-object v0, p2, Lpl/jbzd/app/view/feed/holders/StandardViewHolder;->btnLike:Lpl/jbzd/core/ui/view/CenteredLikeButton;

    new-instance v1, Lpl/jbzd/app/view/feed/FeedAdapter$15;

    invoke-direct {v1, p0, p2}, Lpl/jbzd/app/view/feed/FeedAdapter$15;-><init>(Lpl/jbzd/app/view/feed/FeedAdapter;Lpl/jbzd/app/view/feed/holders/StandardViewHolder;)V

    invoke-virtual {v0, v1}, Lpl/jbzd/core/ui/view/CenteredLikeButton;->setOnLikeClickListener(Lpl/jbzd/core/ui/view/CenteredLikeButton$c;)V

    .line 610
    return-void
.end method

.method private a(Landroid/view/View;Lpl/jbzd/app/view/feed/holders/UserViewHolder;)V
    .locals 0

    .prologue
    .line 938
    iput-object p2, p0, Lpl/jbzd/app/view/feed/FeedAdapter;->j:Lpl/jbzd/app/view/feed/holders/UserViewHolder;

    .line 1035
    return-void
.end method

.method private a(Landroid/view/View;Lpl/jbzd/app/view/feed/holders/a;)V
    .locals 6

    .prologue
    .line 628
    invoke-direct {p0, p1, p2}, Lpl/jbzd/app/view/feed/FeedAdapter;->a(Landroid/view/View;Lpl/jbzd/app/view/feed/holders/StandardViewHolder;)V

    .line 630
    new-instance v4, Lpl/jbzd/app/view/feed/FeedAdapter$17;

    invoke-direct {v4, p0, p2}, Lpl/jbzd/app/view/feed/FeedAdapter$17;-><init>(Lpl/jbzd/app/view/feed/FeedAdapter;Lpl/jbzd/app/view/feed/holders/a;)V

    .line 655
    new-instance v5, Lpl/jbzd/app/view/feed/FeedAdapter$18;

    invoke-direct {v5, p0, p2, p1}, Lpl/jbzd/app/view/feed/FeedAdapter$18;-><init>(Lpl/jbzd/app/view/feed/FeedAdapter;Lpl/jbzd/app/view/feed/holders/a;Landroid/view/View;)V

    .line 664
    new-instance v0, Lpl/jbzd/app/view/feed/FeedAdapter$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lpl/jbzd/app/view/feed/FeedAdapter$2;-><init>(Lpl/jbzd/app/view/feed/FeedAdapter;Landroid/view/View;Lpl/jbzd/app/view/feed/holders/a;Lpl/jbzd/b/b$a;Landroid/view/View$OnClickListener;)V

    .line 683
    iget-object v1, p2, Lpl/jbzd/app/view/feed/holders/a;->image:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v1, v0}, Lcom/facebook/drawee/view/SimpleDraweeView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 685
    iget-object v1, p2, Lpl/jbzd/app/view/feed/holders/a;->btnShow:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 686
    iget-object v1, p2, Lpl/jbzd/app/view/feed/holders/a;->btnShow:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 688
    :cond_0
    return-void
.end method

.method private a(Landroid/view/View;Lpl/jbzd/app/view/feed/holders/b;)V
    .locals 2

    .prologue
    .line 614
    invoke-direct {p0, p1, p2}, Lpl/jbzd/app/view/feed/FeedAdapter;->a(Landroid/view/View;Lpl/jbzd/app/view/feed/holders/StandardViewHolder;)V

    .line 616
    iget-object v0, p2, Lpl/jbzd/app/view/feed/holders/b;->image:Lcom/facebook/drawee/view/SimpleDraweeView;

    new-instance v1, Lpl/jbzd/app/view/feed/FeedAdapter$16;

    invoke-direct {v1, p0, p2}, Lpl/jbzd/app/view/feed/FeedAdapter$16;-><init>(Lpl/jbzd/app/view/feed/FeedAdapter;Lpl/jbzd/app/view/feed/holders/b;)V

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 624
    return-void
.end method

.method private a(Landroid/view/View;Lpl/jbzd/app/view/feed/holders/d;)V
    .locals 3

    .prologue
    .line 692
    invoke-direct {p0, p1, p2}, Lpl/jbzd/app/view/feed/FeedAdapter;->a(Landroid/view/View;Lpl/jbzd/app/view/feed/holders/StandardViewHolder;)V

    .line 694
    new-instance v0, Lpl/jbzd/app/view/feed/FeedAdapter$3;

    invoke-direct {v0, p0, p2}, Lpl/jbzd/app/view/feed/FeedAdapter$3;-><init>(Lpl/jbzd/app/view/feed/FeedAdapter;Lpl/jbzd/app/view/feed/holders/d;)V

    .line 719
    new-instance v1, Lpl/jbzd/app/view/feed/FeedAdapter$4;

    invoke-direct {v1, p0, p2, p1}, Lpl/jbzd/app/view/feed/FeedAdapter$4;-><init>(Lpl/jbzd/app/view/feed/FeedAdapter;Lpl/jbzd/app/view/feed/holders/d;Landroid/view/View;)V

    .line 728
    new-instance v2, Lpl/jbzd/app/view/feed/FeedAdapter$5;

    invoke-direct {v2, p0, p2, v0, v1}, Lpl/jbzd/app/view/feed/FeedAdapter$5;-><init>(Lpl/jbzd/app/view/feed/FeedAdapter;Lpl/jbzd/app/view/feed/holders/d;Lpl/jbzd/b/b$a;Landroid/view/View$OnClickListener;)V

    .line 808
    iget-object v0, p2, Lpl/jbzd/app/view/feed/holders/d;->image:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, v2}, Lcom/facebook/drawee/view/SimpleDraweeView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 810
    iget-object v0, p2, Lpl/jbzd/app/view/feed/holders/d;->btnShow:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 811
    iget-object v0, p2, Lpl/jbzd/app/view/feed/holders/d;->btnShow:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 813
    :cond_0
    return-void
.end method

.method static synthetic a(Lpl/jbzd/app/view/feed/FeedAdapter;)Z
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lpl/jbzd/app/view/feed/FeedAdapter;->o()Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lpl/jbzd/app/view/feed/FeedAdapter;I)Z
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lpl/jbzd/app/view/feed/FeedAdapter;->c(I)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lpl/jbzd/app/view/feed/FeedAdapter;)Ljava/util/List;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter;->f:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lpl/jbzd/app/view/feed/FeedAdapter;)Lpl/jbzd/app/view/feed/FeedAdapter$b;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter;->h:Lpl/jbzd/app/view/feed/FeedAdapter$b;

    return-object v0
.end method

.method private c(I)Z
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 438
    if-lez v0, :cond_0

    if-ge p1, v0, :cond_0

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic d(Lpl/jbzd/app/view/feed/FeedAdapter;)Ljava/util/List;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter;->f:Ljava/util/List;

    return-object v0
.end method

.method static synthetic e(Lpl/jbzd/app/view/feed/FeedAdapter;)Ljava/util/List;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter;->f:Ljava/util/List;

    return-object v0
.end method

.method static synthetic f(Lpl/jbzd/app/view/feed/FeedAdapter;)Ljava/util/List;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter;->f:Ljava/util/List;

    return-object v0
.end method

.method static synthetic g(Lpl/jbzd/app/view/feed/FeedAdapter;)Ljava/util/List;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter;->f:Ljava/util/List;

    return-object v0
.end method

.method static synthetic h(Lpl/jbzd/app/view/feed/FeedAdapter;)Ljava/util/List;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter;->f:Ljava/util/List;

    return-object v0
.end method

.method static synthetic i(Lpl/jbzd/app/view/feed/FeedAdapter;)Ljava/util/List;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter;->f:Ljava/util/List;

    return-object v0
.end method

.method static synthetic j(Lpl/jbzd/app/view/feed/FeedAdapter;)Ljava/util/List;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter;->f:Ljava/util/List;

    return-object v0
.end method

.method static synthetic k(Lpl/jbzd/app/view/feed/FeedAdapter;)Ljava/util/List;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter;->f:Ljava/util/List;

    return-object v0
.end method

.method static synthetic l(Lpl/jbzd/app/view/feed/FeedAdapter;)Ljava/util/List;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter;->f:Ljava/util/List;

    return-object v0
.end method

.method static synthetic m(Lpl/jbzd/app/view/feed/FeedAdapter;)Ljava/util/List;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter;->f:Ljava/util/List;

    return-object v0
.end method

.method static synthetic n(Lpl/jbzd/app/view/feed/FeedAdapter;)Ljava/util/List;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter;->f:Ljava/util/List;

    return-object v0
.end method

.method static synthetic o(Lpl/jbzd/app/view/feed/FeedAdapter;)Ljava/util/List;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter;->f:Ljava/util/List;

    return-object v0
.end method

.method private o()Z
    .locals 4

    .prologue
    .line 443
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lpl/jbzd/app/view/feed/FeedAdapter;->i:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 444
    const/4 v0, 0x0

    .line 448
    :goto_0
    return v0

    .line 447
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter;->i:J

    .line 448
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic p(Lpl/jbzd/app/view/feed/FeedAdapter;)Ljava/util/List;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter;->f:Ljava/util/List;

    return-object v0
.end method

.method static synthetic q(Lpl/jbzd/app/view/feed/FeedAdapter;)Ljava/util/List;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter;->f:Ljava/util/List;

    return-object v0
.end method

.method static synthetic r(Lpl/jbzd/app/view/feed/FeedAdapter;)Ljava/util/List;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter;->f:Ljava/util/List;

    return-object v0
.end method

.method static synthetic s(Lpl/jbzd/app/view/feed/FeedAdapter;)Ljava/util/List;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter;->f:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public a(I)I
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/view/feed/a/a;

    .line 194
    :goto_0
    if-eqz v0, :cond_3

    .line 196
    iget-object v1, v0, Lpl/jbzd/app/view/feed/a/a;->a:Lpl/jbzd/app/view/feed/model/BaseFeedModel;

    instance-of v1, v1, Lpl/jbzd/app/model/Media;

    if-eqz v1, :cond_1

    .line 197
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/view/feed/a/a;

    iget-object v0, v0, Lpl/jbzd/app/view/feed/a/a;->a:Lpl/jbzd/app/view/feed/model/BaseFeedModel;

    check-cast v0, Lpl/jbzd/app/model/Media;

    invoke-virtual {v0}, Lpl/jbzd/app/model/Media;->realmGet$type()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lpl/jbzd/app/view/feed/FeedViewType;->getIdByName(Ljava/lang/String;)I

    move-result v0

    .line 207
    :goto_1
    return v0

    .line 192
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 199
    :cond_1
    iget-object v1, v0, Lpl/jbzd/app/view/feed/a/a;->a:Lpl/jbzd/app/view/feed/model/BaseFeedModel;

    instance-of v1, v1, Lpl/jbzd/app/model/Comment;

    if-eqz v1, :cond_2

    .line 200
    sget-object v0, Lpl/jbzd/app/view/feed/FeedViewType;->COMMENT:Lpl/jbzd/app/view/feed/FeedViewType;

    iget v0, v0, Lpl/jbzd/app/view/feed/FeedViewType;->id:I

    goto :goto_1

    .line 202
    :cond_2
    iget-object v0, v0, Lpl/jbzd/app/view/feed/a/a;->a:Lpl/jbzd/app/view/feed/model/BaseFeedModel;

    instance-of v0, v0, Lpl/jbzd/app/model/User;

    if-eqz v0, :cond_3

    .line 203
    sget-object v0, Lpl/jbzd/app/view/feed/FeedViewType;->USER_PROFILE:Lpl/jbzd/app/view/feed/FeedViewType;

    iget v0, v0, Lpl/jbzd/app/view/feed/FeedViewType;->id:I

    goto :goto_1

    .line 207
    :cond_3
    sget-object v0, Lpl/jbzd/app/view/feed/FeedViewType;->UNKNOWN:Lpl/jbzd/app/view/feed/FeedViewType;

    iget v0, v0, Lpl/jbzd/app/view/feed/FeedViewType;->id:I

    goto :goto_1
.end method

.method public a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$u;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 218
    sget-object v0, Lpl/jbzd/app/view/feed/FeedViewType;->PICTURE:Lpl/jbzd/app/view/feed/FeedViewType;

    iget v0, v0, Lpl/jbzd/app/view/feed/FeedViewType;->id:I

    if-ne p2, v0, :cond_0

    .line 220
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040056

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 221
    new-instance v1, Lpl/jbzd/app/view/feed/holders/b;

    invoke-direct {v1, v2}, Lpl/jbzd/app/view/feed/holders/b;-><init>(Landroid/view/View;)V

    move-object v0, v1

    .line 222
    check-cast v0, Lpl/jbzd/app/view/feed/holders/b;

    invoke-direct {p0, v2, v0}, Lpl/jbzd/app/view/feed/FeedAdapter;->a(Landroid/view/View;Lpl/jbzd/app/view/feed/holders/b;)V

    .line 275
    :goto_0
    return-object v1

    .line 224
    :cond_0
    sget-object v0, Lpl/jbzd/app/view/feed/FeedViewType;->GIF:Lpl/jbzd/app/view/feed/FeedViewType;

    iget v0, v0, Lpl/jbzd/app/view/feed/FeedViewType;->id:I

    if-ne p2, v0, :cond_1

    .line 226
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040055

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 227
    new-instance v1, Lpl/jbzd/app/view/feed/holders/a;

    invoke-direct {v1, v2}, Lpl/jbzd/app/view/feed/holders/a;-><init>(Landroid/view/View;)V

    move-object v0, v1

    .line 228
    check-cast v0, Lpl/jbzd/app/view/feed/holders/a;

    invoke-direct {p0, v2, v0}, Lpl/jbzd/app/view/feed/FeedAdapter;->a(Landroid/view/View;Lpl/jbzd/app/view/feed/holders/a;)V

    goto :goto_0

    .line 230
    :cond_1
    sget-object v0, Lpl/jbzd/app/view/feed/FeedViewType;->VIDEO:Lpl/jbzd/app/view/feed/FeedViewType;

    iget v0, v0, Lpl/jbzd/app/view/feed/FeedViewType;->id:I

    if-ne p2, v0, :cond_2

    .line 232
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040059

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 233
    new-instance v1, Lpl/jbzd/app/view/feed/holders/d;

    invoke-direct {v1, v2}, Lpl/jbzd/app/view/feed/holders/d;-><init>(Landroid/view/View;)V

    move-object v0, v1

    .line 234
    check-cast v0, Lpl/jbzd/app/view/feed/holders/d;

    invoke-direct {p0, v2, v0}, Lpl/jbzd/app/view/feed/FeedAdapter;->a(Landroid/view/View;Lpl/jbzd/app/view/feed/holders/d;)V

    goto :goto_0

    .line 236
    :cond_2
    sget-object v0, Lpl/jbzd/app/view/feed/FeedViewType;->GALLERY:Lpl/jbzd/app/view/feed/FeedViewType;

    iget v0, v0, Lpl/jbzd/app/view/feed/FeedViewType;->id:I

    if-ne p2, v0, :cond_3

    .line 238
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040054

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 239
    new-instance v1, Lpl/jbzd/app/view/feed/holders/GalleryViewHolder;

    invoke-direct {v1, v2}, Lpl/jbzd/app/view/feed/holders/GalleryViewHolder;-><init>(Landroid/view/View;)V

    move-object v0, v1

    .line 240
    check-cast v0, Lpl/jbzd/app/view/feed/holders/GalleryViewHolder;

    invoke-direct {p0, v2, v0}, Lpl/jbzd/app/view/feed/FeedAdapter;->a(Landroid/view/View;Lpl/jbzd/app/view/feed/holders/GalleryViewHolder;)V

    goto :goto_0

    .line 242
    :cond_3
    sget-object v0, Lpl/jbzd/app/view/feed/FeedViewType;->COMMENT:Lpl/jbzd/app/view/feed/FeedViewType;

    iget v0, v0, Lpl/jbzd/app/view/feed/FeedViewType;->id:I

    if-ne p2, v0, :cond_4

    .line 244
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040098

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 245
    new-instance v1, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;

    invoke-direct {v1, v0}, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;-><init>(Landroid/view/View;)V

    .line 246
    invoke-direct {p0, v0, v1}, Lpl/jbzd/app/view/feed/FeedAdapter;->a(Landroid/view/View;Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;)V

    .line 247
    invoke-virtual {v1}, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;->a()V

    goto/16 :goto_0

    .line 250
    :cond_4
    sget-object v0, Lpl/jbzd/app/view/feed/FeedViewType;->USER_PROFILE:Lpl/jbzd/app/view/feed/FeedViewType;

    iget v0, v0, Lpl/jbzd/app/view/feed/FeedViewType;->id:I

    if-ne p2, v0, :cond_5

    .line 252
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040058

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 253
    new-instance v1, Lpl/jbzd/app/view/feed/holders/UserViewHolder;

    invoke-direct {v1, v0}, Lpl/jbzd/app/view/feed/holders/UserViewHolder;-><init>(Landroid/view/View;)V

    .line 254
    invoke-direct {p0, v0, v1}, Lpl/jbzd/app/view/feed/FeedAdapter;->a(Landroid/view/View;Lpl/jbzd/app/view/feed/holders/UserViewHolder;)V

    goto/16 :goto_0

    .line 257
    :cond_5
    sget-object v0, Lpl/jbzd/app/view/feed/FeedViewType;->AD:Lpl/jbzd/app/view/feed/FeedViewType;

    iget v0, v0, Lpl/jbzd/app/view/feed/FeedViewType;->id:I

    if-ne p2, v0, :cond_6

    .line 259
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040052

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 260
    new-instance v1, Lpl/jbzd/app/view/feed/holders/NativeAdViewHolder;

    invoke-direct {v1, v0}, Lpl/jbzd/app/view/feed/holders/NativeAdViewHolder;-><init>(Landroid/view/View;)V

    goto/16 :goto_0

    .line 262
    :cond_6
    sget-object v0, Lpl/jbzd/app/view/feed/FeedViewType;->EMPTY:Lpl/jbzd/app/view/feed/FeedViewType;

    iget v0, v0, Lpl/jbzd/app/view/feed/FeedViewType;->id:I

    if-ne p2, v0, :cond_7

    .line 264
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040053

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 265
    const v0, 0x7f110159

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lpl/jbzd/core/ui/view/TextView;

    const v1, 0x7f0a00e0

    invoke-virtual {v0, v1}, Lpl/jbzd/core/ui/view/TextView;->setText(I)V

    .line 267
    new-instance v1, Lpl/jbzd/app/view/feed/holders/EmptyViewHolder;

    invoke-direct {v1, v2}, Lpl/jbzd/app/view/feed/holders/EmptyViewHolder;-><init>(Landroid/view/View;)V

    goto/16 :goto_0

    .line 271
    :cond_7
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040057

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 272
    new-instance v1, Lpl/jbzd/app/view/feed/holders/c;

    invoke-direct {v1, v0}, Lpl/jbzd/app/view/feed/holders/c;-><init>(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$u;II)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 281
    instance-of v0, p1, Lpl/jbzd/app/view/feed/holders/StandardViewHolder;

    if-eqz v0, :cond_2

    .line 283
    check-cast p1, Lpl/jbzd/app/view/feed/holders/StandardViewHolder;

    .line 285
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter;->f:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/view/feed/a/a;

    invoke-virtual {p1, v0}, Lpl/jbzd/app/view/feed/holders/StandardViewHolder;->a(Lpl/jbzd/app/view/feed/a/a;)V

    .line 287
    iget v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter;->k:I

    if-ge v0, p3, :cond_1

    .line 289
    iput p3, p0, Lpl/jbzd/app/view/feed/FeedAdapter;->k:I

    .line 290
    iget v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter;->l:I

    .line 292
    iget v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter;->l:I

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x1

    .line 293
    if-ge v0, v1, :cond_0

    move v0, v1

    .line 295
    :cond_0
    iget v1, p0, Lpl/jbzd/app/view/feed/FeedAdapter;->m:I

    if-ge v1, v0, :cond_1

    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedAdapter;->h:Lpl/jbzd/app/view/feed/FeedAdapter$b;

    if-eqz v1, :cond_1

    .line 297
    iput v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter;->m:I

    .line 298
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter;->h:Lpl/jbzd/app/view/feed/FeedAdapter$b;

    iget v1, p0, Lpl/jbzd/app/view/feed/FeedAdapter;->k:I

    iget v2, p0, Lpl/jbzd/app/view/feed/FeedAdapter;->l:I

    iget v3, p0, Lpl/jbzd/app/view/feed/FeedAdapter;->m:I

    invoke-interface {v0, v1, v2, v3}, Lpl/jbzd/app/view/feed/FeedAdapter$b;->a(III)V

    .line 340
    :cond_1
    :goto_0
    return-void

    .line 302
    :cond_2
    sget-object v0, Lpl/jbzd/app/view/feed/FeedViewType;->COMMENT:Lpl/jbzd/app/view/feed/FeedViewType;

    iget v0, v0, Lpl/jbzd/app/view/feed/FeedViewType;->id:I

    if-ne p2, v0, :cond_3

    .line 304
    check-cast p1, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;

    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter;->f:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/view/feed/a/a;

    iget-object v0, v0, Lpl/jbzd/app/view/feed/a/a;->a:Lpl/jbzd/app/view/feed/model/BaseFeedModel;

    check-cast v0, Lpl/jbzd/app/model/Comment;

    invoke-virtual {p1, v0}, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;->a(Lpl/jbzd/app/model/Comment;)V

    goto :goto_0

    .line 306
    :cond_3
    sget-object v0, Lpl/jbzd/app/view/feed/FeedViewType;->USER_PROFILE:Lpl/jbzd/app/view/feed/FeedViewType;

    iget v0, v0, Lpl/jbzd/app/view/feed/FeedViewType;->id:I

    if-ne p2, v0, :cond_4

    .line 307
    check-cast p1, Lpl/jbzd/app/view/feed/holders/UserViewHolder;

    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter;->f:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/view/feed/a/a;

    iget-object v0, v0, Lpl/jbzd/app/view/feed/a/a;->a:Lpl/jbzd/app/view/feed/model/BaseFeedModel;

    check-cast v0, Lpl/jbzd/app/model/User;

    invoke-virtual {p1, v0}, Lpl/jbzd/app/view/feed/holders/UserViewHolder;->a(Lpl/jbzd/app/model/User;)V

    goto :goto_0

    .line 309
    :cond_4
    sget-object v0, Lpl/jbzd/app/view/feed/FeedViewType;->EMPTY:Lpl/jbzd/app/view/feed/FeedViewType;

    iget v0, v0, Lpl/jbzd/app/view/feed/FeedViewType;->id:I

    if-ne p2, v0, :cond_5

    .line 311
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter;->f:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/view/feed/a/a;

    iget-object v0, v0, Lpl/jbzd/app/view/feed/a/a;->a:Lpl/jbzd/app/view/feed/model/BaseFeedModel;

    instance-of v0, v0, Lpl/jbzd/app/model/Media;

    if-eqz v0, :cond_1

    .line 313
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter;->f:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/view/feed/a/a;

    iget-object v0, v0, Lpl/jbzd/app/view/feed/a/a;->a:Lpl/jbzd/app/view/feed/model/BaseFeedModel;

    check-cast v0, Lpl/jbzd/app/model/Media;

    check-cast v0, Lpl/jbzd/app/model/Media;

    .line 315
    invoke-virtual {v0}, Lpl/jbzd/app/model/Media;->realmGet$title()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lpl/jbzd/app/model/Media;->realmGet$title()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 316
    check-cast p1, Lpl/jbzd/app/view/feed/holders/EmptyViewHolder;

    iget-object v1, p1, Lpl/jbzd/app/view/feed/holders/EmptyViewHolder;->txt:Lpl/jbzd/core/ui/view/TextView;

    invoke-virtual {v0}, Lpl/jbzd/app/model/Media;->realmGet$title()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lpl/jbzd/core/ui/view/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 320
    :cond_5
    sget-object v0, Lpl/jbzd/app/view/feed/FeedViewType;->AD:Lpl/jbzd/app/view/feed/FeedViewType;

    iget v0, v0, Lpl/jbzd/app/view/feed/FeedViewType;->id:I

    if-ne p2, v0, :cond_1

    move-object v0, p1

    .line 322
    check-cast v0, Lpl/jbzd/app/view/feed/holders/NativeAdViewHolder;

    iget-object v1, v0, Lpl/jbzd/app/view/feed/holders/NativeAdViewHolder;->layout:Landroid/widget/FrameLayout;

    .line 323
    invoke-static {}, Lpl/jbzd/a/b;->a()Lpl/jbzd/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lpl/jbzd/a/b;->b()Landroid/view/View;

    move-result-object v2

    .line 325
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_6

    .line 326
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 329
    :cond_6
    if-eqz v2, :cond_1

    .line 331
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 332
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 335
    :cond_7
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 337
    check-cast p1, Lpl/jbzd/app/view/feed/holders/NativeAdViewHolder;

    invoke-virtual {p1, v2}, Lpl/jbzd/app/view/feed/holders/NativeAdViewHolder;->a(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method public a(Lpl/jbzd/app/model/User;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 346
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter;->f:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter;->f:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/view/feed/a/a;

    iget-object v0, v0, Lpl/jbzd/app/view/feed/a/a;->a:Lpl/jbzd/app/view/feed/model/BaseFeedModel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter;->f:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/view/feed/a/a;

    iget-object v0, v0, Lpl/jbzd/app/view/feed/a/a;->a:Lpl/jbzd/app/view/feed/model/BaseFeedModel;

    instance-of v0, v0, Lpl/jbzd/app/model/User;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter;->f:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/view/feed/a/a;

    iget-object v0, v0, Lpl/jbzd/app/view/feed/a/a;->a:Lpl/jbzd/app/view/feed/model/BaseFeedModel;

    check-cast v0, Lpl/jbzd/app/model/User;

    .line 348
    :goto_0
    if-nez v0, :cond_2

    .line 350
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter;->f:Ljava/util/List;

    new-instance v1, Lpl/jbzd/app/view/feed/a/a;

    invoke-direct {v1, p1}, Lpl/jbzd/app/view/feed/a/a;-><init>(Lpl/jbzd/app/view/feed/model/BaseFeedModel;)V

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 351
    invoke-virtual {p0, v2}, Lpl/jbzd/app/view/feed/FeedAdapter;->notifyItemInserted(I)V

    .line 360
    :cond_0
    :goto_1
    return-void

    .line 346
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 353
    :cond_2
    invoke-virtual {v0}, Lpl/jbzd/app/model/User;->realmGet$id()I

    move-result v0

    invoke-virtual {p1}, Lpl/jbzd/app/model/User;->realmGet$id()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 355
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter;->f:Ljava/util/List;

    new-instance v1, Lpl/jbzd/app/view/feed/a/a;

    invoke-direct {v1, p1}, Lpl/jbzd/app/view/feed/a/a;-><init>(Lpl/jbzd/app/view/feed/model/BaseFeedModel;)V

    invoke-interface {v0, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 356
    invoke-virtual {p0, v2}, Lpl/jbzd/app/view/feed/FeedAdapter;->notifyItemChanged(I)V

    goto :goto_1
.end method

.method public a()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 363
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/view/feed/a/a;

    iget-object v0, v0, Lpl/jbzd/app/view/feed/a/a;->a:Lpl/jbzd/app/view/feed/model/BaseFeedModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/view/feed/a/a;

    iget-object v0, v0, Lpl/jbzd/app/view/feed/a/a;->a:Lpl/jbzd/app/view/feed/model/BaseFeedModel;

    instance-of v0, v0, Lpl/jbzd/app/model/User;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/view/feed/a/a;

    iget-object v0, v0, Lpl/jbzd/app/view/feed/a/a;->a:Lpl/jbzd/app/view/feed/model/BaseFeedModel;

    check-cast v0, Lpl/jbzd/app/model/User;

    :goto_0
    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public b(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$u;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1047
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 1048
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04004b

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 1049
    new-instance v0, Lpl/jbzd/app/view/feed/holders/EmptyViewHolder;

    invoke-direct {v0, v1}, Lpl/jbzd/app/view/feed/holders/EmptyViewHolder;-><init>(Landroid/view/View;)V

    .line 1086
    :goto_0
    return-object v0

    .line 1051
    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 1052
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04005a

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 1053
    new-instance v0, Lpl/jbzd/app/view/feed/FeedAdapter$LoadingFirstViewHolder;

    invoke-direct {v0, v1}, Lpl/jbzd/app/view/feed/FeedAdapter$LoadingFirstViewHolder;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 1055
    :cond_1
    const/4 v0, 0x4

    if-ne p2, v0, :cond_2

    .line 1056
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04005b

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 1057
    new-instance v0, Lpl/jbzd/app/view/feed/FeedAdapter$LoadingPageViewHolder;

    invoke-direct {v0, v1}, Lpl/jbzd/app/view/feed/FeedAdapter$LoadingPageViewHolder;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 1059
    :cond_2
    const/16 v0, 0x8

    if-ne p2, v0, :cond_3

    .line 1060
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04004c

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 1062
    new-instance v0, Lpl/jbzd/app/view/feed/FeedAdapter$ErrorFirstViewHolder;

    invoke-direct {v0, v1}, Lpl/jbzd/app/view/feed/FeedAdapter$ErrorFirstViewHolder;-><init>(Landroid/view/View;)V

    .line 1063
    iget-object v0, v0, Lpl/jbzd/app/view/feed/FeedAdapter$ErrorFirstViewHolder;->btn:Lpl/jbzd/core/ui/view/TextView;

    new-instance v2, Lpl/jbzd/app/view/feed/FeedAdapter$9;

    invoke-direct {v2, p0}, Lpl/jbzd/app/view/feed/FeedAdapter$9;-><init>(Lpl/jbzd/app/view/feed/FeedAdapter;)V

    invoke-virtual {v0, v2}, Lpl/jbzd/core/ui/view/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1070
    new-instance v0, Lpl/jbzd/app/view/feed/FeedAdapter$ErrorFirstViewHolder;

    invoke-direct {v0, v1}, Lpl/jbzd/app/view/feed/FeedAdapter$ErrorFirstViewHolder;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 1072
    :cond_3
    const/16 v0, 0x10

    if-ne p2, v0, :cond_4

    .line 1073
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04004d

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 1075
    new-instance v0, Lpl/jbzd/app/view/feed/FeedAdapter$ErrorPageViewHolder;

    invoke-direct {v0, v1}, Lpl/jbzd/app/view/feed/FeedAdapter$ErrorPageViewHolder;-><init>(Landroid/view/View;)V

    .line 1076
    iget-object v1, v0, Lpl/jbzd/app/view/feed/FeedAdapter$ErrorPageViewHolder;->btn:Lpl/jbzd/core/ui/view/TextView;

    new-instance v2, Lpl/jbzd/app/view/feed/FeedAdapter$10;

    invoke-direct {v2, p0}, Lpl/jbzd/app/view/feed/FeedAdapter$10;-><init>(Lpl/jbzd/app/view/feed/FeedAdapter;)V

    invoke-virtual {v1, v2}, Lpl/jbzd/core/ui/view/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 1086
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Lpl/jbzd/app/view/feed/FeedAdapter$a;
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter;->g:Lpl/jbzd/app/view/feed/FeedAdapter$a;

    return-object v0
.end method

.method public b(I)Lpl/jbzd/app/view/feed/a/a;
    .locals 1

    .prologue
    .line 1091
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/view/feed/a/a;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()[I
    .locals 1

    .prologue
    .line 1041
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
    .end array-data
.end method

.method public d()I
    .locals 1

    .prologue
    .line 1096
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 1101
    iget v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter;->k:I

    return v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 1106
    iget v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter;->l:I

    return v0
.end method

.method public getItemId(I)J
    .locals 3

    .prologue
    .line 165
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/view/feed/a/a;

    move-object v1, v0

    .line 167
    :goto_0
    if-eqz v1, :cond_4

    .line 169
    iget-object v0, v1, Lpl/jbzd/app/view/feed/a/a;->a:Lpl/jbzd/app/view/feed/model/BaseFeedModel;

    instance-of v0, v0, Lpl/jbzd/app/model/Media;

    if-eqz v0, :cond_2

    .line 171
    iget-object v0, v1, Lpl/jbzd/app/view/feed/a/a;->a:Lpl/jbzd/app/view/feed/model/BaseFeedModel;

    check-cast v0, Lpl/jbzd/app/model/Media;

    invoke-virtual {v0}, Lpl/jbzd/app/model/Media;->realmGet$type()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lpl/jbzd/app/view/feed/FeedViewType;->getIdByName(Ljava/lang/String;)I

    move-result v0

    sget-object v2, Lpl/jbzd/app/view/feed/FeedViewType;->AD:Lpl/jbzd/app/view/feed/FeedViewType;

    iget v2, v2, Lpl/jbzd/app/view/feed/FeedViewType;->id:I

    if-ne v0, v2, :cond_1

    .line 172
    sget-object v0, Lpl/jbzd/app/view/feed/FeedViewType;->FIRST_AD:Lpl/jbzd/app/view/feed/FeedViewType;

    iget v0, v0, Lpl/jbzd/app/view/feed/FeedViewType;->id:I

    neg-int v0, v0

    sub-int/2addr v0, p1

    int-to-long v0, v0

    .line 186
    :goto_1
    return-wide v0

    .line 165
    :cond_0
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_0

    .line 175
    :cond_1
    iget-object v0, v1, Lpl/jbzd/app/view/feed/a/a;->a:Lpl/jbzd/app/view/feed/model/BaseFeedModel;

    check-cast v0, Lpl/jbzd/app/model/Media;

    invoke-virtual {v0}, Lpl/jbzd/app/model/Media;->realmGet$id()I

    move-result v0

    int-to-long v0, v0

    goto :goto_1

    .line 178
    :cond_2
    iget-object v0, v1, Lpl/jbzd/app/view/feed/a/a;->a:Lpl/jbzd/app/view/feed/model/BaseFeedModel;

    instance-of v0, v0, Lpl/jbzd/app/model/Comment;

    if-eqz v0, :cond_3

    .line 179
    iget-object v0, v1, Lpl/jbzd/app/view/feed/a/a;->a:Lpl/jbzd/app/view/feed/model/BaseFeedModel;

    check-cast v0, Lpl/jbzd/app/model/Comment;

    invoke-virtual {v0}, Lpl/jbzd/app/model/Comment;->realmGet$id()I

    move-result v0

    int-to-long v0, v0

    goto :goto_1

    .line 181
    :cond_3
    iget-object v0, v1, Lpl/jbzd/app/view/feed/a/a;->a:Lpl/jbzd/app/view/feed/model/BaseFeedModel;

    instance-of v0, v0, Lpl/jbzd/app/model/User;

    if-eqz v0, :cond_4

    .line 182
    sget-object v0, Lpl/jbzd/app/view/feed/FeedViewType;->UNKNOWN:Lpl/jbzd/app/view/feed/FeedViewType;

    iget v0, v0, Lpl/jbzd/app/view/feed/FeedViewType;->id:I

    neg-int v2, v0

    iget-object v0, v1, Lpl/jbzd/app/view/feed/a/a;->a:Lpl/jbzd/app/view/feed/model/BaseFeedModel;

    check-cast v0, Lpl/jbzd/app/model/User;

    invoke-virtual {v0}, Lpl/jbzd/app/model/User;->realmGet$id()I

    move-result v0

    sub-int v0, v2, v0

    int-to-long v0, v0

    goto :goto_1

    .line 186
    :cond_4
    sget-object v0, Lpl/jbzd/app/view/feed/FeedViewType;->UNKNOWN:Lpl/jbzd/app/view/feed/FeedViewType;

    iget v0, v0, Lpl/jbzd/app/view/feed/FeedViewType;->id:I

    neg-int v0, v0

    int-to-long v0, v0

    goto :goto_1
.end method
