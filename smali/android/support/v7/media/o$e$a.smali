.class final Landroid/support/v7/media/o$e$a;
.super Landroid/support/v7/media/c$d;
.source "SystemMediaRouteProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/o$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/media/o$e;


# direct methods
.method constructor <init>(Landroid/support/v7/media/o$e;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Landroid/support/v7/media/o$e$a;->a:Landroid/support/v7/media/o$e;

    invoke-direct {p0}, Landroid/support/v7/media/c$d;-><init>()V

    return-void
.end method


# virtual methods
.method public b(I)V
    .locals 3

    .prologue
    .line 172
    iget-object v0, p0, Landroid/support/v7/media/o$e$a;->a:Landroid/support/v7/media/o$e;

    iget-object v0, v0, Landroid/support/v7/media/o$e;->a:Landroid/media/AudioManager;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 173
    iget-object v0, p0, Landroid/support/v7/media/o$e$a;->a:Landroid/support/v7/media/o$e;

    invoke-virtual {v0}, Landroid/support/v7/media/o$e;->i()V

    .line 174
    return-void
.end method

.method public c(I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x3

    .line 178
    iget-object v0, p0, Landroid/support/v7/media/o$e$a;->a:Landroid/support/v7/media/o$e;

    iget-object v0, v0, Landroid/support/v7/media/o$e;->a:Landroid/media/AudioManager;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 179
    iget-object v1, p0, Landroid/support/v7/media/o$e$a;->a:Landroid/support/v7/media/o$e;

    iget-object v1, v1, Landroid/support/v7/media/o$e;->a:Landroid/media/AudioManager;

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    .line 180
    add-int v2, v0, p1

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 181
    if-eq v1, v0, :cond_0

    .line 182
    iget-object v1, p0, Landroid/support/v7/media/o$e$a;->a:Landroid/support/v7/media/o$e;

    iget-object v1, v1, Landroid/support/v7/media/o$e;->a:Landroid/media/AudioManager;

    invoke-virtual {v1, v3, v0, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 184
    :cond_0
    iget-object v0, p0, Landroid/support/v7/media/o$e$a;->a:Landroid/support/v7/media/o$e;

    invoke-virtual {v0}, Landroid/support/v7/media/o$e;->i()V

    .line 185
    return-void
.end method
