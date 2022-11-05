.class public final Lcom/google/android/exoplayer2/Format;
.super Ljava/lang/Object;
.source "Format.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:Ljava/lang/String;

.field public final d:Lcom/google/android/exoplayer2/metadata/Metadata;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:I

.field public final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field

.field public final i:Lcom/google/android/exoplayer2/drm/DrmInitData;

.field public final j:I

.field public final k:I

.field public final l:F

.field public final m:I

.field public final n:F

.field public final o:I

.field public final p:[B

.field public final q:I

.field public final r:I

.field public final s:I

.field public final t:I

.field public final u:I

.field public final v:J

.field public final w:I

.field public final x:Ljava/lang/String;

.field public final y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 678
    new-instance v0, Lcom/google/android/exoplayer2/Format$1;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Format$1;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/Format;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 384
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/Format;->a:Ljava/lang/String;

    .line 385
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/Format;->e:Ljava/lang/String;

    .line 386
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/Format;->f:Ljava/lang/String;

    .line 387
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/Format;->c:Ljava/lang/String;

    .line 388
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/Format;->b:I

    .line 389
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/Format;->g:I

    .line 390
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/Format;->j:I

    .line 391
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/Format;->k:I

    .line 392
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/Format;->l:F

    .line 393
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/Format;->m:I

    .line 394
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/Format;->n:F

    .line 395
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 396
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/google/android/exoplayer2/Format;->p:[B

    .line 397
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/Format;->o:I

    .line 398
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/Format;->q:I

    .line 399
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/Format;->r:I

    .line 400
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/Format;->s:I

    .line 401
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/Format;->t:I

    .line 402
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/Format;->u:I

    .line 403
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/Format;->w:I

    .line 404
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/Format;->x:Ljava/lang/String;

    .line 405
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/Format;->y:I

    .line 406
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/exoplayer2/Format;->v:J

    .line 407
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 408
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/Format;->h:Ljava/util/List;

    move v0, v1

    .line 409
    :goto_2
    if-ge v0, v2, :cond_2

    .line 410
    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->h:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 409
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_0
    move v0, v1

    .line 395
    goto :goto_0

    .line 396
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 412
    :cond_2
    const-class v0, Lcom/google/android/exoplayer2/drm/DrmInitData;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/drm/DrmInitData;

    iput-object v0, p0, Lcom/google/android/exoplayer2/Format;->i:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 413
    const-class v0, Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/metadata/Metadata;

    iput-object v0, p0, Lcom/google/android/exoplayer2/Format;->d:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 414
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BIIIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIIFIF[BIIIIIII",
            "Ljava/lang/String;",
            "IJ",
            "Ljava/util/List",
            "<[B>;",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;",
            "Lcom/google/android/exoplayer2/metadata/Metadata;",
            ")V"
        }
    .end annotation

    .prologue
    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 354
    iput-object p1, p0, Lcom/google/android/exoplayer2/Format;->a:Ljava/lang/String;

    .line 355
    iput-object p2, p0, Lcom/google/android/exoplayer2/Format;->e:Ljava/lang/String;

    .line 356
    iput-object p3, p0, Lcom/google/android/exoplayer2/Format;->f:Ljava/lang/String;

    .line 357
    iput-object p4, p0, Lcom/google/android/exoplayer2/Format;->c:Ljava/lang/String;

    .line 358
    iput p5, p0, Lcom/google/android/exoplayer2/Format;->b:I

    .line 359
    iput p6, p0, Lcom/google/android/exoplayer2/Format;->g:I

    .line 360
    iput p7, p0, Lcom/google/android/exoplayer2/Format;->j:I

    .line 361
    iput p8, p0, Lcom/google/android/exoplayer2/Format;->k:I

    .line 362
    iput p9, p0, Lcom/google/android/exoplayer2/Format;->l:F

    .line 363
    iput p10, p0, Lcom/google/android/exoplayer2/Format;->m:I

    .line 364
    iput p11, p0, Lcom/google/android/exoplayer2/Format;->n:F

    .line 365
    iput-object p12, p0, Lcom/google/android/exoplayer2/Format;->p:[B

    .line 366
    iput p13, p0, Lcom/google/android/exoplayer2/Format;->o:I

    .line 367
    move/from16 v0, p14

    iput v0, p0, Lcom/google/android/exoplayer2/Format;->q:I

    .line 368
    move/from16 v0, p15

    iput v0, p0, Lcom/google/android/exoplayer2/Format;->r:I

    .line 369
    move/from16 v0, p16

    iput v0, p0, Lcom/google/android/exoplayer2/Format;->s:I

    .line 370
    move/from16 v0, p17

    iput v0, p0, Lcom/google/android/exoplayer2/Format;->t:I

    .line 371
    move/from16 v0, p18

    iput v0, p0, Lcom/google/android/exoplayer2/Format;->u:I

    .line 372
    move/from16 v0, p19

    iput v0, p0, Lcom/google/android/exoplayer2/Format;->w:I

    .line 373
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/google/android/exoplayer2/Format;->x:Ljava/lang/String;

    .line 374
    move/from16 v0, p21

    iput v0, p0, Lcom/google/android/exoplayer2/Format;->y:I

    .line 375
    move-wide/from16 v0, p22

    iput-wide v0, p0, Lcom/google/android/exoplayer2/Format;->v:J

    .line 376
    if-nez p24, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p24

    :cond_0
    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/google/android/exoplayer2/Format;->h:Ljava/util/List;

    .line 378
    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/google/android/exoplayer2/Format;->i:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 379
    move-object/from16 v0, p26

    iput-object v0, p0, Lcom/google/android/exoplayer2/Format;->d:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 380
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;J)Lcom/google/android/exoplayer2/Format;
    .locals 28

    .prologue
    .line 335
    new-instance v0, Lcom/google/android/exoplayer2/Format;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/high16 v9, -0x40800000    # -1.0f

    const/4 v10, -0x1

    const/high16 v11, -0x40800000    # -1.0f

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, -0x1

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, -0x1

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-wide/from16 v22, p2

    invoke-direct/range {v0 .. v26}, Lcom/google/android/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BIIIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IFLcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIIF",
            "Ljava/util/List",
            "<[B>;IF",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;",
            ")",
            "Lcom/google/android/exoplayer2/Format;"
        }
    .end annotation

    .prologue
    .line 211
    const/4 v11, 0x0

    const/4 v12, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v13, p11

    invoke-static/range {v0 .. v13}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IF[BILcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IF[BILcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIIF",
            "Ljava/util/List",
            "<[B>;IF[BI",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;",
            ")",
            "Lcom/google/android/exoplayer2/Format;"
        }
    .end annotation

    .prologue
    .line 220
    new-instance v0, Lcom/google/android/exoplayer2/Format;

    const/4 v2, 0x0

    const/4 v14, -0x1

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, -0x1

    const-wide v22, 0x7fffffffffffffffL

    const/16 v26, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v13, p12

    move-object/from16 v24, p8

    move-object/from16 v25, p13

    invoke-direct/range {v0 .. v26}, Lcom/google/android/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BIIIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/Format;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIIIII",
            "Ljava/util/List",
            "<[B>;",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;",
            "I",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/metadata/Metadata;",
            ")",
            "Lcom/google/android/exoplayer2/Format;"
        }
    .end annotation

    .prologue
    .line 259
    new-instance v0, Lcom/google/android/exoplayer2/Format;

    const/4 v2, 0x0

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/high16 v9, -0x40800000    # -1.0f

    const/4 v10, -0x1

    const/high16 v11, -0x40800000    # -1.0f

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/16 v21, -0x1

    const-wide v22, 0x7fffffffffffffffL

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v14, p5

    move/from16 v15, p6

    move/from16 v16, p7

    move/from16 v17, p8

    move/from16 v18, p9

    move/from16 v19, p12

    move-object/from16 v20, p13

    move-object/from16 v24, p10

    move-object/from16 v25, p11

    move-object/from16 v26, p14

    invoke-direct/range {v0 .. v26}, Lcom/google/android/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BIIIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIII",
            "Ljava/util/List",
            "<[B>;",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/exoplayer2/Format;"
        }
    .end annotation

    .prologue
    .line 249
    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v14, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move/from16 v12, p10

    move-object/from16 v13, p11

    invoke-static/range {v0 .. v14}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIII",
            "Ljava/util/List",
            "<[B>;",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/exoplayer2/Format;"
        }
    .end annotation

    .prologue
    .line 241
    const/4 v7, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    invoke-static/range {v0 .. v11}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;
    .locals 10

    .prologue
    .line 292
    const-wide v8, 0x7fffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    invoke-static/range {v0 .. v9}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILcom/google/android/exoplayer2/drm/DrmInitData;J)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILcom/google/android/exoplayer2/drm/DrmInitData;J)Lcom/google/android/exoplayer2/Format;
    .locals 28

    .prologue
    .line 306
    new-instance v0, Lcom/google/android/exoplayer2/Format;

    const/4 v2, 0x0

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/high16 v9, -0x40800000    # -1.0f

    const/4 v10, -0x1

    const/high16 v11, -0x40800000    # -1.0f

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, -0x1

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v24, 0x0

    const/16 v26, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v19, p4

    move-object/from16 v20, p5

    move/from16 v21, p6

    move-wide/from16 v22, p8

    move-object/from16 v25, p7

    invoke-direct/range {v0 .. v26}, Lcom/google/android/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BIIIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;
    .locals 10

    .prologue
    .line 285
    const/4 v6, -0x1

    const-wide v8, 0x7fffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object/from16 v7, p6

    invoke-static/range {v0 .. v9}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILcom/google/android/exoplayer2/drm/DrmInitData;J)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;J)Lcom/google/android/exoplayer2/Format;
    .locals 11

    .prologue
    .line 299
    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move-object/from16 v7, p6

    move-wide/from16 v8, p7

    invoke-static/range {v0 .. v9}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILcom/google/android/exoplayer2/drm/DrmInitData;J)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;
    .locals 27

    .prologue
    .line 342
    new-instance v0, Lcom/google/android/exoplayer2/Format;

    const/4 v2, 0x0

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/high16 v9, -0x40800000    # -1.0f

    const/4 v10, -0x1

    const/high16 v11, -0x40800000    # -1.0f

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, -0x1

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, -0x1

    const-wide v22, 0x7fffffffffffffffL

    const/16 v24, 0x0

    const/16 v26, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v25, p4

    invoke-direct/range {v0 .. v26}, Lcom/google/android/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BIIIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<[B>;",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;",
            ")",
            "Lcom/google/android/exoplayer2/Format;"
        }
    .end annotation

    .prologue
    .line 316
    new-instance v0, Lcom/google/android/exoplayer2/Format;

    const/4 v2, 0x0

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/high16 v9, -0x40800000    # -1.0f

    const/4 v10, -0x1

    const/high16 v11, -0x40800000    # -1.0f

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, -0x1

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, 0x0

    const/16 v21, -0x1

    const-wide v22, 0x7fffffffffffffffL

    const/16 v26, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v20, p5

    move-object/from16 v24, p4

    move-object/from16 v25, p6

    invoke-direct/range {v0 .. v26}, Lcom/google/android/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BIIIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIFLjava/util/List;I)Lcom/google/android/exoplayer2/Format;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIF",
            "Ljava/util/List",
            "<[B>;I)",
            "Lcom/google/android/exoplayer2/Format;"
        }
    .end annotation

    .prologue
    .line 194
    new-instance v0, Lcom/google/android/exoplayer2/Format;

    const/4 v6, -0x1

    const/4 v10, -0x1

    const/high16 v11, -0x40800000    # -1.0f

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, -0x1

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v20, 0x0

    const/16 v21, -0x1

    const-wide v22, 0x7fffffffffffffffL

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v19, p9

    move-object/from16 v24, p8

    invoke-direct/range {v0 .. v26}, Lcom/google/android/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BIIIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/util/List;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "III",
            "Ljava/util/List",
            "<[B>;I",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/exoplayer2/Format;"
        }
    .end annotation

    .prologue
    .line 231
    new-instance v0, Lcom/google/android/exoplayer2/Format;

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/high16 v9, -0x40800000    # -1.0f

    const/4 v10, -0x1

    const/high16 v11, -0x40800000    # -1.0f

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v21, -0x1

    const-wide v22, 0x7fffffffffffffffL

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v14, p5

    move/from16 v15, p6

    move/from16 v19, p8

    move-object/from16 v20, p9

    move-object/from16 v24, p7

    invoke-direct/range {v0 .. v26}, Lcom/google/android/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BIIIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lcom/google/android/exoplayer2/Format;
    .locals 8

    .prologue
    .line 270
    const/4 v7, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v7}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;I)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;I)Lcom/google/android/exoplayer2/Format;
    .locals 27

    .prologue
    .line 277
    new-instance v0, Lcom/google/android/exoplayer2/Format;

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/high16 v9, -0x40800000    # -1.0f

    const/4 v10, -0x1

    const/high16 v11, -0x40800000    # -1.0f

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, -0x1

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const-wide v22, 0x7fffffffffffffffL

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v19, p5

    move-object/from16 v20, p6

    move/from16 v21, p7

    invoke-direct/range {v0 .. v26}, Lcom/google/android/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BIIIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-object v0
