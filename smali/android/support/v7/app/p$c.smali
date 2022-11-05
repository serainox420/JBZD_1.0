.class final Landroid/support/v7/app/p$c;
.super Landroid/support/v4/media/session/MediaControllerCompat$a;
.source "MediaRouteControllerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field final synthetic d:Landroid/support/v7/app/p;


# direct methods
.method constructor <init>(Landroid/support/v7/app/p;)V
    .locals 0

    .prologue
    .line 1157
    iput-object p1, p0, Landroid/support/v7/app/p$c;->d:Landroid/support/v7/app/p;

    invoke-direct {p0}, Landroid/support/v4/media/session/MediaControllerCompat$a;-><init>()V

    .line 1158
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 1162
    iget-object v0, p0, Landroid/support/v7/app/p$c;->d:Landroid/support/v7/app/p;

    iget-object v0, v0, Landroid/support/v7/app/p;->p:Landroid/support/v4/media/session/MediaControllerCompat;

    if-eqz v0, :cond_0

    .line 1163
    iget-object v0, p0, Landroid/support/v7/app/p$c;->d:Landroid/support/v7/app/p;

    iget-object v0, v0, Landroid/support/v7/app/p;->p:Landroid/support/v4/media/session/MediaControllerCompat;

    iget-object v1, p0, Landroid/support/v7/app/p$c;->d:Landroid/support/v7/app/p;

    iget-object v1, v1, Landroid/support/v7/app/p;->q:Landroid/support/v7/app/p$c;

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaControllerCompat;->b(Landroid/support/v4/media/session/MediaControllerCompat$a;)V

    .line 1164
    iget-object v0, p0, Landroid/support/v7/app/p$c;->d:Landroid/support/v7/app/p;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/app/p;->p:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 1166
    :cond_0
    return-void
.end method

.method public a(Landroid/support/v4/media/MediaMetadataCompat;)V
    .locals 2

    .prologue
    .line 1176
    iget-object v1, p0, Landroid/support/v7/app/p$c;->d:Landroid/support/v7/app/p;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, v1, Landroid/support/v7/app/p;->s:Landroid/support/v4/media/MediaDescriptionCompat;

    .line 1177
    iget-object v0, p0, Landroid/support/v7/app/p$c;->d:Landroid/support/v7/app/p;

    invoke-virtual {v0}, Landroid/support/v7/app/p;->f()V

    .line 1178
    iget-object v0, p0, Landroid/support/v7/app/p$c;->d:Landroid/support/v7/app/p;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/p;->a(Z)V

    .line 1179
    return-void

    .line 1176
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/media/MediaMetadataCompat;->a()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .locals 2

    .prologue
    .line 1170
    iget-object v0, p0, Landroid/support/v7/app/p$c;->d:Landroid/support/v7/app/p;

    iput-object p1, v0, Landroid/support/v7/app/p;->r:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 1171
    iget-object v0, p0, Landroid/support/v7/app/p$c;->d:Landroid/support/v7/app/p;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/p;->a(Z)V

    .line 1172
    return-void
.end method
