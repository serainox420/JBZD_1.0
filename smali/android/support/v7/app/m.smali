.class public Landroid/support/v7/app/m;
.super Landroid/support/v4/view/d;
.source "MediaRouteActionProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/m$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/support/v7/media/g;

.field private final b:Landroid/support/v7/app/m$a;

.field private c:Landroid/support/v7/media/f;

.field private d:Landroid/support/v7/app/r;

.field private e:Landroid/support/v7/app/MediaRouteButton;


# virtual methods
.method public a(Landroid/support/v7/media/f;)V
    .locals 2

    .prologue
    .line 168
    if-nez p1, :cond_0

    .line 169
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "selector must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/m;->c:Landroid/support/v7/media/f;

    invoke-virtual {v0, p1}, Landroid/support/v7/media/f;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 180
    iget-object v0, p0, Landroid/support/v7/app/m;->c:Landroid/support/v7/media/f;

    invoke-virtual {v0}, Landroid/support/v7/media/f;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 181
    iget-object v0, p0, Landroid/support/v7/app/m;->a:Landroid/support/v7/media/g;

    iget-object v1, p0, Landroid/support/v7/app/m;->b:Landroid/support/v7/app/m$a;

    invoke-virtual {v0, v1}, Landroid/support/v7/media/g;->a(Landroid/support/v7/media/g$a;)V

    .line 183
    :cond_1
    invoke-virtual {p1}, Landroid/support/v7/media/f;->c()Z

    move-result v0

    if-nez v0, :cond_2

    .line 184
    iget-object v0, p0, Landroid/support/v7/app/m;->a:Landroid/support/v7/media/g;

    iget-object v1, p0, Landroid/support/v7/app/m;->b:Landroid/support/v7/app/m$a;

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/media/g;->a(Landroid/support/v7/media/f;Landroid/support/v7/media/g$a;)V

    .line 186
    :cond_2
    iput-object p1, p0, Landroid/support/v7/app/m;->c:Landroid/support/v7/media/f;

    .line 187
    invoke-virtual {p0}, Landroid/support/v7/app/m;->j()V

    .line 189
    iget-object v0, p0, Landroid/support/v7/app/m;->e:Landroid/support/v7/app/MediaRouteButton;

    if-eqz v0, :cond_3

    .line 190
    iget-object v0, p0, Landroid/support/v7/app/m;->e:Landroid/support/v7/app/MediaRouteButton;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/MediaRouteButton;->setRouteSelector(Landroid/support/v7/media/f;)V

    .line 193
    :cond_3
    return-void
.end method

.method public b()Landroid/view/View;
    .locals 4

    .prologue
    .line 247
    iget-object v0, p0, Landroid/support/v7/app/m;->e:Landroid/support/v7/app/MediaRouteButton;

    if-eqz v0, :cond_0

    .line 248
    const-string v0, "MediaRouteActionProvider"

    const-string v1, "onCreateActionView: this ActionProvider is already associated with a menu item. Don\'t reuse MediaRouteActionProvider instances! Abandoning the old menu item..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/app/m;->i()Landroid/support/v7/app/MediaRouteButton;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/m;->e:Landroid/support/v7/app/MediaRouteButton;

    .line 254
    iget-object v0, p0, Landroid/support/v7/app/m;->e:Landroid/support/v7/app/MediaRouteButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/MediaRouteButton;->setCheatSheetEnabled(Z)V

    .line 255
    iget-object v0, p0, Landroid/support/v7/app/m;->e:Landroid/support/v7/app/MediaRouteButton;

    iget-object v1, p0, Landroid/support/v7/app/m;->c:Landroid/support/v7/media/f;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/MediaRouteButton;->setRouteSelector(Landroid/support/v7/media/f;)V

    .line 256
    iget-object v0, p0, Landroid/support/v7/app/m;->e:Landroid/support/v7/app/MediaRouteButton;

    iget-object v1, p0, Landroid/support/v7/app/m;->d:Landroid/support/v7/app/r;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/MediaRouteButton;->setDialogFactory(Landroid/support/v7/app/r;)V

    .line 257
    iget-object v0, p0, Landroid/support/v7/app/m;->e:Landroid/support/v7/app/MediaRouteButton;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/support/v7/app/MediaRouteButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 260
    iget-object v0, p0, Landroid/support/v7/app/m;->e:Landroid/support/v7/app/MediaRouteButton;

    return-object v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 273
    const/4 v0, 0x1

    return v0
.end method

.method public d()Z
    .locals 3

    .prologue
    .line 278
    iget-object v0, p0, Landroid/support/v7/app/m;->a:Landroid/support/v7/media/g;

    iget-object v1, p0, Landroid/support/v7/app/m;->c:Landroid/support/v7/media/f;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/media/g;->a(Landroid/support/v7/media/f;I)Z

    move-result v0

    return v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Landroid/support/v7/app/m;->e:Landroid/support/v7/app/MediaRouteButton;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Landroid/support/v7/app/m;->e:Landroid/support/v7/app/MediaRouteButton;

    invoke-virtual {v0}, Landroid/support/v7/app/MediaRouteButton;->a()Z

    move-result v0

    .line 268
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()Landroid/support/v7/app/MediaRouteButton;
    .locals 2

    .prologue
    .line 241
    new-instance v0, Landroid/support/v7/app/MediaRouteButton;

    invoke-virtual {p0}, Landroid/support/v7/app/m;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/app/MediaRouteButton;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method j()V
    .locals 0

    .prologue
    .line 283
    invoke-virtual {p0}, Landroid/support/v7/app/m;->e()V

    .line 284
    return-void
.end method
