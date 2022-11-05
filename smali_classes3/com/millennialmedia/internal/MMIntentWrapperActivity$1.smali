.class final Lcom/millennialmedia/internal/MMIntentWrapperActivity$1;
.super Ljava/lang/Object;
.source "MMIntentWrapperActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/MMIntentWrapperActivity;->launch(Landroid/content/Context;Landroid/content/Intent;Lcom/millennialmedia/internal/MMIntentWrapperActivity$MMIntentWrapperListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/internal/MMIntentWrapperActivity$ActivityState;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/MMIntentWrapperActivity$ActivityState;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/millennialmedia/internal/MMIntentWrapperActivity$1;->a:Lcom/millennialmedia/internal/MMIntentWrapperActivity$ActivityState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/internal/MMIntentWrapperActivity$1;->a:Lcom/millennialmedia/internal/MMIntentWrapperActivity$ActivityState;

    iget-object v0, v0, Lcom/millennialmedia/internal/MMIntentWrapperActivity$ActivityState;->a:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v2, 0x1388

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/millennialmedia/internal/MMIntentWrapperActivity$1;->a:Lcom/millennialmedia/internal/MMIntentWrapperActivity$ActivityState;

    iget-object v0, v0, Lcom/millennialmedia/internal/MMIntentWrapperActivity$ActivityState;->b:Lcom/millennialmedia/internal/MMIntentWrapperActivity$MMIntentWrapperListener;

    const-string v1, "Failed to start activity"

    invoke-interface {v0, v1}, Lcom/millennialmedia/internal/MMIntentWrapperActivity$MMIntentWrapperListener;->onError(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 91
    :catch_0
    move-exception v0

    goto :goto_0
.end method
