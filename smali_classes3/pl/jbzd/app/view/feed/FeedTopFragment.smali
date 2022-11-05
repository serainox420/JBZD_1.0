.class public Lpl/jbzd/app/view/feed/FeedTopFragment;
.super Lpl/jbzd/app/view/a;
.source "FeedTopFragment.java"


# instance fields
.field private b:Lpl/jbzd/app/view/feed/a;

.field private c:Lpl/jbzd/app/view/menu/model/Item;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lpl/jbzd/app/view/feed/a$a;",
            ">;"
        }
    .end annotation
.end field

.field tabLayout:Landroid/support/design/widget/TabLayout;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field viewPager:Landroid/support/v4/view/ViewPager;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lpl/jbzd/app/view/a;-><init>()V

    .line 49
    return-void
.end method

.method public static a(Lpl/jbzd/app/view/menu/model/Item;)Lpl/jbzd/app/view/feed/FeedTopFragment;
    .locals 3

    .prologue
    .line 39
    new-instance v0, Lpl/jbzd/app/view/feed/FeedTopFragment;

    invoke-direct {v0}, Lpl/jbzd/app/view/feed/FeedTopFragment;-><init>()V

    .line 41
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 42
    const-string v2, "ARG_MENU_ITEM"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 43
    invoke-virtual {v0, v1}, Lpl/jbzd/app/view/feed/FeedTopFragment;->setArguments(Landroid/os/Bundle;)V

    .line 45
    return-object v0
.end method

.method private a(I)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 104
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lpl/jbzd/app/view/feed/FeedTopFragment;->d:Ljava/util/List;

    .line 105
    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedTopFragment;->d:Ljava/util/List;

    new-instance v2, Lpl/jbzd/app/view/feed/a$a;

    const-string v3, "Top dnia"

    invoke-direct {v2, v3, v0}, Lpl/jbzd/app/view/feed/a$a;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedTopFragment;->d:Ljava/util/List;

    new-instance v2, Lpl/jbzd/app/view/feed/a$a;

    const-string v3, "Top tygodnia"

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lpl/jbzd/app/view/feed/a$a;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedTopFragment;->d:Ljava/util/List;

    new-instance v2, Lpl/jbzd/app/view/feed/a$a;

    const-string v3, "Top miesi\u0105ca"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lpl/jbzd/app/view/feed/a$a;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    new-instance v1, Lpl/jbzd/app/view/feed/a;

    invoke-virtual {p0}, Lpl/jbzd/app/view/feed/FeedTopFragment;->getChildFragmentManager()Landroid/support/v4/app/u;

    move-result-object v2

    iget-object v3, p0, Lpl/jbzd/app/view/feed/FeedTopFragment;->c:Lpl/jbzd/app/view/menu/model/Item;

    iget-object v4, p0, Lpl/jbzd/app/view/feed/FeedTopFragment;->d:Ljava/util/List;

    invoke-direct {v1, v2, v3, v4}, Lpl/jbzd/app/view/feed/a;-><init>(Landroid/support/v4/app/u;Lpl/jbzd/app/view/menu/model/Item;Ljava/util/List;)V

    iput-object v1, p0, Lpl/jbzd/app/view/feed/FeedTopFragment;->b:Lpl/jbzd/app/view/feed/a;

    .line 110
    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedTopFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lpl/jbzd/app/view/feed/FeedTopFragment;->b:Lpl/jbzd/app/view/feed/a;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/aa;)V

    .line 112
    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedTopFragment;->tabLayout:Landroid/support/design/widget/TabLayout;

    iget-object v2, p0, Lpl/jbzd/app/view/feed/FeedTopFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 113
    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedTopFragment;->tabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout;->getTabCount()I

    move-result v2

    move v1, v0

    .line 115
    :goto_0
    if-ge v1, v2, :cond_0

    .line 118
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedTopFragment;->tabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->a(I)Landroid/support/design/widget/TabLayout$e;

    move-result-object v3

    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedTopFragment;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/view/feed/a$a;

    iget-object v0, v0, Lpl/jbzd/app/view/feed/a$a;->a:Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/support/design/widget/TabLayout$e;->a(Ljava/lang/CharSequence;)Landroid/support/design/widget/TabLayout$e;

    .line 115
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 122
    :cond_0
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedTopFragment;->tabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/TabLayout;->a(I)Landroid/support/design/widget/TabLayout$e;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$e;->e()V

    .line 123
    return-void
.end method


# virtual methods
.method public a()Lpl/jbzd/app/view/main/MainActivity$FragmentType;
    .locals 1

    .prologue
    .line 127
    sget-object v0, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->TOP:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    return-object v0
.end method

.method public b()Lpl/jbzd/app/view/menu/model/Item;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedTopFragment;->c:Lpl/jbzd/app/view/menu/model/Item;

    return-object v0
.end method

.method public e()V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedTopFragment;->b:Lpl/jbzd/app/view/feed/a;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedTopFragment;->b:Lpl/jbzd/app/view/feed/a;

    invoke-virtual {v0}, Lpl/jbzd/app/view/feed/a;->a()V

    .line 147
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 99
    invoke-super {p0, p1}, Lpl/jbzd/app/view/a;->onActivityCreated(Landroid/os/Bundle;)V

    .line 100
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 54
    invoke-super {p0, p1}, Lpl/jbzd/app/view/a;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0}, Lpl/jbzd/app/view/feed/FeedTopFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ARG_MENU_ITEM"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/view/menu/model/Item;

    iput-object v0, p0, Lpl/jbzd/app/view/feed/FeedTopFragment;->c:Lpl/jbzd/app/view/menu/model/Item;

    .line 56
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 61
    invoke-super {p0, p1, p2, p3}, Lpl/jbzd/app/view/a;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 62
    const v0, 0x7f04005c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 88
    invoke-super {p0}, Lpl/jbzd/app/view/a;->onResume()V

    .line 90
    invoke-virtual {p0}, Lpl/jbzd/app/view/feed/FeedTopFragment;->d()Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p0}, Lpl/jbzd/app/view/feed/FeedTopFragment;->d()Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    const-string v1, "Top"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lpl/jbzd/app/view/feed/FeedTopFragment;->d()Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 94
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 68
    invoke-super {p0, p1, p2}, Lpl/jbzd/app/view/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 70
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedTopFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lpl/jbzd/app/view/feed/FeedTopFragment$1;

    invoke-direct {v1, p0}, Lpl/jbzd/app/view/feed/FeedTopFragment$1;-><init>(Lpl/jbzd/app/view/feed/FeedTopFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$e;)V

    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lpl/jbzd/app/view/feed/FeedTopFragment;->a(I)V

    .line 83
    return-void
.end method
