.class Lcom/moat/analytics/mobile/aol/IntervalVideoTracker$1;
.super Ljava/lang/Object;
.source "IntervalVideoTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moat/analytics/mobile/aol/IntervalVideoTracker;->startTracking()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/moat/analytics/mobile/aol/IntervalVideoTracker;


# direct methods
.method constructor <init>(Lcom/moat/analytics/mobile/aol/IntervalVideoTracker;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/moat/analytics/mobile/aol/IntervalVideoTracker$1;->this$0:Lcom/moat/analytics/mobile/aol/IntervalVideoTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/IntervalVideoTracker$1;->this$0:Lcom/moat/analytics/mobile/aol/IntervalVideoTracker;

    iget-object v0, v0, Lcom/moat/analytics/mobile/aol/IntervalVideoTracker;->ad:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/IntervalVideoTracker$1;->this$0:Lcom/moat/analytics/mobile/aol/IntervalVideoTracker;

    invoke-virtual {v0}, Lcom/moat/analytics/mobile/aol/IntervalVideoTracker;->isDonePlayBack()Z

    move-result v0

    if-nez v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/IntervalVideoTracker$1;->this$0:Lcom/moat/analytics/mobile/aol/IntervalVideoTracker;

    invoke-virtual {v0}, Lcom/moat/analytics/mobile/aol/IntervalVideoTracker;->checkPlayback()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/IntervalVideoTracker$1;->this$0:Lcom/moat/analytics/mobile/aol/IntervalVideoTracker;

    iget-object v0, v0, Lcom/moat/analytics/mobile/aol/IntervalVideoTracker;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 112
    :goto_0
    return-void

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/IntervalVideoTracker$1;->this$0:Lcom/moat/analytics/mobile/aol/IntervalVideoTracker;

    invoke-virtual {v0}, Lcom/moat/analytics/mobile/aol/IntervalVideoTracker;->shutDown()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    iget-object v1, p0, Lcom/moat/analytics/mobile/aol/IntervalVideoTracker$1;->this$0:Lcom/moat/analytics/mobile/aol/IntervalVideoTracker;

    invoke-virtual {v1}, Lcom/moat/analytics/mobile/aol/IntervalVideoTracker;->shutDown()V

    .line 110
    invoke-static {v0}, Lcom/moat/analytics/mobile/aol/base/exception/Exceptions;->handleException(Ljava/lang/Exception;)V

    goto :goto_0

    .line 106
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/IntervalVideoTracker$1;->this$0:Lcom/moat/analytics/mobile/aol/IntervalVideoTracker;

    invoke-virtual {v0}, Lcom/moat/analytics/mobile/aol/IntervalVideoTracker;->shutDown()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
