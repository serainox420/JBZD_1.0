.class final Lcom/google/android/exoplayer2/text/e/e;
.super Lcom/google/android/exoplayer2/text/b;
.source "WebvttCue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/text/e/e$a;
    }
.end annotation


# instance fields
.field public final l:J

.field public final m:J


# direct methods
.method public constructor <init>(JJLjava/lang/CharSequence;)V
    .locals 15

    .prologue
    .line 36
    const/4 v7, 0x0

    const/4 v8, 0x1

    const/high16 v9, -0x80000000

    const/high16 v10, -0x80000000

    const/4 v11, 0x1

    const/high16 v12, -0x80000000

    const/4 v13, 0x1

    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v13}, Lcom/google/android/exoplayer2/text/e/e;-><init>(JJLjava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIF)V

    .line 38
    return-void
.end method

.method public constructor <init>(JJLjava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIF)V
    .locals 9

    .prologue
    .line 43
    move-object v0, p0

    move-object v1, p5

    move-object v2, p6

    move/from16 v3, p7

    move/from16 v4, p8

    move/from16 v5, p9

    move/from16 v6, p10

    move/from16 v7, p11

    move/from16 v8, p12

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/text/b;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIF)V

    .line 44
    iput-wide p1, p0, Lcom/google/android/exoplayer2/text/e/e;->l:J

    .line 45
    iput-wide p3, p0, Lcom/google/android/exoplayer2/text/e/e;->m:J

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 7

    .prologue
    const-wide/16 v2, 0x0

    .line 32
    move-object v1, p0

    move-wide v4, v2

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/text/e/e;-><init>(JJLjava/lang/CharSequence;)V

    .line 33
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 55
    iget v0, p0, Lcom/google/android/exoplayer2/text/e/e;->d:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/text/e/e;->g:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
