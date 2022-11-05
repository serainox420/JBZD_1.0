.class Landroid/support/v7/app/p$e;
.super Ljava/lang/Object;
.source "MediaRouteControllerDialog.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/app/p;

.field private final b:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/support/v7/app/p;)V
    .locals 1

    .prologue
    .line 1240
    iput-object p1, p0, Landroid/support/v7/app/p$e;->a:Landroid/support/v7/app/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1228
    new-instance v0, Landroid/support/v7/app/p$e$1;

    invoke-direct {v0, p0}, Landroid/support/v7/app/p$e$1;-><init>(Landroid/support/v7/app/p$e;)V

    iput-object v0, p0, Landroid/support/v7/app/p$e;->b:Ljava/lang/Runnable;

    .line 1241
    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4

    .prologue
    .line 1261
    if-eqz p3, :cond_1

    .line 1262
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/g$g;

    .line 1263
    sget-boolean v1, Landroid/support/v7/app/p;->b:Z

    if-eqz v1, :cond_0

    .line 1264
    const-string v1, "MediaRouteCtrlDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onProgressChanged(): calling MediaRouter.RouteInfo.requestSetVolume("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    :cond_0
    invoke-virtual {v0, p2}, Landroid/support/v7/media/g$g;->a(I)V

    .line 1269
    :cond_1
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .prologue
    .line 1245
    iget-object v0, p0, Landroid/support/v7/app/p$e;->a:Landroid/support/v7/app/p;

    iget-object v0, v0, Landroid/support/v7/app/p;->n:Landroid/support/v7/media/g$g;

    if-eqz v0, :cond_0

    .line 1246
    iget-object v0, p0, Landroid/support/v7/app/p$e;->a:Landroid/support/v7/app/p;

    iget-object v0, v0, Landroid/support/v7/app/p;->l:Landroid/widget/SeekBar;

    iget-object v1, p0, Landroid/support/v7/app/p$e;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1248
    :cond_0
    iget-object v1, p0, Landroid/support/v7/app/p$e;->a:Landroid/support/v7/app/p;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/g$g;

    iput-object v0, v1, Landroid/support/v7/app/p;->n:Landroid/support/v7/media/g$g;

    .line 1249
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4

    .prologue
    .line 1256
    iget-object v0, p0, Landroid/support/v7/app/p$e;->a:Landroid/support/v7/app/p;

    iget-object v0, v0, Landroid/support/v7/app/p;->l:Landroid/widget/SeekBar;

    iget-object v1, p0, Landroid/support/v7/app/p$e;->b:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/SeekBar;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1257
    return-void
.end method
