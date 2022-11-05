.class public Lpl/jbzd/app/view/settings/SettingsActivity;
.super Lpl/jbzd/app/view/BaseActivity;
.source "SettingsActivity.java"


# instance fields
.field public toolbar:Landroid/support/v7/widget/Toolbar;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field public txtToolbarTitle:Lpl/jbzd/core/ui/view/TextView;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lpl/jbzd/app/view/BaseActivity;-><init>()V

    return-void
.end method

.method private a(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 105
    invoke-virtual {p0}, Lpl/jbzd/app/view/settings/SettingsActivity;->finish()V

    .line 106
    if-eqz p1, :cond_0

    const v0, 0x7f050015

    :goto_0
    invoke-virtual {p0, v1, v0}, Lpl/jbzd/app/view/settings/SettingsActivity;->overridePendingTransition(II)V

    .line 107
    return-void

    :cond_0
    move v0, v1

    .line 106
    goto :goto_0
.end method


# virtual methods
.method public b()V
    .locals 0

    .prologue
    .line 30
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 35
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lpl/jbzd/app/view/settings/SettingsActivity;->a(Z)V

    .line 101
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 40
    invoke-super {p0, p1}, Lpl/jbzd/app/view/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v0, 0x7f040094

    invoke-virtual {p0, v0}, Lpl/jbzd/app/view/settings/SettingsActivity;->setContentView(I)V

    .line 43
    iget-object v0, p0, Lpl/jbzd/app/view/settings/SettingsActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lpl/jbzd/app/view/settings/SettingsActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 44
    invoke-virtual {p0}, Lpl/jbzd/app/view/settings/SettingsActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->c(Z)V

    .line 45
    iget-object v0, p0, Lpl/jbzd/app/view/settings/SettingsActivity;->txtToolbarTitle:Lpl/jbzd/core/ui/view/TextView;

    invoke-virtual {v0}, Lpl/jbzd/core/ui/view/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar$LayoutParams;

    const/16 v1, 0x11

    iput v1, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->a:I

    .line 46
    iget-object v0, p0, Lpl/jbzd/app/view/settings/SettingsActivity;->txtToolbarTitle:Lpl/jbzd/core/ui/view/TextView;

    const v1, 0x7f0a00ed

    invoke-virtual {v0, v1}, Lpl/jbzd/core/ui/view/TextView;->setText(I)V

    .line 48
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lpl/jbzd/app/view/settings/SettingsActivity$1;

    invoke-direct {v1, p0}, Lpl/jbzd/app/view/settings/SettingsActivity$1;-><init>(Lpl/jbzd/app/view/settings/SettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 56
    iget-object v0, p0, Lpl/jbzd/app/view/settings/SettingsActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    new-instance v1, Lpl/jbzd/app/view/settings/SettingsActivity$2;

    invoke-direct {v1, p0}, Lpl/jbzd/app/view/settings/SettingsActivity$2;-><init>(Lpl/jbzd/app/view/settings/SettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    if-nez p1, :cond_1

    .line 65
    invoke-virtual {p0}, Lpl/jbzd/app/view/settings/SettingsActivity;->getSupportFragmentManager()Landroid/support/v4/app/u;

    move-result-object v0

    sget-object v1, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->SETTINGS:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    invoke-virtual {v1}, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/u;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/view/settings/SettingsFragment;

    .line 66
    if-nez v0, :cond_0

    new-instance v0, Lpl/jbzd/app/view/menu/model/Item;

    invoke-direct {v0}, Lpl/jbzd/app/view/menu/model/Item;-><init>()V

    invoke-static {v0}, Lpl/jbzd/app/view/settings/SettingsFragment;->a(Lpl/jbzd/app/view/menu/model/Item;)Lpl/jbzd/app/view/settings/SettingsFragment;

    move-result-object v0

    .line 67
    :cond_0
    invoke-virtual {p0}, Lpl/jbzd/app/view/settings/SettingsActivity;->getSupportFragmentManager()Landroid/support/v4/app/u;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/u;->a()Landroid/support/v4/app/y;

    move-result-object v1

    .line 69
    invoke-virtual {v0}, Lpl/jbzd/app/view/settings/SettingsFragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 70
    invoke-virtual {v1, v0}, Landroid/support/v4/app/y;->c(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/y;

    .line 76
    :goto_0
    invoke-virtual {v1}, Landroid/support/v4/app/y;->b()I

    .line 78
    :cond_1
    return-void

    .line 73
    :cond_2
    const v2, 0x7f110181

    sget-object v3, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->SETTINGS:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    invoke-virtual {v3}, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/y;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/y;

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 83
    invoke-super {p0}, Lpl/jbzd/app/view/BaseActivity;->onResume()V

    .line 85
    invoke-virtual {p0}, Lpl/jbzd/app/view/settings/SettingsActivity;->e()Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {p0}, Lpl/jbzd/app/view/settings/SettingsActivity;->e()Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    const-string v1, "Ustawienia"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lpl/jbzd/app/view/settings/SettingsActivity;->e()Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 89
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 94
    invoke-super {p0, p1}, Lpl/jbzd/app/view/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 95
    return-void
.end method
