.class Lpl/jbzd/app/view/feed/FeedFragment$a;
.super Landroid/support/v7/widget/RecyclerView$g;
.source "FeedFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/jbzd/app/view/feed/FeedFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lpl/jbzd/app/view/feed/FeedFragment;

.field private final b:I

.field private final c:I

.field private final d:I


# direct methods
.method constructor <init>(Lpl/jbzd/app/view/feed/FeedFragment;III)V
    .locals 0

    .prologue
    .line 1625
    iput-object p1, p0, Lpl/jbzd/app/view/feed/FeedFragment$a;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$g;-><init>()V

    .line 1626
    iput p2, p0, Lpl/jbzd/app/view/feed/FeedFragment$a;->b:I

    .line 1627
    iput p3, p0, Lpl/jbzd/app/view/feed/FeedFragment$a;->c:I

    .line 1628
    iput p4, p0, Lpl/jbzd/app/view/feed/FeedFragment$a;->d:I

    .line 1629
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$r;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1635
    sget-object v0, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->USER_PROFILE:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment$a;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v1}, Lpl/jbzd/app/view/feed/FeedFragment;->l(Lpl/jbzd/app/view/feed/FeedFragment;)Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    if-lez v0, :cond_1

    .line 1637
    :cond_0
    sget-object v0, Lpl/jbzd/app/view/feed/FeedAdapter$a;->a:Lpl/jbzd/app/view/feed/FeedAdapter$a;

    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment$a;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v1}, Lpl/jbzd/app/view/feed/FeedFragment;->k(Lpl/jbzd/app/view/feed/FeedFragment;)Lpl/jbzd/app/view/feed/FeedAdapter$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpl/jbzd/app/view/feed/FeedAdapter$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1639
    iget v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$a;->b:I

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 1640
    iget v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$a;->c:I

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 1641
    iget v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$a;->c:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 1650
    :cond_1
    :goto_0
    return-void

    .line 1645
    :cond_2
    iget v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$a;->d:I

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 1646
    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 1647
    iput v2, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0
.end method
