.class public abstract Lcom/google/android/exoplayer2/source/a/a;
.super Lcom/google/android/exoplayer2/source/a/l;
.source "BaseMediaChunk.java"


# instance fields
.field private j:Lcom/google/android/exoplayer2/source/a/b;

.field private k:[I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/e;Lcom/google/android/exoplayer2/upstream/g;Lcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJI)V
    .locals 0

    .prologue
    .line 44
    invoke-direct/range {p0 .. p10}, Lcom/google/android/exoplayer2/source/a/l;-><init>(Lcom/google/android/exoplayer2/upstream/e;Lcom/google/android/exoplayer2/upstream/g;Lcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJI)V

    .line 46
    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a/a;->k:[I

    aget v0, v0, p1

    return v0
.end method

.method public a(Lcom/google/android/exoplayer2/source/a/b;)V
    .locals 1

    .prologue
    .line 55
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/a/a;->j:Lcom/google/android/exoplayer2/source/a/b;

    .line 56
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/a/b;->a()[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/a/a;->k:[I

    .line 57
    return-void
.end method

.method protected final d()Lcom/google/android/exoplayer2/source/a/b;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a/a;->j:Lcom/google/android/exoplayer2/source/a/b;

    return-object v0
.end method
