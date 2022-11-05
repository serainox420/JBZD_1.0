.class public final Lcom/google/android/exoplayer2/b/i;
.super Ljava/lang/Object;
.source "TrackSelectorResult.java"


# instance fields
.field public final a:Lcom/google/android/exoplayer2/source/m;

.field public final b:Lcom/google/android/exoplayer2/b/g;

.field public final c:Ljava/lang/Object;

.field public final d:[Lcom/google/android/exoplayer2/l;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/m;Lcom/google/android/exoplayer2/b/g;Ljava/lang/Object;[Lcom/google/android/exoplayer2/l;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/google/android/exoplayer2/b/i;->a:Lcom/google/android/exoplayer2/source/m;

    .line 56
    iput-object p2, p0, Lcom/google/android/exoplayer2/b/i;->b:Lcom/google/android/exoplayer2/b/g;

    .line 57
    iput-object p3, p0, Lcom/google/android/exoplayer2/b/i;->c:Ljava/lang/Object;

    .line 58
    iput-object p4, p0, Lcom/google/android/exoplayer2/b/i;->d:[Lcom/google/android/exoplayer2/l;

    .line 59
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/b/i;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 69
    if-nez p1, :cond_1

    .line 77
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    .line 72
    :goto_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/b/i;->b:Lcom/google/android/exoplayer2/b/g;

    iget v2, v2, Lcom/google/android/exoplayer2/b/g;->a:I

    if-ge v0, v2, :cond_2

    .line 73
    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/b/i;->a(Lcom/google/android/exoplayer2/b/i;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 77
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public a(Lcom/google/android/exoplayer2/b/i;I)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 91
    if-nez p1, :cond_1

    .line 95
    :cond_0
    :goto_0
    return v0

    .line 94
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/b/i;->b:Lcom/google/android/exoplayer2/b/g;

    invoke-virtual {v1, p2}, Lcom/google/android/exoplayer2/b/g;->a(I)Lcom/google/android/exoplayer2/b/f;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/exoplayer2/b/i;->b:Lcom/google/android/exoplayer2/b/g;

    invoke-virtual {v2, p2}, Lcom/google/android/exoplayer2/b/g;->a(I)Lcom/google/android/exoplayer2/b/f;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/v;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/b/i;->d:[Lcom/google/android/exoplayer2/l;

    aget-object v1, v1, p2

    iget-object v2, p1, Lcom/google/android/exoplayer2/b/i;->d:[Lcom/google/android/exoplayer2/l;

    aget-object v2, v2, p2

    .line 95
    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/v;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
