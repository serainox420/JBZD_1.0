.class public abstract Lpl/jbzd/core/a;
.super Landroid/support/v4/app/Fragment;
.source "MvpBaseFragment.java"


# instance fields
.field private a:Lbutterknife/Unbinder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 21
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 22
    invoke-virtual {p0}, Lpl/jbzd/core/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lpl/jbzd/core/MvpApplication;

    invoke-virtual {v0, p0}, Lpl/jbzd/core/MvpApplication;->a(Ljava/lang/Object;)V

    .line 23
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 35
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 37
    iget-object v0, p0, Lpl/jbzd/core/a;->a:Lbutterknife/Unbinder;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lpl/jbzd/core/a;->a:Lbutterknife/Unbinder;

    invoke-interface {v0}, Lbutterknife/Unbinder;->a()V

    .line 40
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 28
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 29
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->a(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object v0

    iput-object v0, p0, Lpl/jbzd/core/a;->a:Lbutterknife/Unbinder;

    .line 30
    return-void
.end method
