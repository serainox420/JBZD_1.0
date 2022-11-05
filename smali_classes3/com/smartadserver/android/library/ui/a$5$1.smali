.class Lcom/smartadserver/android/library/ui/a$5$1;
.super Ljava/lang/Object;
.source "SASNativeVideoLayer.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/ui/a$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/ui/a$5;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/ui/a$5;)V
    .locals 0

    .prologue
    .line 1403
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/a$5$1;->a:Lcom/smartadserver/android/library/ui/a$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    .prologue
    .line 1430
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$5$1;->a:Lcom/smartadserver/android/library/ui/a$5;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/a$5;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->H(Lcom/smartadserver/android/library/ui/a;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/smartadserver/android/library/ui/a;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$5$1;->a:Lcom/smartadserver/android/library/ui/a$5;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/a$5;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->I(Lcom/smartadserver/android/library/ui/a;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1432
    :cond_0
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$5$1;->a:Lcom/smartadserver/android/library/ui/a$5;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/a$5;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->I(Lcom/smartadserver/android/library/ui/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1433
    invoke-static {}, Lcom/smartadserver/android/library/ui/a;->j()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Force texture update !!"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1436
    :cond_1
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$5$1;->a:Lcom/smartadserver/android/library/ui/a$5;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/a$5;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0, p1}, Lcom/smartadserver/android/library/ui/a;->a(Lcom/smartadserver/android/library/ui/a;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;

    .line 1438
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$5$1;->a:Lcom/smartadserver/android/library/ui/a$5;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/a$5;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->h(Lcom/smartadserver/android/library/ui/a;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1439
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$5$1;->a:Lcom/smartadserver/android/library/ui/a$5;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/a$5;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->j(Lcom/smartadserver/android/library/ui/a;)V

    .line 1445
    :cond_2
    :goto_0
    return-void

    .line 1443
    :cond_3
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$5$1;->a:Lcom/smartadserver/android/library/ui/a$5;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/a$5;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->f(Lcom/smartadserver/android/library/ui/a;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView;

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a$5$1;->a:Lcom/smartadserver/android/library/ui/a$5;

    iget-object v1, v1, Lcom/smartadserver/android/library/ui/a$5;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v1}, Lcom/smartadserver/android/library/ui/a;->H(Lcom/smartadserver/android/library/ui/a;)Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    goto :goto_0
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    .prologue
    .line 1422
    const/4 v0, 0x0

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .prologue
    .line 1417
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 4

    .prologue
    .line 1408
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$5$1;->a:Lcom/smartadserver/android/library/ui/a$5;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/a$5;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/smartadserver/android/library/ui/a;->a(Lcom/smartadserver/android/library/ui/a;J)J

    .line 1409
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$5$1;->a:Lcom/smartadserver/android/library/ui/a$5;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/a$5;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->G(Lcom/smartadserver/android/library/ui/a;)V

    .line 1410
    return-void
.end method
