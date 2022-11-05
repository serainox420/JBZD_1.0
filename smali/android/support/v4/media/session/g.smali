.class Landroid/support/v4/media/session/g;
.super Ljava/lang/Object;
.source "MediaSessionCompatApi21.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/g$c;,
        Landroid/support/v4/media/session/g$b;,
        Landroid/support/v4/media/session/g$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 43
    new-instance v0, Landroid/media/session/MediaSession;

    invoke-direct {v0, p0, p1}, Landroid/media/session/MediaSession;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Landroid/support/v4/media/session/g$a;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 61
    new-instance v0, Landroid/support/v4/media/session/g$b;

    invoke-direct {v0, p0}, Landroid/support/v4/media/session/g$b;-><init>(Landroid/support/v4/media/session/g$a;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 54
    instance-of v0, p0, Landroid/media/session/MediaSession$Token;

    if-eqz v0, :cond_0

    .line 55
    return-object p0

    .line 57
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "token is not a valid MediaSession.Token object"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 69
    check-cast p0, Landroid/media/session/MediaSession;

    invoke-virtual {p0, p1}, Landroid/media/session/MediaSession;->setFlags(I)V

    .line 70
    return-void
.end method

.method public static a(Ljava/lang/Object;Landroid/app/PendingIntent;)V
    .locals 0

    .prologue
    .line 112
    check-cast p0, Landroid/media/session/MediaSession;

    invoke-virtual {p0, p1}, Landroid/media/session/MediaSession;->setSessionActivity(Landroid/app/PendingIntent;)V

    .line 113
    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 80
    check-cast p0, Landroid/media/session/MediaSession;

    check-cast p1, Landroid/media/VolumeProvider;

    invoke-virtual {p0, p1}, Landroid/media/session/MediaSession;->setPlaybackToRemote(Landroid/media/VolumeProvider;)V

    .line 81
    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 65
    check-cast p0, Landroid/media/session/MediaSession;

    check-cast p1, Landroid/media/session/MediaSession$Callback;

    invoke-virtual {p0, p1, p2}, Landroid/media/session/MediaSession;->setCallback(Landroid/media/session/MediaSession$Callback;Landroid/os/Handler;)V

    .line 66
    return-void
.end method

.method public static a(Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 84
    check-cast p0, Landroid/media/session/MediaSession;

    invoke-virtual {p0, p1}, Landroid/media/session/MediaSession;->setActive(Z)V

    .line 85
    return-void
.end method

.method public static b(Ljava/lang/Object;I)V
    .locals 1

    .prologue
    .line 74
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 75
    invoke-virtual {v0, p1}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    .line 76
    check-cast p0, Landroid/media/session/MediaSession;

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/session/MediaSession;->setPlaybackToLocal(Landroid/media/AudioAttributes;)V

    .line 77
    return-void
.end method

.method public static b(Ljava/lang/Object;Landroid/app/PendingIntent;)V
    .locals 0

    .prologue
    .line 116
    check-cast p0, Landroid/media/session/MediaSession;

    invoke-virtual {p0, p1}, Landroid/media/session/MediaSession;->setMediaButtonReceiver(Landroid/app/PendingIntent;)V

    .line 117
    return-void
.end method

.method public static b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 104
    check-cast p0, Landroid/media/session/MediaSession;

    check-cast p1, Landroid/media/session/PlaybackState;

    invoke-virtual {p0, p1}, Landroid/media/session/MediaSession;->setPlaybackState(Landroid/media/session/PlaybackState;)V

    .line 105
    return-void
.end method

.method public static b(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 88
    check-cast p0, Landroid/media/session/MediaSession;

    invoke-virtual {p0}, Landroid/media/session/MediaSession;->isActive()Z

    move-result v0

    return v0
.end method

.method public static c(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 96
    check-cast p0, Landroid/media/session/MediaSession;

    invoke-virtual {p0}, Landroid/media/session/MediaSession;->release()V

    .line 97
    return-void
.end method

.method public static c(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 108
    check-cast p0, Landroid/media/session/MediaSession;

    check-cast p1, Landroid/media/MediaMetadata;

    invoke-virtual {p0, p1}, Landroid/media/session/MediaSession;->setMetadata(Landroid/media/MediaMetadata;)V

    .line 109
    return-void
.end method

.method public static d(Ljava/lang/Object;)Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 100
    check-cast p0, Landroid/media/session/MediaSession;

    invoke-virtual {p0}, Landroid/media/session/MediaSession;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v0

    return-object v0
.end method
