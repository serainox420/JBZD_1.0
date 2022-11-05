.class public Lpl/jbzd/app/view/feed/FeedTopFragment_ViewBinding;
.super Ljava/lang/Object;
.source "FeedTopFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lpl/jbzd/app/view/feed/FeedTopFragment;


# direct methods
.method public constructor <init>(Lpl/jbzd/app/view/feed/FeedTopFragment;Landroid/view/View;)V
    .locals 3

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lpl/jbzd/app/view/feed/FeedTopFragment_ViewBinding;->b:Lpl/jbzd/app/view/feed/FeedTopFragment;

    .line 22
    const v0, 0x7f110177

    const-string v1, "field \'viewPager\'"

    const-class v2, Landroid/support/v4/view/ViewPager;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/b;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p1, Lpl/jbzd/app/view/feed/FeedTopFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 23
    const v0, 0x7f110176

    const-string v1, "field \'tabLayout\'"

    const-class v2, Landroid/support/design/widget/TabLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/b;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout;

    iput-object v0, p1, Lpl/jbzd/app/view/feed/FeedTopFragment;->tabLayout:Landroid/support/design/widget/TabLayout;

    .line 24
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedTopFragment_ViewBinding;->b:Lpl/jbzd/app/view/feed/FeedTopFragment;

    .line 30
    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_0
    iput-object v1, p0, Lpl/jbzd/app/view/feed/FeedTopFragment_ViewBinding;->b:Lpl/jbzd/app/view/feed/FeedTopFragment;

    .line 33
    iput-object v1, v0, Lpl/jbzd/app/view/feed/FeedTopFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 34
    iput-object v1, v0, Lpl/jbzd/app/view/feed/FeedTopFragment;->tabLayout:Landroid/support/design/widget/TabLayout;

    .line 35
    return-void
.end method
