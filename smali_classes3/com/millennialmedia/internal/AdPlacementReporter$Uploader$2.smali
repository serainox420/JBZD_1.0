.class final Lcom/millennialmedia/internal/AdPlacementReporter$Uploader$2;
.super Ljava/lang/Object;
.source "AdPlacementReporter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/AdPlacementReporter$Uploader;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 524
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 528
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 529
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Reporting startup -- requesting upload"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    :cond_0
    sget-object v0, Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;->UPLOADING:Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;

    invoke-static {v0}, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader;->a(Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;)V

    .line 533
    return-void
.end method
