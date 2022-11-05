.class public Landroid/support/v4/media/session/c$d;
.super Ljava/lang/Object;
.source "MediaControllerCompatApi21.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# direct methods
.method public static a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 140
    check-cast p0, Landroid/media/session/MediaController$TransportControls;

    invoke-virtual {p0}, Landroid/media/session/MediaController$TransportControls;->play()V

    .line 141
    return-void
.end method

.method public static b(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 144
    check-cast p0, Landroid/media/session/MediaController$TransportControls;

    invoke-virtual {p0}, Landroid/media/session/MediaController$TransportControls;->pause()V

    .line 145
    return-void
.end method

.method public static c(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 148
    check-cast p0, Landroid/media/session/MediaController$TransportControls;

    invoke-virtual {p0}, Landroid/media/session/MediaController$TransportControls;->stop()V

    .line 149
    return-void
.end method
