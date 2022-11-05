.class public final Lcom/google/android/exoplayer2/b/g;
.super Ljava/lang/Object;
.source "TrackSelectionArray.java"


# instance fields
.field public final a:I

.field private final b:[Lcom/google/android/exoplayer2/b/f;

.field private c:I


# direct methods
.method public varargs constructor <init>([Lcom/google/android/exoplayer2/b/f;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/google/android/exoplayer2/b/g;->b:[Lcom/google/android/exoplayer2/b/f;

    .line 40
    array-length v0, p1

    iput v0, p0, Lcom/google/android/exoplayer2/b/g;->a:I

    .line 41
    return-void
.end method


# virtual methods
.method public a(I)Lcom/google/android/exoplayer2/b/f;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/exoplayer2/b/g;->b:[Lcom/google/android/exoplayer2/b/f;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public a()[Lcom/google/android/exoplayer2/b/f;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/exoplayer2/b/g;->b:[Lcom/google/android/exoplayer2/b/f;

    invoke-virtual {v0}, [Lcom/google/android/exoplayer2/b/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/exoplayer2/b/f;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 72
    if-ne p0, p1, :cond_0

    .line 73
    const/4 v0, 0x1

    .line 79
    :goto_0
    return v0

    .line 75
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 76
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 78
    :cond_2
    check-cast p1, Lcom/google/android/exoplayer2/b/g;

    .line 79
    iget-object v0, p0, Lcom/google/android/exoplayer2/b/g;->b:[Lcom/google/android/exoplayer2/b/f;

    iget-object v1, p1, Lcom/google/android/exoplayer2/b/g;->b:[Lcom/google/android/exoplayer2/b/f;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/google/android/exoplayer2/b/g;->c:I

    if-nez v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/google/android/exoplayer2/b/g;->b:[Lcom/google/android/exoplayer2/b/f;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 65
    iput v0, p0, Lcom/google/android/exoplayer2/b/g;->c:I

    .line 67
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/b/g;->c:I

    return v0
.end method
