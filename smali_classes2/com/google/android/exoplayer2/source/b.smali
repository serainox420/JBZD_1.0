.class public final Lcom/google/android/exoplayer2/source/b;
.super Ljava/lang/Object;
.source "CompositeSequenceableLoader.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/j;


# instance fields
.field private final a:[Lcom/google/android/exoplayer2/source/j;


# direct methods
.method public constructor <init>([Lcom/google/android/exoplayer2/source/j;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/b;->a:[Lcom/google/android/exoplayer2/source/j;

    .line 29
    return-void
.end method


# virtual methods
.method public a(J)Z
    .locals 13

    .prologue
    const/4 v1, 0x0

    .line 45
    move v0, v1

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/b;->b_()J

    move-result-wide v4

    .line 50
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v4, v2

    if-nez v2, :cond_1

    .line 60
    :goto_0
    return v0

    .line 53
    :cond_1
    iget-object v6, p0, Lcom/google/android/exoplayer2/source/b;->a:[Lcom/google/android/exoplayer2/source/j;

    array-length v7, v6

    move v3, v1

    move v2, v1

    :goto_1
    if-ge v3, v7, :cond_3

    aget-object v8, v6, v3

    .line 54
    invoke-interface {v8}, Lcom/google/android/exoplayer2/source/j;->b_()J

    move-result-wide v10

    cmp-long v9, v10, v4

    if-nez v9, :cond_2

    .line 55
    invoke-interface {v8, p1, p2}, Lcom/google/android/exoplayer2/source/j;->a(J)Z

    move-result v8

    or-int/2addr v2, v8

    .line 53
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 58
    :cond_3
    or-int/2addr v0, v2

    .line 59
    if-nez v2, :cond_0

    goto :goto_0
.end method

.method public b_()J
    .locals 12

    .prologue
    const-wide v6, 0x7fffffffffffffffL

    const-wide/high16 v2, -0x8000000000000000L

    .line 33
    .line 34
    iget-object v5, p0, Lcom/google/android/exoplayer2/source/b;->a:[Lcom/google/android/exoplayer2/source/j;

    array-length v8, v5

    const/4 v0, 0x0

    move v4, v0

    move-wide v0, v6

    :goto_0
    if-ge v4, v8, :cond_1

    aget-object v9, v5, v4

    .line 35
    invoke-interface {v9}, Lcom/google/android/exoplayer2/source/j;->b_()J

    move-result-wide v10

    .line 36
    cmp-long v9, v10, v2

    if-eqz v9, :cond_0

    .line 37
    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 34
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 40
    :cond_1
    cmp-long v4, v0, v6

    if-nez v4, :cond_2

    move-wide v0, v2

    :cond_2
    return-wide v0
.end method
