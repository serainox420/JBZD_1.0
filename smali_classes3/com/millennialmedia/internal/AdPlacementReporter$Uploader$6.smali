.class final Lcom/millennialmedia/internal/AdPlacementReporter$Uploader$6;
.super Ljava/lang/Object;
.source "AdPlacementReporter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/AdPlacementReporter$Uploader;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 647
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 651
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader;->b()[Ljava/io/File;

    move-result-object v1

    .line 652
    sget-object v0, Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;->IDLE:Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;

    .line 654
    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getReportingBaseUrl()Ljava/lang/String;

    move-result-object v2

    .line 655
    if-nez v2, :cond_0

    .line 656
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unable to determine base url for request"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    :goto_0
    return-void

    .line 660
    :cond_0
    const-string v3, "/admax/sdk/report/2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 662
    array-length v3, v1

    if-lez v3, :cond_8

    .line 663
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader;->c()Ljava/lang/String;

    move-result-object v0

    .line 664
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 665
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unable to upload report -- siteId has not been set"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    sget-object v0, Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;->ERROR_SENDING_TO_SERVER:Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;

    .line 715
    :cond_1
    :goto_1
    invoke-static {v0}, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader;->a(Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;)V

    goto :goto_0

    .line 668
    :cond_2
    invoke-static {v1}, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader;->a([Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    .line 670
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "?dcn="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "application/json"

    .line 671
    invoke-static {v0, v3, v2}, Lcom/millennialmedia/internal/utils/HttpUtils;->getContentFromPostRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/millennialmedia/internal/utils/HttpUtils$Response;

    move-result-object v0

    .line 674
    iget v2, v0, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->code:I

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_5

    .line 675
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 676
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->e()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reporting successfully uploaded "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " events"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    :cond_3
    invoke-static {v1}, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader;->b([Ljava/io/File;)V

    .line 686
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->f()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getReportingBatchSize()I

    move-result v1

    if-lt v0, v1, :cond_4

    .line 687
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader;->a()V

    goto/16 :goto_0

    .line 693
    :cond_4
    sget-object v0, Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;->IDLE:Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;

    goto :goto_1

    .line 695
    :cond_5
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->isDeviceIdle()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 696
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->e()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reporting failed to upload with response code <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v0, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->code:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "> while in Doze mode"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    sget-object v0, Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;->ERROR_SENDING_TO_SERVER:Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;

    goto/16 :goto_1

    .line 701
    :cond_6
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->isNetworkAvailable()Z

    move-result v1

    if-nez v1, :cond_7

    .line 702
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Reporting failed to upload because network is unavailable"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    sget-object v0, Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;->ERROR_NETWORK_UNAVAILABLE:Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;

    goto/16 :goto_1

    .line 706
    :cond_7
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->e()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reporting failed to upload with response code <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v0, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->code:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ">"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    sget-object v0, Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;->ERROR_SENDING_TO_SERVER:Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;

    goto/16 :goto_1

    .line 710
    :cond_8
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 711
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Reporting found no events to upload"

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method
