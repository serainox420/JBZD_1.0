.class final Lcom/millennialmedia/internal/utils/ThreadUtils$1;
.super Ljava/lang/Thread;
.source "ThreadUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/utils/ThreadUtils;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/millennialmedia/internal/utils/ThreadUtils$1;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 55
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 56
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->a(Landroid/os/Handler;)Landroid/os/Handler;

    .line 58
    iget-object v0, p0, Lcom/millennialmedia/internal/utils/ThreadUtils$1;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 60
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 62
    return-void
.end method
