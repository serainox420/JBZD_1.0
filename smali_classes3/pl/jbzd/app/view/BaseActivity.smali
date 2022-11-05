.class public abstract Lpl/jbzd/app/view/BaseActivity;
.super Lpl/jbzd/app/view/AuthActivity;
.source "BaseActivity.java"


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
    .line 13
    invoke-direct {p0}, Lpl/jbzd/app/view/AuthActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public setContentView(I)V
    .locals 2

    .prologue
    .line 21
    invoke-super {p0, p1}, Lpl/jbzd/app/view/AuthActivity;->setContentView(I)V

    .line 23
    iget-object v0, p0, Lpl/jbzd/app/view/BaseActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lpl/jbzd/app/view/BaseActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 25
    invoke-virtual {p0}, Lpl/jbzd/app/view/BaseActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->a(Z)V

    .line 26
    invoke-virtual {p0}, Lpl/jbzd/app/view/BaseActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->c(Z)V

    .line 27
    return-void
.end method
