.class public final Lcom/google/android/exoplayer2/extractor/a;
.super Ljava/lang/Object;
.source "ChunkIndex.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/m;


# instance fields
.field public final a:I

.field public final b:[I

.field public final c:[J

.field public final d:[J

.field public final e:[J

.field private final f:J


# direct methods
.method public constructor <init>([I[J[J[J)V
    .locals 4

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/a;->b:[I

    .line 60
    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/a;->c:[J

    .line 61
    iput-object p3, p0, Lcom/google/android/exoplayer2/extractor/a;->d:[J

    .line 62
    iput-object p4, p0, Lcom/google/android/exoplayer2/extractor/a;->e:[J

    .line 63
    array-length v0, p1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/a;->a:I

    .line 64
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/a;->a:I

    add-int/lit8 v0, v0, -0x1

    aget-wide v0, p3, v0

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/a;->a:I

    add-int/lit8 v2, v2, -0x1

    aget-wide v2, p4, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/a;->f:J

    .line 65
    return-void
.end method


# virtual methods
.method public a(J)I
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 74
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/a;->e:[J

    invoke-static {v0, p1, p2, v1, v1}, Lcom/google/android/exoplayer2/util/v;->a([JJZZ)I

    move-result v0

    return v0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x1

    return v0
.end method

.method public b()J
    .locals 2

    .prologue
    .line 86
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/a;->f:J

    return-wide v0
.end method

.method public b(J)J
    .locals 3

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/a;->c:[J

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/a;->a(J)I

    move-result v1

    aget-wide v0, v0, v1

    return-wide v0
.end method
