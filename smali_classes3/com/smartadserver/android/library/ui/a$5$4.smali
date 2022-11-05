.class Lcom/smartadserver/android/library/ui/a$5$4;
.super Ljava/lang/Object;
.source "SASNativeVideoLayer.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


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
    .line 1496
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/a$5$4;->a:Lcom/smartadserver/android/library/ui/a$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2

    .prologue
    .line 1527
    invoke-static {}, Lcom/smartadserver/android/library/ui/a;->j()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onSurfaceChanged"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1528
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    .prologue
    .line 1513
    invoke-static {}, Lcom/smartadserver/android/library/ui/a;->j()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onSurfaceCreated"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1519
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$5$4;->a:Lcom/smartadserver/android/library/ui/a$5;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/a$5;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->x(Lcom/smartadserver/android/library/ui/a;)Landroid/view/SurfaceView;

    move-result-object v0

    instance-of v0, v0, Lcom/smartadserver/android/library/ui/a/b;

    if-nez v0, :cond_0

    .line 1520
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$5$4;->a:Lcom/smartadserver/android/library/ui/a$5;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/a$5;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->k(Lcom/smartadserver/android/library/ui/a;)V

    .line 1522
    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3

    .prologue
    .line 1502
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$5$4;->a:Lcom/smartadserver/android/library/ui/a$5;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/a$5;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->b(Lcom/smartadserver/android/library/ui/a;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1503
    :try_start_0
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$5$4;->a:Lcom/smartadserver/android/library/ui/a$5;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/a$5;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->c(Lcom/smartadserver/android/library/ui/a;)Lcom/smartadserver/android/library/ui/a$d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$5$4;->a:Lcom/smartadserver/android/library/ui/a$5;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/a$5;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->c(Lcom/smartadserver/android/library/ui/a;)Lcom/smartadserver/android/library/ui/a$d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/a$d;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1504
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$5$4;->a:Lcom/smartadserver/android/library/ui/a$5;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/a$5;->a:Lcom/smartadserver/android/library/ui/a;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/smartadserver/android/library/ui/a;->g:Z

    .line 1505
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$5$4;->a:Lcom/smartadserver/android/library/ui/a$5;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/a$5;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->c(Lcom/smartadserver/android/library/ui/a;)Lcom/smartadserver/android/library/ui/a$d;

    move-result-object v0

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a$d;->a(Lcom/smartadserver/android/library/ui/a$d;)V

    .line 1507
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1508
    invoke-static {}, Lcom/smartadserver/android/library/ui/a;->j()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onSurfaceDestroyed"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1509
    return-void

    .line 1507
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
