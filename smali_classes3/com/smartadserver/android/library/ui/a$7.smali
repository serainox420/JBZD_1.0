.class Lcom/smartadserver/android/library/ui/a$7;
.super Ljava/lang/Object;
.source "SASNativeVideoLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/ui/a;->r()V
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
    .line 1648
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/a$7;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1651
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$7;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->b(Lcom/smartadserver/android/library/ui/a;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1652
    :try_start_0
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$7;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->c(Lcom/smartadserver/android/library/ui/a;)Lcom/smartadserver/android/library/ui/a$d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1654
    :try_start_1
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$7;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->q(Lcom/smartadserver/android/library/ui/a;)Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->isVideo360Mode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1655
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$7;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->x(Lcom/smartadserver/android/library/ui/a;)Landroid/view/SurfaceView;

    move-result-object v0

    check-cast v0, Lcom/smartadserver/android/library/ui/a/b;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/a/b;->c()Landroid/view/Surface;

    move-result-object v0

    .line 1656
    iget-object v2, p0, Lcom/smartadserver/android/library/ui/a$7;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v2}, Lcom/smartadserver/android/library/ui/a;->c(Lcom/smartadserver/android/library/ui/a;)Lcom/smartadserver/android/library/ui/a$d;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/smartadserver/android/library/ui/a$d;->setSurface(Landroid/view/Surface;)V

    .line 1661
    :goto_0
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$7;->a:Lcom/smartadserver/android/library/ui/a;

    iget-boolean v0, v0, Lcom/smartadserver/android/library/ui/a;->g:Z

    if-eqz v0, :cond_2

    .line 1662
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$7;->a:Lcom/smartadserver/android/library/ui/a;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/smartadserver/android/library/ui/a;->g:Z

    .line 1663
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$7;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->c(Lcom/smartadserver/android/library/ui/a;)Lcom/smartadserver/android/library/ui/a$d;

    move-result-object v0

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a$d;->b(Lcom/smartadserver/android/library/ui/a$d;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1673
    :cond_0
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1674
    return-void

    .line 1658
    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$7;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->c(Lcom/smartadserver/android/library/ui/a;)Lcom/smartadserver/android/library/ui/a$d;

    move-result-object v0

    iget-object v2, p0, Lcom/smartadserver/android/library/ui/a$7;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v2}, Lcom/smartadserver/android/library/ui/a;->x(Lcom/smartadserver/android/library/ui/a;)Landroid/view/SurfaceView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/smartadserver/android/library/ui/a$d;->setDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1669
    :catch_0
    move-exception v0

    .line 1670
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1

    .line 1673
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 1664
    :cond_2
    :try_start_5
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$7;->a:Lcom/smartadserver/android/library/ui/a;

    iget-boolean v0, v0, Lcom/smartadserver/android/library/ui/a;->h:Z

    if-eqz v0, :cond_0

    .line 1665
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$7;->a:Lcom/smartadserver/android/library/ui/a;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/smartadserver/android/library/ui/a;->h:Z

    .line 1666
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$7;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/a;->a()V
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method
