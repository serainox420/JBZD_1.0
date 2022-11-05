.class Lcom/openx/model/video/VideoPlayer$17;
.super Ljava/lang/Object;
.source "VideoPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openx/model/video/VideoPlayer;->touchDelayHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openx/model/video/VideoPlayer;


# direct methods
.method constructor <init>(Lcom/openx/model/video/VideoPlayer;)V
    .locals 0

    .prologue
    .line 1511
    iput-object p1, p0, Lcom/openx/model/video/VideoPlayer$17;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1517
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/openx/model/video/VideoPlayer$17;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-static {v2}, Lcom/openx/model/video/VideoPlayer;->access$2900(Lcom/openx/model/video/VideoPlayer;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 1519
    iget-object v2, p0, Lcom/openx/model/video/VideoPlayer$17;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-static {v2}, Lcom/openx/model/video/VideoPlayer;->access$700(Lcom/openx/model/video/VideoPlayer;)Z

    move-result v2

    if-nez v2, :cond_0

    const-wide/16 v2, 0xbb8

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 1522
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer$17;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-static {v0}, Lcom/openx/model/video/VideoPlayer;->access$3000(Lcom/openx/model/video/VideoPlayer;)V

    .line 1525
    :cond_0
    return-void
.end method
