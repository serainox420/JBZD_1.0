.class Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b$3;
.super Ljava/util/TimerTask;
.source "SASNativeVideoControlsLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;)V
    .locals 0

    .prologue
    .line 436
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b$3;->a:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 439
    monitor-enter p0

    .line 440
    :try_start_0
    invoke-static {}, Lcom/smartadserver/android/library/g/c;->h()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b$3$1;

    invoke-direct {v1, p0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b$3$1;-><init>(Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 449
    monitor-exit p0

    .line 450
    return-void

    .line 449
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
