.class Landroid/support/v7/media/g$d$1;
.super Ljava/lang/Object;
.source "MediaRouter.java"

# interfaces
.implements Landroid/support/v4/media/session/MediaSessionCompat$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/g$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/media/g$d;


# direct methods
.method constructor <init>(Landroid/support/v7/media/g$d;)V
    .locals 0

    .prologue
    .line 1952
    iput-object p1, p0, Landroid/support/v7/media/g$d$1;->a:Landroid/support/v7/media/g$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 1955
    iget-object v0, p0, Landroid/support/v7/media/g$d$1;->a:Landroid/support/v7/media/g$d;

    iget-object v0, v0, Landroid/support/v7/media/g$d;->g:Landroid/support/v4/media/session/MediaSessionCompat;

    if-eqz v0, :cond_0

    .line 1956
    iget-object v0, p0, Landroid/support/v7/media/g$d$1;->a:Landroid/support/v7/media/g$d;

    iget-object v0, v0, Landroid/support/v7/media/g$d;->g:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1957
    iget-object v0, p0, Landroid/support/v7/media/g$d$1;->a:Landroid/support/v7/media/g$d;

    iget-object v1, p0, Landroid/support/v7/media/g$d$1;->a:Landroid/support/v7/media/g$d;

    iget-object v1, v1, Landroid/support/v7/media/g$d;->g:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaSessionCompat;->e()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/media/g$d;->a(Ljava/lang/Object;)V

    .line 1962
    :cond_0
    :goto_0
    return-void

    .line 1959
    :cond_1
    iget-object v0, p0, Landroid/support/v7/media/g$d$1;->a:Landroid/support/v7/media/g$d;

    iget-object v1, p0, Landroid/support/v7/media/g$d$1;->a:Landroid/support/v7/media/g$d;

    iget-object v1, v1, Landroid/support/v7/media/g$d;->g:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaSessionCompat;->e()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/media/g$d;->b(Ljava/lang/Object;)V

    goto :goto_0
.end method
