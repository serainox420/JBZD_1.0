.class public Lpl/jbzd/app/view/user/UserActivity;
.super Lpl/jbzd/app/view/BaseActivity;
.source "UserActivity.java"

# interfaces
.implements Lpl/jbzd/app/ui/view/dialog/StatusDialog$a;
.implements Lpl/jbzd/app/view/feed/FeedFragment$b;


# instance fields
.field private d:I

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
    .line 34
    invoke-direct {p0}, Lpl/jbzd/app/view/BaseActivity;-><init>()V

    return-void
.end method

.method private a(Z)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 145
    invoke-virtual {p0}, Lpl/jbzd/app/view/user/UserActivity;->finish()V

    .line 147
    iget v0, p0, Lpl/jbzd/app/view/user/UserActivity;->d:I

    invoke-static {}, Lpl/jbzd/api/ApiClient;->getUserId()I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 148
    if-eqz p1, :cond_0

    const v0, 0x7f050015

    :goto_0
    invoke-virtual {p0, v1, v0}, Lpl/jbzd/app/view/user/UserActivity;->overridePendingTransition(II)V

    .line 153
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 148
    goto :goto_0

    .line 151
    :cond_1
    if-eqz p1, :cond_2

    const v0, 0x7f050012

    :goto_2
    invoke-virtual {p0, v1, v0}, Lpl/jbzd/app/view/user/UserActivity;->overridePendingTransition(II)V

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method


