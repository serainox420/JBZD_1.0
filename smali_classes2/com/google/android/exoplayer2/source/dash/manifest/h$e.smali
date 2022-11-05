.class public Lcom/google/android/exoplayer2/source/dash/manifest/h$e;
.super Lcom/google/android/exoplayer2/source/dash/manifest/h;
.source "SegmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/dash/manifest/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field final d:J

.field final e:J


# direct methods
.method public constructor <init>()V
    .locals 10

    .prologue
    const-wide/16 v4, 0x0

    .line 88
    const/4 v1, 0x0

    const-wide/16 v2, 0x1

    move-object v0, p0

    move-wide v6, v4

    move-wide v8, v4

    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/source/dash/manifest/h$e;-><init>(Lcom/google/android/exoplayer2/source/dash/manifest/e;JJJJ)V

    .line 89
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/source/dash/manifest/e;JJJJ)V
    .locals 0

    .prologue
    .line 82
    invoke-direct/range {p0 .. p5}, Lcom/google/android/exoplayer2/source/dash/manifest/h;-><init>(Lcom/google/android/exoplayer2/source/dash/manifest/e;JJ)V

    .line 83
    iput-wide p6, p0, Lcom/google/android/exoplayer2/source/dash/manifest/h$e;->d:J

    .line 84
    iput-wide p8, p0, Lcom/google/android/exoplayer2/source/dash/manifest/h$e;->e:J

    .line 85
    return-void
.end method


# virtual methods
.method public b()Lcom/google/android/exoplayer2/source/dash/manifest/e;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 92
    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/h$e;->e:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/manifest/e;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/h$e;->d:J

    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/dash/manifest/h$e;->e:J

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/dash/manifest/e;-><init>(Ljava/lang/String;JJ)V

    move-object v1, v0

    goto :goto_0
.end method
