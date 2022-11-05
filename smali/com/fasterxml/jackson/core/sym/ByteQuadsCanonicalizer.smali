.class public final Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;
.super Ljava/lang/Object;
.source "ByteQuadsCanonicalizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;
    }
.end annotation


# static fields
.field private static final DEFAULT_T_SIZE:I = 0x40

.field static final MAX_ENTRIES_FOR_REUSE:I = 0x1770

.field private static final MAX_T_SIZE:I = 0x10000

.field private static final MIN_HASH_SIZE:I = 0x10

.field private static final MULT:I = 0x21

.field private static final MULT2:I = 0x1003f

.field private static final MULT3:I = 0x1f


# instance fields
.field private _count:I

.field private final _failOnDoS:Z

.field private _hashArea:[I

.field private _hashShared:Z

.field private _hashSize:I

.field private _intern:Z

.field private _longNameOffset:I

.field private _names:[Ljava/lang/String;

.field private transient _needRehash:Z

.field private final _parent:Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;

.field private _secondaryStart:I

.field private final _seed:I

.field private _spilloverEnd:I

.field private final _tableInfo:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;",
            ">;"
        }
    .end annotation
.end field

.field private _tertiaryShift:I

.field private _tertiaryStart:I


# direct methods
.method private constructor <init>(IZIZ)V
    .locals 2

    .prologue
    const/16 v0, 0x10

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_parent:Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;

    .line 224
    iput p3, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_seed:I

    .line 225
    iput-boolean p2, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_intern:Z

    .line 226
    iput-boolean p4, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_failOnDoS:Z

    .line 228
    if-ge p1, v0, :cond_1

    move p1, v0

    .line 241
    :cond_0
    :goto_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;->createInitial(I)Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tableInfo:Ljava/util/concurrent/atomic/AtomicReference;

    .line 242
    return-void

    .line 233
    :cond_1
    add-int/lit8 v1, p1, -0x1

    and-int/2addr v1, p1

    if-eqz v1, :cond_0

    .line 235
    :goto_1
    if-ge v0, p1, :cond_2

    .line 236
    add-int/2addr v0, v0

    goto :goto_1

    :cond_2
    move p1, v0

    .line 238
    goto :goto_0
.end method

.method private constructor <init>(Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;ZIZLcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;)V
    .locals 2

    .prologue
    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    iput-object p1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_parent:Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;

    .line 251
    iput p3, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_seed:I

    .line 252
    iput-boolean p2, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_intern:Z

    .line 253
    iput-boolean p4, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_failOnDoS:Z

    .line 254
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tableInfo:Ljava/util/concurrent/atomic/AtomicReference;

    .line 257
    iget v0, p5, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;->count:I

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_count:I

    .line 258
    iget v0, p5, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;->size:I

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashSize:I

    .line 259
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashSize:I

    shl-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_secondaryStart:I

    .line 260
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_secondaryStart:I

    iget v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_secondaryStart:I

    shr-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tertiaryStart:I

    .line 261
    iget v0, p5, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;->tertiaryShift:I

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tertiaryShift:I

    .line 263
    iget-object v0, p5, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;->mainHash:[I

    iput-object v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    .line 264
    iget-object v0, p5, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;->names:[Ljava/lang/String;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_names:[Ljava/lang/String;

    .line 266
    iget v0, p5, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;->spilloverEnd:I

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_spilloverEnd:I

    .line 267
    iget v0, p5, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;->longNameOffset:I

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_longNameOffset:I

    .line 270
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_needRehash:Z

    .line 271
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashShared:Z

    .line 272
    return-void
.end method

.method private _appendLongName([II)I
    .locals 4

    .prologue
    .line 936
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_longNameOffset:I

    .line 939
    add-int v1, v0, p2

    iget-object v2, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    array-length v2, v2

    if-le v1, v2, :cond_0

    .line 941
    add-int v1, v0, p2

    iget-object v2, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    array-length v2, v2

    sub-int/2addr v1, v2

    .line 943
    const/16 v2, 0x1000

    iget v3, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashSize:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 945
    iget-object v3, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    array-length v3, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v1, v3

    .line 946
    iget-object v2, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    .line 948
    :cond_0
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    invoke-static {p1, v1, v2, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 949
    iget v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_longNameOffset:I

    add-int/2addr v1, p2

    iput v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_longNameOffset:I

    .line 950
    return v0
.end method

.method private final _calcOffset(I)I
    .locals 1

    .prologue
    .line 601
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashSize:I

    add-int/lit8 v0, v0, -0x1

    and-int/2addr v0, p1

    .line 603
    shl-int/lit8 v0, v0, 0x2

    return v0
.end method

.method static _calcTertiaryShift(I)I
    .locals 2

    .prologue
    .line 1188
    shr-int/lit8 v0, p0, 0x2

    .line 1191
    const/16 v1, 0x40

    if-ge v0, v1, :cond_0

    .line 1192
    const/4 v0, 0x4

    .line 1201
    :goto_0
    return v0

    .line 1194
    :cond_0
    const/16 v1, 0x100

    if-gt v0, v1, :cond_1

    .line 1195
    const/4 v0, 0x5

    goto :goto_0

    .line 1197
    :cond_1
    const/16 v1, 0x400

    if-gt v0, v1, :cond_2

    .line 1198
    const/4 v0, 0x6

    goto :goto_0

    .line 1201
    :cond_2
    const/4 v0, 0x7

    goto :goto_0
.end method

.method private _findOffsetForAdd(I)I
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 887
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_calcOffset(I)I

    move-result v0

    .line 888
    iget-object v2, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    .line 889
    add-int/lit8 v1, v0, 0x3

    aget v1, v2, v1

    if-nez v1, :cond_1

    .line 931
    :cond_0
    :goto_0
    return v0

    .line 894
    :cond_1
    iget v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_secondaryStart:I

    shr-int/lit8 v3, v0, 0x3

    shl-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    .line 895
    add-int/lit8 v3, v1, 0x3

    aget v3, v2, v3

    if-nez v3, :cond_2

    move v0, v1

    .line 897
    goto :goto_0

    .line 901
    :cond_2
    iget v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tertiaryStart:I

    iget v3, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tertiaryShift:I

    add-int/lit8 v3, v3, 0x2

    shr-int/2addr v0, v3

    iget v3, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tertiaryShift:I

    shl-int/2addr v0, v3

    add-int/2addr v0, v1

    .line 902
    iget v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tertiaryShift:I

    shl-int v1, v4, v1

    .line 903
    add-int/2addr v1, v0

    :goto_1
    if-ge v0, v1, :cond_3

    .line 904
    add-int/lit8 v3, v0, 0x3

    aget v3, v2, v3

    if-eqz v3, :cond_0

    .line 903
    add-int/lit8 v0, v0, 0x4

    goto :goto_1

    .line 911
    :cond_3
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_spilloverEnd:I

    .line 912
    iget v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_spilloverEnd:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_spilloverEnd:I

    .line 922
    iget v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashSize:I

    shl-int/lit8 v1, v1, 0x3

    .line 923
    iget v2, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_spilloverEnd:I

    if-lt v2, v1, :cond_0

    .line 924
    iget-boolean v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_failOnDoS:Z

    if-eqz v1, :cond_4

    .line 925
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_reportTooManyCollisions()V

    .line 929
    :cond_4
    iput-boolean v4, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_needRehash:Z

    goto :goto_0
.end method

.method private _findSecondary(II)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 618
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tertiaryStart:I

    iget v2, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tertiaryShift:I

    add-int/lit8 v2, v2, 0x2

    shr-int v2, p1, v2

    iget v3, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tertiaryShift:I

    shl-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 619
    iget-object v2, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    .line 620
    iget v3, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tertiaryShift:I

    shl-int v3, v6, v3

    .line 621
    add-int/2addr v3, v0

    :goto_0
    if-ge v0, v3, :cond_2

    .line 622
    add-int/lit8 v4, v0, 0x3

    aget v4, v2, v4

    .line 623
    aget v5, v2, v0

    if-ne p2, v5, :cond_0

    if-ne v6, v4, :cond_0

    .line 624
    iget-object v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_names:[Ljava/lang/String;

    shr-int/lit8 v0, v0, 0x2

    aget-object v0, v1, v0

    .line 638
    :goto_1
    return-object v0

    .line 626
    :cond_0
    if-nez v4, :cond_1

    move-object v0, v1

    .line 627
    goto :goto_1

    .line 621
    :cond_1
    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 633
    :cond_2
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_spilloverStart()I

    move-result v0

    :goto_2
    iget v3, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_spilloverEnd:I

    if-ge v0, v3, :cond_4

    .line 634
    aget v3, v2, v0

    if-ne p2, v3, :cond_3

    add-int/lit8 v3, v0, 0x3

    aget v3, v2, v3

    if-ne v6, v3, :cond_3

    .line 635
    iget-object v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_names:[Ljava/lang/String;

    shr-int/lit8 v0, v0, 0x2

    aget-object v0, v1, v0

    goto :goto_1

    .line 633
    :cond_3
    add-int/lit8 v0, v0, 0x4

    goto :goto_2

    :cond_4
    move-object v0, v1

    .line 638
    goto :goto_1
.end method

.method private _findSecondary(III)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x2

    .line 643
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tertiaryStart:I

    iget v2, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tertiaryShift:I

    add-int/lit8 v2, v2, 0x2

    shr-int v2, p1, v2

    iget v3, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tertiaryShift:I

    shl-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 644
    iget-object v2, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    .line 646
    const/4 v3, 0x1

    iget v4, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tertiaryShift:I

    shl-int/2addr v3, v4

    .line 647
    add-int/2addr v3, v0

    :goto_0
    if-ge v0, v3, :cond_2

    .line 648
    add-int/lit8 v4, v0, 0x3

    aget v4, v2, v4

    .line 649
    aget v5, v2, v0

    if-ne p2, v5, :cond_0

    add-int/lit8 v5, v0, 0x1

    aget v5, v2, v5

    if-ne p3, v5, :cond_0

    if-ne v6, v4, :cond_0

    .line 650
    iget-object v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_names:[Ljava/lang/String;

    shr-int/lit8 v0, v0, 0x2

    aget-object v0, v1, v0

    .line 661
    :goto_1
    return-object v0

    .line 652
    :cond_0
    if-nez v4, :cond_1

    move-object v0, v1

    .line 653
    goto :goto_1

    .line 647
    :cond_1
    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 656
    :cond_2
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_spilloverStart()I

    move-result v0

    :goto_2
    iget v3, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_spilloverEnd:I

    if-ge v0, v3, :cond_4

    .line 657
    aget v3, v2, v0

    if-ne p2, v3, :cond_3

    add-int/lit8 v3, v0, 0x1

    aget v3, v2, v3

    if-ne p3, v3, :cond_3

    add-int/lit8 v3, v0, 0x3

    aget v3, v2, v3

    if-ne v6, v3, :cond_3

    .line 658
    iget-object v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_names:[Ljava/lang/String;

    shr-int/lit8 v0, v0, 0x2

    aget-object v0, v1, v0

    goto :goto_1

    .line 656
    :cond_3
    add-int/lit8 v0, v0, 0x4

    goto :goto_2

    :cond_4
    move-object v0, v1

    .line 661
    goto :goto_1
.end method

.method private _findSecondary(IIII)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x3

    .line 666
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tertiaryStart:I

    iget v2, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tertiaryShift:I

    add-int/lit8 v2, v2, 0x2

    shr-int v2, p1, v2

    iget v3, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tertiaryShift:I

    shl-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 667
    iget-object v2, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    .line 669
    const/4 v3, 0x1

    iget v4, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tertiaryShift:I

    shl-int/2addr v3, v4

    .line 670
    add-int/2addr v3, v0

    :goto_0
    if-ge v0, v3, :cond_2

    .line 671
    add-int/lit8 v4, v0, 0x3

    aget v4, v2, v4

    .line 672
    aget v5, v2, v0

    if-ne p2, v5, :cond_0

    add-int/lit8 v5, v0, 0x1

    aget v5, v2, v5

    if-ne p3, v5, :cond_0

    add-int/lit8 v5, v0, 0x2

    aget v5, v2, v5

    if-ne p4, v5, :cond_0

    if-ne v6, v4, :cond_0

    .line 673
    iget-object v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_names:[Ljava/lang/String;

    shr-int/lit8 v0, v0, 0x2

    aget-object v0, v1, v0

    .line 685
    :goto_1
    return-object v0

    .line 675
    :cond_0
    if-nez v4, :cond_1

    move-object v0, v1

    .line 676
    goto :goto_1

    .line 670
    :cond_1
    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 679
    :cond_2
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_spilloverStart()I

    move-result v0

    :goto_2
    iget v3, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_spilloverEnd:I

    if-ge v0, v3, :cond_4

    .line 680
    aget v3, v2, v0

    if-ne p2, v3, :cond_3

    add-int/lit8 v3, v0, 0x1

    aget v3, v2, v3

    if-ne p3, v3, :cond_3

    add-int/lit8 v3, v0, 0x2

    aget v3, v2, v3

    if-ne p4, v3, :cond_3

    add-int/lit8 v3, v0, 0x3

    aget v3, v2, v3

    if-ne v6, v3, :cond_3

    .line 682
    iget-object v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_names:[Ljava/lang/String;

    shr-int/lit8 v0, v0, 0x2

    aget-object v0, v1, v0

    goto :goto_1

    .line 679
    :cond_3
    add-int/lit8 v0, v0, 0x4

    goto :goto_2

    :cond_4
    move-object v0, v1

    .line 685
    goto :goto_1
.end method

.method private _findSecondary(II[II)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 690
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tertiaryStart:I

    iget v2, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tertiaryShift:I

    add-int/lit8 v2, v2, 0x2

    shr-int v2, p1, v2

    iget v3, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tertiaryShift:I

    shl-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 691
    iget-object v2, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    .line 693
    const/4 v3, 0x1

    iget v4, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tertiaryShift:I

    shl-int/2addr v3, v4

    .line 694
    add-int/2addr v3, v0

    :goto_0
    if-ge v0, v3, :cond_2

    .line 695
    add-int/lit8 v4, v0, 0x3

    aget v4, v2, v4

    .line 696
    aget v5, v2, v0

    if-ne p2, v5, :cond_0

    if-ne p4, v4, :cond_0

    .line 697
    add-int/lit8 v5, v0, 0x1

    aget v5, v2, v5

    invoke-direct {p0, p3, p4, v5}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_verifyLongName([III)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 698
    iget-object v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_names:[Ljava/lang/String;

    shr-int/lit8 v0, v0, 0x2

    aget-object v0, v1, v0

    .line 712
    :goto_1
    return-object v0

    .line 701
    :cond_0
    if-nez v4, :cond_1

    move-object v0, v1

    .line 702
    goto :goto_1

    .line 694
    :cond_1
    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 705
    :cond_2
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_spilloverStart()I

    move-result v0

    :goto_2
    iget v3, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_spilloverEnd:I

    if-ge v0, v3, :cond_4

    .line 706
    aget v3, v2, v0

    if-ne p2, v3, :cond_3

    add-int/lit8 v3, v0, 0x3

    aget v3, v2, v3

    if-ne p4, v3, :cond_3

    .line 707
    add-int/lit8 v3, v0, 0x1

    aget v3, v2, v3

    invoke-direct {p0, p3, p4, v3}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_verifyLongName([III)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 708
    iget-object v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_names:[Ljava/lang/String;

    shr-int/lit8 v0, v0, 0x2

    aget-object v0, v1, v0

    goto :goto_1

    .line 705
    :cond_3
    add-int/lit8 v0, v0, 0x4

    goto :goto_2

    :cond_4
    move-object v0, v1

    .line 712
    goto :goto_1
.end method

.method private final _spilloverStart()I
    .locals 2

    .prologue
    .line 1169
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashSize:I

    .line 1170
    shl-int/lit8 v1, v0, 0x3

    sub-int v0, v1, v0

    return v0
.end method

.method private _verifyLongName([III)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 717
    iget-object v4, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    .line 721
    packed-switch p2, :pswitch_data_0

    .line 723
    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_verifyLongName2([III)Z

    move-result v2

    .line 738
    :cond_0
    :goto_0
    return v2

    .line 725
    :pswitch_0
    aget v3, p1, v2

    add-int/lit8 v0, p3, 0x1

    aget v5, v4, p3

    if-ne v3, v5, :cond_0

    move p3, v0

    move v0, v1

    .line 727
    :goto_1
    add-int/lit8 v3, v0, 0x1

    aget v5, p1, v0

    add-int/lit8 v0, p3, 0x1

    aget v6, v4, p3

    if-ne v5, v6, :cond_0

    move p3, v0

    move v0, v3

    .line 729
    :goto_2
    add-int/lit8 v3, v0, 0x1

    aget v5, p1, v0

    add-int/lit8 v0, p3, 0x1

    aget v6, v4, p3

    if-ne v5, v6, :cond_0

    move p3, v0

    move v0, v3

    .line 731
    :goto_3
    add-int/lit8 v3, v0, 0x1

    aget v5, p1, v0

    add-int/lit8 v0, p3, 0x1

    aget v6, v4, p3

    if-ne v5, v6, :cond_0

    move p3, v0

    move v0, v3

    .line 733
    :goto_4
    add-int/lit8 v3, v0, 0x1

    aget v0, p1, v0

    add-int/lit8 v5, p3, 0x1

    aget v6, v4, p3

    if-ne v0, v6, :cond_0

    .line 734
    add-int/lit8 v0, v3, 0x1

    aget v3, p1, v3

    add-int/lit8 v6, v5, 0x1

    aget v5, v4, v5

    if-ne v3, v5, :cond_0

    .line 735
    add-int/lit8 v3, v0, 0x1

    aget v0, p1, v0

    add-int/lit8 v5, v6, 0x1

    aget v6, v4, v6

    if-ne v0, v6, :cond_0

    .line 736
    add-int/lit8 v0, v3, 0x1

    aget v0, p1, v3

    add-int/lit8 v3, v5, 0x1

    aget v3, v4, v5

    if-ne v0, v3, :cond_0

    move v2, v1

    .line 738
    goto :goto_0

    :pswitch_1
    move v0, v2

    goto :goto_1

    :pswitch_2
    move v0, v2

    goto :goto_2

    :pswitch_3
    move v0, v2

    goto :goto_3

    :pswitch_4
    move v0, v2

    goto :goto_4

    .line 721
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private _verifyLongName2([III)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 743
    move v0, v1

    .line 745
    :goto_0
    add-int/lit8 v2, v0, 0x1

    aget v3, p1, v0

    iget-object v4, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    add-int/lit8 v0, p3, 0x1

    aget v4, v4, p3

    if-eq v3, v4, :cond_0

    .line 749
    :goto_1
    return v1

    .line 748
    :cond_0
    if-lt v2, p2, :cond_1

    .line 749
    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    move p3, v0

    move v0, v2

    goto :goto_0
.end method

.method private _verifyNeedForRehash()V
    .locals 6

    .prologue
    .line 857
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_count:I

    iget v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashSize:I

    shr-int/lit8 v1, v1, 0x1

    if-le v0, v1, :cond_1

    .line 858
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_spilloverEnd:I

    invoke-direct {p0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_spilloverStart()I

    move-result v1

    sub-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x2

    .line 859
    iget v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_count:I

    add-int/lit8 v1, v1, 0x1

    shr-int/lit8 v1, v1, 0x7

    if-gt v0, v1, :cond_0

    iget v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_count:I

    int-to-double v0, v0

    iget v2, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashSize:I

    int-to-double v2, v2

    const-wide v4, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v2, v4

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    .line 861
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_needRehash:Z

    .line 864
    :cond_1
    return-void
.end method

.method private _verifySharing()V
    .locals 2

    .prologue
    .line 868
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashShared:Z

    if-eqz v0, :cond_0

    .line 869
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    iget-object v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    .line 870
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_names:[Ljava/lang/String;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_names:[Ljava/lang/String;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_names:[Ljava/lang/String;

    .line 871
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashShared:Z

    .line 874
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_verifyNeedForRehash()V

    .line 876
    :cond_0
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_needRehash:Z

    if-eqz v0, :cond_1

    .line 877
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->rehash()V

    .line 879
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;)I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashSize:I

    return v0
.end method

.method static synthetic access$100(Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;)I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_count:I

    return v0
.end method

.method static synthetic access$200(Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;)I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tertiaryShift:I

    return v0
.end method

.method static synthetic access$300(Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;)[I
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    return-object v0
.end method

.method static synthetic access$400(Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_names:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;)I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_spilloverEnd:I

    return v0
.end method

.method static synthetic access$600(Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;)I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_longNameOffset:I

    return v0
.end method

.method public static createRoot()Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;
    .locals 4

    .prologue
    .line 287
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 289
    long-to-int v2, v0

    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    long-to-int v0, v0

    add-int/2addr v0, v2

    or-int/lit8 v0, v0, 0x1

    .line 290
    invoke-static {v0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->createRoot(I)Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;

    move-result-object v0

    return-object v0
.end method

.method protected static createRoot(I)Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 296
    new-instance v0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;

    const/16 v1, 0x40

    invoke-direct {v0, v1, v2, p0, v2}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;-><init>(IZIZ)V

    return-object v0
.end method

.method private mergeChild(Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;)V
    .locals 3

    .prologue
    .line 330
    iget v1, p1, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;->count:I

    .line 331
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tableInfo:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;

    .line 335
    iget v2, v0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;->count:I

    if-ne v1, v2, :cond_0

    .line 348
    :goto_0
    return-void

    .line 343
    :cond_0
    const/16 v2, 0x1770

    if-le v1, v2, :cond_1

    .line 345
    const/16 v1, 0x40

    invoke-static {v1}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;->createInitial(I)Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;

    move-result-object p1

    .line 347
    :cond_1
    iget-object v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tableInfo:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private nukeSymbols(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1146
    iput v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_count:I

    .line 1148
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_spilloverStart()I

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_spilloverEnd:I

    .line 1150
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashSize:I

    shl-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_longNameOffset:I

    .line 1151
    if-eqz p1, :cond_0

    .line 1152
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 1153
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_names:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1155
    :cond_0
    return-void
.end method

.method private rehash()V
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v3, 0x0

    .line 1061
    iput-boolean v3, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_needRehash:Z

    .line 1063
    iput-boolean v3, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashShared:Z

    .line 1067
    iget-object v4, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    .line 1068
    iget-object v5, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_names:[Ljava/lang/String;

    .line 1069
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashSize:I

    .line 1070
    iget v6, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_count:I

    .line 1071
    add-int v1, v0, v0

    .line 1072
    iget v7, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_spilloverEnd:I

    .line 1077
    const/high16 v2, 0x10000

    if-le v1, v2, :cond_1

    .line 1078
    invoke-direct {p0, v11}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->nukeSymbols(Z)V

    .line 1139
    :cond_0
    return-void

    .line 1082
    :cond_1
    array-length v2, v4

    shl-int/lit8 v0, v0, 0x3

    add-int/2addr v0, v2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    .line 1083
    iput v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashSize:I

    .line 1084
    shl-int/lit8 v0, v1, 0x2

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_secondaryStart:I

    .line 1085
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_secondaryStart:I

    iget v2, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_secondaryStart:I

    shr-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tertiaryStart:I

    .line 1086
    invoke-static {v1}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_calcTertiaryShift(I)I

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tertiaryShift:I

    .line 1089
    array-length v0, v5

    shl-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_names:[Ljava/lang/String;

    .line 1090
    invoke-direct {p0, v3}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->nukeSymbols(Z)V

    .line 1098
    const/16 v0, 0x10

    new-array v0, v0, [I

    move v2, v3

    move v1, v3

    .line 1099
    :goto_0
    if-ge v2, v7, :cond_4

    .line 1100
    add-int/lit8 v8, v2, 0x3

    aget v8, v4, v8

    .line 1101
    if-nez v8, :cond_2

    .line 1099
    :goto_1
    add-int/lit8 v2, v2, 0x4

    goto :goto_0

    .line 1104
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 1105
    shr-int/lit8 v9, v2, 0x2

    aget-object v9, v5, v9

    .line 1106
    packed-switch v8, :pswitch_data_0

    .line 1123
    array-length v10, v0

    if-le v8, v10, :cond_3

    .line 1124
    new-array v0, v8, [I

    .line 1127
    :cond_3
    add-int/lit8 v10, v2, 0x1

    aget v10, v4, v10

    .line 1128
    invoke-static {v4, v10, v0, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1129
    invoke-virtual {p0, v9, v0, v8}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->addName(Ljava/lang/String;[II)Ljava/lang/String;

    goto :goto_1

    .line 1108
    :pswitch_0
    aget v8, v4, v2

    aput v8, v0, v3

    .line 1109
    invoke-virtual {p0, v9, v0, v11}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->addName(Ljava/lang/String;[II)Ljava/lang/String;

    goto :goto_1

    .line 1112
    :pswitch_1
    aget v8, v4, v2

    aput v8, v0, v3

    .line 1113
    add-int/lit8 v8, v2, 0x1

    aget v8, v4, v8

    aput v8, v0, v11

    .line 1114
    invoke-virtual {p0, v9, v0, v12}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->addName(Ljava/lang/String;[II)Ljava/lang/String;

    goto :goto_1

    .line 1117
    :pswitch_2
    aget v8, v4, v2

    aput v8, v0, v3

    .line 1118
    add-int/lit8 v8, v2, 0x1

    aget v8, v4, v8

    aput v8, v0, v11

    .line 1119
    add-int/lit8 v8, v2, 0x2

    aget v8, v4, v8

    aput v8, v0, v12

    .line 1120
    const/4 v8, 0x3

    invoke-virtual {p0, v9, v0, v8}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->addName(Ljava/lang/String;[II)Ljava/lang/String;

    goto :goto_1

    .line 1136
    :cond_4
    if-eq v1, v6, :cond_0

    .line 1137
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed rehash(): old count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", copyCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1106
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected _reportTooManyCollisions()V
    .locals 3

    .prologue
    .line 1176
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashSize:I

    const/16 v1, 0x400

    if-gt v0, v1, :cond_0

    .line 1177
    return-void

    .line 1179
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Spill-over slots in symbol table with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_count:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " entries, hash area of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " slots is now full (all "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashSize:I

    shr-int/lit8 v2, v2, 0x3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " slots -- suspect a DoS attack based on hash collisions."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " You can disable the check via `JsonFactory.Feature.FAIL_ON_SYMBOL_HASH_OVERFLOW`"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addName(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 759
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_verifySharing()V

    .line 760
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_intern:Z

    if-eqz v0, :cond_0

    .line 761
    sget-object v0, Lcom/fasterxml/jackson/core/util/InternCache;->instance:Lcom/fasterxml/jackson/core/util/InternCache;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/util/InternCache;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 763
    :cond_0
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->calcHash(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_findOffsetForAdd(I)I

    move-result v0

    .line 764
    iget-object v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    aput p2, v1, v0

    .line 765
    iget-object v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    add-int/lit8 v2, v0, 0x3

    const/4 v3, 0x1

    aput v3, v1, v2

    .line 766
    iget-object v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_names:[Ljava/lang/String;

    shr-int/lit8 v0, v0, 0x2

    aput-object p1, v1, v0

    .line 767
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_count:I

    .line 768
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_verifyNeedForRehash()V

    .line 769
    return-object p1
.end method

.method public addName(Ljava/lang/String;II)Ljava/lang/String;
    .locals 4

    .prologue
    .line 773
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_verifySharing()V

    .line 774
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_intern:Z

    if-eqz v0, :cond_0

    .line 775
    sget-object v0, Lcom/fasterxml/jackson/core/util/InternCache;->instance:Lcom/fasterxml/jackson/core/util/InternCache;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/util/InternCache;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 777
    :cond_0
    if-nez p3, :cond_1

    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->calcHash(I)I

    move-result v0

    .line 778
    :goto_0
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_findOffsetForAdd(I)I

    move-result v0

    .line 779
    iget-object v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    aput p2, v1, v0

    .line 780
    iget-object v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    add-int/lit8 v2, v0, 0x1

    aput p3, v1, v2

    .line 781
    iget-object v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    add-int/lit8 v2, v0, 0x3

    const/4 v3, 0x2

    aput v3, v1, v2

    .line 782
    iget-object v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_names:[Ljava/lang/String;

    shr-int/lit8 v0, v0, 0x2

    aput-object p1, v1, v0

    .line 783
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_count:I

    .line 784
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_verifyNeedForRehash()V

    .line 785
    return-object p1

    .line 777
    :cond_1
    invoke-virtual {p0, p2, p3}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->calcHash(II)I

    move-result v0

    goto :goto_0
.end method

.method public addName(Ljava/lang/String;III)Ljava/lang/String;
    .locals 4

    .prologue
    .line 789
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_verifySharing()V

    .line 790
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_intern:Z

    if-eqz v0, :cond_0

    .line 791
    sget-object v0, Lcom/fasterxml/jackson/core/util/InternCache;->instance:Lcom/fasterxml/jackson/core/util/InternCache;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/util/InternCache;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 793
    :cond_0
    invoke-virtual {p0, p2, p3, p4}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->calcHash(III)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_findOffsetForAdd(I)I

    move-result v0

    .line 794
    iget-object v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    aput p2, v1, v0

    .line 795
    iget-object v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    add-int/lit8 v2, v0, 0x1

    aput p3, v1, v2

    .line 796
    iget-object v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    add-int/lit8 v2, v0, 0x2

    aput p4, v1, v2

    .line 797
    iget-object v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    add-int/lit8 v2, v0, 0x3

    const/4 v3, 0x3

    aput v3, v1, v2

    .line 798
    iget-object v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_names:[Ljava/lang/String;

    shr-int/lit8 v0, v0, 0x2

    aput-object p1, v1, v0

    .line 799
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_count:I

    .line 800
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_verifyNeedForRehash()V

    .line 801
    return-object p1
.end method

.method public addName(Ljava/lang/String;[II)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 806
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_verifySharing()V

    .line 807
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_intern:Z

    if-eqz v0, :cond_0

    .line 808
    sget-object v0, Lcom/fasterxml/jackson/core/util/InternCache;->instance:Lcom/fasterxml/jackson/core/util/InternCache;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/util/InternCache;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 812
    :cond_0
    packed-switch p3, :pswitch_data_0

    .line 838
    invoke-virtual {p0, p2, p3}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->calcHash([II)I

    move-result v1

    .line 839
    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_findOffsetForAdd(I)I

    move-result v0

    .line 841
    iget-object v2, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    aput v1, v2, v0

    .line 842
    invoke-direct {p0, p2, p3}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_appendLongName([II)I

    move-result v1

    .line 843
    iget-object v2, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    add-int/lit8 v3, v0, 0x1

    aput v1, v2, v3

    .line 844
    iget-object v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    add-int/lit8 v2, v0, 0x3

    aput p3, v1, v2

    .line 847
    :goto_0
    iget-object v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_names:[Ljava/lang/String;

    shr-int/lit8 v0, v0, 0x2

    aput-object p1, v1, v0

    .line 850
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_count:I

    .line 851
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_verifyNeedForRehash()V

    .line 852
    return-object p1

    .line 815
    :pswitch_0
    aget v0, p2, v3

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->calcHash(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_findOffsetForAdd(I)I

    move-result v0

    .line 816
    iget-object v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    aget v2, p2, v3

    aput v2, v1, v0

    .line 817
    iget-object v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    add-int/lit8 v2, v0, 0x3

    aput v4, v1, v2

    goto :goto_0

    .line 822
    :pswitch_1
    aget v0, p2, v3

    aget v1, p2, v4

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->calcHash(II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_findOffsetForAdd(I)I

    move-result v0

    .line 823
    iget-object v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    aget v2, p2, v3

    aput v2, v1, v0

    .line 824
    iget-object v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    add-int/lit8 v2, v0, 0x1

    aget v3, p2, v4

    aput v3, v1, v2

    .line 825
    iget-object v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    add-int/lit8 v2, v0, 0x3

    aput v5, v1, v2

    goto :goto_0

    .line 830
    :pswitch_2
    aget v0, p2, v3

    aget v1, p2, v4

    aget v2, p2, v5

    invoke-virtual {p0, v0, v1, v2}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->calcHash(III)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_findOffsetForAdd(I)I

    move-result v0

    .line 831
    iget-object v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    aget v2, p2, v3

    aput v2, v1, v0

    .line 832
    iget-object v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    add-int/lit8 v2, v0, 0x1

    aget v3, p2, v4

    aput v3, v1, v2

    .line 833
    iget-object v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    add-int/lit8 v2, v0, 0x2

    aget v3, p2, v5

    aput v3, v1, v2

    .line 834
    iget-object v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    add-int/lit8 v2, v0, 0x3

    const/4 v3, 0x3

    aput v3, v1, v2

    goto :goto_0

    .line 812
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public bucketCount()I
    .locals 1

    .prologue
    .line 368
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashSize:I

    return v0
.end method

.method public calcHash(I)I
    .locals 2

    .prologue
    .line 975
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_seed:I

    xor-int/2addr v0, p1

    .line 981
    ushr-int/lit8 v1, v0, 0x10

    add-int/2addr v0, v1

    .line 982
    shl-int/lit8 v1, v0, 0x3

    xor-int/2addr v0, v1

    .line 983
    ushr-int/lit8 v1, v0, 0xc

    add-int/2addr v0, v1

    .line 984
    return v0
.end method

.method public calcHash(II)I
    .locals 2

    .prologue
    .line 991
    .line 993
    ushr-int/lit8 v0, p1, 0xf

    add-int/2addr v0, p1

    .line 994
    ushr-int/lit8 v1, v0, 0x9

    xor-int/2addr v0, v1

    .line 995
    mul-int/lit8 v1, p2, 0x21

    add-int/2addr v0, v1

    .line 996
    iget v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_seed:I

    xor-int/2addr v0, v1

    .line 997
    ushr-int/lit8 v1, v0, 0x10

    add-int/2addr v0, v1

    .line 998
    ushr-int/lit8 v1, v0, 0x4

    xor-int/2addr v0, v1

    .line 999
    shl-int/lit8 v1, v0, 0x3

    add-int/2addr v0, v1

    .line 1001
    return v0
.end method

.method public calcHash(III)I
    .locals 2

    .prologue
    .line 1006
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_seed:I

    xor-int/2addr v0, p1

    .line 1007
    ushr-int/lit8 v1, v0, 0x9

    add-int/2addr v0, v1

    .line 1008
    mul-int/lit8 v0, v0, 0x1f

    .line 1009
    add-int/2addr v0, p2

    .line 1010
    mul-int/lit8 v0, v0, 0x21

    .line 1011
    ushr-int/lit8 v1, v0, 0xf

    add-int/2addr v0, v1

    .line 1012
    xor-int/2addr v0, p3

    .line 1014
    ushr-int/lit8 v1, v0, 0x4

    add-int/2addr v0, v1

    .line 1016
    ushr-int/lit8 v1, v0, 0xf

    add-int/2addr v0, v1

    .line 1017
    shl-int/lit8 v1, v0, 0x9

    xor-int/2addr v0, v1

    .line 1019
    return v0
.end method

.method public calcHash([II)I
    .locals 4

    .prologue
    .line 1024
    const/4 v0, 0x4

    if-ge p2, v0, :cond_0

    .line 1025
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1032
    :cond_0
    const/4 v0, 0x0

    aget v0, p1, v0

    iget v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_seed:I

    xor-int/2addr v0, v1

    .line 1033
    ushr-int/lit8 v1, v0, 0x9

    add-int/2addr v0, v1

    .line 1034
    const/4 v1, 0x1

    aget v1, p1, v1

    add-int/2addr v0, v1

    .line 1035
    ushr-int/lit8 v1, v0, 0xf

    add-int/2addr v0, v1

    .line 1036
    mul-int/lit8 v0, v0, 0x21

    .line 1037
    const/4 v1, 0x2

    aget v1, p1, v1

    xor-int/2addr v0, v1

    .line 1038
    ushr-int/lit8 v1, v0, 0x4

    add-int/2addr v1, v0

    .line 1040
    const/4 v0, 0x3

    :goto_0
    if-ge v0, p2, :cond_1

    .line 1041
    aget v2, p1, v0

    .line 1042
    shr-int/lit8 v3, v2, 0x15

    xor-int/2addr v2, v3

    .line 1043
    add-int/2addr v1, v2

    .line 1040
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1045
    :cond_1
    const v0, 0x1003f

    mul-int/2addr v0, v1

    .line 1048
    ushr-int/lit8 v1, v0, 0x13

    add-int/2addr v0, v1

    .line 1049
    shl-int/lit8 v1, v0, 0x5

    xor-int/2addr v0, v1

    .line 1050
    return v0
.end method

.method public findName(I)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x1

    .line 465
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->calcHash(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_calcOffset(I)I

    move-result v1

    .line 467
    iget-object v2, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    .line 469
    add-int/lit8 v3, v1, 0x3

    aget v3, v2, v3

    .line 471
    if-ne v3, v5, :cond_1

    .line 472
    aget v3, v2, v1

    if-ne v3, p1, :cond_2

    .line 473
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_names:[Ljava/lang/String;

    shr-int/lit8 v1, v1, 0x2

    aget-object v0, v0, v1

    .line 492
    :cond_0
    :goto_0
    return-object v0

    .line 475
    :cond_1
    if-eqz v3, :cond_0

    .line 479
    :cond_2
    iget v3, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_secondaryStart:I

    shr-int/lit8 v4, v1, 0x3

    shl-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 481
    add-int/lit8 v4, v3, 0x3

    aget v4, v2, v4

    .line 483
    if-ne v4, v5, :cond_3

    .line 484
    aget v0, v2, v3

    if-ne v0, p1, :cond_4

    .line 485
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_names:[Ljava/lang/String;

    shr-int/lit8 v1, v3, 0x2

    aget-object v0, v0, v1

    goto :goto_0

    .line 487
    :cond_3
    if-eqz v4, :cond_0

    .line 492
    :cond_4
    invoke-direct {p0, v1, p1}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_findSecondary(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public findName(II)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x2

    .line 497
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->calcHash(II)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_calcOffset(I)I

    move-result v1

    .line 499
    iget-object v2, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    .line 501
    add-int/lit8 v3, v1, 0x3

    aget v3, v2, v3

    .line 503
    if-ne v3, v5, :cond_1

    .line 504
    aget v3, v2, v1

    if-ne p1, v3, :cond_2

    add-int/lit8 v3, v1, 0x1

    aget v3, v2, v3

    if-ne p2, v3, :cond_2

    .line 505
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_names:[Ljava/lang/String;

    shr-int/lit8 v1, v1, 0x2

    aget-object v0, v0, v1

    .line 522
    :cond_0
    :goto_0
    return-object v0

    .line 507
    :cond_1
    if-eqz v3, :cond_0

    .line 511
    :cond_2
    iget v3, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_secondaryStart:I

    shr-int/lit8 v4, v1, 0x3

    shl-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 513
    add-int/lit8 v4, v3, 0x3

    aget v4, v2, v4

    .line 515
    if-ne v4, v5, :cond_3

    .line 516
    aget v0, v2, v3

    if-ne p1, v0, :cond_4

    add-int/lit8 v0, v3, 0x1

    aget v0, v2, v0

    if-ne p2, v0, :cond_4

    .line 517
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_names:[Ljava/lang/String;

    shr-int/lit8 v1, v3, 0x2

    aget-object v0, v0, v1

    goto :goto_0

    .line 519
    :cond_3
    if-eqz v4, :cond_0

    .line 522
    :cond_4
    invoke-direct {p0, v1, p1, p2}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_findSecondary(III)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public findName(III)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x3

    .line 527
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->calcHash(III)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_calcOffset(I)I

    move-result v1

    .line 528
    iget-object v2, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    .line 529
    add-int/lit8 v3, v1, 0x3

    aget v3, v2, v3

    .line 531
    if-ne v3, v5, :cond_1

    .line 532
    aget v3, v2, v1

    if-ne p1, v3, :cond_2

    add-int/lit8 v3, v1, 0x1

    aget v3, v2, v3

    if-ne v3, p2, :cond_2

    add-int/lit8 v3, v1, 0x2

    aget v3, v2, v3

    if-ne v3, p3, :cond_2

    .line 533
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_names:[Ljava/lang/String;

    shr-int/lit8 v1, v1, 0x2

    aget-object v0, v0, v1

    .line 550
    :cond_0
    :goto_0
    return-object v0

    .line 535
    :cond_1
    if-eqz v3, :cond_0

    .line 539
    :cond_2
    iget v3, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_secondaryStart:I

    shr-int/lit8 v4, v1, 0x3

    shl-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 541
    add-int/lit8 v4, v3, 0x3

    aget v4, v2, v4

    .line 543
    if-ne v4, v5, :cond_3

    .line 544
    aget v0, v2, v3

    if-ne p1, v0, :cond_4

    add-int/lit8 v0, v3, 0x1

    aget v0, v2, v0

    if-ne v0, p2, :cond_4

    add-int/lit8 v0, v3, 0x2

    aget v0, v2, v0

    if-ne v0, p3, :cond_4

    .line 545
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_names:[Ljava/lang/String;

    shr-int/lit8 v1, v3, 0x2

    aget-object v0, v0, v1

    goto :goto_0

    .line 547
    :cond_3
    if-eqz v4, :cond_0

    .line 550
    :cond_4
    invoke-direct {p0, v1, p1, p2, p3}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_findSecondary(IIII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public findName([II)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 559
    const/4 v0, 0x4

    if-ge p2, v0, :cond_2

    .line 560
    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 561
    aget v0, p1, v1

    aget v1, p1, v2

    aget v2, p1, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->findName(III)Ljava/lang/String;

    move-result-object v0

    .line 593
    :goto_0
    return-object v0

    .line 563
    :cond_0
    if-ne p2, v3, :cond_1

    .line 564
    aget v0, p1, v1

    aget v1, p1, v2

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->findName(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 566
    :cond_1
    aget v0, p1, v1

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->findName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 568
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->calcHash([II)I

    move-result v0

    .line 569
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_calcOffset(I)I

    move-result v1

    .line 571
    iget-object v2, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    .line 573
    add-int/lit8 v3, v1, 0x3

    aget v3, v2, v3

    .line 575
    aget v4, v2, v1

    if-ne v0, v4, :cond_3

    if-ne v3, p2, :cond_3

    .line 577
    add-int/lit8 v4, v1, 0x1

    aget v4, v2, v4

    invoke-direct {p0, p1, p2, v4}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_verifyLongName([III)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 578
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_names:[Ljava/lang/String;

    shr-int/lit8 v1, v1, 0x2

    aget-object v0, v0, v1

    goto :goto_0

    .line 581
    :cond_3
    if-nez v3, :cond_4

    .line 582
    const/4 v0, 0x0

    goto :goto_0

    .line 585
    :cond_4
    iget v3, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_secondaryStart:I

    shr-int/lit8 v4, v1, 0x3

    shl-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 587
    add-int/lit8 v4, v3, 0x3

    aget v4, v2, v4

    .line 588
    aget v5, v2, v3

    if-ne v0, v5, :cond_5

    if-ne v4, p2, :cond_5

    .line 589
    add-int/lit8 v4, v3, 0x1

    aget v2, v2, v4

    invoke-direct {p0, p1, p2, v2}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_verifyLongName([III)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 590
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_names:[Ljava/lang/String;

    shr-int/lit8 v1, v3, 0x2

    aget-object v0, v0, v1

    goto :goto_0

    .line 593
    :cond_5
    invoke-direct {p0, v1, v0, p1, p2}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_findSecondary(II[II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public hashSeed()I
    .locals 1

    .prologue
    .line 377
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_seed:I

    return v0
.end method

.method public makeChild(I)Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;
    .locals 6

    .prologue
    .line 304
    new-instance v0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->INTERN_FIELD_NAMES:Lcom/fasterxml/jackson/core/JsonFactory$Feature;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->enabledIn(I)Z

    move-result v2

    iget v3, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_seed:I

    sget-object v1, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->FAIL_ON_SYMBOL_HASH_OVERFLOW:Lcom/fasterxml/jackson/core/JsonFactory$Feature;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->enabledIn(I)Z

    move-result v4

    iget-object v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tableInfo:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;-><init>(Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;ZIZLcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;)V

    return-object v0
.end method

.method public maybeDirty()Z
    .locals 1

    .prologue
    .line 375
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashShared:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public primaryCount()I
    .locals 5

    .prologue
    .line 386
    const/4 v1, 0x0

    .line 387
    const/4 v0, 0x3

    iget v2, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_secondaryStart:I

    move v4, v0

    move v0, v1

    move v1, v4

    :goto_0
    if-ge v1, v2, :cond_1

    .line 388
    iget-object v3, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    aget v3, v3, v1

    if-eqz v3, :cond_0

    .line 389
    add-int/lit8 v0, v0, 0x1

    .line 387
    :cond_0
    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    .line 392
    :cond_1
    return v0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 320
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_parent:Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->maybeDirty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_parent:Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;

    new-instance v1, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;

    invoke-direct {v1, p0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;-><init>(Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;)V

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->mergeChild(Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;)V

    .line 324
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashShared:Z

    .line 326
    :cond_0
    return-void
.end method

.method public secondaryCount()I
    .locals 5

    .prologue
    .line 400
    const/4 v1, 0x0

    .line 401
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_secondaryStart:I

    add-int/lit8 v0, v0, 0x3

    .line 402
    iget v2, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tertiaryStart:I

    move v4, v0

    move v0, v1

    move v1, v4

    :goto_0
    if-ge v1, v2, :cond_1

    .line 403
    iget-object v3, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    aget v3, v3, v1

    if-eqz v3, :cond_0

    .line 404
    add-int/lit8 v0, v0, 0x1

    .line 402
    :cond_0
    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    .line 407
    :cond_1
    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tableInfo:Ljava/util/concurrent/atomic/AtomicReference;

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tableInfo:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;

    iget v0, v0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;->count:I

    .line 362
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_count:I

    goto :goto_0
.end method

.method public spilloverCount()I
    .locals 2

    .prologue
    .line 431
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_spilloverEnd:I

    invoke-direct {p0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_spilloverStart()I

    move-result v1

    sub-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public tertiaryCount()I
    .locals 5

    .prologue
    .line 415
    const/4 v1, 0x0

    .line 416
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tertiaryStart:I

    add-int/lit8 v0, v0, 0x3

    .line 417
    iget v2, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashSize:I

    add-int/2addr v2, v0

    move v4, v0

    move v0, v1

    move v1, v4

    :goto_0
    if-ge v1, v2, :cond_1

    .line 418
    iget-object v3, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    aget v3, v3, v1

    if-eqz v3, :cond_0

    .line 419
    add-int/lit8 v0, v0, 0x1

    .line 417
    :cond_0
    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    .line 422
    :cond_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .prologue
    .line 447
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->primaryCount()I

    move-result v0

    .line 448
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->secondaryCount()I

    move-result v1

    .line 449
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->tertiaryCount()I

    move-result v2

    .line 450
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->spilloverCount()I

    move-result v3

    .line 451
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->totalCount()I

    move-result v4

    .line 452
    const-string v5, "[%s: size=%d, hashSize=%d, %d/%d/%d/%d pri/sec/ter/spill (=%s), total:%d]"

    const/16 v6, 0x9

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget v8, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_count:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    iget v8, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashSize:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x7

    add-int/2addr v0, v1

    add-int/2addr v0, v2

    add-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v7

    const/16 v0, 0x8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v0

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public totalCount()I
    .locals 5

    .prologue
    .line 436
    const/4 v1, 0x0

    .line 437
    const/4 v0, 0x3

    iget v2, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashSize:I

    shl-int/lit8 v2, v2, 0x3

    move v4, v0

    move v0, v1

    move v1, v4

    :goto_0
    if-ge v1, v2, :cond_1

    .line 438
    iget-object v3, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    aget v3, v3, v1

    if-eqz v3, :cond_0

    .line 439
    add-int/lit8 v0, v0, 0x1

    .line 437
    :cond_0
    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    .line 442
    :cond_1
    return v0
.end method
