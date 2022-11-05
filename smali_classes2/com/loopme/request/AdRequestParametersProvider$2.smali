.class Lcom/loopme/request/AdRequestParametersProvider$2;
.super Ljava/lang/Object;
.source "AdRequestParametersProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loopme/request/AdRequestParametersProvider;->getBatteryInfo(Landroid/content/Context;)[Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/loopme/request/AdRequestParametersProvider;

.field final synthetic val$monitor:Ljava/lang/Object;

.field final synthetic val$result:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/loopme/request/AdRequestParametersProvider;Ljava/lang/Object;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 374
    iput-object p1, p0, Lcom/loopme/request/AdRequestParametersProvider$2;->this$0:Lcom/loopme/request/AdRequestParametersProvider;

    iput-object p2, p0, Lcom/loopme/request/AdRequestParametersProvider$2;->val$monitor:Ljava/lang/Object;

    iput-object p3, p0, Lcom/loopme/request/AdRequestParametersProvider$2;->val$result:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 377
    iget-object v1, p0, Lcom/loopme/request/AdRequestParametersProvider$2;->val$monitor:Ljava/lang/Object;

    monitor-enter v1

    .line 378
    :try_start_0
    iget-object v0, p0, Lcom/loopme/request/AdRequestParametersProvider$2;->val$result:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    if-nez v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/loopme/request/AdRequestParametersProvider$2;->val$result:[Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "-1.0"

    aput-object v3, v0, v2

    .line 380
    iget-object v0, p0, Lcom/loopme/request/AdRequestParametersProvider$2;->val$result:[Ljava/lang/String;

    const/4 v2, 0x1

    const-string v3, "UNKNOWN"

    aput-object v3, v0, v2

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/loopme/request/AdRequestParametersProvider$2;->val$monitor:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 383
    monitor-exit v1

    .line 384
    return-void

    .line 383
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
