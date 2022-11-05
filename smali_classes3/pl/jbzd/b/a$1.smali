.class Lpl/jbzd/b/a$1;
.super Ljava/lang/Object;
.source "CustomVideoSurfaceView.java"

# interfaces
.implements Lcom/google/android/exoplayer2/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/jbzd/b/a;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lpl/jbzd/b/a;


# direct methods
.method constructor <init>(Lpl/jbzd/b/a;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lpl/jbzd/b/a$1;->a:Lpl/jbzd/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/source/m;Lcom/google/android/exoplayer2/b/g;)V
    .locals 0

    .prologue
    .line 161
    return-void
.end method

.method public onLoadingChanged(Z)V
    .locals 0

    .prologue
    .line 166
    return-void
.end method

.method public onPlayerError(Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 0

    .prologue
    .line 215
    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .locals 4

    .prologue
    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playWhenReady="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", playbackState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 173
    packed-switch p2, :pswitch_data_0

    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "unknown "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 210
    :cond_0
    :goto_0
    invoke-static {}, Lpl/jbzd/b/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    return-void

    .line 176
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "buffering "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 177
    iget-object v1, p0, Lpl/jbzd/b/a$1;->a:Lpl/jbzd/b/a;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lpl/jbzd/b/a;->setVisibility(I)V

    .line 178
    iget-object v1, p0, Lpl/jbzd/b/a$1;->a:Lpl/jbzd/b/a;

    invoke-static {v1}, Lpl/jbzd/b/a;->a(Lpl/jbzd/b/a;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 179
    iget-object v1, p0, Lpl/jbzd/b/a$1;->a:Lpl/jbzd/b/a;

    invoke-static {v1}, Lpl/jbzd/b/a;->b(Lpl/jbzd/b/a;)Landroid/view/SurfaceView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/SurfaceView;->setAlpha(F)V

    .line 181
    :cond_1
    iget-object v1, p0, Lpl/jbzd/b/a$1;->a:Lpl/jbzd/b/a;

    invoke-static {v1}, Lpl/jbzd/b/a;->b(Lpl/jbzd/b/a;)Landroid/view/SurfaceView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/SurfaceView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 185
    :pswitch_1
    iget-object v1, p0, Lpl/jbzd/b/a$1;->a:Lpl/jbzd/b/a;

    invoke-static {v1}, Lpl/jbzd/b/a;->c(Lpl/jbzd/b/a;)Lcom/google/android/exoplayer2/m;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/m;->a(J)V

    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ended "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 190
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "idle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 194
    :pswitch_3
    iget-object v1, p0, Lpl/jbzd/b/a$1;->a:Lpl/jbzd/b/a;

    invoke-static {v1}, Lpl/jbzd/b/a;->b(Lpl/jbzd/b/a;)Landroid/view/SurfaceView;

    move-result-object v1

    iget-object v2, p0, Lpl/jbzd/b/a$1;->a:Lpl/jbzd/b/a;

    invoke-virtual {v1, v2}, Landroid/view/SurfaceView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    iget-object v1, p0, Lpl/jbzd/b/a$1;->a:Lpl/jbzd/b/a;

    invoke-static {v1}, Lpl/jbzd/b/a;->b(Lpl/jbzd/b/a;)Landroid/view/SurfaceView;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/SurfaceView;->setAlpha(F)V

    .line 196
    iget-object v1, p0, Lpl/jbzd/b/a$1;->a:Lpl/jbzd/b/a;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lpl/jbzd/b/a;->a(Lpl/jbzd/b/a;Z)Z

    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ready "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 199
    iget-object v1, p0, Lpl/jbzd/b/a$1;->a:Lpl/jbzd/b/a;

    invoke-static {v1}, Lpl/jbzd/b/a;->d(Lpl/jbzd/b/a;)Lpl/jbzd/b/b$a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 200
    iget-object v1, p0, Lpl/jbzd/b/a$1;->a:Lpl/jbzd/b/a;

    invoke-static {v1}, Lpl/jbzd/b/a;->d(Lpl/jbzd/b/a;)Lpl/jbzd/b/b$a;

    move-result-object v1

    iget-object v2, p0, Lpl/jbzd/b/a$1;->a:Lpl/jbzd/b/a;

    iget-object v3, p0, Lpl/jbzd/b/a$1;->a:Lpl/jbzd/b/a;

    invoke-static {v3}, Lpl/jbzd/b/a;->e(Lpl/jbzd/b/a;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lpl/jbzd/b/b$a;->a(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 173
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public onPositionDiscontinuity()V
    .locals 0

    .prologue
    .line 220
    return-void
.end method

.method public onTimelineChanged(Lcom/google/android/exoplayer2/n;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 156
    return-void
.end method
