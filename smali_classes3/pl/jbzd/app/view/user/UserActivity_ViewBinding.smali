.class public Lpl/jbzd/app/view/user/UserActivity_ViewBinding;
.super Lpl/jbzd/app/view/BaseActivity_ViewBinding;
.source "UserActivity_ViewBinding.java"


# instance fields
.field private b:Lpl/jbzd/app/view/user/UserActivity;


# direct methods
.method public constructor <init>(Lpl/jbzd/app/view/user/UserActivity;Landroid/view/View;)V
    .locals 3

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lpl/jbzd/app/view/BaseActivity_ViewBinding;-><init>(Lpl/jbzd/app/view/BaseActivity;Landroid/view/View;)V

    .line 26
    iput-object p1, p0, Lpl/jbzd/app/view/user/UserActivity_ViewBinding;->b:Lpl/jbzd/app/view/user/UserActivity;

    .line 28
    const v0, 0x7f1100f0

    const-string v1, "field \'toolbar\'"

    const-class v2, Landroid/support/v7/widget/Toolbar;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/b;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p1, Lpl/jbzd/app/view/user/UserActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    .line 29
    const v0, 0x7f11017d

    const-string v1, "field \'txtToolbarTitle\'"

    const-class v2, Lpl/jbzd/core/ui/view/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/b;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/core/ui/view/TextView;

    iput-object v0, p1, Lpl/jbzd/app/view/user/UserActivity;->txtToolbarTitle:Lpl/jbzd/core/ui/view/TextView;

    .line 30
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34
    iget-object v0, p0, Lpl/jbzd/app/view/user/UserActivity_ViewBinding;->b:Lpl/jbzd/app/view/user/UserActivity;

    .line 35
    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_0
    iput-object v1, p0, Lpl/jbzd/app/view/user/UserActivity_ViewBinding;->b:Lpl/jbzd/app/view/user/UserActivity;

    .line 38
    iput-object v1, v0, Lpl/jbzd/app/view/user/UserActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    .line 39
    iput-object v1, v0, Lpl/jbzd/app/view/user/UserActivity;->txtToolbarTitle:Lpl/jbzd/core/ui/view/TextView;

    .line 41
    invoke-super {p0}, Lpl/jbzd/app/view/BaseActivity_ViewBinding;->a()V

    .line 42
    return-void
.end method
