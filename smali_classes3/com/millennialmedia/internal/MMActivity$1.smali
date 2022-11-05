.class final Lcom/millennialmedia/internal/MMActivity$1;
.super Ljava/lang/Object;
.source "MMActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/MMActivity;->launch(Landroid/content/Context;Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;Lcom/millennialmedia/internal/MMActivity$MMActivityListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/internal/MMActivity$ActivityState;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/MMActivity$ActivityState;)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lcom/millennialmedia/internal/MMActivity$1;->a:Lcom/millennialmedia/internal/MMActivity$ActivityState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 237
    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/internal/MMActivity$1;->a:Lcom/millennialmedia/internal/MMActivity$ActivityState;

    iget-object v0, v0, Lcom/millennialmedia/internal/MMActivity$ActivityState;->a:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v2, 0x1388

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/millennialmedia/internal/MMActivity$1;->a:Lcom/millennialmedia/internal/MMActivity$ActivityState;

    iget-object v0, v0, Lcom/millennialmedia/internal/MMActivity$ActivityState;->c:Lcom/millennialmedia/internal/MMActivity$MMActivityListener;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/MMActivity$MMActivityListener;->onLaunchFailed()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    :cond_0
    :goto_0
    return-void

    .line 241
    :catch_0
    move-exception v0

    goto :goto_0
.end method
