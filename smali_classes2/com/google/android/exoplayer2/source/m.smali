.class public final Lcom/google/android/exoplayer2/source/m;
.super Ljava/lang/Object;
.source "TrackGroupArray.java"


# static fields
.field public static final a:Lcom/google/android/exoplayer2/source/m;


# instance fields
.field public final b:I

.field private final c:[Lcom/google/android/exoplayer2/source/l;

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Lcom/google/android/exoplayer2/source/m;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/exoplayer2/source/l;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/m;-><init>([Lcom/google/android/exoplayer2/source/l;)V

    sput-object v0, Lcom/google/android/exoplayer2/source/m;->a:Lcom/google/android/exoplayer2/source/m;

    return-void
.end method

.method public varargs constructor <init>([Lcom/google/android/exoplayer2/source/l;)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/m;->c:[Lcom/google/android/exoplayer2/source/l;

    .line 46
    array-length v0, p1

    iput v0, p0, Lcom/google/android/exoplayer2/source/m;->b:I

    .line 47
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/source/l;)I
    .locals 2

    .prologue
    .line 66
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/google/android/exoplayer2/source/m;->b:I

    if-ge v0, v1, :cond_1

    .line 67
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/m;->c:[Lcom/google/android/exoplayer2/source/l;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 71
    :goto_1
    return v0

    .line 66
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 71
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public a(I)Lcom/google/android/exoplayer2/source/l;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/m;->c:[Lcom/google/android/exoplayer2/source/l;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 84
    if-ne p0, p1, :cond_1

    .line 91
    :cond_0
    :goto_0
    return v0

    .line 87
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 88
    goto :goto_0

    .line 90
    :cond_3
    check-cast p1, Lcom/google/android/exoplayer2/source/m;

    .line 91
    iget v2, p0, Lcom/google/android/exoplayer2/source/m;->b:I

    iget v3, p1, Lcom/google/android/exoplayer2/source/m;->b:I

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/m;->c:[Lcom/google/android/exoplayer2/source/l;

    iget-object v3, p1, Lcom/google/android/exoplayer2/source/m;->c:[Lcom/google/android/exoplayer2/source/l;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/google/android/exoplayer2/source/m;->d:I

    if-nez v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/m;->c:[Lcom/google/android/exoplayer2/source/l;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/source/m;->d:I

    .line 79
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/source/m;->d:I

    return v0
.end method
