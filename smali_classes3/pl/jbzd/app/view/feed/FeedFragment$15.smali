.class Lpl/jbzd/app/view/feed/FeedFragment$15;
.super Lpl/jbzd/core/ui/b/a;
.source "FeedFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/jbzd/app/view/feed/FeedFragment;->a(Landroid/support/v7/widget/LinearLayoutManager;)Lpl/jbzd/core/ui/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lpl/jbzd/app/view/feed/FeedFragment;


# direct methods
.method constructor <init>(Lpl/jbzd/app/view/feed/FeedFragment;Landroid/content/Context;Landroid/support/v7/widget/LinearLayoutManager;)V
    .locals 0

    .prologue
    .line 710
    iput-object p1, p0, Lpl/jbzd/app/view/feed/FeedFragment$15;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-direct {p0, p2, p3}, Lpl/jbzd/core/ui/b/a;-><init>(Landroid/content/Context;Landroid/support/v7/widget/LinearLayoutManager;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 775
    const/4 v0, 0x7

    return v0
.end method

.method public a(II)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    .line 714
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 716
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$15;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v0}, Lpl/jbzd/app/view/feed/FeedFragment;->c(Lpl/jbzd/app/view/feed/FeedFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 718
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$15;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v0}, Lpl/jbzd/app/view/feed/FeedFragment;->c(Lpl/jbzd/app/view/feed/FeedFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/view/feed/a/a;

    iget-object v0, v0, Lpl/jbzd/app/view/feed/a/a;->a:Lpl/jbzd/app/view/feed/model/BaseFeedModel;

    instance-of v0, v0, Lpl/jbzd/app/model/Media;

    if-eqz v0, :cond_3

    .line 720
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$15;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v0}, Lpl/jbzd/app/view/feed/FeedFragment;->c(Lpl/jbzd/app/view/feed/FeedFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/view/feed/a/a;

    iget-object v0, v0, Lpl/jbzd/app/view/feed/a/a;->a:Lpl/jbzd/app/view/feed/model/BaseFeedModel;

    check-cast v0, Lpl/jbzd/app/model/Media;

    .line 722
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lpl/jbzd/app/model/Media;->realmGet$date()Ljava/util/Date;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 724
    invoke-virtual {v0}, Lpl/jbzd/app/model/Media;->realmGet$date()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sub-long/2addr v0, v6

    .line 726
    iget-object v2, p0, Lpl/jbzd/app/view/feed/FeedFragment$15;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v2}, Lpl/jbzd/app/view/feed/FeedFragment;->h(Lpl/jbzd/app/view/feed/FeedFragment;)J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    iget-object v2, p0, Lpl/jbzd/app/view/feed/FeedFragment$15;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v2}, Lpl/jbzd/app/view/feed/FeedFragment;->h(Lpl/jbzd/app/view/feed/FeedFragment;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 728
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$15;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v0}, Lpl/jbzd/app/view/feed/FeedFragment;->i(Lpl/jbzd/app/view/feed/FeedFragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 730
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$15;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v0}, Lpl/jbzd/app/view/feed/FeedFragment;->h(Lpl/jbzd/app/view/feed/FeedFragment;)J

    move-result-wide v0

    const-wide/32 v2, 0x36ee80

    sub-long/2addr v0, v2

    sub-long/2addr v0, v6

    .line 744
    :cond_0
    :goto_1
    iget-object v2, p0, Lpl/jbzd/app/view/feed/FeedFragment$15;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v2, v0, v1}, Lpl/jbzd/app/view/feed/FeedFragment;->a(Lpl/jbzd/app/view/feed/FeedFragment;J)J

    move-wide v2, v0

    .line 751
    :cond_1
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$15;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    const-string v1, "down"

    const/4 v5, 0x1

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Lpl/jbzd/app/view/feed/FeedFragment;->a(Ljava/lang/String;JIZ)V

    .line 752
    return-void

    .line 740
    :cond_2
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$15;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v0}, Lpl/jbzd/app/view/feed/FeedFragment;->h(Lpl/jbzd/app/view/feed/FeedFragment;)J

    move-result-wide v0

    sub-long/2addr v0, v6

    goto :goto_1

    .line 716
    :cond_3
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method

.method public b(II)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 758
    iget-object v2, p0, Lpl/jbzd/app/view/feed/FeedFragment$15;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v2}, Lpl/jbzd/app/view/feed/FeedFragment;->j(Lpl/jbzd/app/view/feed/FeedFragment;)Lpl/jbzd/app/model/User;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lpl/jbzd/app/view/feed/FeedFragment$15;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v2}, Lpl/jbzd/app/view/feed/FeedFragment;->b(Lpl/jbzd/app/view/feed/FeedFragment;)Lpl/jbzd/app/view/feed/FeedAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lpl/jbzd/app/view/feed/FeedAdapter;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 760
    sget-object v2, Lpl/jbzd/app/view/feed/FeedAdapter$a;->a:Lpl/jbzd/app/view/feed/FeedAdapter$a;

    iget-object v3, p0, Lpl/jbzd/app/view/feed/FeedFragment$15;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v3}, Lpl/jbzd/app/view/feed/FeedFragment;->k(Lpl/jbzd/app/view/feed/FeedFragment;)Lpl/jbzd/app/view/feed/FeedAdapter$a;

    move-result-object v3

    invoke-virtual {v2, v3}, Lpl/jbzd/app/view/feed/FeedAdapter$a;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 761
    iget-object v2, p0, Lpl/jbzd/app/view/feed/FeedFragment$15;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-virtual {v2}, Lpl/jbzd/app/view/feed/FeedFragment;->f()I

    move-result v2

    iget-object v3, p0, Lpl/jbzd/app/view/feed/FeedFragment$15;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v3}, Lpl/jbzd/app/view/feed/FeedFragment;->j(Lpl/jbzd/app/view/feed/FeedFragment;)Lpl/jbzd/app/model/User;

    move-result-object v3

    invoke-virtual {v3}, Lpl/jbzd/app/model/User;->realmGet$media_count()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 771
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 761
    goto :goto_0

    .line 764
    :cond_2
    iget-object v2, p0, Lpl/jbzd/app/view/feed/FeedFragment$15;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-virtual {v2}, Lpl/jbzd/app/view/feed/FeedFragment;->g()I

    move-result v2

    iget-object v3, p0, Lpl/jbzd/app/view/feed/FeedFragment$15;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v3}, Lpl/jbzd/app/view/feed/FeedFragment;->j(Lpl/jbzd/app/view/feed/FeedFragment;)Lpl/jbzd/app/model/User;

    move-result-object v3

    invoke-virtual {v3}, Lpl/jbzd/app/model/User;->realmGet$comments_count()I

    move-result v3

    if-lt v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    .line 768
    :cond_3
    sget-object v2, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->TOP:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    iget-object v3, p0, Lpl/jbzd/app/view/feed/FeedFragment$15;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v3}, Lpl/jbzd/app/view/feed/FeedFragment;->l(Lpl/jbzd/app/view/feed/FeedFragment;)Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-gt p1, v0, :cond_5

    :cond_4
    sget-object v2, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->FAVORITE:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    iget-object v3, p0, Lpl/jbzd/app/view/feed/FeedFragment$15;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v3}, Lpl/jbzd/app/view/feed/FeedFragment;->l(Lpl/jbzd/app/view/feed/FeedFragment;)Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lpl/jbzd/app/view/feed/FeedFragment$15;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v2}, Lpl/jbzd/app/view/feed/FeedFragment;->m(Lpl/jbzd/app/view/feed/FeedFragment;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_5
    move v0, v1

    goto :goto_0
.end method
