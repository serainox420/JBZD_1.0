.class public final Lcom/google/android/exoplayer2/util/r;
.super Ljava/lang/Object;
.source "StandaloneMediaClock.java"

# interfaces
.implements Lcom/google/android/exoplayer2/util/h;


# instance fields
.field private a:Z

.field private b:J

.field private c:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b(J)J
    .locals 5

    .prologue
    .line 73
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    sub-long/2addr v0, p1

    return-wide v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/util/r;->a:Z

    if-nez v0, :cond_0

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/util/r;->a:Z

    .line 45
    iget-wide v0, p0, Lcom/google/android/exoplayer2/util/r;->b:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/util/r;->b(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/util/r;->c:J

    .line 47
    :cond_0
    return-void
.end method

.method public a(J)V
    .locals 3

    .prologue
    .line 63
    iput-wide p1, p0, Lcom/google/android/exoplayer2/util/r;->b:J

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/util/r;->b(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/util/r;->c:J

    .line 65
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/util/r;->a:Z

    if-eqz v0, :cond_0

    .line 54
    iget-wide v0, p0, Lcom/google/android/exoplayer2/util/r;->c:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/util/r;->b(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/util/r;->b:J

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/util/r;->a:Z

    .line 57
    :cond_0
    return-void
.end method

.method public w()J
    .locals 2

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/util/r;->a:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer2/util/r;->c:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/util/r;->b(J)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/util/r;->b:J

    goto :goto_0
.end method
