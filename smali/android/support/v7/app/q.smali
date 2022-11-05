.class public Landroid/support/v7/app/q;
.super Landroid/support/v4/app/q;
.source "MediaRouteControllerDialogFragment.java"


# instance fields
.field private a:Landroid/support/v7/app/p;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/support/v4/app/q;-><init>()V

    .line 41
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/app/q;->setCancelable(Z)V

    .line 42
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/os/Bundle;)Landroid/support/v7/app/p;
    .locals 1

    .prologue
    .line 52
    new-instance v0, Landroid/support/v7/app/p;

    invoke-direct {v0, p1}, Landroid/support/v7/app/p;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/support/v4/app/q;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 72
    iget-object v0, p0, Landroid/support/v7/app/q;->a:Landroid/support/v7/app/p;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Landroid/support/v7/app/q;->a:Landroid/support/v7/app/p;

    invoke-virtual {v0}, Landroid/support/v7/app/p;->b()V

    .line 75
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Landroid/support/v7/app/q;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/support/v7/app/q;->a(Landroid/content/Context;Landroid/os/Bundle;)Landroid/support/v7/app/p;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/q;->a:Landroid/support/v7/app/p;

    .line 58
    iget-object v0, p0, Landroid/support/v7/app/q;->a:Landroid/support/v7/app/p;

    return-object v0
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 63
    invoke-super {p0}, Landroid/support/v4/app/q;->onStop()V

    .line 64
    iget-object v0, p0, Landroid/support/v7/app/q;->a:Landroid/support/v7/app/p;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Landroid/support/v7/app/q;->a:Landroid/support/v7/app/p;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/p;->e(Z)V

    .line 67
    :cond_0
    return-void
.end method
