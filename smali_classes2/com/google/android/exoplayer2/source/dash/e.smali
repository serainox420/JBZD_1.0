.class final Lcom/google/android/exoplayer2/source/dash/e;
.super Ljava/lang/Object;
.source "DashWrappingSegmentIndex.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/dash/d;


# instance fields
.field private final a:Lcom/google/android/exoplayer2/extractor/a;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/a;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/e;->a:Lcom/google/android/exoplayer2/extractor/a;

    .line 34
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public a(J)I
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/e;->a:Lcom/google/android/exoplayer2/extractor/a;

    iget v0, v0, Lcom/google/android/exoplayer2/extractor/a;->a:I

    return v0
.end method

.method public a(JJ)I
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/e;->a:Lcom/google/android/exoplayer2/extractor/a;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/extractor/a;->a(J)I

    move-result v0

    return v0
.end method

.method public a(I)J
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/e;->a:Lcom/google/android/exoplayer2/extractor/a;

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/a;->e:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public a(IJ)J
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/e;->a:Lcom/google/android/exoplayer2/extractor/a;

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/a;->d:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public b(I)Lcom/google/android/exoplayer2/source/dash/manifest/e;
    .locals 6

    .prologue
    .line 58
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/manifest/e;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/e;->a:Lcom/google/android/exoplayer2/extractor/a;

    iget-object v2, v2, Lcom/google/android/exoplayer2/extractor/a;->c:[J

    aget-wide v2, v2, p1

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/dash/e;->a:Lcom/google/android/exoplayer2/extractor/a;

    iget-object v4, v4, Lcom/google/android/exoplayer2/extractor/a;->b:[I

    aget v4, v4, p1

    int-to-long v4, v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/dash/manifest/e;-><init>(Ljava/lang/String;JJ)V

    return-object v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x1

    return v0
.end method
