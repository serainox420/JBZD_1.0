.class final Lcom/google/android/exoplayer2/text/c/c;
.super Ljava/lang/Object;
.source "TtmlRegion.java"


# instance fields
.field public final a:F

.field public final b:F

.field public final c:I

.field public final d:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 32
    const/high16 v0, -0x80000000

    invoke-direct {p0, v1, v1, v0, v1}, Lcom/google/android/exoplayer2/text/c/c;-><init>(FFIF)V

    .line 33
    return-void
.end method

.method public constructor <init>(FFIF)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Lcom/google/android/exoplayer2/text/c/c;->a:F

    .line 37
    iput p2, p0, Lcom/google/android/exoplayer2/text/c/c;->b:F

    .line 38
    iput p3, p0, Lcom/google/android/exoplayer2/text/c/c;->c:I

    .line 39
    iput p4, p0, Lcom/google/android/exoplayer2/text/c/c;->d:F

    .line 40
    return-void
.end method
