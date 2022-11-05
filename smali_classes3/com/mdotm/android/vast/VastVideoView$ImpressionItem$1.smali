.class Lcom/mdotm/android/vast/VastVideoView$ImpressionItem$1;
.super Ljava/util/TimerTask;
.source "VastVideoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->setTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;


# direct methods
.method constructor <init>(Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem$1;->this$1:Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;

    .line 278
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 283
    :try_start_0
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem$1;->this$1:Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;

    invoke-static {v0}, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->access$2(Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;)Lcom/mdotm/android/vast/VastVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mdotm/android/vast/VastVideoView;->getCurrentPosition()I

    move-result v7

    .line 284
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem$1;->this$1:Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;

    invoke-static {v0}, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->access$2(Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;)Lcom/mdotm/android/vast/VastVideoView;

    move-result-object v0

    invoke-static {v0}, Lcom/mdotm/android/vast/VastVideoView;->access$3(Lcom/mdotm/android/vast/VastVideoView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem$1;->this$1:Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;

    invoke-static {v0}, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->access$2(Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;)Lcom/mdotm/android/vast/VastVideoView;

    move-result-object v0

    invoke-static {v0}, Lcom/mdotm/android/vast/VastVideoView;->access$4(Lcom/mdotm/android/vast/VastVideoView;)Lcom/mdotm/android/listener/InterstitialVideoListener;

    move-result-object v0

    iget-object v1, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem$1;->this$1:Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;

    invoke-static {v1}, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->access$2(Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;)Lcom/mdotm/android/vast/VastVideoView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mdotm/android/vast/VastVideoView;->getDuration()I

    move-result v1

    sub-int/2addr v1, v7

    div-int/lit16 v1, v1, 0x3e8

    iget-object v2, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem$1;->this$1:Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;

    invoke-static {v2}, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->access$2(Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;)Lcom/mdotm/android/vast/VastVideoView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mdotm/android/vast/VastVideoView;->getDuration()I

    move-result v2

    iget-object v3, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem$1;->this$1:Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;

    invoke-static {v3}, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->access$2(Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;)Lcom/mdotm/android/vast/VastVideoView;

    move-result-object v3

    invoke-static {v3}, Lcom/mdotm/android/vast/VastVideoView;->access$5(Lcom/mdotm/android/vast/VastVideoView;)Lcom/mdotm/android/vast/LinearAd;

    move-result-object v3

    iget-object v3, v3, Lcom/mdotm/android/vast/LinearAd;->counteroffset:Ljava/lang/String;

    iget-object v4, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem$1;->this$1:Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;

    invoke-static {v4}, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->access$2(Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;)Lcom/mdotm/android/vast/VastVideoView;

    move-result-object v4

    invoke-static {v4}, Lcom/mdotm/android/vast/VastVideoView;->access$5(Lcom/mdotm/android/vast/VastVideoView;)Lcom/mdotm/android/vast/LinearAd;

    move-result-object v4

    iget-object v4, v4, Lcom/mdotm/android/vast/LinearAd;->countersize:Ljava/lang/String;

    iget-object v5, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem$1;->this$1:Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;

    invoke-static {v5}, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->access$2(Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;)Lcom/mdotm/android/vast/VastVideoView;

    move-result-object v5

    invoke-static {v5}, Lcom/mdotm/android/vast/VastVideoView;->access$5(Lcom/mdotm/android/vast/VastVideoView;)Lcom/mdotm/android/vast/LinearAd;

    move-result-object v5

    iget-object v5, v5, Lcom/mdotm/android/vast/LinearAd;->counterstroke:Ljava/lang/String;

    invoke-interface/range {v0 .. v5}, Lcom/mdotm/android/listener/InterstitialVideoListener;->decrementCounter(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "position "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 288
    if-lez v7, :cond_1

    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem$1;->this$1:Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;

    iget-boolean v0, v0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->isStart:Z

    if-nez v0, :cond_1

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "video play start :: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 290
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 289
    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem$1;->this$1:Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->isStart:Z

    .line 296
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mAdResponse.skipOffset"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 297
    iget-object v1, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem$1;->this$1:Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;

    invoke-static {v1}, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->access$2(Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;)Lcom/mdotm/android/vast/VastVideoView;

    move-result-object v1

    invoke-static {v1}, Lcom/mdotm/android/vast/VastVideoView;->access$5(Lcom/mdotm/android/vast/VastVideoView;)Lcom/mdotm/android/vast/LinearAd;

    move-result-object v1

    iget-object v1, v1, Lcom/mdotm/android/vast/LinearAd;->skipOffset:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 296
    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 298
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem$1;->this$1:Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;

    invoke-static {v0}, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->access$2(Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;)Lcom/mdotm/android/vast/VastVideoView;

    move-result-object v0

    invoke-static {v0}, Lcom/mdotm/android/vast/VastVideoView;->access$5(Lcom/mdotm/android/vast/VastVideoView;)Lcom/mdotm/android/vast/LinearAd;

    move-result-object v0

    iget-object v0, v0, Lcom/mdotm/android/vast/LinearAd;->skipOffset:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mAdResponse.skipOffset"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 301
    iget-object v1, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem$1;->this$1:Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;

    invoke-static {v1}, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->access$2(Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;)Lcom/mdotm/android/vast/VastVideoView;

    move-result-object v1

    invoke-static {v1}, Lcom/mdotm/android/vast/VastVideoView;->access$5(Lcom/mdotm/android/vast/VastVideoView;)Lcom/mdotm/android/vast/LinearAd;

    move-result-object v1

    iget-object v1, v1, Lcom/mdotm/android/vast/LinearAd;->skipOffset:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 300
    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem$1;->this$1:Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;

    invoke-static {v0}, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->access$2(Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;)Lcom/mdotm/android/vast/VastVideoView;

    move-result-object v0

    invoke-static {v0}, Lcom/mdotm/android/vast/VastVideoView;->access$5(Lcom/mdotm/android/vast/VastVideoView;)Lcom/mdotm/android/vast/LinearAd;

    move-result-object v0

    iget-object v0, v0, Lcom/mdotm/android/vast/LinearAd;->skipOffset:Ljava/lang/String;

    .line 303
    const-string v1, "[0-9]{2}:[0-9]{2}:[0-9]{2}[.]*[0-9]*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 306
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem$1;->this$1:Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;

    invoke-static {v0}, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->access$2(Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;)Lcom/mdotm/android/vast/VastVideoView;

    move-result-object v0

    invoke-static {v0}, Lcom/mdotm/android/vast/VastVideoView;->access$5(Lcom/mdotm/android/vast/VastVideoView;)Lcom/mdotm/android/vast/LinearAd;

    move-result-object v0

    iget-object v0, v0, Lcom/mdotm/android/vast/LinearAd;->skipOffset:Ljava/lang/String;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 307
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit16 v1, v1, 0xe10

    .line 308
    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x3c

    .line 307
    add-int/2addr v1, v2

    .line 310
    const/4 v2, 0x2

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    double-to-int v0, v2

    .line 307
    add-int/2addr v0, v1

    .line 327
    :goto_0
    mul-int/lit16 v1, v0, 0x3e8

    add-int/lit16 v1, v1, -0x1f4

    if-gt v1, v7, :cond_2

    .line 328
    iget-object v1, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem$1;->this$1:Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->isShowClose:Z

    .line 330
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "showng close btn after sec"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 329
    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 331
    iget-object v1, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem$1;->this$1:Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;

    invoke-static {v1}, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->access$2(Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;)Lcom/mdotm/android/vast/VastVideoView;

    move-result-object v1

    invoke-static {v1}, Lcom/mdotm/android/vast/VastVideoView;->access$4(Lcom/mdotm/android/vast/VastVideoView;)Lcom/mdotm/android/listener/InterstitialVideoListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/mdotm/android/listener/InterstitialVideoListener;->showCloseButton()V

    .line 334
    :cond_2
    iget-object v1, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem$1;->this$1:Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;

    invoke-static {v1}, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->access$2(Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;)Lcom/mdotm/android/vast/VastVideoView;

    move-result-object v1

    invoke-static {v1}, Lcom/mdotm/android/vast/VastVideoView;->access$6(Lcom/mdotm/android/vast/VastVideoView;)I

    move-result v1

    if-gt v1, v0, :cond_3

    .line 336
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "duration is smaller than offset"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 337
    iget-object v2, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem$1;->this$1:Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;

    invoke-static {v2}, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->access$2(Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;)Lcom/mdotm/android/vast/VastVideoView;

    move-result-object v2

    invoke-static {v2}, Lcom/mdotm/android/vast/VastVideoView;->access$6(Lcom/mdotm/android/vast/VastVideoView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 336
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 335
    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 338
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem$1;->this$1:Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;

    invoke-static {v0}, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->access$2(Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;)Lcom/mdotm/android/vast/VastVideoView;

    move-result-object v0

    invoke-static {v0}, Lcom/mdotm/android/vast/VastVideoView;->access$6(Lcom/mdotm/android/vast/VastVideoView;)I

    move-result v0

    .line 339
    iget-object v1, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem$1;->this$1:Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;

    invoke-static {v1}, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->access$2(Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;)Lcom/mdotm/android/vast/VastVideoView;

    move-result-object v1

    invoke-static {v1}, Lcom/mdotm/android/vast/VastVideoView;->access$6(Lcom/mdotm/android/vast/VastVideoView;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    mul-int/lit16 v1, v1, 0x3e8

    if-gt v1, v7, :cond_3

    .line 340
    iget-object v1, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem$1;->this$1:Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->isShowClose:Z

    .line 342
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "showng close btn after sec"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 343
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 342
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 341
    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem$1;->this$1:Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;

    invoke-static {v0}, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->access$2(Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;)Lcom/mdotm/android/vast/VastVideoView;

    move-result-object v0

    invoke-static {v0}, Lcom/mdotm/android/vast/VastVideoView;->access$4(Lcom/mdotm/android/vast/VastVideoView;)Lcom/mdotm/android/listener/InterstitialVideoListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mdotm/android/listener/InterstitialVideoListener;->showCloseButton()V

    .line 362
    :cond_3
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "position"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getDuration"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem$1;->this$1:Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;

    invoke-static {v1}, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->access$2(Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;)Lcom/mdotm/android/vast/VastVideoView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mdotm/android/vast/VastVideoView;->getDuration()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem$1;->this$1:Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;

    iget v0, v0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->durationQuarter:I

    mul-int/lit16 v0, v0, 0x3e8

    if-lt v7, v0, :cond_8

    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem$1;->this$1:Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;

    iget-boolean v0, v0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->isQuarter:Z

    if-nez v0, :cond_8

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "quarter position crossed ::"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 367
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 366
    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 368
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem$1;->this$1:Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->isQuarter:Z

    .line 369
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem$1;->this$1:Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;

    invoke-static {v0}, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->access$2(Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;)Lcom/mdotm/android/vast/VastVideoView;

    move-result-object v0

    invoke-static {v0}, Lcom/mdotm/android/vast/VastVideoView;->access$7(Lcom/mdotm/android/vast/VastVideoView;)Lcom/mdotm/android/vast/LinearAdTrackingEvents;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 370
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem$1;->this$1:Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;

    iget-object v1, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem$1;->this$1:Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;

    invoke-static {v1}, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->access$2(Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;)Lcom/mdotm/android/vast/VastVideoView;

    move-result-object v1

    invoke-static {v1}, Lcom/mdotm/android/vast/VastVideoView;->access$7(Lcom/mdotm/android/vast/VastVideoView;)Lcom/mdotm/android/vast/LinearAdTrackingEvents;

    move-result-object v1

    iget-object v1, v1, Lcom/mdotm/android/vast/LinearAdTrackingEvents;->firstQuartile:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->access$0(Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;Ljava/util/ArrayList;)V

    .line 392
    :cond_4
    :goto_2
    return-void

    .line 314
    :cond_5
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem$1;->this$1:Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;

    invoke-static {v0}, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->access$2(Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;)Lcom/mdotm/android/vast/VastVideoView;

    move-result-object v0

    invoke-static {v0}, Lcom/mdotm/android/vast/VastVideoView;->access$5(Lcom/mdotm/android/vast/VastVideoView;)Lcom/mdotm/android/vast/LinearAd;

    move-result-object v0

    iget-object v0, v0, Lcom/mdotm/android/vast/LinearAd;->skipOffset:Ljava/lang/String;

    const-string v1, "[0-9]+%"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 315
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem$1;->this$1:Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;

    invoke-static {v0}, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->access$2(Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;)Lcom/mdotm/android/vast/VastVideoView;

    move-result-object v0

    invoke-static {v0}, Lcom/mdotm/android/vast/VastVideoView;->access$5(Lcom/mdotm/android/vast/VastVideoView;)Lcom/mdotm/android/vast/LinearAd;

    move-result-object v0

    iget-object v0, v0, Lcom/mdotm/android/vast/LinearAd;->skipOffset:Ljava/lang/String;

    .line 316
    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 318
    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 319
    iget-object v1, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem$1;->this$1:Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;

    invoke-static {v1}, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->access$2(Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;)Lcom/mdotm/android/vast/VastVideoView;

    move-result-object v1

    invoke-static {v1}, Lcom/mdotm/android/vast/VastVideoView;->access$6(Lcom/mdotm/android/vast/VastVideoView;)I

    move-result v1

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x64

    .line 321
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "showng close btn after sec"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 320
    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 389
    :catch_0
    move-exception v0

    .line 390
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 322
    :cond_6
    :try_start_1
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem$1;->this$1:Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;

    invoke-static {v0}, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->access$2(Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;)Lcom/mdotm/android/vast/VastVideoView;

    move-result-object v0

    invoke-static {v0}, Lcom/mdotm/android/vast/VastVideoView;->access$5(Lcom/mdotm/android/vast/VastVideoView;)Lcom/mdotm/android/vast/LinearAd;

    move-result-object v0

    iget-object v0, v0, Lcom/mdotm/android/vast/LinearAd;->skipOffset:Ljava/lang/String;

    const-string v1, "[0-9]+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 324
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem$1;->this$1:Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;

    invoke-static {v0}, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->access$2(Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;)Lcom/mdotm/android/vast/VastVideoView;

    move-result-object v0

    invoke-static {v0}, Lcom/mdotm/android/vast/VastVideoView;->access$5(Lcom/mdotm/android/vast/VastVideoView;)Lcom/mdotm/android/vast/LinearAd;

    move-result-object v0

    iget-object v0, v0, Lcom/mdotm/android/vast/LinearAd;->skipOffset:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 347
    :cond_7
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem$1;->this$1:Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;

    invoke-static {v0}, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->access$2(Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;)Lcom/mdotm/android/vast/VastVideoView;

    move-result-object v0

    invoke-static {v0}, Lcom/mdotm/android/vast/VastVideoView;->access$3(Lcom/mdotm/android/vast/VastVideoView;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 351
    const/16 v0, 0x1388

    if-lt v7, v0, :cond_3

    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem$1;->this$1:Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;

    iget-boolean v0, v0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->isShowClose:Z

    if-nez v0, :cond_3

    .line 352
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem$1;->this$1:Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->isShowClose:Z

    .line 353
    const-string v0, "calling show close btn"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 354
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem$1;->this$1:Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;

    invoke-static {v0}, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->access$2(Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;)Lcom/mdotm/android/vast/VastVideoView;

    move-result-object v0

    invoke-static {v0}, Lcom/mdotm/android/vast/VastVideoView;->access$4(Lcom/mdotm/android/vast/VastVideoView;)Lcom/mdotm/android/listener/InterstitialVideoListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mdotm/android/listener/InterstitialVideoListener;->showCloseButton()V

    goto/16 :goto_1

    .line 372
    :cond_8
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem$1;->this$1:Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;

    iget v0, v0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->durationHalf:I

    mul-int/lit16 v0, v0, 0x3e8

    if-lt v7, v0, :cond_9

    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem$1;->this$1:Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;

    iget-boolean v0, v0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->isHalf:Z

    if-nez v0, :cond_9

    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "half position crossed :: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 374
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 373
    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 375
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem$1;->this$1:Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->isHalf:Z

    .line 376
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem$1;->this$1:Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;

    invoke-static {v0}, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->access$2(Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;)Lcom/mdotm/android/vast/VastVideoView;

    move-result-object v0

    invoke-static {v0}, Lcom/mdotm/android/vast/VastVideoView;->access$7(Lcom/mdotm/android/vast/VastVideoView;)Lcom/mdotm/android/vast/LinearAdTrackingEvents;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 377
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem$1;->this$1:Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;

    iget-object v1, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem$1;->this$1:Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;

    invoke-static {v1}, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->access$2(Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;)Lcom/mdotm/android/vast/VastVideoView;

    move-result-object v1

    invoke-static {v1}, Lcom/mdotm/android/vast/VastVideoView;->access$7(Lcom/mdotm/android/vast/VastVideoView;)Lcom/mdotm/android/vast/LinearAdTrackingEvents;

    move-result-object v1

    iget-object v1, v1, Lcom/mdotm/android/vast/LinearAdTrackingEvents;->midPoint:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->access$0(Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;Ljava/util/ArrayList;)V

    goto/16 :goto_2

    .line 379
    :cond_9
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem$1;->this$1:Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;

    iget v0, v0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->durationThreeQuarter:I

    mul-int/lit16 v0, v0, 0x3e8

    if-lt v7, v0, :cond_4

    .line 380
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem$1;->this$1:Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;

    iget-boolean v0, v0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->isThreeQuarter:Z

    if-nez v0, :cond_4

    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "three qurter position crossed ::"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 383
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 382
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 381
    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 384
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem$1;->this$1:Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->isThreeQuarter:Z

    .line 385
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem$1;->this$1:Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;

    invoke-static {v0}, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->access$2(Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;)Lcom/mdotm/android/vast/VastVideoView;

    move-result-object v0

    invoke-static {v0}, Lcom/mdotm/android/vast/VastVideoView;->access$7(Lcom/mdotm/android/vast/VastVideoView;)Lcom/mdotm/android/vast/LinearAdTrackingEvents;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 386
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem$1;->this$1:Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;

    iget-object v1, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem$1;->this$1:Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;

    invoke-static {v1}, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->access$2(Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;)Lcom/mdotm/android/vast/VastVideoView;

    move-result-object v1

    invoke-static {v1}, Lcom/mdotm/android/vast/VastVideoView;->access$7(Lcom/mdotm/android/vast/VastVideoView;)Lcom/mdotm/android/vast/LinearAdTrackingEvents;

    move-result-object v1

    iget-object v1, v1, Lcom/mdotm/android/vast/LinearAdTrackingEvents;->thirdQuartile:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->access$0(Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    :cond_a
    move v0, v6

    goto/16 :goto_0
.end method
