.class Lcom/smartadserver/android/library/ui/a$6;
.super Ljava/lang/Object;
.source "SASNativeVideoLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/ui/a;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/ui/a;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/ui/a;)V
    .locals 0

    .prologue
    .line 1630
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/a$6;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1633
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$6;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->b(Lcom/smartadserver/android/library/ui/a;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1634
    :try_start_0
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$6;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->c(Lcom/smartadserver/android/library/ui/a;)Lcom/smartadserver/android/library/ui/a$d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$6;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->H(Lcom/smartadserver/android/library/ui/a;)Landroid/graphics/SurfaceTexture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1636
    :try_start_1
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$6;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->c(Lcom/smartadserver/android/library/ui/a;)Lcom/smartadserver/android/library/ui/a$d;

    move-result-object v0

    new-instance v2, Landroid/view/Surface;

    iget-object v3, p0, Lcom/smartadserver/android/library/ui/a$6;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v3}, Lcom/smartadserver/android/library/ui/a;->H(Lcom/smartadserver/android/library/ui/a;)Landroid/graphics/SurfaceTexture;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {v0, v2}, Lcom/smartadserver/android/library/ui/a$d;->setSurface(Landroid/view/Surface;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1641
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1

    .line 1642
    return-void

    .line 1637
    :catch_0
    move-exception v0

    .line 1638
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 1641
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
