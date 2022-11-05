.class Lcom/openx/model/video/VideoAdManager$6;
.super Ljava/lang/Object;
.source "VideoAdManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openx/model/video/VideoAdManager;->startUp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openx/model/video/VideoAdManager;


# direct methods
.method constructor <init>(Lcom/openx/model/video/VideoAdManager;)V
    .locals 0

    .prologue
    .line 1933
    iput-object p1, p0, Lcom/openx/model/video/VideoAdManager$6;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private trackEvent()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1938
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$6;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v0}, Lcom/openx/model/video/VideoAdManager;->access$3500(Lcom/openx/model/video/VideoAdManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1962
    :cond_0
    :goto_0
    return-void

    .line 1943
    :cond_1
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$6;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v0}, Lcom/openx/model/video/VideoAdManager;->access$1300(Lcom/openx/model/video/VideoAdManager;)D

    move-result-wide v0

    const-wide/high16 v2, 0x4039000000000000L    # 25.0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$6;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v0}, Lcom/openx/model/video/VideoAdManager;->access$1400(Lcom/openx/model/video/VideoAdManager;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1946
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$6;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v0, v4}, Lcom/openx/model/video/VideoAdManager;->access$1402(Lcom/openx/model/video/VideoAdManager;Z)Z

    .line 1947
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$6;->this$0:Lcom/openx/model/video/VideoAdManager;

    sget-object v1, Lcom/openx/model/video/VideoAdEvent$Event;->AD_FIRSTQUARTILE:Lcom/openx/model/video/VideoAdEvent$Event;

    invoke-static {v0, v1}, Lcom/openx/model/video/VideoAdManager;->access$1200(Lcom/openx/model/video/VideoAdManager;Lcom/openx/model/video/VideoAdEvent$Event;)V

    .line 1949
    :cond_2
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$6;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v0}, Lcom/openx/model/video/VideoAdManager;->access$1300(Lcom/openx/model/video/VideoAdManager;)D

    move-result-wide v0

    const-wide/high16 v2, 0x4049000000000000L    # 50.0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_3

    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$6;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v0}, Lcom/openx/model/video/VideoAdManager;->access$1500(Lcom/openx/model/video/VideoAdManager;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1952
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$6;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v0, v4}, Lcom/openx/model/video/VideoAdManager;->access$1502(Lcom/openx/model/video/VideoAdManager;Z)Z

    .line 1953
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$6;->this$0:Lcom/openx/model/video/VideoAdManager;

    sget-object v1, Lcom/openx/model/video/VideoAdEvent$Event;->AD_MIDPOINT:Lcom/openx/model/video/VideoAdEvent$Event;

    invoke-static {v0, v1}, Lcom/openx/model/video/VideoAdManager;->access$1200(Lcom/openx/model/video/VideoAdManager;Lcom/openx/model/video/VideoAdEvent$Event;)V

    .line 1955
    :cond_3
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$6;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v0}, Lcom/openx/model/video/VideoAdManager;->access$1300(Lcom/openx/model/video/VideoAdManager;)D

    move-result-wide v0

    const-wide v2, 0x4052c00000000000L    # 75.0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$6;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v0}, Lcom/openx/model/video/VideoAdManager;->access$1600(Lcom/openx/model/video/VideoAdManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1958
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$6;->this$0:Lcom/openx/model/video/VideoAdManager;

    sget-object v1, Lcom/openx/model/video/VideoAdEvent$Event;->AD_THIRDQUARTILE:Lcom/openx/model/video/VideoAdEvent$Event;

    invoke-static {v0, v1}, Lcom/openx/model/video/VideoAdManager;->access$1200(Lcom/openx/model/video/VideoAdManager;Lcom/openx/model/video/VideoAdEvent$Event;)V

    .line 1959
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$6;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v0, v4}, Lcom/openx/model/video/VideoAdManager;->access$1602(Lcom/openx/model/video/VideoAdManager;Z)Z

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    const-wide/16 v8, 0x0

    const/4 v6, 0x1

    .line 1966
    :goto_0
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$6;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v0}, Lcom/openx/model/video/VideoAdManager;->access$100(Lcom/openx/model/video/VideoAdManager;)I

    move-result v0

    if-eq v0, v6, :cond_c

    .line 1969
    const-string v0, "VAST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VideoAdManager running 0 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/openx/model/video/VideoAdManager$6;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v2}, Lcom/openx/model/video/VideoAdManager;->access$100(Lcom/openx/model/video/VideoAdManager;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1971
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$6;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v0}, Lcom/openx/model/video/VideoAdManager;->access$3600(Lcom/openx/model/video/VideoAdManager;)Lcom/openx/model/video/VideoAdManager$InterstitialThread;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1973
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$6;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v0}, Lcom/openx/model/video/VideoAdManager;->access$3600(Lcom/openx/model/video/VideoAdManager;)Lcom/openx/model/video/VideoAdManager$InterstitialThread;

    move-result-object v1

    monitor-enter v1

    .line 1976
    :goto_1
    :try_start_0
    invoke-static {}, Lcom/openx/model/video/VideoAdManager$InterstitialThread;->access$3700()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 1980
    :try_start_1
    const-string v0, "THREADS"

    const-string v2, "VideoAdManager running 0.5"

    invoke-static {v0, v2}, Lcom/openx/common/utils/logger/OXLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1982
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$6;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v0}, Lcom/openx/model/video/VideoAdManager;->access$3600(Lcom/openx/model/video/VideoAdManager;)Lcom/openx/model/video/VideoAdManager$InterstitialThread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1984
    :catch_0
    move-exception v0

    .line 1987
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 1991
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1994
    :cond_1
    invoke-static {}, Lcom/openx/model/video/VideoAdManager$InterstitialThread;->access$3700()Z

    move-result v0

    if-nez v0, :cond_6

    .line 2000
    :try_start_4
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$6;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v0}, Lcom/openx/model/video/VideoAdManager;->access$2600(Lcom/openx/model/video/VideoAdManager;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2003
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$6;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v0}, Lcom/openx/model/video/VideoAdManager;->access$000(Lcom/openx/model/video/VideoAdManager;)Landroid/widget/VideoView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2005
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$6;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v0}, Lcom/openx/model/video/VideoAdManager;->access$000(Lcom/openx/model/video/VideoAdManager;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2007
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$6;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v0}, Lcom/openx/model/video/VideoAdManager;->access$000(Lcom/openx/model/video/VideoAdManager;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    .line 2009
    if-lez v0, :cond_2

    iget-object v1, p0, Lcom/openx/model/video/VideoAdManager$6;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v1, v0}, Lcom/openx/model/video/VideoAdManager;->access$3002(Lcom/openx/model/video/VideoAdManager;I)I

    .line 2013
    :cond_2
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$6;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v0}, Lcom/openx/model/video/VideoAdManager;->access$000(Lcom/openx/model/video/VideoAdManager;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    int-to-double v0, v0

    iget-object v2, p0, Lcom/openx/model/video/VideoAdManager$6;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v2}, Lcom/openx/model/video/VideoAdManager;->access$000(Lcom/openx/model/video/VideoAdManager;)Landroid/widget/VideoView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/VideoView;->getDuration()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v0, v2

    mul-double/2addr v0, v10

    .line 2015
    iget-object v2, p0, Lcom/openx/model/video/VideoAdManager$6;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v2}, Lcom/openx/model/video/VideoAdManager;->access$1300(Lcom/openx/model/video/VideoAdManager;)D

    move-result-wide v2

    cmpg-double v2, v0, v2

    if-gez v2, :cond_3

    cmpl-double v2, v0, v8

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/openx/model/video/VideoAdManager$6;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v2}, Lcom/openx/model/video/VideoAdManager;->access$1300(Lcom/openx/model/video/VideoAdManager;)D

    move-result-wide v2

    cmpl-double v2, v2, v8

    if-lez v2, :cond_3

    .line 2029
    :cond_3
    iget-object v2, p0, Lcom/openx/model/video/VideoAdManager$6;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v2, v0, v1}, Lcom/openx/model/video/VideoAdManager;->access$1302(Lcom/openx/model/video/VideoAdManager;D)D
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_2

    .line 2089
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$6;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v0}, Lcom/openx/model/video/VideoAdManager;->access$2600(Lcom/openx/model/video/VideoAdManager;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$6;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v0}, Lcom/openx/model/video/VideoAdManager;->access$3900(Lcom/openx/model/video/VideoAdManager;)Lcom/openx/model/vast/VASTParser;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2091
    invoke-direct {p0}, Lcom/openx/model/video/VideoAdManager$6;->trackEvent()V

    .line 2094
    :cond_5
    const-string v0, "TRACKTIME"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isContentVideoPlaying: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/openx/model/video/VideoAdManager$6;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v2}, Lcom/openx/model/video/VideoAdManager;->access$2600(Lcom/openx/model/video/VideoAdManager;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " canTrackTimeOffsets: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/openx/model/video/VideoAdManager$6;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v2}, Lcom/openx/model/video/VideoAdManager;->access$4000(Lcom/openx/model/video/VideoAdManager;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  isContentPaused(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/openx/model/video/VideoAdManager$6;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v2}, Lcom/openx/model/video/VideoAdManager;->access$4100(Lcom/openx/model/video/VideoAdManager;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2096
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$6;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v0}, Lcom/openx/model/video/VideoAdManager;->access$2600(Lcom/openx/model/video/VideoAdManager;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$6;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v0}, Lcom/openx/model/video/VideoAdManager;->access$4000(Lcom/openx/model/video/VideoAdManager;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$6;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v0}, Lcom/openx/model/video/VideoAdManager;->access$4100(Lcom/openx/model/video/VideoAdManager;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 2098
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$6;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v0}, Lcom/openx/model/video/VideoAdManager;->access$4200(Lcom/openx/model/video/VideoAdManager;)V

    .line 2106
    :cond_6
    const-wide/16 v0, 0x3e8

    :try_start_5
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 2108
    :catch_1
    move-exception v0

    goto/16 :goto_0

    .line 2035
    :cond_7
    :try_start_6
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$6;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v0}, Lcom/openx/model/video/VideoAdManager;->access$000(Lcom/openx/model/video/VideoAdManager;)Landroid/widget/VideoView;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2038
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$6;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v0}, Lcom/openx/model/video/VideoAdManager;->access$000(Lcom/openx/model/video/VideoAdManager;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2041
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$6;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v0}, Lcom/openx/model/video/VideoAdManager;->access$000(Lcom/openx/model/video/VideoAdManager;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    .line 2043
    if-lez v0, :cond_8

    iget-object v1, p0, Lcom/openx/model/video/VideoAdManager$6;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v1, v0}, Lcom/openx/model/video/VideoAdManager;->access$3102(Lcom/openx/model/video/VideoAdManager;I)I

    .line 2046
    :cond_8
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$6;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v0}, Lcom/openx/model/video/VideoAdManager;->access$000(Lcom/openx/model/video/VideoAdManager;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    int-to-double v0, v0

    iget-object v2, p0, Lcom/openx/model/video/VideoAdManager$6;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v2}, Lcom/openx/model/video/VideoAdManager;->access$000(Lcom/openx/model/video/VideoAdManager;)Landroid/widget/VideoView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/VideoView;->getDuration()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v0, v2

    mul-double/2addr v0, v10

    .line 2048
    const-string v2, "DIF"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "quartiles: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/openx/model/video/VideoAdManager$6;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v4}, Lcom/openx/model/video/VideoAdManager;->access$1300(Lcom/openx/model/video/VideoAdManager;)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2055
    const-wide/high16 v2, 0x4039000000000000L    # 25.0

    cmpl-double v2, v0, v2

    if-ltz v2, :cond_9

    iget-object v2, p0, Lcom/openx/model/video/VideoAdManager$6;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v2}, Lcom/openx/model/video/VideoAdManager;->access$1300(Lcom/openx/model/video/VideoAdManager;)D

    move-result-wide v2

    sub-double v2, v0, v2

    iget-object v4, p0, Lcom/openx/model/video/VideoAdManager$6;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v4}, Lcom/openx/model/video/VideoAdManager;->access$3800(Lcom/openx/model/video/VideoAdManager;)D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-lez v2, :cond_9

    iget-object v2, p0, Lcom/openx/model/video/VideoAdManager$6;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v2}, Lcom/openx/model/video/VideoAdManager;->access$1400(Lcom/openx/model/video/VideoAdManager;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 2057
    const-string v2, "DIF"

    const-string v3, "q1 true"

    invoke-static {v2, v3}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2058
    iget-object v2, p0, Lcom/openx/model/video/VideoAdManager$6;->this$0:Lcom/openx/model/video/VideoAdManager;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/openx/model/video/VideoAdManager;->access$1402(Lcom/openx/model/video/VideoAdManager;Z)Z

    .line 2062
    :cond_9
    const-wide/high16 v2, 0x4049000000000000L    # 50.0

    cmpl-double v2, v0, v2

    if-ltz v2, :cond_a

    iget-object v2, p0, Lcom/openx/model/video/VideoAdManager$6;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v2}, Lcom/openx/model/video/VideoAdManager;->access$1300(Lcom/openx/model/video/VideoAdManager;)D

    move-result-wide v2

    sub-double v2, v0, v2

    iget-object v4, p0, Lcom/openx/model/video/VideoAdManager$6;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v4}, Lcom/openx/model/video/VideoAdManager;->access$3800(Lcom/openx/model/video/VideoAdManager;)D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-lez v2, :cond_a

    iget-object v2, p0, Lcom/openx/model/video/VideoAdManager$6;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v2}, Lcom/openx/model/video/VideoAdManager;->access$1500(Lcom/openx/model/video/VideoAdManager;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 2064
    const-string v2, "DIF"

    const-string v3, "q2 true"

    invoke-static {v2, v3}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2065
    iget-object v2, p0, Lcom/openx/model/video/VideoAdManager$6;->this$0:Lcom/openx/model/video/VideoAdManager;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/openx/model/video/VideoAdManager;->access$1502(Lcom/openx/model/video/VideoAdManager;Z)Z

    .line 2069
    :cond_a
    const-wide v2, 0x4052c00000000000L    # 75.0

    cmpl-double v2, v0, v2

    if-ltz v2, :cond_b

    iget-object v2, p0, Lcom/openx/model/video/VideoAdManager$6;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v2}, Lcom/openx/model/video/VideoAdManager;->access$1300(Lcom/openx/model/video/VideoAdManager;)D

    move-result-wide v2

    sub-double v2, v0, v2

    iget-object v4, p0, Lcom/openx/model/video/VideoAdManager$6;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v4}, Lcom/openx/model/video/VideoAdManager;->access$3800(Lcom/openx/model/video/VideoAdManager;)D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-lez v2, :cond_b

    iget-object v2, p0, Lcom/openx/model/video/VideoAdManager$6;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v2}, Lcom/openx/model/video/VideoAdManager;->access$1600(Lcom/openx/model/video/VideoAdManager;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 2072
    const-string v0, "DIF"

    const-string v1, "q3 true"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2073
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$6;->this$0:Lcom/openx/model/video/VideoAdManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/openx/model/video/VideoAdManager;->access$1602(Lcom/openx/model/video/VideoAdManager;Z)Z

    goto/16 :goto_2

    .line 2084
    :catch_2
    move-exception v0

    goto/16 :goto_2

    .line 2078
    :cond_b
    iget-object v2, p0, Lcom/openx/model/video/VideoAdManager$6;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v2, v0, v1}, Lcom/openx/model/video/VideoAdManager;->access$1302(Lcom/openx/model/video/VideoAdManager;D)D
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_2

    .line 2114
    :cond_c
    const-string v0, "VAST"

    const-string v1, "Terminating control thread."

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 2116
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$6;->this$0:Lcom/openx/model/video/VideoAdManager;

    invoke-static {v0, v6}, Lcom/openx/model/video/VideoAdManager;->access$102(Lcom/openx/model/video/VideoAdManager;I)I

    .line 2117
    iget-object v0, p0, Lcom/openx/model/video/VideoAdManager$6;->this$0:Lcom/openx/model/video/VideoAdManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/openx/model/video/VideoAdManager;->access$3602(Lcom/openx/model/video/VideoAdManager;Lcom/openx/model/video/VideoAdManager$InterstitialThread;)Lcom/openx/model/video/VideoAdManager$InterstitialThread;

    .line 2119
    return-void
.end method
