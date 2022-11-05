.class Lcom/loopme/request/AdRequestParametersProvider$1;
.super Landroid/content/BroadcastReceiver;
.source "AdRequestParametersProvider.java"


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
    .line 337
    iput-object p1, p0, Lcom/loopme/request/AdRequestParametersProvider$1;->this$0:Lcom/loopme/request/AdRequestParametersProvider;

    iput-object p2, p0, Lcom/loopme/request/AdRequestParametersProvider$1;->val$monitor:Ljava/lang/Object;

    iput-object p3, p0, Lcom/loopme/request/AdRequestParametersProvider$1;->val$result:[Ljava/lang/String;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 340
    iget-object v1, p0, Lcom/loopme/request/AdRequestParametersProvider$1;->val$monitor:Ljava/lang/Object;

    monitor-enter v1

    .line 341
    :try_start_0
    const-string v0, "level"

    const/4 v2, -0x1

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 342
    const-string v2, "scale"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 343
    int-to-float v0, v0

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 344
    iget-object v2, p0, Lcom/loopme/request/AdRequestParametersProvider$1;->val$result:[Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    .line 346
    const-string v0, "plugged"

    const/4 v2, -0x1

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 347
    packed-switch v0, :pswitch_data_0

    .line 361
    :pswitch_0
    iget-object v0, p0, Lcom/loopme/request/AdRequestParametersProvider$1;->val$result:[Ljava/lang/String;

    const/4 v2, 0x1

    const-string v3, "CHRG"

    aput-object v3, v0, v2

    .line 363
    :goto_0
    iget-object v0, p0, Lcom/loopme/request/AdRequestParametersProvider$1;->val$monitor:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 364
    monitor-exit v1

    .line 365
    return-void

    .line 349
    :pswitch_1
    iget-object v0, p0, Lcom/loopme/request/AdRequestParametersProvider$1;->val$result:[Ljava/lang/String;

    const/4 v2, 0x1

    const-string v3, "NCHRG"

    aput-object v3, v0, v2

    goto :goto_0

    .line 364
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 352
    :pswitch_2
    :try_start_1
    iget-object v0, p0, Lcom/loopme/request/AdRequestParametersProvider$1;->val$result:[Ljava/lang/String;

    const/4 v2, 0x1

    const-string v3, "AC"

    aput-object v3, v0, v2

    goto :goto_0

    .line 355
    :pswitch_3
    iget-object v0, p0, Lcom/loopme/request/AdRequestParametersProvider$1;->val$result:[Ljava/lang/String;

    const/4 v2, 0x1

    const-string v3, "USB"

    aput-object v3, v0, v2

    goto :goto_0

    .line 358
    :pswitch_4
    iget-object v0, p0, Lcom/loopme/request/AdRequestParametersProvider$1;->val$result:[Ljava/lang/String;

    const/4 v2, 0x1

    const-string v3, "WL"

    aput-object v3, v0, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 347
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
