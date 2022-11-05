.class public Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;
.super Ljava/lang/Object;
.source "SsManifest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$b;,
        Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$a;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:Z

.field public final e:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$a;

.field public final f:[Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$b;

.field public final g:J

.field public final h:J


# direct methods
.method public constructor <init>(IIJJJIZLcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$a;[Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$b;)V
    .locals 9

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;->a:I

    .line 100
    iput p2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;->b:I

    .line 101
    move/from16 v0, p9

    iput v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;->c:I

    .line 102
    move/from16 v0, p10

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;->d:Z

    .line 103
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;->e:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$a;

    .line 104
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;->f:[Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$b;

    .line 105
    const-wide/16 v2, 0x0

    cmp-long v2, p7, v2

    if-nez v2, :cond_0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 106
    :goto_0
    iput-wide v2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;->h:J

    .line 107
    const-wide/16 v2, 0x0

    cmp-long v2, p5, v2

    if-nez v2, :cond_1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 108
    :goto_1
    iput-wide v2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;->g:J

    .line 109
    return-void

    .line 105
    :cond_0
    const-wide/32 v4, 0xf4240

    move-wide/from16 v2, p7

    move-wide v6, p3

    .line 106
    invoke-static/range {v2 .. v7}, Lcom/google/android/exoplayer2/util/v;->a(JJJ)J

    move-result-wide v2

    goto :goto_0

    .line 107
    :cond_1
    const-wide/32 v4, 0xf4240

    move-wide v2, p5

    move-wide v6, p3

    .line 108
    invoke-static/range {v2 .. v7}, Lcom/google/android/exoplayer2/util/v;->a(JJJ)J

    move-result-wide v2

    goto :goto_1
.end method
