.class public final Lcom/google/android/exoplayer2/upstream/i;
.super Ljava/lang/Object;
.source "DefaultBandwidthMeter.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/c;
.implements Lcom/google/android/exoplayer2/upstream/r;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer2/upstream/c;",
        "Lcom/google/android/exoplayer2/upstream/r",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Lcom/google/android/exoplayer2/upstream/c$a;

.field private final c:Lcom/google/android/exoplayer2/util/q;

.field private d:I

.field private e:J

.field private f:J

.field private g:J

.field private h:J

.field private i:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, v0, v0}, Lcom/google/android/exoplayer2/upstream/i;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/upstream/c$a;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/upstream/c$a;)V
    .locals 1

    .prologue
    .line 54
    const/16 v0, 0x7d0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/upstream/i;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/upstream/c$a;I)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/upstream/c$a;I)V
    .locals 2

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/i;->a:Landroid/os/Handler;

    .line 59
    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/i;->b:Lcom/google/android/exoplayer2/upstream/c$a;

    .line 60
    new-instance v0, Lcom/google/android/exoplayer2/util/q;

    invoke-direct {v0, p3}, Lcom/google/android/exoplayer2/util/q;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/i;->c:Lcom/google/android/exoplayer2/util/q;

    .line 61
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/i;->i:J

    .line 62
    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/upstream/i;)Lcom/google/android/exoplayer2/upstream/c$a;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/i;->b:Lcom/google/android/exoplayer2/upstream/c$a;

    return-object v0
.end method

.method private a(IJJ)V
    .locals 8

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/i;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/i;->b:Lcom/google/android/exoplayer2/upstream/c$a;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/i;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer2/upstream/i$1;

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/upstream/i$1;-><init>(Lcom/google/android/exoplayer2/upstream/i;IJJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 115
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized a()J
    .locals 2

    .prologue
    .line 66
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/i;->i:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 84
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/i;->d:I

    if-lez v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 85
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 86
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/i;->e:J

    sub-long v0, v6, v0

    long-to-int v1, v0

    .line 87
    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/i;->g:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/exoplayer2/upstream/i;->g:J

    .line 88
    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/i;->h:J

    iget-wide v4, p0, Lcom/google/android/exoplayer2/upstream/i;->f:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/exoplayer2/upstream/i;->h:J

    .line 89
    if-lez v1, :cond_1

    .line 90
    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/i;->f:J

    const-wide/16 v4, 0x1f40

    mul-long/2addr v2, v4

    int-to-long v4, v1

    div-long/2addr v2, v4

    long-to-float v0, v2

    .line 91
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/i;->c:Lcom/google/android/exoplayer2/util/q;

    iget-wide v4, p0, Lcom/google/android/exoplayer2/upstream/i;->f:J

    long-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v3, v4

    invoke-virtual {v2, v3, v0}, Lcom/google/android/exoplayer2/util/q;->a(IF)V

    .line 92
    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/i;->g:J

    const-wide/16 v4, 0x7d0

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/i;->h:J

    const-wide/32 v4, 0x80000

    cmp-long v0, v2, v4

    if-ltz v0, :cond_1

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/i;->c:Lcom/google/android/exoplayer2/util/q;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/q;->a(F)F

    move-result v0

    .line 95
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_4

    const-wide/16 v2, -0x1

    :goto_1
    iput-wide v2, p0, Lcom/google/android/exoplayer2/upstream/i;->i:J

    .line 99
    :cond_1
    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/i;->f:J

    iget-wide v4, p0, Lcom/google/android/exoplayer2/upstream/i;->i:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/upstream/i;->a(IJJ)V

    .line 100
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/i;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/upstream/i;->d:I

    if-lez v0, :cond_2

    .line 101
    iput-wide v6, p0, Lcom/google/android/exoplayer2/upstream/i;->e:J

    .line 103
    :cond_2
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/i;->f:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    monitor-exit p0

    return-void

    .line 84
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 95
    :cond_4
    float-to-long v2, v0

    goto :goto_1

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/Object;I)V
    .locals 4

    .prologue
    .line 79
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/i;->f:J

    int-to-long v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/i;->f:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    monitor-exit p0

    return-void

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/Object;Lcom/google/android/exoplayer2/upstream/g;)V
    .locals 2

    .prologue
    .line 71
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/i;->d:I

    if-nez v0, :cond_0

    .line 72
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/i;->e:J

    .line 74
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/i;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/upstream/i;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    monitor-exit p0

    return-void

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
