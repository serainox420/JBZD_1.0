.class final Lcom/google/android/exoplayer2/source/dash/manifest/i;
.super Ljava/lang/Object;
.source "SingleSegmentIndex.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/dash/d;


# instance fields
.field private final a:Lcom/google/android/exoplayer2/source/dash/manifest/e;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/dash/manifest/e;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/i;->a:Lcom/google/android/exoplayer2/source/dash/manifest/e;

    .line 32
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public a(J)I
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x1

    return v0
.end method

.method public a(JJ)I
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public a(I)J
    .locals 2

    .prologue
    .line 41
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public a(IJ)J
    .locals 0

    .prologue
    .line 46
    return-wide p2
.end method

.method public b(I)Lcom/google/android/exoplayer2/source/dash/manifest/e;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/i;->a:Lcom/google/android/exoplayer2/source/dash/manifest/e;

    return-object v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x1

    return v0
.end method
