.class public final Lcom/google/android/exoplayer2/c/d;
.super Ljava/lang/Object;
.source "VideoFrameReleaseTimeHelper.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/c/d$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer2/c/d$a;

.field private final b:Z

.field private final c:J

.field private final d:J

.field private e:J

.field private f:J

.field private g:J

.field private h:Z

.field private i:J

.field private j:J

.field private k:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 59
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/c/d;-><init>(DZ)V

    .line 60
    return-void
.end method

.method private constructor <init>(DZ)V
    .locals 5

    .prologue
    const-wide/16 v2, -0x1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/c/d;->b:Z

    .line 75
    if-eqz p3, :cond_0

    .line 76
    invoke-static {}, Lcom/google/android/exoplayer2/c/d$a;->a()Lcom/google/android/exoplayer2/c/d$a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/d;->a:Lcom/google/android/exoplayer2/c/d$a;

    .line 77
    const-wide v0, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v0, p1

    double-to-long v0, v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/c/d;->c:J

    .line 78
    iget-wide v0, p0, Lcom/google/android/exoplayer2/c/d;->c:J

    const-wide/16 v2, 0x50

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/c/d;->d:J

    .line 84
    :goto_0
    return-void

    .line 80
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/d;->a:Lcom/google/android/exoplayer2/c/d$a;

    .line 81
    iput-wide v2, p0, Lcom/google/android/exoplayer2/c/d;->c:J

    .line 82
    iput-wide v2, p0, Lcom/google/android/exoplayer2/c/d;->d:J

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 69
    invoke-static {p1}, Lcom/google/android/exoplayer2/c/d;->a(Landroid/content/Context;)F

    move-result v0

    float-to-double v0, v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/c/d;-><init>(DZ)V

    .line 70
    return-void
.end method

.method private static a(Landroid/content/Context;)F
    .locals 1

    .prologue
    .line 204
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 205
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRefreshRate()F

    move-result v0

    return v0
.end method

.method private static a(JJJ)J
    .locals 10

    .prologue
    .line 187
    sub-long v0, p0, p2

    div-long/2addr v0, p4

    .line 188
    mul-long/2addr v0, p4

    add-long/2addr v0, p2

    .line 191
    cmp-long v2, p0, v0

    if-gtz v2, :cond_0

    .line 192
    sub-long v2, v0, p4

    .line 198
    :goto_0
    sub-long v4, v0, p0

    .line 199
    sub-long v6, p0, v2

    .line 200
    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    :goto_1
    return-wide v0

    .line 196
    :cond_0
    add-long v2, v0, p4

    move-wide v8, v2

    move-wide v2, v0

    move-wide v0, v8

    goto :goto_0

    :cond_1
    move-wide v0, v2

    .line 200
    goto :goto_1
.end method

.method private b(JJ)Z
    .locals 5

    .prologue
    .line 181
    iget-wide v0, p0, Lcom/google/android/exoplayer2/c/d;->j:J

    sub-long v0, p1, v0

    .line 182
    iget-wide v2, p0, Lcom/google/android/exoplayer2/c/d;->i:J

    sub-long v2, p3, v2

    .line 183
    sub-long v0, v2, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x1312d00

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(JJ)J
    .locals 11

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    .line 115
    const-wide/16 v0, 0x3e8

    mul-long v4, p1, v0

    .line 121
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/c/d;->h:Z

    if-eqz v0, :cond_5

    .line 123
    iget-wide v0, p0, Lcom/google/android/exoplayer2/c/d;->e:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 124
    iget-wide v0, p0, Lcom/google/android/exoplayer2/c/d;->k:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/c/d;->k:J

    .line 125
    iget-wide v0, p0, Lcom/google/android/exoplayer2/c/d;->g:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/c/d;->f:J

    .line 127
    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/c/d;->k:J

    const-wide/16 v2, 0x6

    cmp-long v0, v0, v2

    if-ltz v0, :cond_4

    .line 132
    iget-wide v0, p0, Lcom/google/android/exoplayer2/c/d;->j:J

    sub-long v0, v4, v0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/c/d;->k:J

    div-long/2addr v0, v2

    .line 135
    iget-wide v2, p0, Lcom/google/android/exoplayer2/c/d;->f:J

    add-long/2addr v2, v0

    .line 137
    invoke-direct {p0, v2, v3, p3, p4}, Lcom/google/android/exoplayer2/c/d;->b(JJ)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 138
    iput-boolean v6, p0, Lcom/google/android/exoplayer2/c/d;->h:Z

    move-wide v0, p3

    move-wide v2, v4

    .line 154
    :goto_0
    iget-boolean v6, p0, Lcom/google/android/exoplayer2/c/d;->h:Z

    if-nez v6, :cond_1

    .line 155
    iput-wide v4, p0, Lcom/google/android/exoplayer2/c/d;->j:J

    .line 156
    iput-wide p3, p0, Lcom/google/android/exoplayer2/c/d;->i:J

    .line 157
    iput-wide v8, p0, Lcom/google/android/exoplayer2/c/d;->k:J

    .line 158
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/google/android/exoplayer2/c/d;->h:Z

    .line 159
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/c/d;->c()V

    .line 162
    :cond_1
    iput-wide p1, p0, Lcom/google/android/exoplayer2/c/d;->e:J

    .line 163
    iput-wide v2, p0, Lcom/google/android/exoplayer2/c/d;->g:J

    .line 165
    iget-object v2, p0, Lcom/google/android/exoplayer2/c/d;->a:Lcom/google/android/exoplayer2/c/d$a;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/c/d;->a:Lcom/google/android/exoplayer2/c/d$a;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/c/d$a;->a:J

    cmp-long v2, v2, v8

    if-nez v2, :cond_6

    .line 173
    :cond_2
    :goto_1
    return-wide v0

    .line 141
    :cond_3
    iget-wide v0, p0, Lcom/google/android/exoplayer2/c/d;->i:J

    add-long/2addr v0, v2

    iget-wide v6, p0, Lcom/google/android/exoplayer2/c/d;->j:J

    sub-long/2addr v0, v6

    goto :goto_0

    .line 147
    :cond_4
    invoke-direct {p0, v4, v5, p3, p4}, Lcom/google/android/exoplayer2/c/d;->b(JJ)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 148
    iput-boolean v6, p0, Lcom/google/android/exoplayer2/c/d;->h:Z

    :cond_5
    move-wide v0, p3

    move-wide v2, v4

    goto :goto_0

    .line 170
    :cond_6
    iget-object v2, p0, Lcom/google/android/exoplayer2/c/d;->a:Lcom/google/android/exoplayer2/c/d$a;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/c/d$a;->a:J

    iget-wide v4, p0, Lcom/google/android/exoplayer2/c/d;->c:J

    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer2/c/d;->a(JJJ)J

    move-result-wide v0

    .line 173
    iget-wide v2, p0, Lcom/google/android/exoplayer2/c/d;->d:J

    sub-long/2addr v0, v2

    goto :goto_1
.end method

.method public a()V
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/c/d;->h:Z

    .line 91
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/c/d;->b:Z

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/d;->a:Lcom/google/android/exoplayer2/c/d$a;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/c/d$a;->b()V

    .line 94
    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/c/d;->b:Z

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/d;->a:Lcom/google/android/exoplayer2/c/d$a;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/c/d$a;->c()V

    .line 103
    :cond_0
    return-void
.end method

.method protected c()V
    .locals 0

    .prologue
    .line 178
    return-void
.end method
