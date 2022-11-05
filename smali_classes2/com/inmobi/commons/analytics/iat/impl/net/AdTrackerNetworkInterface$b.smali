.class final Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface$b;
.super Landroid/os/Handler;
.source "AdTrackerNetworkInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 293
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 296
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 298
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 314
    :cond_0
    :goto_0
    return-void

    .line 302
    :pswitch_0
    const-string v0, "[InMobi]-[AdTracker]-4.5.5"

    const-string v1, "All goals reported ... De-initializing AdTrackerNetworkInterface!"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    invoke-static {}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->d()Landroid/os/HandlerThread;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 304
    invoke-static {}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->e()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 305
    invoke-static {}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->d()Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 306
    invoke-static {}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->d()Landroid/os/HandlerThread;

    move-result-object v0

    .line 307
    invoke-static {v2}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->a(Landroid/os/HandlerThread;)Landroid/os/HandlerThread;

    .line 308
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 309
    invoke-static {v2}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->a(Landroid/os/Handler;)Landroid/os/Handler;

    goto :goto_0

    .line 296
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
