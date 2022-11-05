.class public abstract Lpl/jbzd/app/view/menu/MenuActivity;
.super Lpl/jbzd/app/view/BaseActivity;
.source "MenuActivity.java"


# instance fields
.field protected h:Landroid/support/v7/app/a;

.field public layDrawer:Landroid/support/v4/widget/DrawerLayout;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field public rvMenu:Landroid/support/v7/widget/RecyclerView;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lpl/jbzd/app/view/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 30
    invoke-super {p0, p1}, Lpl/jbzd/app/view/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    return-void
.end method

.method public setContentView(I)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 36
    invoke-super {p0, p1}, Lpl/jbzd/app/view/BaseActivity;->setContentView(I)V

    .line 38
    new-instance v0, Lpl/jbzd/app/view/menu/MenuActivity$1;

    iget-object v3, p0, Lpl/jbzd/app/view/menu/MenuActivity;->layDrawer:Landroid/support/v4/widget/DrawerLayout;

    iget-object v4, p0, Lpl/jbzd/app/view/menu/MenuActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    const v5, 0x7f0a00be

    const v6, 0x7f0a00bd

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lpl/jbzd/app/view/menu/MenuActivity$1;-><init>(Lpl/jbzd/app/view/menu/MenuActivity;Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;Landroid/support/v7/widget/Toolbar;II)V

    iput-object v0, p0, Lpl/jbzd/app/view/menu/MenuActivity;->h:Landroid/support/v7/app/a;

    .line 57
    iget-object v0, p0, Lpl/jbzd/app/view/menu/MenuActivity;->layDrawer:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lpl/jbzd/app/view/menu/MenuActivity;->h:Landroid/support/v7/app/a;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/support/v4/widget/DrawerLayout$f;)V

    .line 58
    iget-object v0, p0, Lpl/jbzd/app/view/menu/MenuActivity;->layDrawer:Landroid/support/v4/widget/DrawerLayout;

    new-instance v1, Lpl/jbzd/app/view/menu/MenuActivity$2;

    invoke-direct {v1, p0}, Lpl/jbzd/app/view/menu/MenuActivity$2;-><init>(Lpl/jbzd/app/view/menu/MenuActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->post(Ljava/lang/Runnable;)Z

    .line 65
    iget-object v0, p0, Lpl/jbzd/app/view/menu/MenuActivity;->rvMenu:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v7}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 66
    iget-object v0, p0, Lpl/jbzd/app/view/menu/MenuActivity;->rvMenu:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 67
    iget-object v0, p0, Lpl/jbzd/app/view/menu/MenuActivity;->rvMenu:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lpl/jbzd/core/ui/a/a;

    invoke-static {v7}, Lpl/jbzd/core/a/a;->a(I)I

    move-result v2

    invoke-direct {v1, v2}, Lpl/jbzd/core/ui/a/a;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$g;)V

    .line 68
    return-void
.end method
