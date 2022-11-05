.class public Lcom/millennialmedia/internal/AdPlacementReporter$ElapsedTimer;
.super Ljava/lang/Object;
.source "AdPlacementReporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/AdPlacementReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ElapsedTimer"
.end annotation


# instance fields
.field private a:J

.field private b:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getElapsedTime()J
    .locals 4

    .prologue
    .line 211
    iget-wide v0, p0, Lcom/millennialmedia/internal/AdPlacementReporter$ElapsedTimer;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 212
    invoke-virtual {p0}, Lcom/millennialmedia/internal/AdPlacementReporter$ElapsedTimer;->stop()V

    .line 215
    :cond_0
    iget-wide v0, p0, Lcom/millennialmedia/internal/AdPlacementReporter$ElapsedTimer;->b:J

    iget-wide v2, p0, Lcom/millennialmedia/internal/AdPlacementReporter$ElapsedTimer;->a:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public start()V
    .locals 2

    .prologue
    .line 198
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/millennialmedia/internal/AdPlacementReporter$ElapsedTimer;->a:J

    .line 199
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/millennialmedia/internal/AdPlacementReporter$ElapsedTimer;->b:J

    .line 200
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 205
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/millennialmedia/internal/AdPlacementReporter$ElapsedTimer;->b:J

    .line 206
    return-void
.end method
