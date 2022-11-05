.class public Lcom/google/android/exoplayer2/text/b;
.super Ljava/lang/Object;
.source "Cue.java"


# instance fields
.field public final a:Ljava/lang/CharSequence;

.field public final b:Landroid/text/Layout$Alignment;

.field public final c:Landroid/graphics/Bitmap;

.field public final d:F

.field public final e:I

.field public final f:I

.field public final g:F

.field public final h:I

.field public final i:F

.field public final j:Z

.field public final k:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 9

    .prologue
    const/high16 v4, -0x80000000

    const/4 v3, 0x1

    .line 207
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, v4

    move v6, v3

    move v7, v4

    move v8, v3

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/text/b;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIF)V

    .line 208
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIF)V
    .locals 11

    .prologue
    .line 224
    const/4 v9, 0x0

    const/high16 v10, -0x1000000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v10}, Lcom/google/android/exoplayer2/text/b;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIFZI)V

    .line 226
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIFZI)V
    .locals 12

    .prologue
    .line 245
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lcom/google/android/exoplayer2/text/b;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIFZI)V

    .line 247
    return-void
.end method

.method private constructor <init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIFZI)V
    .locals 0

    .prologue
    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/b;->a:Ljava/lang/CharSequence;

    .line 253
    iput-object p2, p0, Lcom/google/android/exoplayer2/text/b;->b:Landroid/text/Layout$Alignment;

    .line 254
    iput-object p3, p0, Lcom/google/android/exoplayer2/text/b;->c:Landroid/graphics/Bitmap;

    .line 255
    iput p4, p0, Lcom/google/android/exoplayer2/text/b;->d:F

    .line 256
    iput p5, p0, Lcom/google/android/exoplayer2/text/b;->e:I

    .line 257
    iput p6, p0, Lcom/google/android/exoplayer2/text/b;->f:I

    .line 258
    iput p7, p0, Lcom/google/android/exoplayer2/text/b;->g:F

    .line 259
    iput p8, p0, Lcom/google/android/exoplayer2/text/b;->h:I

    .line 260
    iput p9, p0, Lcom/google/android/exoplayer2/text/b;->i:F

    .line 261
    iput-boolean p10, p0, Lcom/google/android/exoplayer2/text/b;->j:Z

    .line 262
    iput p11, p0, Lcom/google/android/exoplayer2/text/b;->k:I

    .line 263
    return-void
.end method
