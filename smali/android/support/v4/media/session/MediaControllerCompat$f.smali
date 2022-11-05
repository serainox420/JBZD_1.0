.class Landroid/support/v4/media/session/MediaControllerCompat$f;
.super Ljava/lang/Object;
.source "MediaControllerCompat.java"

# interfaces
.implements Landroid/support/v4/media/session/MediaControllerCompat$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "f"
.end annotation


# instance fields
.field private a:Landroid/support/v4/media/session/MediaSessionCompat$Token;

.field private b:Landroid/support/v4/media/session/b;

.field private c:Landroid/support/v4/media/session/MediaControllerCompat$h;


# direct methods
.method public constructor <init>(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V
    .locals 1

    .prologue
    .line 1154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1155
    iput-object p1, p0, Landroid/support/v4/media/session/MediaControllerCompat$f;->a:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 1156
    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    invoke-static {v0}, Landroid/support/v4/media/session/b$a;->a(Landroid/os/IBinder;)Landroid/support/v4/media/session/b;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$f;->b:Landroid/support/v4/media/session/b;

    .line 1157
    return-void
.end method


# virtual methods
.method public a()Landroid/support/v4/media/session/MediaControllerCompat$h;
    .locals 2

    .prologue
    .line 1205
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$f;->c:Landroid/support/v4/media/session/MediaControllerCompat$h;

    if-nez v0, :cond_0

    .line 1206
    new-instance v0, Landroid/support/v4/media/session/MediaControllerCompat$l;

    iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$f;->b:Landroid/support/v4/media/session/b;

    invoke-direct {v0, v1}, Landroid/support/v4/media/session/MediaControllerCompat$l;-><init>(Landroid/support/v4/media/session/b;)V

    iput-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$f;->c:Landroid/support/v4/media/session/MediaControllerCompat$h;

    .line 1209
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$f;->c:Landroid/support/v4/media/session/MediaControllerCompat$h;

    return-object v0
.end method

.method public a(Landroid/support/v4/media/session/MediaControllerCompat$a;)V
    .locals 3

    .prologue
    .line 1177
    if-nez p1, :cond_0

    .line 1178
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1181
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$f;->b:Landroid/support/v4/media/session/b;

    .line 1182
    invoke-static {p1}, Landroid/support/v4/media/session/MediaControllerCompat$a;->a(Landroid/support/v4/media/session/MediaControllerCompat$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/a;

    .line 1181
    invoke-interface {v1, v0}, Landroid/support/v4/media/session/b;->b(Landroid/support/v4/media/session/a;)V

    .line 1183
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$f;->b:Landroid/support/v4/media/session/b;

    invoke-interface {v0}, Landroid/support/v4/media/session/b;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1184
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/support/v4/media/session/MediaControllerCompat$a;->c:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1188
    :goto_0
    return-void

    .line 1185
    :catch_0
    move-exception v0

    .line 1186
    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in unregisterCallback."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public a(Landroid/support/v4/media/session/MediaControllerCompat$a;Landroid/os/Handler;)V
    .locals 3

    .prologue
    .line 1161
    if-nez p1, :cond_0

    .line 1162
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1165
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$f;->b:Landroid/support/v4/media/session/b;

    invoke-interface {v0}, Landroid/support/v4/media/session/b;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 1166
    iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$f;->b:Landroid/support/v4/media/session/b;

    invoke-static {p1}, Landroid/support/v4/media/session/MediaControllerCompat$a;->a(Landroid/support/v4/media/session/MediaControllerCompat$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/a;

    invoke-interface {v1, v0}, Landroid/support/v4/media/session/b;->a(Landroid/support/v4/media/session/a;)V

    .line 1167
    invoke-static {p1, p2}, Landroid/support/v4/media/session/MediaControllerCompat$a;->a(Landroid/support/v4/media/session/MediaControllerCompat$a;Landroid/os/Handler;)V

    .line 1168
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/support/v4/media/session/MediaControllerCompat$a;->c:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1173
    :goto_0
    return-void

    .line 1169
    :catch_0
    move-exception v0

    .line 1170
    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in registerCallback."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1171
    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat$a;->a()V

    goto :goto_0
.end method

.method public b()Landroid/support/v4/media/session/PlaybackStateCompat;
    .locals 3

    .prologue
    .line 1215
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$f;->b:Landroid/support/v4/media/session/b;

    invoke-interface {v0}, Landroid/support/v4/media/session/b;->h()Landroid/support/v4/media/session/PlaybackStateCompat;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1219
    :goto_0
    return-object v0

    .line 1216
    :catch_0
    move-exception v0

    .line 1217
    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in getPlaybackState."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1219
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Landroid/support/v4/media/MediaMetadataCompat;
    .locals 3

    .prologue
    .line 1225
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$f;->b:Landroid/support/v4/media/session/b;

    invoke-interface {v0}, Landroid/support/v4/media/session/b;->g()Landroid/support/v4/media/MediaMetadataCompat;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1229
    :goto_0
    return-object v0

    .line 1226
    :catch_0
    move-exception v0

    .line 1227
    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in getMetadata."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1229
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Landroid/app/PendingIntent;
    .locals 3

    .prologue
    .line 1374
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$f;->b:Landroid/support/v4/media/session/b;

    invoke-interface {v0}, Landroid/support/v4/media/session/b;->d()Landroid/app/PendingIntent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1378
    :goto_0
    return-object v0

    .line 1375
    :catch_0
    move-exception v0

    .line 1376
    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in getSessionActivity."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1378
    const/4 v0, 0x0

    goto :goto_0
.end method
