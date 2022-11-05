.class public abstract Lpl/jbzd/app/view/a;
.super Lpl/jbzd/core/a;
.source "BaseFragment.java"

# interfaces
.implements Lpl/jbzd/app/b/a;


# instance fields
.field protected a:Lpl/jbzd/app/view/BaseActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lpl/jbzd/core/a;-><init>()V

    return-void
.end method


# virtual methods
.method public c()Lpl/jbzd/app/view/BaseActivity;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lpl/jbzd/app/view/a;->a:Lpl/jbzd/app/view/BaseActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpl/jbzd/app/view/a;->a:Lpl/jbzd/app/view/BaseActivity;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lpl/jbzd/app/view/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lpl/jbzd/app/view/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/view/BaseActivity;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Lcom/google/android/gms/analytics/Tracker;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lpl/jbzd/app/view/a;->c()Lpl/jbzd/app/view/BaseActivity;

    move-result-object v0

    .line 35
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lpl/jbzd/app/view/BaseActivity;->e()Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 20
    invoke-super {p0, p1}, Lpl/jbzd/core/a;->onAttach(Landroid/content/Context;)V

    .line 22
    if-eqz p1, :cond_0

    instance-of v0, p1, Lpl/jbzd/app/view/BaseActivity;

    if-eqz v0, :cond_0

    .line 23
    check-cast p1, Lpl/jbzd/app/view/BaseActivity;

    iput-object p1, p0, Lpl/jbzd/app/view/a;->a:Lpl/jbzd/app/view/BaseActivity;

    .line 25
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 41
    invoke-super {p0}, Lpl/jbzd/core/a;->onDestroy()V

    .line 42
    return-void
.end method
