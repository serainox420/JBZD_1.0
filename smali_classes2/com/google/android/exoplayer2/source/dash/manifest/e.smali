.class public final Lcom/google/android/exoplayer2/source/dash/manifest/e;
.super Ljava/lang/Object;
.source "RangedUri.java"


# instance fields
.field public final a:J

.field public final b:J

.field private final c:Ljava/lang/String;

.field private d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;JJ)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/e;->c:Ljava/lang/String;

    .line 51
    iput-wide p2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/e;->a:J

    .line 52
    iput-wide p4, p0, Lcom/google/android/exoplayer2/source/dash/manifest/e;->b:J

    .line 53
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/e;->c:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/u;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/android/exoplayer2/source/dash/manifest/e;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/e;
    .locals 8

    .prologue
    const/4 v0, 0x0

    const-wide/16 v4, -0x1

    .line 89
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/source/dash/manifest/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 90
    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/source/dash/manifest/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 99
    :cond_0
    :goto_0
    return-object v0

    .line 92
    :cond_1
    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/e;->b:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/e;->a:J

    iget-wide v6, p0, Lcom/google/android/exoplayer2/source/dash/manifest/e;->b:J

    add-long/2addr v2, v6

    iget-wide v6, p1, Lcom/google/android/exoplayer2/source/dash/manifest/e;->a:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_3

    .line 93
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/manifest/e;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/e;->a:J

    iget-wide v6, p1, Lcom/google/android/exoplayer2/source/dash/manifest/e;->b:J

    cmp-long v6, v6, v4

    if-nez v6, :cond_2

    :goto_1
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/dash/manifest/e;-><init>(Ljava/lang/String;JJ)V

    goto :goto_0

    :cond_2
    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/dash/manifest/e;->b:J

    iget-wide v6, p1, Lcom/google/android/exoplayer2/source/dash/manifest/e;->b:J

    add-long/2addr v4, v6

    goto :goto_1

    .line 95
    :cond_3
    iget-wide v2, p1, Lcom/google/android/exoplayer2/source/dash/manifest/e;->b:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-wide v2, p1, Lcom/google/android/exoplayer2/source/dash/manifest/e;->a:J

    iget-wide v6, p1, Lcom/google/android/exoplayer2/source/dash/manifest/e;->b:J

    add-long/2addr v2, v6

    iget-wide v6, p0, Lcom/google/android/exoplayer2/source/dash/manifest/e;->a:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_0

    .line 96
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/manifest/e;

    iget-wide v2, p1, Lcom/google/android/exoplayer2/source/dash/manifest/e;->a:J

    iget-wide v6, p0, Lcom/google/android/exoplayer2/source/dash/manifest/e;->b:J

    cmp-long v6, v6, v4

    if-nez v6, :cond_4

    :goto_2
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/dash/manifest/e;-><init>(Ljava/lang/String;JJ)V

    goto :goto_0

    :cond_4
    iget-wide v4, p1, Lcom/google/android/exoplayer2/source/dash/manifest/e;->b:J

    iget-wide v6, p0, Lcom/google/android/exoplayer2/source/dash/manifest/e;->b:J

    add-long/2addr v4, v6

    goto :goto_2
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/e;->c:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/u;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 117
    if-ne p0, p1, :cond_1

    .line 126
    :cond_0
    :goto_0
    return v0

    .line 120
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 121
    goto :goto_0

    .line 123
    :cond_3
    check-cast p1, Lcom/google/android/exoplayer2/source/dash/manifest/e;

    .line 124
    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/e;->a:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/source/dash/manifest/e;->a:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/e;->b:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/source/dash/manifest/e;->b:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/e;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplayer2/source/dash/manifest/e;->c:Ljava/lang/String;

    .line 126
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 105
    iget v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/e;->d:I

    if-nez v0, :cond_0

    .line 107
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/e;->a:J

    long-to-int v0, v0

    add-int/lit16 v0, v0, 0x20f

    .line 108
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/e;->b:J

    long-to-int v1, v2

    add-int/2addr v0, v1

    .line 109
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/e;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 110
    iput v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/e;->d:I

    .line 112
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/e;->d:I

    return v0
.end method
