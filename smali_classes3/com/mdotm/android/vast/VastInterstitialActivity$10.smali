.class Lcom/mdotm/android/vast/VastInterstitialActivity$10;
.super Ljava/util/TimerTask;
.source "VastInterstitialActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mdotm/android/vast/VastInterstitialActivity;->setTimer(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mdotm/android/vast/VastInterstitialActivity;

.field private final synthetic val$duration:I

.field private final synthetic val$offset:I


# direct methods
.method constructor <init>(Lcom/mdotm/android/vast/VastInterstitialActivity;II)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$10;->this$0:Lcom/mdotm/android/vast/VastInterstitialActivity;

    iput p2, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$10;->val$duration:I

    iput p3, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$10;->val$offset:I

    .line 860
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/mdotm/android/vast/VastInterstitialActivity$10;)Lcom/mdotm/android/vast/VastInterstitialActivity;
    .locals 1

    .prologue
    .line 860
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$10;->this$0:Lcom/mdotm/android/vast/VastInterstitialActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 864
    :try_start_0
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$10;->this$0:Lcom/mdotm/android/vast/VastInterstitialActivity;

    invoke-static {v0}, Lcom/mdotm/android/vast/VastInterstitialActivity;->access$28(Lcom/mdotm/android/vast/VastInterstitialActivity;)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    add-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/mdotm/android/vast/VastInterstitialActivity;->access$29(Lcom/mdotm/android/vast/VastInterstitialActivity;J)V

    .line 865
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "icon duration offset  time runnig"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 866
    iget v1, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$10;->val$duration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$10;->val$offset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$10;->this$0:Lcom/mdotm/android/vast/VastInterstitialActivity;

    invoke-static {v1}, Lcom/mdotm/android/vast/VastInterstitialActivity;->access$28(Lcom/mdotm/android/vast/VastInterstitialActivity;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 865
    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 867
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$10;->this$0:Lcom/mdotm/android/vast/VastInterstitialActivity;

    invoke-static {v0}, Lcom/mdotm/android/vast/VastInterstitialActivity;->access$28(Lcom/mdotm/android/vast/VastInterstitialActivity;)J

    move-result-wide v0

    iget v2, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$10;->val$offset:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$10;->this$0:Lcom/mdotm/android/vast/VastInterstitialActivity;

    invoke-static {v0}, Lcom/mdotm/android/vast/VastInterstitialActivity;->access$30(Lcom/mdotm/android/vast/VastInterstitialActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 868
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$10;->this$0:Lcom/mdotm/android/vast/VastInterstitialActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mdotm/android/vast/VastInterstitialActivity;->access$31(Lcom/mdotm/android/vast/VastInterstitialActivity;Z)V

    .line 869
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$10;->this$0:Lcom/mdotm/android/vast/VastInterstitialActivity;

    invoke-static {v0}, Lcom/mdotm/android/vast/VastInterstitialActivity;->access$32(Lcom/mdotm/android/vast/VastInterstitialActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 870
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$10;->this$0:Lcom/mdotm/android/vast/VastInterstitialActivity;

    invoke-static {v0}, Lcom/mdotm/android/vast/VastInterstitialActivity;->access$32(Lcom/mdotm/android/vast/VastInterstitialActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 871
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$10;->this$0:Lcom/mdotm/android/vast/VastInterstitialActivity;

    invoke-static {v0}, Lcom/mdotm/android/vast/VastInterstitialActivity;->access$32(Lcom/mdotm/android/vast/VastInterstitialActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_3

    .line 878
    :cond_0
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$10;->this$0:Lcom/mdotm/android/vast/VastInterstitialActivity;

    new-instance v1, Lcom/mdotm/android/vast/VastInterstitialActivity$10$1;

    invoke-direct {v1, p0}, Lcom/mdotm/android/vast/VastInterstitialActivity$10$1;-><init>(Lcom/mdotm/android/vast/VastInterstitialActivity$10;)V

    invoke-virtual {v0, v1}, Lcom/mdotm/android/vast/VastInterstitialActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 887
    :cond_1
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$10;->this$0:Lcom/mdotm/android/vast/VastInterstitialActivity;

    invoke-static {v0}, Lcom/mdotm/android/vast/VastInterstitialActivity;->access$28(Lcom/mdotm/android/vast/VastInterstitialActivity;)J

    move-result-wide v0

    iget v2, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$10;->val$duration:I

    iget v3, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$10;->val$offset:I

    add-int/2addr v2, v3

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    .line 888
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$10;->this$0:Lcom/mdotm/android/vast/VastInterstitialActivity;

    new-instance v1, Lcom/mdotm/android/vast/VastInterstitialActivity$10$2;

    invoke-direct {v1, p0}, Lcom/mdotm/android/vast/VastInterstitialActivity$10$2;-><init>(Lcom/mdotm/android/vast/VastInterstitialActivity$10;)V

    invoke-virtual {v0, v1}, Lcom/mdotm/android/vast/VastInterstitialActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 894
    const-string v0, "icon duration is lesser then time"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 902
    :cond_2
    :goto_1
    return-void

    .line 872
    :cond_3
    invoke-static {}, Lcom/mdotm/android/utils/MdotMUtils;->getUtilsInstance()Lcom/mdotm/android/utils/MdotMUtils;

    move-result-object v2

    .line 873
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$10;->this$0:Lcom/mdotm/android/vast/VastInterstitialActivity;

    invoke-static {v0}, Lcom/mdotm/android/vast/VastInterstitialActivity;->access$32(Lcom/mdotm/android/vast/VastInterstitialActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$10;->this$0:Lcom/mdotm/android/vast/VastInterstitialActivity;

    invoke-virtual {v3}, Lcom/mdotm/android/vast/VastInterstitialActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 872
    invoke-virtual {v2, v0, v3}, Lcom/mdotm/android/utils/MdotMUtils;->reportImpression(Ljava/lang/String;Landroid/content/Context;)V

    .line 874
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "icon creativeview url"

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 875
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$10;->this$0:Lcom/mdotm/android/vast/VastInterstitialActivity;

    invoke-static {v0}, Lcom/mdotm/android/vast/VastInterstitialActivity;->access$32(Lcom/mdotm/android/vast/VastInterstitialActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 874
    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 871
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 899
    :catch_0
    move-exception v0

    .line 900
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
