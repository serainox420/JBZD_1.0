.class Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;
.super Ljava/lang/Object;
.source "VastVideoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mdotm/android/vast/VastVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImpressionItem"
.end annotation


# instance fields
.field public durationHalf:I

.field public durationQuarter:I

.field public durationThreeQuarter:I

.field public durationTotal:I

.field public isComplete:Z

.field public isHalf:Z

.field public isQuarter:Z

.field public isShowClose:Z

.field public isStart:Z

.field public isThreeQuarter:Z

.field final synthetic this$0:Lcom/mdotm/android/vast/VastVideoView;


# direct methods
.method public constructor <init>(Lcom/mdotm/android/vast/VastVideoView;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 254
    iput-object p1, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->this$0:Lcom/mdotm/android/vast/VastVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    iput-boolean v0, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->isQuarter:Z

    iput-boolean v0, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->isHalf:Z

    .line 251
    iput-boolean v0, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->isThreeQuarter:Z

    iput-boolean v0, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->isComplete:Z

    iput-boolean v0, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->isStart:Z

    .line 252
    iput-boolean v0, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->isShowClose:Z

    .line 255
    return-void
.end method

.method static synthetic access$0(Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 397
    invoke-direct {p0, p1}, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->sendImpression(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$1(Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;I)V
    .locals 0

    .prologue
    .line 257
    invoke-direct {p0, p1}, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->setImpressionTime(I)V

    return-void
.end method

.method static synthetic access$2(Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;)Lcom/mdotm/android/vast/VastVideoView;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->this$0:Lcom/mdotm/android/vast/VastVideoView;

    return-object v0
.end method

.method private sendImpression(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 399
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->this$0:Lcom/mdotm/android/vast/VastVideoView;

    invoke-static {v0}, Lcom/mdotm/android/vast/VastVideoView;->access$8(Lcom/mdotm/android/vast/VastVideoView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem$2;

    invoke-direct {v1, p0, p1}, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem$2;-><init>(Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 416
    return-void
.end method

.method private setImpressionTime(I)V
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->this$0:Lcom/mdotm/android/vast/VastVideoView;

    invoke-static {v0}, Lcom/mdotm/android/vast/VastVideoView;->access$0(Lcom/mdotm/android/vast/VastVideoView;)Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;

    move-result-object v0

    iput p1, v0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->durationTotal:I

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPrepared Duration = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 260
    iget-object v1, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->this$0:Lcom/mdotm/android/vast/VastVideoView;

    invoke-static {v1}, Lcom/mdotm/android/vast/VastVideoView;->access$0(Lcom/mdotm/android/vast/VastVideoView;)Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;

    move-result-object v1

    iget v1, v1, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->durationTotal:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 259
    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 261
    iget v0, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->durationTotal:I

    if-eqz v0, :cond_0

    .line 262
    iget v0, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->durationTotal:I

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->durationQuarter:I

    .line 263
    iget v0, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->durationTotal:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->durationHalf:I

    .line 264
    iget v0, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->durationTotal:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->durationThreeQuarter:I

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "quarter position = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->durationQuarter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "half position = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->durationHalf:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "three qurter position = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 268
    iget v1, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->durationThreeQuarter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 267
    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 269
    invoke-direct {p0}, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->setTimer()V

    .line 271
    :cond_0
    return-void
.end method

.method private setTimer()V
    .locals 6

    .prologue
    .line 274
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->this$0:Lcom/mdotm/android/vast/VastVideoView;

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    invoke-static {v0, v1}, Lcom/mdotm/android/vast/VastVideoView;->access$1(Lcom/mdotm/android/vast/VastVideoView;Ljava/util/Timer;)V

    .line 275
    const/4 v2, 0x0

    .line 276
    const/16 v4, 0x3e8

    .line 278
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->this$0:Lcom/mdotm/android/vast/VastVideoView;

    invoke-static {v0}, Lcom/mdotm/android/vast/VastVideoView;->access$2(Lcom/mdotm/android/vast/VastVideoView;)Ljava/util/Timer;

    move-result-object v0

    new-instance v1, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem$1;

    invoke-direct {v1, p0}, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem$1;-><init>(Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;)V

    .line 394
    int-to-long v2, v2

    int-to-long v4, v4

    .line 278
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 395
    return-void
.end method
