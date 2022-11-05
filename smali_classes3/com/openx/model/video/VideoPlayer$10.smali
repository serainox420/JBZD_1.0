.class Lcom/openx/model/video/VideoPlayer$10;
.super Ljava/lang/Object;
.source "VideoPlayer.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openx/model/video/VideoPlayer;->setCustomSeekbar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private lastPosition:I

.field final synthetic this$0:Lcom/openx/model/video/VideoPlayer;


# direct methods
.method constructor <init>(Lcom/openx/model/video/VideoPlayer;)V
    .locals 0

    .prologue
    .line 920
    iput-object p1, p0, Lcom/openx/model/video/VideoPlayer$10;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3

    .prologue
    .line 1079
    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer$10;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-static {v0}, Lcom/openx/model/video/VideoPlayer;->access$2400(Lcom/openx/model/video/VideoPlayer;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1083
    :try_start_0
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer$10;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-static {v0}, Lcom/openx/model/video/VideoPlayer;->access$300(Lcom/openx/model/video/VideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1085
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer$10;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-static {v0}, Lcom/openx/model/video/VideoPlayer;->access$300(Lcom/openx/model/video/VideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 1088
    :cond_0
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer$10;->this$0:Lcom/openx/model/video/VideoPlayer;

    iget-object v1, p0, Lcom/openx/model/video/VideoPlayer$10;->this$0:Lcom/openx/model/video/VideoPlayer;

    div-int/lit16 v2, p2, 0x3e8

    invoke-static {v1, v2}, Lcom/openx/model/video/VideoPlayer;->access$1000(Lcom/openx/model/video/VideoPlayer;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/openx/model/video/VideoPlayer;->access$1200(Lcom/openx/model/video/VideoPlayer;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1096
    :cond_1
    :goto_0
    return-void

    .line 1090
    :catch_0
    move-exception v0

    .line 1092
    const-string v0, "VideoPlayer"

    const-string v1, "ILLEGALSTATE: onProgressChanged 1"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4

    .prologue
    .line 1036
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer$10;->this$0:Lcom/openx/model/video/VideoPlayer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/openx/model/video/VideoPlayer;->access$2302(Lcom/openx/model/video/VideoPlayer;Z)Z

    .line 1038
    new-instance v0, Lcom/openx/model/video/VideoPlayer$10$2;

    invoke-direct {v0, p0}, Lcom/openx/model/video/VideoPlayer$10$2;-><init>(Lcom/openx/model/video/VideoPlayer$10;)V

    new-instance v1, Lcom/openx/model/video/VideoPlayer$10$1;

    invoke-direct {v1, p0}, Lcom/openx/model/video/VideoPlayer$10$1;-><init>(Lcom/openx/model/video/VideoPlayer$10;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Lcom/openx/model/video/VideoPlayer$10$2;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1051
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer$10;->this$0:Lcom/openx/model/video/VideoPlayer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/openx/model/video/VideoPlayer;->access$702(Lcom/openx/model/video/VideoPlayer;Z)Z

    .line 1053
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer$10;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-static {v0}, Lcom/openx/model/video/VideoPlayer;->access$2100(Lcom/openx/model/video/VideoPlayer;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1055
    const-string v0, "VideoPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "START: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1057
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iput v0, p0, Lcom/openx/model/video/VideoPlayer$10;->lastPosition:I

    .line 1059
    const-string v0, "VideoPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startTrack? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/openx/model/video/VideoPlayer$10;->lastPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1063
    :try_start_0
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer$10;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-static {v0}, Lcom/openx/model/video/VideoPlayer;->access$300(Lcom/openx/model/video/VideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1065
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer$10;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-static {v0}, Lcom/openx/model/video/VideoPlayer;->access$300(Lcom/openx/model/video/VideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1073
    :cond_0
    :goto_0
    return-void

    .line 1068
    :catch_0
    move-exception v0

    .line 1070
    const-string v0, "VideoPlayer"

    const-string v1, "ILLEGALSTATE: onStartTrackingTouch 1"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3

    .prologue
    .line 928
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer$10;->this$0:Lcom/openx/model/video/VideoPlayer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/openx/model/video/VideoPlayer;->access$702(Lcom/openx/model/video/VideoPlayer;Z)Z

    .line 930
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 932
    const-string v0, "VideoPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "STOP: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    const-string v0, "VideoPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "url: lastPosition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/openx/model/video/VideoPlayer$10;->lastPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " seekbar is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " can seek? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/openx/model/video/VideoPlayer$10;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-static {v2}, Lcom/openx/model/video/VideoPlayer;->access$2300(Lcom/openx/model/video/VideoPlayer;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 940
    iget v0, p0, Lcom/openx/model/video/VideoPlayer$10;->lastPosition:I

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer$10;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-static {v0}, Lcom/openx/model/video/VideoPlayer;->access$2300(Lcom/openx/model/video/VideoPlayer;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 942
    const-string v0, "VideoPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rewinding?  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/openx/model/video/VideoPlayer$10;->lastPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 943
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer$10;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-static {v0}, Lcom/openx/model/video/VideoPlayer;->access$1900(Lcom/openx/model/video/VideoPlayer;)Lcom/openx/model/vast/VASTInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/openx/model/vast/VASTInterface;->rewind()V

    .line 947
    :try_start_0
    const-string v0, "VideoPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "seekBar.getProgress(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 948
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer$10;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-static {v0}, Lcom/openx/model/video/VideoPlayer;->access$300(Lcom/openx/model/video/VideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 998
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer$10;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-static {v0}, Lcom/openx/model/video/VideoPlayer;->access$500(Lcom/openx/model/video/VideoPlayer;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer$10;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-static {v0}, Lcom/openx/model/video/VideoPlayer;->access$400(Lcom/openx/model/video/VideoPlayer;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1003
    :try_start_1
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer$10;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-static {v0}, Lcom/openx/model/video/VideoPlayer;->access$300(Lcom/openx/model/video/VideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_3

    .line 1010
    :goto_1
    const-string v0, "VideoPlayer"

    const-string v1, "stopTrackingTouch"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    const-string v0, "VideoPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fastforward? SOUGHT 1 :::: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/openx/model/video/VideoPlayer$10;->lastPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1031
    :cond_1
    return-void

    .line 950
    :catch_0
    move-exception v0

    .line 952
    const-string v0, "VideoPlayer"

    const-string v1, "ILLEGALSTATE: onStopTrackingTouch 4"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 958
    :cond_2
    const-string v0, "VideoPlayer"

    const-string v1, "fastforward "

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 959
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer$10;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-static {v0}, Lcom/openx/model/video/VideoPlayer;->access$2400(Lcom/openx/model/video/VideoPlayer;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer$10;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-static {v0}, Lcom/openx/model/video/VideoPlayer;->access$600(Lcom/openx/model/video/VideoPlayer;)Lcom/openx/model/video/VideoAdManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openx/model/video/VideoAdManager;->getIsContentVideoPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 962
    :cond_3
    const-string v0, "VideoPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fastforward? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/openx/model/video/VideoPlayer$10;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-static {v2}, Lcom/openx/model/video/VideoPlayer;->access$600(Lcom/openx/model/video/VideoPlayer;)Lcom/openx/model/video/VideoAdManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/openx/model/video/VideoAdManager;->getIsContentVideoPlaying()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/openx/model/video/VideoPlayer$10;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-static {v2}, Lcom/openx/model/video/VideoPlayer;->access$2400(Lcom/openx/model/video/VideoPlayer;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 964
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer$10;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-static {v0}, Lcom/openx/model/video/VideoPlayer;->access$600(Lcom/openx/model/video/VideoPlayer;)Lcom/openx/model/video/VideoAdManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openx/model/video/VideoAdManager;->getIsContentVideoPlaying()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer$10;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-static {v0}, Lcom/openx/model/video/VideoPlayer;->access$2400(Lcom/openx/model/video/VideoPlayer;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 970
    :try_start_2
    const-string v0, "VideoPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lastPosition 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/openx/model/video/VideoPlayer$10;->lastPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 971
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer$10;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-static {v0}, Lcom/openx/model/video/VideoPlayer;->access$300(Lcom/openx/model/video/VideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    iget v1, p0, Lcom/openx/model/video/VideoPlayer$10;->lastPosition:I

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    .line 978
    :goto_2
    const-string v0, "VideoPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fastforward? SOUGHT 0 :::: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/openx/model/video/VideoPlayer$10;->lastPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 973
    :catch_1
    move-exception v0

    .line 975
    const-string v0, "VideoPlayer"

    const-string v1, "ILLEGALSTATE: onStopTrackingTouch 1"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 986
    :cond_4
    :try_start_3
    const-string v0, "VideoPlayer"

    const-string v1, "lastPosition 1"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    iget-object v0, p0, Lcom/openx/model/video/VideoPlayer$10;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-static {v0}, Lcom/openx/model/video/VideoPlayer;->access$300(Lcom/openx/model/video/VideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 989
    :catch_2
    move-exception v0

    .line 991
    const-string v0, "VideoPlayer"

    const-string v1, "ILLEGALSTATE: onStopTrackingTouch 2"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1005
    :catch_3
    move-exception v0

    .line 1007
    const-string v0, "VideoPlayer"

    const-string v1, "ILLEGALSTATE: onStopTrackingTouch 3"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method
