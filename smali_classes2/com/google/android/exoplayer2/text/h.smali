.class public final Lcom/google/android/exoplayer2/text/h;
.super Lcom/google/android/exoplayer2/a/e;
.source "SubtitleInputBuffer.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/exoplayer2/a/e;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/google/android/exoplayer2/text/h;",
        ">;"
    }
.end annotation


# instance fields
.field public d:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/a/e;-><init>(I)V

    .line 35
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/text/h;)I
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 39
    iget-wide v0, p0, Lcom/google/android/exoplayer2/text/h;->c:J

    iget-wide v2, p1, Lcom/google/android/exoplayer2/text/h;->c:J

    sub-long/2addr v0, v2

    .line 40
    cmp-long v2, v0, v4

    if-nez v2, :cond_0

    .line 41
    const/4 v0, 0x0

    .line 43
    :goto_0
    return v0

    :cond_0
    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 24
    check-cast p1, Lcom/google/android/exoplayer2/text/h;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/text/h;->a(Lcom/google/android/exoplayer2/text/h;)I

    move-result v0

    return v0
.end method
