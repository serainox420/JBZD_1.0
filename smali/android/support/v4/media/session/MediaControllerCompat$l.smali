.class Landroid/support/v4/media/session/MediaControllerCompat$l;
.super Landroid/support/v4/media/session/MediaControllerCompat$h;
.source "MediaControllerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "l"
.end annotation


# instance fields
.field private a:Landroid/support/v4/media/session/b;


# direct methods
.method public constructor <init>(Landroid/support/v4/media/session/b;)V
    .locals 0

    .prologue
    .line 1428
    invoke-direct {p0}, Landroid/support/v4/media/session/MediaControllerCompat$h;-><init>()V

    .line 1429
    iput-object p1, p0, Landroid/support/v4/media/session/MediaControllerCompat$l;->a:Landroid/support/v4/media/session/b;

    .line 1430
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 1471
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$l;->a:Landroid/support/v4/media/session/b;

    invoke-interface {v0}, Landroid/support/v4/media/session/b;->p()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1475
    :goto_0
    return-void

    .line 1472
    :catch_0
    move-exception v0

    .line 1473
    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in play."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 1516
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$l;->a:Landroid/support/v4/media/session/b;

    invoke-interface {v0}, Landroid/support/v4/media/session/b;->q()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1520
    :goto_0
    return-void

    .line 1517
    :catch_0
    move-exception v0

    .line 1518
    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in pause."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public c()V
    .locals 3

    .prologue
    .line 1525
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$l;->a:Landroid/support/v4/media/session/b;

    invoke-interface {v0}, Landroid/support/v4/media/session/b;->r()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1529
    :goto_0
    return-void

    .line 1526
    :catch_0
    move-exception v0

    .line 1527
    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in stop."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
