.class public Lpl/jbzd/app/view/BaseActivity_ViewBinding;
.super Ljava/lang/Object;
.source "BaseActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lpl/jbzd/app/view/BaseActivity;


# direct methods
.method public constructor <init>(Lpl/jbzd/app/view/BaseActivity;Landroid/view/View;)V
    .locals 3

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lpl/jbzd/app/view/BaseActivity_ViewBinding;->b:Lpl/jbzd/app/view/BaseActivity;

    .line 27
    const v0, 0x7f1100f0

    const-string v1, "field \'toolbar\'"

    const-class v2, Landroid/support/v7/widget/Toolbar;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/b;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p1, Lpl/jbzd/app/view/BaseActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    .line 28
    const v0, 0x7f11017d

    const-string v1, "field \'txtToolbarTitle\'"

    const-class v2, Lpl/jbzd/core/ui/view/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/b;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/core/ui/view/TextView;

    iput-object v0, p1, Lpl/jbzd/app/view/BaseActivity;->txtToolbarTitle:Lpl/jbzd/core/ui/view/TextView;

    .line 29
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34
    iget-object v0, p0, Lpl/jbzd/app/view/BaseActivity_ViewBinding;->b:Lpl/jbzd/app/view/BaseActivity;

    .line 35
    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_0
    iput-object v1, p0, Lpl/jbzd/app/view/BaseActivity_ViewBinding;->b:Lpl/jbzd/app/view/BaseActivity;

    .line 38
    iput-object v1, v0, Lpl/jbzd/app/view/BaseActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    .line 39
    iput-object v1, v0, Lpl/jbzd/app/view/BaseActivity;->txtToolbarTitle:Lpl/jbzd/core/ui/view/TextView;

    .line 40
    return-void
.end method
