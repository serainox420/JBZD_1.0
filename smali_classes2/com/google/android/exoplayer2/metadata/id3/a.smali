.class public final Lcom/google/android/exoplayer2/metadata/id3/a;
.super Ljava/lang/Object;
.source "Id3Decoder.java"

# interfaces
.implements Lcom/google/android/exoplayer2/metadata/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/metadata/id3/a$b;,
        Lcom/google/android/exoplayer2/metadata/id3/a$a;
    }
.end annotation


# static fields
.field public static final a:I


# instance fields
.field private final b:Lcom/google/android/exoplayer2/metadata/id3/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-string v0, "ID3"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/v;->g(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/metadata/id3/a;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/metadata/id3/a;-><init>(Lcom/google/android/exoplayer2/metadata/id3/a$a;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/metadata/id3/a$a;)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/google/android/exoplayer2/metadata/id3/a;->b:Lcom/google/android/exoplayer2/metadata/id3/a$a;

    .line 83
    return-void
.end method

.method private static a([BII)I
    .locals 2

    .prologue
    .line 675
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/metadata/id3/a;->b([BI)I

    move-result v0

    .line 678
    if-eqz p2, :cond_0

    const/4 v1, 0x3

    if-ne p2, v1, :cond_2

    .line 690
    :cond_0
    :goto_0
    return v0

    .line 687
    :cond_1
    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/metadata/id3/a;->b([BI)I

    move-result v0

    .line 683
    :cond_2
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_3

    .line 684
    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_1

    add-int/lit8 v1, v0, 0x1

    aget-byte v1, p0, v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 690
    :cond_3
    array-length v0, p0

    goto :goto_0
.end method

.method private static a(Lcom/google/android/exoplayer2/util/l;II)Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x2

    const/4 v8, 0x0

    .line 492
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->f()I

    move-result v2

    .line 493
    invoke-static {v2}, Lcom/google/android/exoplayer2/metadata/id3/a;->a(I)Ljava/lang/String;

    move-result-object v3

    .line 495
    add-int/lit8 v1, p1, -0x1

    new-array v4, v1, [B

    .line 496
    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v4, v8, v1}, Lcom/google/android/exoplayer2/util/l;->a([BII)V

    .line 500
    if-ne p2, v0, :cond_1

    .line 502
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "image/"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x3

    const-string v7, "ISO-8859-1"

    invoke-direct {v5, v4, v8, v6, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v5}, Lcom/google/android/exoplayer2/util/v;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 503
    const-string v5, "image/jpg"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 504
    const-string v1, "image/jpeg"

    .line 514
    :cond_0
    :goto_0
    add-int/lit8 v5, v0, 0x1

    aget-byte v5, v4, v5

    and-int/lit16 v5, v5, 0xff

    .line 516
    add-int/lit8 v0, v0, 0x2

    .line 517
    invoke-static {v4, v0, v2}, Lcom/google/android/exoplayer2/metadata/id3/a;->a([BII)I

    move-result v6

    .line 518
    new-instance v7, Ljava/lang/String;

    sub-int v8, v6, v0

    invoke-direct {v7, v4, v0, v8, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 521
    invoke-static {v2}, Lcom/google/android/exoplayer2/metadata/id3/a;->b(I)I

    move-result v0

    add-int/2addr v0, v6

    .line 522
    array-length v2, v4

    invoke-static {v4, v0, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 524
    new-instance v2, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;

    invoke-direct {v2, v1, v7, v5, v0}, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;-><init>(Ljava/lang/String;Ljava/lang/String;I[B)V

    return-object v2

    .line 507
    :cond_1
    invoke-static {v4, v8}, Lcom/google/android/exoplayer2/metadata/id3/a;->b([BI)I

    move-result v0

    .line 508
    new-instance v1, Ljava/lang/String;

    const-string v5, "ISO-8859-1"

    invoke-direct {v1, v4, v8, v0, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/v;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 509
    const/16 v5, 0x2f

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 510
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "image/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static a(Lcom/google/android/exoplayer2/util/l;IIZILcom/google/android/exoplayer2/metadata/id3/a$a;)Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 557
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->d()I

    move-result v0

    .line 558
    iget-object v1, p0, Lcom/google/android/exoplayer2/util/l;->a:[B

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/metadata/id3/a;->b([BI)I

    move-result v2

    .line 559
    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/exoplayer2/util/l;->a:[B

    sub-int v4, v2, v0

    const-string v5, "ISO-8859-1"

    invoke-direct {v1, v3, v0, v4, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 561
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    .line 563
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->m()I

    move-result v2

    .line 564
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->m()I

    move-result v3

    .line 565
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->k()J

    move-result-wide v4

    .line 566
    const-wide v6, 0xffffffffL

    cmp-long v6, v4, v6

    if-nez v6, :cond_0

    .line 567
    const-wide/16 v4, -0x1

    .line 569
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->k()J

    move-result-wide v6

    .line 570
    const-wide v8, 0xffffffffL

    cmp-long v8, v6, v8

    if-nez v8, :cond_1

    .line 571
    const-wide/16 v6, -0x1

    .line 574
    :cond_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 575
    add-int/2addr v0, p1

    .line 576
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->d()I

    move-result v8

    if-ge v8, v0, :cond_3

    .line 577
    invoke-static {p2, p0, p3, p4, p5}, Lcom/google/android/exoplayer2/metadata/id3/a;->a(ILcom/google/android/exoplayer2/util/l;ZILcom/google/android/exoplayer2/metadata/id3/a$a;)Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    move-result-object v8

    .line 579
    if-eqz v8, :cond_2

    .line 580
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 584
    :cond_3
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v8, v0, [Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    .line 585
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 586
    new-instance v0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;-><init>(Ljava/lang/String;IIJJ[Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;)V

    return-object v0
.end method

.method private static a(ILcom/google/android/exoplayer2/util/l;ZILcom/google/android/exoplayer2/metadata/id3/a$a;)Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    .locals 14

    .prologue
    .line 236
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/l;->f()I

    move-result v2

    .line 237
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/l;->f()I

    move-result v3

    .line 238
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/l;->f()I

    move-result v4

    .line 239
    const/4 v0, 0x3

    if-lt p0, v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/l;->f()I

    move-result v5

    .line 242
    :goto_0
    const/4 v0, 0x4

    if-ne p0, v0, :cond_2

    .line 243
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/l;->s()I

    move-result v6

    .line 244
    if-nez p2, :cond_0

    .line 245
    and-int/lit16 v0, v6, 0xff

    shr-int/lit8 v1, v6, 0x8

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    shr-int/lit8 v1, v6, 0x10

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    shr-int/lit8 v1, v6, 0x18

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x15

    or-int v6, v0, v1

    .line 254
    :cond_0
    :goto_1
    const/4 v0, 0x3

    if-lt p0, v0, :cond_4

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/l;->g()I

    move-result v0

    move v10, v0

    .line 255
    :goto_2
    if-nez v2, :cond_5

    if-nez v3, :cond_5

    if-nez v4, :cond_5

    if-nez v5, :cond_5

    if-nez v6, :cond_5

    if-nez v10, :cond_5

    .line 258
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/l;->c()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    .line 259
    const/4 v0, 0x0

    .line 359
    :goto_3
    return-object v0

    .line 239
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 248
    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    .line 249
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/l;->s()I

    move-result v6

    goto :goto_1

    .line 251
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/l;->j()I

    move-result v6

    goto :goto_1

    .line 254
    :cond_4
    const/4 v0, 0x0

    move v10, v0

    goto :goto_2

    .line 262
    :cond_5
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/l;->d()I

    move-result v0

    add-int v11, v0, v6

    .line 263
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/l;->c()I

    move-result v0

    if-le v11, v0, :cond_6

    .line 264
    const-string v0, "Id3Decoder"

    const-string v1, "Frame size exceeds remaining tag data"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/l;->c()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    .line 266
    const/4 v0, 0x0

    goto :goto_3

    .line 269
    :cond_6
    if-eqz p4, :cond_7

    move-object/from16 v0, p4

    move v1, p0

    .line 270
    invoke-interface/range {v0 .. v5}, Lcom/google/android/exoplayer2/metadata/id3/a$a;->a(IIIII)Z

    move-result v0

    if-nez v0, :cond_7

    .line 272
    invoke-virtual {p1, v11}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    .line 273
    const/4 v0, 0x0

    goto :goto_3

    .line 277
    :cond_7
    const/4 v9, 0x0

    .line 278
    const/4 v8, 0x0

    .line 279
    const/4 v7, 0x0

    .line 280
    const/4 v1, 0x0

    .line 281
    const/4 v0, 0x0

    .line 282
    const/4 v12, 0x3

    if-ne p0, v12, :cond_c

    .line 283
    and-int/lit16 v0, v10, 0x80

    if-eqz v0, :cond_9

    const/4 v1, 0x1

    .line 284
    :goto_4
    and-int/lit8 v0, v10, 0x40

    if-eqz v0, :cond_a

    const/4 v8, 0x1

    .line 285
    :goto_5
    and-int/lit8 v0, v10, 0x20

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    :goto_6
    move v9, v1

    move v13, v7

    move v7, v1

    move v1, v8

    move v8, v13

    .line 295
    :goto_7
    if-nez v9, :cond_8

    if-eqz v1, :cond_12

    .line 296
    :cond_8
    const-string v0, "Id3Decoder"

    const-string v1, "Skipping unsupported compressed or encrypted frame"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-virtual {p1, v11}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    .line 298
    const/4 v0, 0x0

    goto :goto_3

    .line 283
    :cond_9
    const/4 v1, 0x0

    goto :goto_4

    .line 284
    :cond_a
    const/4 v8, 0x0

    goto :goto_5

    .line 285
    :cond_b
    const/4 v0, 0x0

    goto :goto_6

    .line 287
    :cond_c
    const/4 v12, 0x4

    if-ne p0, v12, :cond_29

    .line 288
    and-int/lit8 v0, v10, 0x40

    if-eqz v0, :cond_d

    const/4 v1, 0x1

    .line 289
    :goto_8
    and-int/lit8 v0, v10, 0x8

    if-eqz v0, :cond_e

    const/4 v9, 0x1

    .line 290
    :goto_9
    and-int/lit8 v0, v10, 0x4

    if-eqz v0, :cond_f

    const/4 v8, 0x1

    .line 291
    :goto_a
    and-int/lit8 v0, v10, 0x2

    if-eqz v0, :cond_10

    const/4 v7, 0x1

    .line 292
    :goto_b
    and-int/lit8 v0, v10, 0x1

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    :goto_c
    move v13, v1

    move v1, v8

    move v8, v7

    move v7, v0

    move v0, v13

    goto :goto_7

    .line 288
    :cond_d
    const/4 v1, 0x0

    goto :goto_8

    .line 289
    :cond_e
    const/4 v9, 0x0

    goto :goto_9

    .line 290
    :cond_f
    const/4 v8, 0x0

    goto :goto_a

    .line 291
    :cond_10
    const/4 v7, 0x0

    goto :goto_b

    .line 292
    :cond_11
    const/4 v0, 0x0

    goto :goto_c

    .line 301
    :cond_12
    if-eqz v0, :cond_28

    .line 302
    add-int/lit8 v1, v6, -0x1

    .line 303
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/l;->d(I)V

    .line 305
    :goto_d
    if-eqz v7, :cond_13

    .line 306
    add-int/lit8 v1, v1, -0x4

    .line 307
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/l;->d(I)V

    .line 309
    :cond_13
    if-eqz v8, :cond_14

    .line 310
    invoke-static {p1, v1}, Lcom/google/android/exoplayer2/metadata/id3/a;->f(Lcom/google/android/exoplayer2/util/l;I)I

    move-result v1

    .line 315
    :cond_14
    const/16 v0, 0x54

    if-ne v2, v0, :cond_16

    const/16 v0, 0x58

    if-ne v3, v0, :cond_16

    const/16 v0, 0x58

    if-ne v4, v0, :cond_16

    const/4 v0, 0x2

    if-eq p0, v0, :cond_15

    const/16 v0, 0x58

    if-ne v5, v0, :cond_16

    .line 317
    :cond_15
    :try_start_0
    invoke-static {p1, v1}, Lcom/google/android/exoplayer2/metadata/id3/a;->a(Lcom/google/android/exoplayer2/util/l;I)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 359
    :goto_e
    invoke-virtual {p1, v11}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    goto/16 :goto_3

    .line 318
    :cond_16
    const/16 v0, 0x54

    if-ne v2, v0, :cond_18

    .line 319
    const/4 v0, 0x2

    if-ne p0, v0, :cond_17

    :try_start_1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%c%c%c"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 320
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v7

    const/4 v2, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v2, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v2

    invoke-static {v0, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 322
    :goto_f
    invoke-static {p1, v1, v0}, Lcom/google/android/exoplayer2/metadata/id3/a;->a(Lcom/google/android/exoplayer2/util/l;ILjava/lang/String;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v0

    goto :goto_e

    .line 320
    :cond_17
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "%c%c%c%c"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 321
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v8

    const/4 v2, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v2

    const/4 v2, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v2

    const/4 v2, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v2

    invoke-static {v0, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    .line 323
    :cond_18
    const/16 v0, 0x57

    if-ne v2, v0, :cond_1a

    const/16 v0, 0x58

    if-ne v3, v0, :cond_1a

    const/16 v0, 0x58

    if-ne v4, v0, :cond_1a

    const/4 v0, 0x2

    if-eq p0, v0, :cond_19

    const/16 v0, 0x58

    if-ne v5, v0, :cond_1a

    .line 325
    :cond_19
    invoke-static {p1, v1}, Lcom/google/android/exoplayer2/metadata/id3/a;->b(Lcom/google/android/exoplayer2/util/l;I)Lcom/google/android/exoplayer2/metadata/id3/UrlLinkFrame;

    move-result-object v0

    goto :goto_e

    .line 326
    :cond_1a
    const/16 v0, 0x57

    if-ne v2, v0, :cond_1c

    .line 327
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1b

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%c%c%c"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 328
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v7

    const/4 v2, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v2, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v2

    invoke-static {v0, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 330
    :goto_10
    invoke-static {p1, v1, v0}, Lcom/google/android/exoplayer2/metadata/id3/a;->b(Lcom/google/android/exoplayer2/util/l;ILjava/lang/String;)Lcom/google/android/exoplayer2/metadata/id3/UrlLinkFrame;

    move-result-object v0

    goto/16 :goto_e

    .line 328
    :cond_1b
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "%c%c%c%c"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 329
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v8

    const/4 v2, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v2

    const/4 v2, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v2

    const/4 v2, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v2

    invoke-static {v0, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 331
    :cond_1c
    const/16 v0, 0x50

    if-ne v2, v0, :cond_1d

    const/16 v0, 0x52

    if-ne v3, v0, :cond_1d

    const/16 v0, 0x49

    if-ne v4, v0, :cond_1d

    const/16 v0, 0x56

    if-ne v5, v0, :cond_1d

    .line 332
    invoke-static {p1, v1}, Lcom/google/android/exoplayer2/metadata/id3/a;->c(Lcom/google/android/exoplayer2/util/l;I)Lcom/google/android/exoplayer2/metadata/id3/PrivFrame;

    move-result-object v0

    goto/16 :goto_e

    .line 333
    :cond_1d
    const/16 v0, 0x47

    if-ne v2, v0, :cond_1f

    const/16 v0, 0x45

    if-ne v3, v0, :cond_1f

    const/16 v0, 0x4f

    if-ne v4, v0, :cond_1f

    const/16 v0, 0x42

    if-eq v5, v0, :cond_1e

    const/4 v0, 0x2

    if-ne p0, v0, :cond_1f

    .line 335
    :cond_1e
    invoke-static {p1, v1}, Lcom/google/android/exoplayer2/metadata/id3/a;->d(Lcom/google/android/exoplayer2/util/l;I)Lcom/google/android/exoplayer2/metadata/id3/GeobFrame;

    move-result-object v0

    goto/16 :goto_e

    .line 336
    :cond_1f
    const/4 v0, 0x2

    if-ne p0, v0, :cond_21

    const/16 v0, 0x50

    if-ne v2, v0, :cond_22

    const/16 v0, 0x49

    if-ne v3, v0, :cond_22

    const/16 v0, 0x43

    if-ne v4, v0, :cond_22

    .line 338
    :cond_20
    invoke-static {p1, v1, p0}, Lcom/google/android/exoplayer2/metadata/id3/a;->a(Lcom/google/android/exoplayer2/util/l;II)Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;

    move-result-object v0

    goto/16 :goto_e

    .line 336
    :cond_21
    const/16 v0, 0x41

    if-ne v2, v0, :cond_22

    const/16 v0, 0x50

    if-ne v3, v0, :cond_22

    const/16 v0, 0x49

    if-ne v4, v0, :cond_22

    const/16 v0, 0x43

    if-eq v5, v0, :cond_20

    .line 339
    :cond_22
    const/16 v0, 0x43

    if-ne v2, v0, :cond_24

    const/16 v0, 0x4f

    if-ne v3, v0, :cond_24

    const/16 v0, 0x4d

    if-ne v4, v0, :cond_24

    const/16 v0, 0x4d

    if-eq v5, v0, :cond_23

    const/4 v0, 0x2

    if-ne p0, v0, :cond_24

    .line 341
    :cond_23
    invoke-static {p1, v1}, Lcom/google/android/exoplayer2/metadata/id3/a;->e(Lcom/google/android/exoplayer2/util/l;I)Lcom/google/android/exoplayer2/metadata/id3/CommentFrame;

    move-result-object v0

    goto/16 :goto_e

    .line 342
    :cond_24
    const/16 v0, 0x43

    if-ne v2, v0, :cond_25

    const/16 v0, 0x48

    if-ne v3, v0, :cond_25

    const/16 v0, 0x41

    if-ne v4, v0, :cond_25

    const/16 v0, 0x50

    if-ne v5, v0, :cond_25

    move-object v0, p1

    move v2, p0

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    .line 343
    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer2/metadata/id3/a;->a(Lcom/google/android/exoplayer2/util/l;IIZILcom/google/android/exoplayer2/metadata/id3/a$a;)Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;

    move-result-object v0

    goto/16 :goto_e

    .line 345
    :cond_25
    const/16 v0, 0x43

    if-ne v2, v0, :cond_26

    const/16 v0, 0x54

    if-ne v3, v0, :cond_26

    const/16 v0, 0x4f

    if-ne v4, v0, :cond_26

    const/16 v0, 0x43

    if-ne v5, v0, :cond_26

    move-object v0, p1

    move v2, p0

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    .line 346
    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer2/metadata/id3/a;->b(Lcom/google/android/exoplayer2/util/l;IIZILcom/google/android/exoplayer2/metadata/id3/a$a;)Lcom/google/android/exoplayer2/metadata/id3/ChapterTocFrame;

    move-result-object v0

    goto/16 :goto_e

    .line 349
    :cond_26
    const/4 v0, 0x2

    if-ne p0, v0, :cond_27

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%c%c%c"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 350
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v7

    const/4 v2, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v2, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v2

    invoke-static {v0, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 352
    :goto_11
    invoke-static {p1, v1, v0}, Lcom/google/android/exoplayer2/metadata/id3/a;->c(Lcom/google/android/exoplayer2/util/l;ILjava/lang/String;)Lcom/google/android/exoplayer2/metadata/id3/BinaryFrame;

    move-result-object v0

    goto/16 :goto_e

    .line 350
    :cond_27
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "%c%c%c%c"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 351
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v8

    const/4 v2, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v2

    const/4 v2, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v2

    const/4 v2, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v2

    invoke-static {v0, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_11

    .line 355
    :catch_0
    move-exception v0

    .line 356
    :try_start_2
    const-string v0, "Id3Decoder"

    const-string v1, "Unsupported character encoding"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 357
    const/4 v0, 0x0

    .line 359
    invoke-virtual {p1, v11}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    invoke-virtual {p1, v11}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    throw v0

    :cond_28
    move v1, v6

    goto/16 :goto_d

    :cond_29
    move v13, v1

    move v1, v8

    move v8, v7

    move v7, v13

    goto/16 :goto_7
.end method

.method private static a(Lcom/google/android/exoplayer2/util/l;I)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 365
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->f()I

    move-result v0

    .line 366
    invoke-static {v0}, Lcom/google/android/exoplayer2/metadata/id3/a;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 368
    add-int/lit8 v2, p1, -0x1

    new-array v2, v2, [B

    .line 369
    add-int/lit8 v3, p1, -0x1

    invoke-virtual {p0, v2, v5, v3}, Lcom/google/android/exoplayer2/util/l;->a([BII)V

    .line 371
    invoke-static {v2, v5, v0}, Lcom/google/android/exoplayer2/metadata/id3/a;->a([BII)I

    move-result v3

    .line 372
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2, v5, v3, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 375
    invoke-static {v0}, Lcom/google/android/exoplayer2/metadata/id3/a;->b(I)I

    move-result v5

    add-int/2addr v3, v5

    .line 376
    array-length v5, v2

    if-ge v3, v5, :cond_0

    .line 377
    invoke-static {v2, v3, v0}, Lcom/google/android/exoplayer2/metadata/id3/a;->a([BII)I

    move-result v5

    .line 378
    new-instance v0, Ljava/lang/String;

    sub-int/2addr v5, v3

    invoke-direct {v0, v2, v3, v5, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 383
    :goto_0
    new-instance v1, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    const-string v2, "TXXX"

    invoke-direct {v1, v2, v4, v0}, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 380
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private static a(Lcom/google/android/exoplayer2/util/l;ILjava/lang/String;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 388
    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    .line 390
    new-instance v0, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    const-string v1, ""

    invoke-direct {v0, p2, v5, v1}, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    :goto_0
    return-object v0

    .line 393
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->f()I

    move-result v0

    .line 394
    invoke-static {v0}, Lcom/google/android/exoplayer2/metadata/id3/a;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 396
    add-int/lit8 v2, p1, -0x1

    new-array v2, v2, [B

    .line 397
    add-int/lit8 v3, p1, -0x1

    invoke-virtual {p0, v2, v4, v3}, Lcom/google/android/exoplayer2/util/l;->a([BII)V

    .line 399
    invoke-static {v2, v4, v0}, Lcom/google/android/exoplayer2/metadata/id3/a;->a([BII)I

    move-result v0

    .line 400
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2, v4, v0, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 402
    new-instance v0, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    invoke-direct {v0, p2, v5, v3}, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Lcom/google/android/exoplayer2/util/l;)Lcom/google/android/exoplayer2/metadata/id3/a$b;
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 143
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->b()I

    move-result v0

    const/16 v4, 0xa

    if-ge v0, v4, :cond_0

    .line 144
    const-string v0, "Id3Decoder"

    const-string v1, "Data too short to be an ID3 tag"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    .line 190
    :goto_0
    return-object v0

    .line 148
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->j()I

    move-result v0

    .line 149
    sget v4, Lcom/google/android/exoplayer2/metadata/id3/a;->a:I

    if-eq v0, v4, :cond_1

    .line 150
    const-string v1, "Id3Decoder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected first three bytes of ID3 tag header: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    .line 151
    goto :goto_0

    .line 154
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->f()I

    move-result v5

    .line 155
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/l;->d(I)V

    .line 156
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->f()I

    move-result v6

    .line 157
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->r()I

    move-result v0

    .line 159
    const/4 v4, 0x2

    if-ne v5, v4, :cond_4

    .line 160
    and-int/lit8 v4, v6, 0x40

    if-eqz v4, :cond_2

    move v4, v1

    .line 161
    :goto_1
    if-eqz v4, :cond_3

    .line 162
    const-string v0, "Id3Decoder"

    const-string v1, "Skipped ID3 tag with majorVersion=2 and undefined compression scheme"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    .line 163
    goto :goto_0

    :cond_2
    move v4, v2

    .line 160
    goto :goto_1

    :cond_3
    move v3, v0

    .line 189
    :goto_2
    if-ge v5, v7, :cond_d

    and-int/lit16 v0, v6, 0x80

    if-eqz v0, :cond_d

    move v0, v1

    .line 190
    :goto_3
    new-instance v1, Lcom/google/android/exoplayer2/metadata/id3/a$b;

    invoke-direct {v1, v5, v0, v3}, Lcom/google/android/exoplayer2/metadata/id3/a$b;-><init>(IZI)V

    move-object v0, v1

    goto :goto_0

    .line 165
    :cond_4
    const/4 v4, 0x3

    if-ne v5, v4, :cond_7

    .line 166
    and-int/lit8 v3, v6, 0x40

    if-eqz v3, :cond_6

    move v3, v1

    .line 167
    :goto_4
    if-eqz v3, :cond_5

    .line 168
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->m()I

    move-result v3

    .line 169
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/l;->d(I)V

    .line 170
    add-int/lit8 v3, v3, 0x4

    sub-int/2addr v0, v3

    :cond_5
    move v3, v0

    .line 172
    goto :goto_2

    :cond_6
    move v3, v2

    .line 166
    goto :goto_4

    .line 172
    :cond_7
    if-ne v5, v7, :cond_c

    .line 173
    and-int/lit8 v3, v6, 0x40

    if-eqz v3, :cond_a

    move v3, v1

    .line 174
    :goto_5
    if-eqz v3, :cond_8

    .line 175
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->r()I

    move-result v3

    .line 176
    add-int/lit8 v4, v3, -0x4

    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/l;->d(I)V

    .line 177
    sub-int/2addr v0, v3

    .line 179
    :cond_8
    and-int/lit8 v3, v6, 0x10

    if-eqz v3, :cond_b

    move v3, v1

    .line 180
    :goto_6
    if-eqz v3, :cond_9

    .line 181
    add-int/lit8 v0, v0, -0xa

    :cond_9
    move v3, v0

    .line 183
    goto :goto_2

    :cond_a
    move v3, v2

    .line 173
    goto :goto_5

    :cond_b
    move v3, v2

    .line 179
    goto :goto_6

    .line 184
    :cond_c
    const-string v0, "Id3Decoder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipped ID3 tag with unsupported majorVersion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    .line 185
    goto/16 :goto_0

    :cond_d
    move v0, v2

    .line 189
    goto :goto_3
.end method

.method private static a(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 660
    packed-switch p0, :pswitch_data_0

    .line 670
    const-string v0, "ISO-8859-1"

    :goto_0
    return-object v0

    .line 662
    :pswitch_0
    const-string v0, "ISO-8859-1"

    goto :goto_0

    .line 664
    :pswitch_1
    const-string v0, "UTF-16"

    goto :goto_0

    .line 666
    :pswitch_2
    const-string v0, "UTF-16BE"

    goto :goto_0

    .line 668
    :pswitch_3
    const-string v0, "UTF-8"

    goto :goto_0

    .line 660
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static a(Lcom/google/android/exoplayer2/util/l;Z)Z
    .locals 10

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 195
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->d()I

    move-result v4

    .line 197
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->b()I

    move-result v2

    const/16 v3, 0xa

    if-lt v2, v3, :cond_5

    .line 198
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->m()I

    move-result v3

    .line 199
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->s()I

    move-result v2

    .line 200
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->g()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    .line 201
    if-nez v3, :cond_0

    if-nez v2, :cond_0

    if-nez v5, :cond_0

    .line 230
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    :goto_1
    return v0

    .line 204
    :cond_0
    if-nez p1, :cond_7

    .line 206
    int-to-long v6, v2

    const-wide/32 v8, 0x808080

    and-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-eqz v3, :cond_1

    .line 230
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    move v0, v1

    goto :goto_1

    .line 209
    :cond_1
    and-int/lit16 v3, v2, 0xff

    shr-int/lit8 v6, v2, 0x8

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x7

    or-int/2addr v3, v6

    shr-int/lit8 v6, v2, 0x10

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0xe

    or-int/2addr v3, v6

    shr-int/lit8 v2, v2, 0x18

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x15

    or-int/2addr v2, v3

    move v3, v2

    .line 213
    :goto_2
    and-int/lit8 v2, v5, 0x40

    if-eqz v2, :cond_6

    move v2, v0

    .line 216
    :goto_3
    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2

    .line 217
    add-int/lit8 v2, v2, 0x4

    .line 219
    :cond_2
    if-ge v3, v2, :cond_3

    .line 230
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    move v0, v1

    goto :goto_1

    .line 222
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->b()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-ge v2, v3, :cond_4

    .line 230
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    move v0, v1

    goto :goto_1

    .line 225
    :cond_4
    :try_start_2
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/l;->d(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 230
    :catchall_0
    move-exception v0

    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    throw v0

    :cond_5
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    goto :goto_1

    :cond_6
    move v2, v1

    goto :goto_3

    :cond_7
    move v3, v2

    goto :goto_2
.end method

.method private static b(I)I
    .locals 1

    .prologue
    .line 703
    if-eqz p0, :cond_0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private static b([BI)I
    .locals 1

    .prologue
    .line 694
    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    .line 695
    aget-byte v0, p0, p1

    if-nez v0, :cond_0

    .line 699
    :goto_1
    return p1

    .line 694
    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 699
    :cond_1
    array-length p1, p0

    goto :goto_1
.end method

.method private static b(Lcom/google/android/exoplayer2/util/l;IIZILcom/google/android/exoplayer2/metadata/id3/a$a;)Lcom/google/android/exoplayer2/metadata/id3/ChapterTocFrame;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 592
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/l;->d()I

    move-result v10

    .line 593
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/util/l;->a:[B

    invoke-static {v5, v10}, Lcom/google/android/exoplayer2/metadata/id3/a;->b([BI)I

    move-result v5

    .line 594
    new-instance v6, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/exoplayer2/util/l;->a:[B

    sub-int v8, v5, v10

    const-string v9, "ISO-8859-1"

    invoke-direct {v6, v7, v10, v8, v9}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 596
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    .line 598
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/l;->f()I

    move-result v5

    .line 599
    and-int/lit8 v7, v5, 0x2

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    .line 600
    :goto_0
    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_1

    const/4 v8, 0x1

    .line 602
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/l;->f()I

    move-result v11

    .line 603
    new-array v9, v11, [Ljava/lang/String;

    .line 604
    const/4 v5, 0x0

    :goto_2
    if-ge v5, v11, :cond_2

    .line 605
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/l;->d()I

    move-result v12

    .line 606
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/exoplayer2/util/l;->a:[B

    invoke-static {v13, v12}, Lcom/google/android/exoplayer2/metadata/id3/a;->b([BI)I

    move-result v13

    .line 607
    new-instance v14, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/exoplayer2/util/l;->a:[B

    sub-int v16, v13, v12

    const-string v17, "ISO-8859-1"

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v14, v15, v12, v0, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    aput-object v14, v9, v5

    .line 608
    add-int/lit8 v12, v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    .line 604
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 599
    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 600
    :cond_1
    const/4 v8, 0x0

    goto :goto_1

    .line 611
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 612
    add-int v10, v10, p1

    .line 613
    :cond_3
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/l;->d()I

    move-result v11

    if-ge v11, v10, :cond_4

    .line 614
    move/from16 v0, p2

    move-object/from16 v1, p0

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/metadata/id3/a;->a(ILcom/google/android/exoplayer2/util/l;ZILcom/google/android/exoplayer2/metadata/id3/a$a;)Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    move-result-object v11

    .line 616
    if-eqz v11, :cond_3

    .line 617
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 621
    :cond_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v10, v10, [Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    .line 622
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 623
    new-instance v5, Lcom/google/android/exoplayer2/metadata/id3/ChapterTocFrame;

    invoke-direct/range {v5 .. v10}, Lcom/google/android/exoplayer2/metadata/id3/ChapterTocFrame;-><init>(Ljava/lang/String;ZZ[Ljava/lang/String;[Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;)V

    return-object v5
.end method

.method private static b(Lcom/google/android/exoplayer2/util/l;I)Lcom/google/android/exoplayer2/metadata/id3/UrlLinkFrame;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 407
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->f()I

    move-result v0

    .line 408
    invoke-static {v0}, Lcom/google/android/exoplayer2/metadata/id3/a;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 410
    add-int/lit8 v2, p1, -0x1

    new-array v2, v2, [B

    .line 411
    add-int/lit8 v3, p1, -0x1

    invoke-virtual {p0, v2, v5, v3}, Lcom/google/android/exoplayer2/util/l;->a([BII)V

    .line 413
    invoke-static {v2, v5, v0}, Lcom/google/android/exoplayer2/metadata/id3/a;->a([BII)I

    move-result v3

    .line 414
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2, v5, v3, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 417
    invoke-static {v0}, Lcom/google/android/exoplayer2/metadata/id3/a;->b(I)I

    move-result v0

    add-int v1, v3, v0

    .line 418
    array-length v0, v2

    if-ge v1, v0, :cond_0

    .line 419
    invoke-static {v2, v1}, Lcom/google/android/exoplayer2/metadata/id3/a;->b([BI)I

    move-result v3

    .line 420
    new-instance v0, Ljava/lang/String;

    sub-int/2addr v3, v1

    const-string v5, "ISO-8859-1"

    invoke-direct {v0, v2, v1, v3, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 425
    :goto_0
    new-instance v1, Lcom/google/android/exoplayer2/metadata/id3/UrlLinkFrame;

    const-string v2, "WXXX"

    invoke-direct {v1, v2, v4, v0}, Lcom/google/android/exoplayer2/metadata/id3/UrlLinkFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 422
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private static b(Lcom/google/android/exoplayer2/util/l;ILjava/lang/String;)Lcom/google/android/exoplayer2/metadata/id3/UrlLinkFrame;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 430
    if-nez p1, :cond_0

    .line 432
    new-instance v0, Lcom/google/android/exoplayer2/metadata/id3/UrlLinkFrame;

    const-string v1, ""

    invoke-direct {v0, p2, v5, v1}, Lcom/google/android/exoplayer2/metadata/id3/UrlLinkFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    :goto_0
    return-object v0

    .line 435
    :cond_0
    new-array v0, p1, [B

    .line 436
    invoke-virtual {p0, v0, v4, p1}, Lcom/google/android/exoplayer2/util/l;->a([BII)V

    .line 438
    invoke-static {v0, v4}, Lcom/google/android/exoplayer2/metadata/id3/a;->b([BI)I

    move-result v1

    .line 439
    new-instance v2, Ljava/lang/String;

    const-string v3, "ISO-8859-1"

    invoke-direct {v2, v0, v4, v1, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 441
    new-instance v0, Lcom/google/android/exoplayer2/metadata/id3/UrlLinkFrame;

    invoke-direct {v0, p2, v5, v2}, Lcom/google/android/exoplayer2/metadata/id3/UrlLinkFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static c(Lcom/google/android/exoplayer2/util/l;ILjava/lang/String;)Lcom/google/android/exoplayer2/metadata/id3/BinaryFrame;
    .locals 2

    .prologue
    .line 628
    new-array v0, p1, [B

    .line 629
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/exoplayer2/util/l;->a([BII)V

    .line 631
    new-instance v1, Lcom/google/android/exoplayer2/metadata/id3/BinaryFrame;

    invoke-direct {v1, p2, v0}, Lcom/google/android/exoplayer2/metadata/id3/BinaryFrame;-><init>(Ljava/lang/String;[B)V

    return-object v1
.end method

.method private static c(Lcom/google/android/exoplayer2/util/l;I)Lcom/google/android/exoplayer2/metadata/id3/PrivFrame;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 446
    if-nez p1, :cond_0

    .line 448
    new-instance v0, Lcom/google/android/exoplayer2/metadata/id3/PrivFrame;

    const-string v1, ""

    new-array v2, v4, [B

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/metadata/id3/PrivFrame;-><init>(Ljava/lang/String;[B)V

    .line 460
    :goto_0
    return-object v0

    .line 451
    :cond_0
    new-array v0, p1, [B

    .line 452
    invoke-virtual {p0, v0, v4, p1}, Lcom/google/android/exoplayer2/util/l;->a([BII)V

    .line 454
    invoke-static {v0, v4}, Lcom/google/android/exoplayer2/metadata/id3/a;->b([BI)I

    move-result v1

    .line 455
    new-instance v2, Ljava/lang/String;

    const-string v3, "ISO-8859-1"

    invoke-direct {v2, v0, v4, v1, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 457
    add-int/lit8 v1, v1, 0x1

    .line 458
    array-length v3, v0

    invoke-static {v0, v1, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 460
    new-instance v0, Lcom/google/android/exoplayer2/metadata/id3/PrivFrame;

    invoke-direct {v0, v2, v1}, Lcom/google/android/exoplayer2/metadata/id3/PrivFrame;-><init>(Ljava/lang/String;[B)V

    goto :goto_0
.end method

.method private static d(Lcom/google/android/exoplayer2/util/l;I)Lcom/google/android/exoplayer2/metadata/id3/GeobFrame;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 465
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->f()I

    move-result v0

    .line 466
    invoke-static {v0}, Lcom/google/android/exoplayer2/metadata/id3/a;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 468
    add-int/lit8 v2, p1, -0x1

    new-array v2, v2, [B

    .line 469
    add-int/lit8 v3, p1, -0x1

    invoke-virtual {p0, v2, v6, v3}, Lcom/google/android/exoplayer2/util/l;->a([BII)V

    .line 471
    invoke-static {v2, v6}, Lcom/google/android/exoplayer2/metadata/id3/a;->b([BI)I

    move-result v3

    .line 472
    new-instance v4, Ljava/lang/String;

    const-string v5, "ISO-8859-1"

    invoke-direct {v4, v2, v6, v3, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 474
    add-int/lit8 v3, v3, 0x1

    .line 475
    invoke-static {v2, v3, v0}, Lcom/google/android/exoplayer2/metadata/id3/a;->a([BII)I

    move-result v5

    .line 476
    new-instance v6, Ljava/lang/String;

    sub-int v7, v5, v3

    invoke-direct {v6, v2, v3, v7, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 479
    invoke-static {v0}, Lcom/google/android/exoplayer2/metadata/id3/a;->b(I)I

    move-result v3

    add-int/2addr v3, v5

    .line 480
    invoke-static {v2, v3, v0}, Lcom/google/android/exoplayer2/metadata/id3/a;->a([BII)I

    move-result v5

    .line 481
    new-instance v7, Ljava/lang/String;

    sub-int v8, v5, v3

    invoke-direct {v7, v2, v3, v8, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 484
    invoke-static {v0}, Lcom/google/android/exoplayer2/metadata/id3/a;->b(I)I

    move-result v0

    add-int/2addr v0, v5

    .line 485
    array-length v1, v2

    invoke-static {v2, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 487
    new-instance v1, Lcom/google/android/exoplayer2/metadata/id3/GeobFrame;

    invoke-direct {v1, v4, v6, v7, v0}, Lcom/google/android/exoplayer2/metadata/id3/GeobFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    return-object v1
.end method

.method private static e(Lcom/google/android/exoplayer2/util/l;I)Lcom/google/android/exoplayer2/metadata/id3/CommentFrame;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    const/4 v6, 0x0

    .line 529
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->f()I

    move-result v0

    .line 530
    invoke-static {v0}, Lcom/google/android/exoplayer2/metadata/id3/a;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 532
    new-array v2, v4, [B

    .line 533
    invoke-virtual {p0, v2, v6, v4}, Lcom/google/android/exoplayer2/util/l;->a([BII)V

    .line 534
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2, v6, v4}, Ljava/lang/String;-><init>([BII)V

    .line 536
    add-int/lit8 v2, p1, -0x4

    new-array v2, v2, [B

    .line 537
    add-int/lit8 v4, p1, -0x4

    invoke-virtual {p0, v2, v6, v4}, Lcom/google/android/exoplayer2/util/l;->a([BII)V

    .line 539
    invoke-static {v2, v6, v0}, Lcom/google/android/exoplayer2/metadata/id3/a;->a([BII)I

    move-result v4

    .line 540
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v2, v6, v4, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 543
    invoke-static {v0}, Lcom/google/android/exoplayer2/metadata/id3/a;->b(I)I

    move-result v6

    add-int/2addr v4, v6

    .line 544
    array-length v6, v2

    if-ge v4, v6, :cond_0

    .line 545
    invoke-static {v2, v4, v0}, Lcom/google/android/exoplayer2/metadata/id3/a;->a([BII)I

    move-result v6

    .line 546
    new-instance v0, Ljava/lang/String;

    sub-int/2addr v6, v4

    invoke-direct {v0, v2, v4, v6, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 551
    :goto_0
    new-instance v1, Lcom/google/android/exoplayer2/metadata/id3/CommentFrame;

    invoke-direct {v1, v3, v5, v0}, Lcom/google/android/exoplayer2/metadata/id3/CommentFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 548
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private static f(Lcom/google/android/exoplayer2/util/l;I)I
    .locals 6

    .prologue
    .line 643
    iget-object v2, p0, Lcom/google/android/exoplayer2/util/l;->a:[B

    .line 644
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->d()I

    move-result v0

    move v1, v0

    move v0, p1

    :goto_0
    add-int/lit8 v3, v1, 0x1

    if-ge v3, v0, :cond_1

    .line 645
    aget-byte v3, v2, v1

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0xff

    if-ne v3, v4, :cond_0

    add-int/lit8 v3, v1, 0x1

    aget-byte v3, v2, v3

    if-nez v3, :cond_0

    .line 646
    add-int/lit8 v3, v1, 0x2

    add-int/lit8 v4, v1, 0x1

    sub-int v5, v0, v1

    add-int/lit8 v5, v5, -0x2

    invoke-static {v2, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 647
    add-int/lit8 v0, v0, -0x1

    .line 644
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 650
    :cond_1
    return v0
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/metadata/c;)Lcom/google/android/exoplayer2/metadata/Metadata;
    .locals 2

    .prologue
    .line 87
    iget-object v0, p1, Lcom/google/android/exoplayer2/metadata/c;->b:Ljava/nio/ByteBuffer;

    .line 88
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/exoplayer2/metadata/id3/a;->a([BI)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v0

    return-object v0
.end method

.method public a([BI)Lcom/google/android/exoplayer2/metadata/Metadata;
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 99
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 100
    new-instance v5, Lcom/google/android/exoplayer2/util/l;

    invoke-direct {v5, p1, p2}, Lcom/google/android/exoplayer2/util/l;-><init>([BI)V

    .line 102
    invoke-static {v5}, Lcom/google/android/exoplayer2/metadata/id3/a;->a(Lcom/google/android/exoplayer2/util/l;)Lcom/google/android/exoplayer2/metadata/id3/a$b;

    move-result-object v6

    .line 103
    if-nez v6, :cond_0

    move-object v0, v3

    .line 135
    :goto_0
    return-object v0

    .line 107
    :cond_0
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/l;->d()I

    move-result v7

    .line 108
    invoke-static {v6}, Lcom/google/android/exoplayer2/metadata/id3/a$b;->a(Lcom/google/android/exoplayer2/metadata/id3/a$b;)I

    move-result v0

    .line 109
    invoke-static {v6}, Lcom/google/android/exoplayer2/metadata/id3/a$b;->b(Lcom/google/android/exoplayer2/metadata/id3/a$b;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 110
    invoke-static {v6}, Lcom/google/android/exoplayer2/metadata/id3/a$b;->a(Lcom/google/android/exoplayer2/metadata/id3/a$b;)I

    move-result v0

    invoke-static {v5, v0}, Lcom/google/android/exoplayer2/metadata/id3/a;->f(Lcom/google/android/exoplayer2/util/l;I)I

    move-result v0

    .line 112
    :cond_1
    add-int/2addr v0, v7

    invoke-virtual {v5, v0}, Lcom/google/android/exoplayer2/util/l;->b(I)V

    .line 115
    invoke-static {v6}, Lcom/google/android/exoplayer2/metadata/id3/a$b;->c(Lcom/google/android/exoplayer2/metadata/id3/a$b;)I

    move-result v0

    const/4 v7, 0x4

    if-ne v0, v7, :cond_6

    .line 116
    invoke-static {v5, v2}, Lcom/google/android/exoplayer2/metadata/id3/a;->a(Lcom/google/android/exoplayer2/util/l;Z)Z

    move-result v0

    if-nez v0, :cond_6

    .line 117
    invoke-static {v5, v1}, Lcom/google/android/exoplayer2/metadata/id3/a;->a(Lcom/google/android/exoplayer2/util/l;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 126
    :goto_1
    invoke-static {v6}, Lcom/google/android/exoplayer2/metadata/id3/a$b;->c(Lcom/google/android/exoplayer2/metadata/id3/a$b;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    const/4 v1, 0x6

    .line 127
    :cond_2
    :goto_2
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/l;->b()I

    move-result v2

    if-lt v2, v1, :cond_5

    .line 128
    invoke-static {v6}, Lcom/google/android/exoplayer2/metadata/id3/a$b;->c(Lcom/google/android/exoplayer2/metadata/id3/a$b;)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/metadata/id3/a;->b:Lcom/google/android/exoplayer2/metadata/id3/a$a;

    invoke-static {v2, v5, v0, v1, v3}, Lcom/google/android/exoplayer2/metadata/id3/a;->a(ILcom/google/android/exoplayer2/util/l;ZILcom/google/android/exoplayer2/metadata/id3/a$a;)Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    move-result-object v2

    .line 130
    if-eqz v2, :cond_2

    .line 131
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 120
    :cond_3
    const-string v0, "Id3Decoder"

    const-string v1, "Failed to validate V4 ID3 tag"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    .line 121
    goto :goto_0

    .line 126
    :cond_4
    const/16 v1, 0xa

    goto :goto_2

    .line 135
    :cond_5
    new-instance v0, Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-direct {v0, v4}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>(Ljava/util/List;)V

    goto :goto_0

    :cond_6
    move v0, v2

    goto :goto_1
.end method
