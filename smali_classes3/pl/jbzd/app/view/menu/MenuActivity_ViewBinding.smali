.class public Lpl/jbzd/app/view/menu/MenuActivity_ViewBinding;
.super Lpl/jbzd/app/view/BaseActivity_ViewBinding;
.source "MenuActivity_ViewBinding.java"


# instance fields
.field private b:Lpl/jbzd/app/view/menu/MenuActivity;


# direct methods
.method public constructor <init>(Lpl/jbzd/app/view/menu/MenuActivity;Landroid/view/View;)V
    .locals 3

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lpl/jbzd/app/view/BaseActivity_ViewBinding;-><init>(Lpl/jbzd/app/view/BaseActivity;Landroid/view/View;)V

    .line 26
    iput-object p1, p0, Lpl/jbzd/app/view/menu/MenuActivity_ViewBinding;->b:Lpl/jbzd/app/view/menu/MenuActivity;

    .line 28
    const v0, 0x7f110180

    const-string v1, "field \'layDrawer\'"

    const-class v2, Landroid/support/v4/widget/DrawerLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/b;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    iput-object v0, p1, Lpl/jbzd/app/view/menu/MenuActivity;->layDrawer:Landroid/support/v4/widget/DrawerLayout;

    .line 29
    const v0, 0x7f110182

    const-string v1, "field \'rvMenu\'"

    const-class v2, Landroid/support/v7/widget/RecyclerView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/b;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p1, Lpl/jbzd/app/view/menu/MenuActivity;->rvMenu:Landroid/support/v7/widget/RecyclerView;

    .line 30
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34
    iget-object v0, p0, Lpl/jbzd/app/view/menu/MenuActivity_ViewBinding;->b:Lpl/jbzd/app/view/menu/MenuActivity;

    .line 35
    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_0
    iput-object v1, p0, Lpl/jbzd/app/view/menu/MenuActivity_ViewBinding;->b:Lpl/jbzd/app/view/menu/MenuActivity;

    .line 38
    iput-object v1, v0, Lpl/jbzd/app/view/menu/MenuActivity;->layDrawer:Landroid/support/v4/widget/DrawerLayout;

    .line 39
    iput-object v1, v0, Lpl/jbzd/app/view/menu/MenuActivity;->rvMenu:Landroid/support/v7/widget/RecyclerView;

    .line 41
    invoke-super {p0}, Lpl/jbzd/app/view/BaseActivity_ViewBinding;->a()V

    .line 42
    return-void
.end method