# virtual methods
.method public a(Landroid/view/View;I)Z
    .locals 1

    .prologue
    .line 216
    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/view/View;Lpl/jbzd/app/model/Comment;)Z
    .locals 3

    .prologue
    .line 180
    invoke-static {}, Lpl/jbzd/api/ApiClient;->getToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lpl/jbzd/api/ApiClient;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 182
    :cond_0
    invoke-virtual {p0}, Lpl/jbzd/app/view/user/UserActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-class v1, Lpl/jbzd/app/ui/view/dialog/SignInDialog;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/ui/view/dialog/SignInDialog;

    .line 183
    if-nez v0, :cond_1

    new-instance v0, Lpl/jbzd/app/ui/view/dialog/SignInDialog;

    invoke-direct {v0}, Lpl/jbzd/app/ui/view/dialog/SignInDialog;-><init>()V

    .line 184
    :cond_1
    invoke-virtual {v0}, Lpl/jbzd/app/ui/view/dialog/SignInDialog;->isAdded()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lpl/jbzd/app/view/user/UserActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-class v2, Lpl/jbzd/app/ui/view/dialog/SignInDialog;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lpl/jbzd/app/ui/view/dialog/SignInDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 211
    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 188
    :cond_3
    invoke-static {}, Lpl/jbzd/api/ApiClient;->getApiService()Lpl/jbzd/api/ApiService;

    move-result-object v0

    invoke-virtual {p2}, Lpl/jbzd/app/model/Comment;->realmGet$id()I

    move-result v1

    invoke-static {}, Lpl/jbzd/api/ApiClient;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lpl/jbzd/api/ApiService;->comment_report(ILjava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lpl/jbzd/app/view/user/UserActivity$3;

    invoke-direct {v1, p0}, Lpl/jbzd/app/view/user/UserActivity$3;-><init>(Lpl/jbzd/app/view/user/UserActivity;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 208
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 45
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 50
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lpl/jbzd/app/view/user/UserActivity;->a(Z)V

    .line 141
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 55
    invoke-super {p0, p1}, Lpl/jbzd/app/view/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    const v0, 0x7f040094

    invoke-virtual {p0, v0}, Lpl/jbzd/app/view/user/UserActivity;->setContentView(I)V

    .line 58
    iput v2, p0, Lpl/jbzd/app/view/user/UserActivity;->d:I

    .line 60
    invoke-virtual {p0}, Lpl/jbzd/app/view/user/UserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p0}, Lpl/jbzd/app/view/user/UserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ARG_USER_ID"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lpl/jbzd/app/view/user/UserActivity;->d:I

    .line 64
    :cond_0
    iget v0, p0, Lpl/jbzd/app/view/user/UserActivity;->d:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 65
    invoke-virtual {p0}, Lpl/jbzd/app/view/user/UserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a00c4

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 66
    invoke-virtual {p0}, Lpl/jbzd/app/view/user/UserActivity;->finish()V

    .line 69
    :cond_1
    iget v0, p0, Lpl/jbzd/app/view/user/UserActivity;->d:I

    invoke-static {}, Lpl/jbzd/api/ApiClient;->getUserId()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 70
    const v0, 0x7f050020

    const v1, 0x7f050021

    invoke-virtual {p0, v0, v1}, Lpl/jbzd/app/view/user/UserActivity;->overridePendingTransition(II)V

    .line 73
    :cond_2
    iget-object v0, p0, Lpl/jbzd/app/view/user/UserActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lpl/jbzd/app/view/user/UserActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 74
    invoke-virtual {p0}, Lpl/jbzd/app/view/user/UserActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->c(Z)V

    .line 76
    iget-object v0, p0, Lpl/jbzd/app/view/user/UserActivity;->txtToolbarTitle:Lpl/jbzd/core/ui/view/TextView;

    invoke-virtual {v0}, Lpl/jbzd/core/ui/view/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar$LayoutParams;

    const/16 v1, 0x11

    iput v1, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->a:I

    .line 79
    iget v0, p0, Lpl/jbzd/app/view/user/UserActivity;->d:I

    invoke-static {}, Lpl/jbzd/api/ApiClient;->getUserId()I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 80
    iget-object v0, p0, Lpl/jbzd/app/view/user/UserActivity;->txtToolbarTitle:Lpl/jbzd/core/ui/view/TextView;

    const v1, 0x7f0a00ec

    invoke-virtual {v0, v1}, Lpl/jbzd/core/ui/view/TextView;->setText(I)V

    .line 86
    :goto_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lpl/jbzd/app/view/user/UserActivity$1;

    invoke-direct {v1, p0}, Lpl/jbzd/app/view/user/UserActivity$1;-><init>(Lpl/jbzd/app/view/user/UserActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 94
    iget-object v0, p0, Lpl/jbzd/app/view/user/UserActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    new-instance v1, Lpl/jbzd/app/view/user/UserActivity$2;

    invoke-direct {v1, p0}, Lpl/jbzd/app/view/user/UserActivity$2;-><init>(Lpl/jbzd/app/view/user/UserActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    if-nez p1, :cond_4

    .line 103
    invoke-virtual {p0}, Lpl/jbzd/app/view/user/UserActivity;->getSupportFragmentManager()Landroid/support/v4/app/u;

    move-result-object v0

    sget-object v1, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->USER_PROFILE:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    invoke-virtual {v1}, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/u;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/view/feed/FeedFragment;

    .line 104
    if-nez v0, :cond_3

    sget-object v0, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->USER_PROFILE:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    iget v1, p0, Lpl/jbzd/app/view/user/UserActivity;->d:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lpl/jbzd/app/view/feed/FeedFragment;->a(Lpl/jbzd/app/view/main/MainActivity$FragmentType;ILpl/jbzd/app/view/menu/model/Item;)Lpl/jbzd/app/view/feed/FeedFragment;

    move-result-object v0

    .line 105
    :cond_3
    invoke-virtual {p0}, Lpl/jbzd/app/view/user/UserActivity;->getSupportFragmentManager()Landroid/support/v4/app/u;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/u;->a()Landroid/support/v4/app/y;

    move-result-object v1

    .line 107
    invoke-virtual {v0}, Lpl/jbzd/app/view/feed/FeedFragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 108
    invoke-virtual {v1, v0}, Landroid/support/v4/app/y;->c(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/y;

    .line 114
    :goto_1
    invoke-virtual {v1}, Landroid/support/v4/app/y;->b()I

    .line 116
    :cond_4
    return-void

    .line 83
    :cond_5
    iget-object v0, p0, Lpl/jbzd/app/view/user/UserActivity;->txtToolbarTitle:Lpl/jbzd/core/ui/view/TextView;

    const v1, 0x7f0a00f1

    invoke-virtual {v0, v1}, Lpl/jbzd/core/ui/view/TextView;->setText(I)V

    goto :goto_0

    .line 111
    :cond_6
    const v2, 0x7f110181

    sget-object v3, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->USER_PROFILE:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    invoke-virtual {v3}, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/y;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/y;

    goto :goto_1
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 121
    invoke-super {p0}, Lpl/jbzd/app/view/BaseActivity;->onResume()V

    .line 129
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 134
    invoke-super {p0, p1}, Lpl/jbzd/app/view/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 135
    return-void
.end method
