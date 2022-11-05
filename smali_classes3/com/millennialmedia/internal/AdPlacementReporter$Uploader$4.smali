.class final Lcom/millennialmedia/internal/AdPlacementReporter$Uploader$4;
.super Landroid/content/BroadcastReceiver;
.source "AdPlacementReporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/AdPlacementReporter$Uploader;->a(Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 596
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 600
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->isNetworkAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 601
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 602
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Reporting detected network is now available -- requesting upload"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    :cond_0
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 605
    sget-object v0, Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;->UPLOADING:Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;

    invoke-static {v0}, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader;->a(Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;)V

    .line 608
    :cond_1
    return-void
.end method
