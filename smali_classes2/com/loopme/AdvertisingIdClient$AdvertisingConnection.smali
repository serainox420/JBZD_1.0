.class final Lcom/loopme/AdvertisingIdClient$AdvertisingConnection;
.super Ljava/lang/Object;
.source "AdvertisingIdClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loopme/AdvertisingIdClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AdvertisingConnection"
.end annotation


# instance fields
.field private final mQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field mRetrieved:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loopme/AdvertisingIdClient$AdvertisingConnection;->mRetrieved:Z

    .line 76
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/loopme/AdvertisingIdClient$AdvertisingConnection;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    return-void
.end method

.method synthetic constructor <init>(Lcom/loopme/AdvertisingIdClient$1;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/loopme/AdvertisingIdClient$AdvertisingConnection;-><init>()V

    return-void
.end method


# virtual methods
.method public getBinder()Landroid/os/IBinder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/loopme/AdvertisingIdClient$AdvertisingConnection;->mRetrieved:Z

    if-eqz v0, :cond_0

    .line 92
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 94
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loopme/AdvertisingIdClient$AdvertisingConnection;->mRetrieved:Z

    .line 95
    iget-object v0, p0, Lcom/loopme/AdvertisingIdClient$AdvertisingConnection;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    return-object v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .prologue
    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/loopme/AdvertisingIdClient$AdvertisingConnection;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :goto_0
    return-void

    .line 82
    :catch_0
    move-exception v0

    .line 83
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .prologue
    .line 88
    return-void
.end method
