.class final Lcom/google/android/exoplayer2/source/a/b;
.super Ljava/lang/Object;
.source "BaseMediaChunkOutput.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/a/d$b;


# instance fields
.field private final a:[I

.field private final b:[Lcom/google/android/exoplayer2/extractor/d;


# direct methods
.method public constructor <init>([I[Lcom/google/android/exoplayer2/extractor/d;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/a/b;->a:[I

    .line 40
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/a/b;->b:[Lcom/google/android/exoplayer2/extractor/d;

    .line 41
    return-void
.end method


# virtual methods
.method public a(II)Lcom/google/android/exoplayer2/extractor/n;
    .locals 3

    .prologue
    .line 45
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/a/b;->a:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 46
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/a/b;->a:[I

    aget v1, v1, v0

    if-ne p2, v1, :cond_0

    .line 47
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/a/b;->b:[Lcom/google/android/exoplayer2/extractor/d;

    aget-object v0, v1, v0

    .line 51
    :goto_1
    return-object v0

    .line 45
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 50
    :cond_1
    const-string v0, "BaseMediaChunkOutput"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unmatched track of type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    new-instance v0, Lcom/google/android/exoplayer2/extractor/e;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/e;-><init>()V

    goto :goto_1
.end method

.method public a(J)V
    .locals 5

    .prologue
    .line 72
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/a/b;->b:[Lcom/google/android/exoplayer2/extractor/d;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 73
    if-eqz v3, :cond_0

    .line 74
    invoke-virtual {v3, p1, p2}, Lcom/google/android/exoplayer2/extractor/d;->b(J)V

    .line 72
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 77
    :cond_1
    return-void
.end method

.method public a()[I
    .locals 3

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a/b;->b:[Lcom/google/android/exoplayer2/extractor/d;

    array-length v0, v0

    new-array v1, v0, [I

    .line 59
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/a/b;->b:[Lcom/google/android/exoplayer2/extractor/d;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 60
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/a/b;->b:[Lcom/google/android/exoplayer2/extractor/d;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 61
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/a/b;->b:[Lcom/google/android/exoplayer2/extractor/d;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/extractor/d;->b()I

    move-result v2

    aput v2, v1, v0

    .line 59
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
    :cond_1
    return-object v1
.end method
