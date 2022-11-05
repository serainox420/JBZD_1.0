.class public final Lcom/google/android/exoplayer2/extractor/f/k;
.super Ljava/lang/Object;
.source "Id3Reader.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/f/g;


# instance fields
.field private final a:Lcom/google/android/exoplayer2/util/l;

.field private b:Lcom/google/android/exoplayer2/extractor/n;

.field private c:Z

.field private d:J

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lcom/google/android/exoplayer2/util/l;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/l;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/k;->a:Lcom/google/android/exoplayer2/util/l;

    .line 50
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/f/k;->c:Z

    .line 55
    return-void
.end method

.method public a(JZ)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 67
    if-nez p3, :cond_0

    .line 74
    :goto_0
    return-void

    .line 70
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/f/k;->c:Z

    .line 71
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/f/k;->d:J

    .line 72
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/f/k;->e:I

    .line 73
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/f/k;->f:I

    goto :goto_0
.end method

.method public a(Lcom/google/android/exoplayer2/extractor/h;Lcom/google/android/exoplayer2/extractor/f/u$c;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 59
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/f/u$c;->a()V

    .line 60
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/f/u$c;->b()I

    move-result v0

    const/4 v1, 0x4

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/h;->a(II)Lcom/google/android/exoplayer2/extractor/n;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/k;->b:Lcom/google/android/exoplayer2/extractor/n;

    .line 61
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/k;->b:Lcom/google/android/exoplayer2/extractor/n;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/f/u$c;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "application/id3"

    const/4 v3, -0x1

    invoke-static {v1, v2, v4, v3, v4}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/extractor/n;->a(Lcom/google/android/exoplayer2/Format;)V

    .line 63
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/util/l;)V
    .locals 8

    .prologue
    const/16 v7, 0xa

    const/4 v6, 0x0

    .line 78
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/f/k;->c:Z

    if-nez v0, :cond_0

    .line 104
    :goto_0
    return-void

    .line 81
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/l;->b()I

    move-result v0

    .line 82
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/f/k;->f:I

    if-ge v1, v7, :cond_3

    .line 84
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/f/k;->f:I

    rsub-int/lit8 v1, v1, 0xa

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 85
    iget-object v2, p1, Lcom/google/android/exoplayer2/util/l;->a:[B

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/l;->d()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/f/k;->a:Lcom/google/android/exoplayer2/util/l;

    iget-object v4, v4, Lcom/google/android/exoplayer2/util/l;->a:[B

    iget v5, p0, Lcom/google/android/exoplayer2/extractor/f/k;->f:I

    invoke-static {v2, v3, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 87
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/f/k;->f:I

    add-int/2addr v1, v2

    if-ne v1, v7, :cond_3

    .line 89
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/f/k;->a:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    .line 90
    const/16 v1, 0x49

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/f/k;->a:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/l;->f()I

    move-result v2

    if-ne v1, v2, :cond_1

    const/16 v1, 0x44

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/f/k;->a:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/l;->f()I

    move-result v2

    if-ne v1, v2, :cond_1

    const/16 v1, 0x33

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/f/k;->a:Lcom/google/android/exoplayer2/util/l;

    .line 91
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/l;->f()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 92
    :cond_1
    const-string v0, "Id3Reader"

    const-string v1, "Discarding invalid ID3 tag"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iput-boolean v6, p0, Lcom/google/android/exoplayer2/extractor/f/k;->c:Z

    goto :goto_0

    .line 96
    :cond_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/f/k;->a:Lcom/google/android/exoplayer2/util/l;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/l;->d(I)V

    .line 97
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/f/k;->a:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/l;->r()I

    move-result v1

    add-int/lit8 v1, v1, 0xa

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/f/k;->e:I

    .line 101
    :cond_3
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/f/k;->e:I

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/f/k;->f:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 102
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/f/k;->b:Lcom/google/android/exoplayer2/extractor/n;

    invoke-interface {v1, p1, v0}, Lcom/google/android/exoplayer2/extractor/n;->a(Lcom/google/android/exoplayer2/util/l;I)V

    .line 103
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/f/k;->f:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/f/k;->f:I

    goto :goto_0
.end method

.method public b()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 108
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/f/k;->c:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/f/k;->e:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/f/k;->f:I

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/f/k;->e:I

    if-eq v0, v1, :cond_1

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/f/k;->b:Lcom/google/android/exoplayer2/extractor/n;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/f/k;->d:J

    const/4 v4, 0x1

    iget v5, p0, Lcom/google/android/exoplayer2/extractor/f/k;->e:I

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer2/extractor/n;->a(JIII[B)V

    .line 112
    iput-boolean v6, p0, Lcom/google/android/exoplayer2/extractor/f/k;->c:Z

    goto :goto_0
.end method