.end method

.method private static a(Landroid/media/MediaFormat;Ljava/lang/String;F)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 598
    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_0

    .line 599
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    .line 601
    :cond_0
    return-void
.end method

.method private static a(Landroid/media/MediaFormat;Ljava/lang/String;I)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 591
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 592
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 594
    :cond_0
    return-void
.end method

.method private static a(Landroid/media/MediaFormat;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 584
    if-eqz p2, :cond_0

    .line 585
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lcom/google/android/exoplayer2/Format;
    .locals 27

    .prologue
    .line 327
    new-instance v0, Lcom/google/android/exoplayer2/Format;

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/high16 v9, -0x40800000    # -1.0f

    const/4 v10, -0x1

    const/high16 v11, -0x40800000    # -1.0f

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, -0x1

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v21, -0x1

    const-wide v22, 0x7fffffffffffffffL

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v19, p5

    move-object/from16 v20, p6

    invoke-direct/range {v0 .. v26}, Lcom/google/android/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BIIIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 490
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->j:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/google/android/exoplayer2/Format;->k:I

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer2/Format;->j:I

    iget v1, p0, Lcom/google/android/exoplayer2/Format;->k:I

    mul-int/2addr v0, v1

    goto :goto_0
.end method

.method public a(I)Lcom/google/android/exoplayer2/Format;
    .locals 29

    .prologue
    .line 417
    new-instance v2, Lcom/google/android/exoplayer2/Format;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/Format;->a:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/Format;->e:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/Format;->f:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer2/Format;->c:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/android/exoplayer2/Format;->b:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/exoplayer2/Format;->j:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/exoplayer2/Format;->k:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/exoplayer2/Format;->l:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/android/exoplayer2/Format;->m:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/exoplayer2/Format;->n:F

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/exoplayer2/Format;->p:[B

    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/exoplayer2/Format;->o:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->q:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->r:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->s:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->t:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->u:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->w:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->x:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->y:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/exoplayer2/Format;->v:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->h:Ljava/util/List;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->i:Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->d:Lcom/google/android/exoplayer2/metadata/Metadata;

    move-object/from16 v28, v0

    move/from16 v8, p1

    invoke-direct/range {v2 .. v28}, Lcom/google/android/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BIIIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-object v2
.end method

.method public a(II)Lcom/google/android/exoplayer2/Format;
    .locals 29

    .prologue
    .line 462
    new-instance v2, Lcom/google/android/exoplayer2/Format;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/Format;->a:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/Format;->e:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/Format;->f:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer2/Format;->c:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/android/exoplayer2/Format;->b:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/android/exoplayer2/Format;->g:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/exoplayer2/Format;->j:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/exoplayer2/Format;->k:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/exoplayer2/Format;->l:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/android/exoplayer2/Format;->m:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/exoplayer2/Format;->n:F

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/exoplayer2/Format;->p:[B

    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/exoplayer2/Format;->o:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->q:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->r:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->s:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->w:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->x:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->y:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/exoplayer2/Format;->v:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->h:Ljava/util/List;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->i:Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->d:Lcom/google/android/exoplayer2/metadata/Metadata;

    move-object/from16 v28, v0

    move/from16 v19, p1

    move/from16 v20, p2

    invoke-direct/range {v2 .. v28}, Lcom/google/android/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BIIIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-object v2
.end method

.method public a(J)Lcom/google/android/exoplayer2/Format;
    .locals 29

    .prologue
    .line 425
    new-instance v2, Lcom/google/android/exoplayer2/Format;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/Format;->a:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/Format;->e:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/Format;->f:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer2/Format;->c:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/android/exoplayer2/Format;->b:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/android/exoplayer2/Format;->g:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/exoplayer2/Format;->j:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/exoplayer2/Format;->k:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/exoplayer2/Format;->l:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/android/exoplayer2/Format;->m:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/exoplayer2/Format;->n:F

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/exoplayer2/Format;->p:[B

    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/exoplayer2/Format;->o:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->q:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->r:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->s:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->t:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->u:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->w:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->x:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->y:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->h:Ljava/util/List;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->i:Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->d:Lcom/google/android/exoplayer2/metadata/Metadata;

    move-object/from16 v28, v0

    move-wide/from16 v24, p1

    invoke-direct/range {v2 .. v28}, Lcom/google/android/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BIIIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-object v2
.end method

.method public a(Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;
    .locals 29

    .prologue
    .line 442
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_0

    .line 454
    :goto_0
    return-object p0

    .line 446
    :cond_0
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/android/exoplayer2/Format;->a:Ljava/lang/String;

    .line 447
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/Format;->c:Ljava/lang/String;

    if-nez v2, :cond_1

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/google/android/exoplayer2/Format;->c:Ljava/lang/String;

    .line 448
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer2/Format;->b:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_2

    move-object/from16 v0, p1

    iget v7, v0, Lcom/google/android/exoplayer2/Format;->b:I

    .line 449
    :goto_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer2/Format;->l:F

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v2, v2, v4

    if-nez v2, :cond_3

    move-object/from16 v0, p1

    iget v11, v0, Lcom/google/android/exoplayer2/Format;->l:F

    .line 450
    :goto_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer2/Format;->w:I

    move-object/from16 v0, p1

    iget v4, v0, Lcom/google/android/exoplayer2/Format;->w:I

    or-int v21, v2, v4

    .line 451
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/Format;->x:Ljava/lang/String;

    if-nez v2, :cond_4

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->x:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 452
    :goto_4
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/exoplayer2/Format;->i:Lcom/google/android/exoplayer2/drm/DrmInitData;

    if-eqz v2, :cond_5

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->i:Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-object/from16 v27, v0

    .line 454
    :goto_5
    new-instance v2, Lcom/google/android/exoplayer2/Format;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/Format;->e:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/Format;->f:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/android/exoplayer2/Format;->g:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/exoplayer2/Format;->j:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/exoplayer2/Format;->k:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/android/exoplayer2/Format;->m:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/exoplayer2/Format;->n:F

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/exoplayer2/Format;->p:[B

    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/exoplayer2/Format;->o:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->q:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->r:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->s:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->t:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->u:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->y:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/exoplayer2/Format;->v:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->h:Ljava/util/List;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->d:Lcom/google/android/exoplayer2/metadata/Metadata;

    move-object/from16 v28, v0

    invoke-direct/range {v2 .. v28}, Lcom/google/android/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BIIIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    move-object/from16 p0, v2

    goto/16 :goto_0

    .line 447
    :cond_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer2/Format;->c:Ljava/lang/String;

    goto/16 :goto_1

    .line 448
    :cond_2
    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/android/exoplayer2/Format;->b:I

    goto/16 :goto_2

    .line 449
    :cond_3
    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/exoplayer2/Format;->l:F

    goto/16 :goto_3

    .line 451
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->x:Ljava/lang/String;

    move-object/from16 v22, v0

    goto/16 :goto_4

    .line 452
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->i:Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-object/from16 v27, v0

    goto/16 :goto_5
.end method

.method public a(Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;
    .locals 29

    .prologue
    .line 470
    new-instance v2, Lcom/google/android/exoplayer2/Format;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/Format;->a:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/Format;->e:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/Format;->f:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer2/Format;->c:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/android/exoplayer2/Format;->b:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/android/exoplayer2/Format;->g:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/exoplayer2/Format;->j:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/exoplayer2/Format;->k:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/exoplayer2/Format;->l:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/android/exoplayer2/Format;->m:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/exoplayer2/Format;->n:F

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/exoplayer2/Format;->p:[B

    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/exoplayer2/Format;->o:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->q:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->r:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->s:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->t:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->u:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->w:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->x:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->y:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/exoplayer2/Format;->v:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->h:Ljava/util/List;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->d:Lcom/google/android/exoplayer2/metadata/Metadata;

    move-object/from16 v28, v0

    move-object/from16 v27, p1

    invoke-direct/range {v2 .. v28}, Lcom/google/android/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BIIIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-object v2
.end method

.method public a(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/Format;
    .locals 29

    .prologue
    .line 478
    new-instance v2, Lcom/google/android/exoplayer2/Format;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/Format;->a:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/Format;->e:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/Format;->f:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer2/Format;->c:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/android/exoplayer2/Format;->b:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/android/exoplayer2/Format;->g:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/exoplayer2/Format;->j:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/exoplayer2/Format;->k:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/exoplayer2/Format;->l:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/android/exoplayer2/Format;->m:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/exoplayer2/Format;->n:F

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/exoplayer2/Format;->p:[B

    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/exoplayer2/Format;->o:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->q:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->r:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->s:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->t:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->u:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->w:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->x:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->y:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/exoplayer2/Format;->v:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->h:Ljava/util/List;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->i:Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-object/from16 v27, v0

    move-object/from16 v28, p1

    invoke-direct/range {v2 .. v28}, Lcom/google/android/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BIIIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-object v2
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;)Lcom/google/android/exoplayer2/Format;
    .locals 29

    .prologue
    .line 434
    new-instance v2, Lcom/google/android/exoplayer2/Format;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/Format;->e:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/Format;->f:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/android/exoplayer2/Format;->g:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/exoplayer2/Format;->l:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/android/exoplayer2/Format;->m:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/exoplayer2/Format;->n:F

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/exoplayer2/Format;->p:[B

    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/exoplayer2/Format;->o:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->q:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->r:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->s:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->t:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->u:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->y:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/exoplayer2/Format;->v:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->h:Ljava/util/List;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->i:Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->d:Lcom/google/android/exoplayer2/metadata/Metadata;

    move-object/from16 v28, v0

    move-object/from16 v3, p1

    move-object/from16 v6, p2

    move/from16 v7, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v21, p6

    move-object/from16 v22, p7

    invoke-direct/range {v2 .. v28}, Lcom/google/android/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BIIIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-object v2
.end method

.method public final b()Landroid/media/MediaFormat;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 499
    new-instance v2, Landroid/media/MediaFormat;

    invoke-direct {v2}, Landroid/media/MediaFormat;-><init>()V

    .line 500
    const-string v0, "mime"

    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->f:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    const-string v0, "language"

    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->x:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Lcom/google/android/exoplayer2/Format;->a(Landroid/media/MediaFormat;Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    const-string v0, "max-input-size"

    iget v1, p0, Lcom/google/android/exoplayer2/Format;->g:I

    invoke-static {v2, v0, v1}, Lcom/google/android/exoplayer2/Format;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 503
    const-string v0, "width"

    iget v1, p0, Lcom/google/android/exoplayer2/Format;->j:I

    invoke-static {v2, v0, v1}, Lcom/google/android/exoplayer2/Format;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 504
    const-string v0, "height"

    iget v1, p0, Lcom/google/android/exoplayer2/Format;->k:I

    invoke-static {v2, v0, v1}, Lcom/google/android/exoplayer2/Format;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 505
    const-string v0, "frame-rate"

    iget v1, p0, Lcom/google/android/exoplayer2/Format;->l:F

    invoke-static {v2, v0, v1}, Lcom/google/android/exoplayer2/Format;->a(Landroid/media/MediaFormat;Ljava/lang/String;F)V

    .line 506
    const-string v0, "rotation-degrees"

    iget v1, p0, Lcom/google/android/exoplayer2/Format;->m:I

    invoke-static {v2, v0, v1}, Lcom/google/android/exoplayer2/Format;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 507
    const-string v0, "channel-count"

    iget v1, p0, Lcom/google/android/exoplayer2/Format;->q:I

    invoke-static {v2, v0, v1}, Lcom/google/android/exoplayer2/Format;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 508
    const-string v0, "sample-rate"

    iget v1, p0, Lcom/google/android/exoplayer2/Format;->r:I

    invoke-static {v2, v0, v1}, Lcom/google/android/exoplayer2/Format;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 509
    const-string v0, "encoder-delay"

    iget v1, p0, Lcom/google/android/exoplayer2/Format;->t:I

    invoke-static {v2, v0, v1}, Lcom/google/android/exoplayer2/Format;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 510
    const-string v0, "encoder-padding"

    iget v1, p0, Lcom/google/android/exoplayer2/Format;->u:I

    invoke-static {v2, v0, v1}, Lcom/google/android/exoplayer2/Format;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 511
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 512
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "csd-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 511
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 514
    :cond_0
    return-object v2
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 639
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 548
    if-ne p0, p1, :cond_1

    move v3, v4

    .line 579
    :cond_0
    :goto_0
    return v3

    .line 551
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 554
    check-cast p1, Lcom/google/android/exoplayer2/Format;

    .line 555
    iget v0, p0, Lcom/google/android/exoplayer2/Format;->b:I

    iget v1, p1, Lcom/google/android/exoplayer2/Format;->b:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/Format;->g:I

    iget v1, p1, Lcom/google/android/exoplayer2/Format;->g:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/Format;->j:I

    iget v1, p1, Lcom/google/android/exoplayer2/Format;->j:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/Format;->k:I

    iget v1, p1, Lcom/google/android/exoplayer2/Format;->k:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/Format;->l:F

    iget v1, p1, Lcom/google/android/exoplayer2/Format;->l:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/Format;->m:I

    iget v1, p1, Lcom/google/android/exoplayer2/Format;->m:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/Format;->n:F

    iget v1, p1, Lcom/google/android/exoplayer2/Format;->n:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/Format;->o:I

    iget v1, p1, Lcom/google/android/exoplayer2/Format;->o:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/Format;->q:I

    iget v1, p1, Lcom/google/android/exoplayer2/Format;->q:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/Format;->r:I

    iget v1, p1, Lcom/google/android/exoplayer2/Format;->r:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/Format;->s:I

    iget v1, p1, Lcom/google/android/exoplayer2/Format;->s:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/Format;->t:I

    iget v1, p1, Lcom/google/android/exoplayer2/Format;->t:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/Format;->u:I

    iget v1, p1, Lcom/google/android/exoplayer2/Format;->u:I

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer2/Format;->v:J

    iget-wide v6, p1, Lcom/google/android/exoplayer2/Format;->v:J

    cmp-long v0, v0, v6

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/Format;->w:I

    iget v1, p1, Lcom/google/android/exoplayer2/Format;->w:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/exoplayer2/Format;->a:Ljava/lang/String;

    .line 562
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/v;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->x:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/exoplayer2/Format;->x:Ljava/lang/String;

    .line 563
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/v;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/Format;->y:I

    iget v1, p1, Lcom/google/android/exoplayer2/Format;->y:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->e:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/exoplayer2/Format;->e:Ljava/lang/String;

    .line 565
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/v;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->f:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/exoplayer2/Format;->f:Ljava/lang/String;

    .line 566
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/v;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/exoplayer2/Format;->c:Ljava/lang/String;

    .line 567
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/v;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->i:Lcom/google/android/exoplayer2/drm/DrmInitData;

    iget-object v1, p1, Lcom/google/android/exoplayer2/Format;->i:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 568
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/v;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->d:Lcom/google/android/exoplayer2/metadata/Metadata;

    iget-object v1, p1, Lcom/google/android/exoplayer2/Format;->d:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 569
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/v;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->p:[B

    iget-object v1, p1, Lcom/google/android/exoplayer2/Format;->p:[B

    .line 570
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->h:Ljava/util/List;

    .line 571
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p1, Lcom/google/android/exoplayer2/Format;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    move v2, v3

    .line 574
    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 575
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->h:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iget-object v1, p1, Lcom/google/android/exoplayer2/Format;->h:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 574
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    move v3, v4

    .line 579
    goto/16 :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 526
    iget v0, p0, Lcom/google/android/exoplayer2/Format;->z:I

    if-nez v0, :cond_0

    .line 528
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->a:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 529
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->e:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 530
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->f:Ljava/lang/String;

    if-nez v0, :cond_3

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    .line 531
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->c:Ljava/lang/String;

    if-nez v0, :cond_4

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    .line 532
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->b:I

    add-int/2addr v0, v2

    .line 533
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->j:I

    add-int/2addr v0, v2

    .line 534
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->k:I

    add-int/2addr v0, v2

    .line 535
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->q:I

    add-int/2addr v0, v2

    .line 536
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->r:I

    add-int/2addr v0, v2

    .line 537
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->x:Ljava/lang/String;

    if-nez v0, :cond_5

    move v0, v1

    :goto_4
    add-int/2addr v0, v2

    .line 538
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->y:I

    add-int/2addr v0, v2

    .line 539
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->i:Lcom/google/android/exoplayer2/drm/DrmInitData;

    if-nez v0, :cond_6

    move v0, v1

    :goto_5
    add-int/2addr v0, v2

    .line 540
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->d:Lcom/google/android/exoplayer2/metadata/Metadata;

    if-nez v2, :cond_7

    :goto_6
    add-int/2addr v0, v1

    .line 541
    iput v0, p0, Lcom/google/android/exoplayer2/Format;->z:I

    .line 543
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/Format;->z:I

    return v0

    .line 528
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 529
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    .line 530
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_2

    .line 531
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_3

    .line 537
    :cond_5
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->x:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_4

    .line 539
    :cond_6
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->i:Lcom/google/android/exoplayer2/drm/DrmInitData;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/drm/DrmInitData;->hashCode()I

    move-result v0

    goto :goto_5

    .line 540
    :cond_7
    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->d:Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/metadata/Metadata;->hashCode()I

    move-result v1

    goto :goto_6
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 519
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Format("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer2/Format;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer2/Format;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer2/Format;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer2/Format;->l:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer2/Format;->q:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer2/Format;->r:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "])"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 644
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 645
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 646
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 647
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 648
    iget v0, p0, Lcom/google/android/exoplayer2/Format;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 649
    iget v0, p0, Lcom/google/android/exoplayer2/Format;->g:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 650
    iget v0, p0, Lcom/google/android/exoplayer2/Format;->j:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 651
    iget v0, p0, Lcom/google/android/exoplayer2/Format;->k:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 652
    iget v0, p0, Lcom/google/android/exoplayer2/Format;->l:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 653
    iget v0, p0, Lcom/google/android/exoplayer2/Format;->m:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 654
    iget v0, p0, Lcom/google/android/exoplayer2/Format;->n:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 655
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->p:[B

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 656
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->p:[B

    if-eqz v0, :cond_0

    .line 657
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->p:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 659
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/Format;->o:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 660
    iget v0, p0, Lcom/google/android/exoplayer2/Format;->q:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 661
    iget v0, p0, Lcom/google/android/exoplayer2/Format;->r:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 662
    iget v0, p0, Lcom/google/android/exoplayer2/Format;->s:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 663
    iget v0, p0, Lcom/google/android/exoplayer2/Format;->t:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 664
    iget v0, p0, Lcom/google/android/exoplayer2/Format;->u:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 665
    iget v0, p0, Lcom/google/android/exoplayer2/Format;->w:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 666
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->x:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 667
    iget v0, p0, Lcom/google/android/exoplayer2/Format;->y:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 668
    iget-wide v2, p0, Lcom/google/android/exoplayer2/Format;->v:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 669
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 670
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v2, v1

    .line 671
    :goto_1
    if-ge v2, v3, :cond_2

    .line 672
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->h:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 671
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    move v0, v1

    .line 655
    goto :goto_0

    .line 674
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->i:Lcom/google/android/exoplayer2/drm/DrmInitData;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 675
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->d:Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 676
    return-void
.end method
