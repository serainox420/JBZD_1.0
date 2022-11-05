.class public final Lcom/google/android/exoplayer2/extractor/f/s;
.super Ljava/lang/Object;
.source "SpliceInfoSectionReader.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/f/p;


# instance fields
.field private a:Lcom/google/android/exoplayer2/util/s;

.field private b:Lcom/google/android/exoplayer2/extractor/n;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/util/l;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x1

    .line 47
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/f/s;->c:Z

    if-nez v0, :cond_1

    .line 48
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/s;->a:Lcom/google/android/exoplayer2/util/s;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/s;->c()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 60
    :goto_0
    return-void

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/s;->b:Lcom/google/android/exoplayer2/extractor/n;

    const-string v1, "application/x-scte35"

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/f/s;->a:Lcom/google/android/exoplayer2/util/s;

    .line 53
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/s;->c()J

    move-result-wide v2

    .line 52
    invoke-static {v7, v1, v2, v3}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;J)Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/extractor/n;->a(Lcom/google/android/exoplayer2/Format;)V

    .line 54
    iput-boolean v4, p0, Lcom/google/android/exoplayer2/extractor/f/s;->c:Z

    .line 56
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/l;->b()I

    move-result v5

    .line 57
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/s;->b:Lcom/google/android/exoplayer2/extractor/n;

    invoke-interface {v0, p1, v5}, Lcom/google/android/exoplayer2/extractor/n;->a(Lcom/google/android/exoplayer2/util/l;I)V

    .line 58
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/f/s;->b:Lcom/google/android/exoplayer2/extractor/n;

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/s;->a:Lcom/google/android/exoplayer2/util/s;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/s;->b()J

    move-result-wide v2

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer2/extractor/n;->a(JIII[B)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/exoplayer2/util/s;Lcom/google/android/exoplayer2/extractor/h;Lcom/google/android/exoplayer2/extractor/f/u$c;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 38
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/f/s;->a:Lcom/google/android/exoplayer2/util/s;

    .line 39
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/extractor/f/u$c;->a()V

    .line 40
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/extractor/f/u$c;->b()I

    move-result v0

    const/4 v1, 0x4

    invoke-interface {p2, v0, v1}, Lcom/google/android/exoplayer2/extractor/h;->a(II)Lcom/google/android/exoplayer2/extractor/n;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/s;->b:Lcom/google/android/exoplayer2/extractor/n;

    .line 41
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/s;->b:Lcom/google/android/exoplayer2/extractor/n;

    invoke-virtual {p3}, Lcom/google/android/exoplayer2/extractor/f/u$c;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "application/x-scte35"

    const/4 v3, -0x1

    invoke-static {v1, v2, v4, v3, v4}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/extractor/n;->a(Lcom/google/android/exoplayer2/Format;)V

    .line 43
    return-void
.end method
