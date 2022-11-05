.class final Lcom/millennialmedia/internal/utils/ThreadUtils$2;
.super Ljava/lang/Object;
.source "ThreadUtils.java"

# interfaces
.implements Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnUiThreadDelayed(Ljava/lang/Runnable;J)Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/millennialmedia/internal/utils/ThreadUtils$2;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 154
    invoke-static {}, Lcom/millennialmedia/internal/utils/ThreadUtils;->a()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 155
    return-void
.end method

.method public run()V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/millennialmedia/internal/utils/ThreadUtils$2;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 148
    return-void
.end method
