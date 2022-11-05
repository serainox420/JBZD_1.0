.class public final Lcom/google/android/exoplayer2/audio/AudioTrack;
.super Ljava/lang/Object;
.source "AudioTrack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/audio/AudioTrack$c;,
        Lcom/google/android/exoplayer2/audio/AudioTrack$b;,
        Lcom/google/android/exoplayer2/audio/AudioTrack$a;,
        Lcom/google/android/exoplayer2/audio/AudioTrack$InvalidAudioTrackTimestampException;,
        Lcom/google/android/exoplayer2/audio/AudioTrack$WriteException;,
        Lcom/google/android/exoplayer2/audio/AudioTrack$InitializationException;,
        Lcom/google/android/exoplayer2/audio/AudioTrack$ConfigurationException;,
        Lcom/google/android/exoplayer2/audio/AudioTrack$d;
    }
.end annotation


# static fields
.field public static a:Z

.field public static b:Z


# instance fields
.field private A:J

.field private B:Ljava/lang/reflect/Method;

.field private C:I

.field private D:J

.field private E:J

.field private F:I

.field private G:J

.field private H:J

.field private I:I

.field private J:I

.field private K:J

.field private L:J

.field private M:J

.field private N:F

.field private O:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

.field private P:[Ljava/nio/ByteBuffer;

.field private Q:Ljava/nio/ByteBuffer;

.field private R:Ljava/nio/ByteBuffer;

.field private S:[B

.field private T:I

.field private U:I

.field private V:Z

.field private W:Z

.field private X:I

.field private Y:Z

.field private Z:Z

.field private aa:J

.field private final c:Lcom/google/android/exoplayer2/audio/b;

.field private final d:Lcom/google/android/exoplayer2/audio/e;

.field private final e:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

.field private final f:Lcom/google/android/exoplayer2/audio/AudioTrack$d;

.field private final g:Landroid/os/ConditionVariable;

.field private final h:[J

.field private final i:Lcom/google/android/exoplayer2/audio/AudioTrack$a;

.field private j:Landroid/media/AudioTrack;

.field private k:Landroid/media/AudioTrack;

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:Z

.field private r:I

.field private s:J

.field private t:Ljava/nio/ByteBuffer;

.field private u:I

.field private v:I

.field private w:I

.field private x:J

.field private y:J

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 261
    sput-boolean v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->a:Z

    .line 270
    sput-boolean v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->b:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/audio/b;[Lcom/google/android/exoplayer2/audio/AudioProcessor;Lcom/google/android/exoplayer2/audio/AudioTrack$d;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 346
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->c:Lcom/google/android/exoplayer2/audio/b;

    .line 347
    new-instance v0, Lcom/google/android/exoplayer2/audio/e;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/audio/e;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->d:Lcom/google/android/exoplayer2/audio/e;

    .line 348
    array-length v0, p2

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Lcom/google/android/exoplayer2/audio/AudioProcessor;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->e:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    .line 349
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->e:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    new-instance v1, Lcom/google/android/exoplayer2/audio/h;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/audio/h;-><init>()V

    aput-object v1, v0, v3

    .line 350
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->e:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->d:Lcom/google/android/exoplayer2/audio/e;

    aput-object v1, v0, v4

    .line 351
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->e:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    const/4 v1, 0x2

    array-length v2, p2

    invoke-static {p2, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 352
    iput-object p3, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->f:Lcom/google/android/exoplayer2/audio/AudioTrack$d;

    .line 353
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0, v4}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->g:Landroid/os/ConditionVariable;

    .line 354
    sget v0, Lcom/google/android/exoplayer2/util/v;->a:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 356
    :try_start_0
    const-class v1, Landroid/media/AudioTrack;

    const-string v2, "getLatency"

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    .line 357
    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->B:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    :cond_0
    :goto_0
    sget v0, Lcom/google/android/exoplayer2/util/v;->a:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 363
    new-instance v0, Lcom/google/android/exoplayer2/audio/AudioTrack$c;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/audio/AudioTrack$c;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->i:Lcom/google/android/exoplayer2/audio/AudioTrack$a;

    .line 369
    :goto_1
    const/16 v0, 0xa

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->h:[J

    .line 370
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->N:F

    .line 371
    iput v3, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->J:I

    .line 372
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->p:I

    .line 373
    iput v3, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->X:I

    .line 374
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->U:I

    .line 375
    new-array v0, v3, [Lcom/google/android/exoplayer2/audio/AudioProcessor;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->O:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    .line 376
    new-array v0, v3, [Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->P:[Ljava/nio/ByteBuffer;

    .line 377
    return-void

    .line 364
    :cond_1
    sget v0, Lcom/google/android/exoplayer2/util/v;->a:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    .line 365
    new-instance v0, Lcom/google/android/exoplayer2/audio/AudioTrack$b;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/audio/AudioTrack$b;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->i:Lcom/google/android/exoplayer2/audio/AudioTrack$a;

    goto :goto_1

    .line 367
    :cond_2
    new-instance v0, Lcom/google/android/exoplayer2/audio/AudioTrack$a;

    invoke-direct {v0, v5}, Lcom/google/android/exoplayer2/audio/AudioTrack$a;-><init>(Lcom/google/android/exoplayer2/audio/AudioTrack$1;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->i:Lcom/google/android/exoplayer2/audio/AudioTrack$a;

    goto :goto_1

    .line 358
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static a(ILjava/nio/ByteBuffer;)I
    .locals 3

    .prologue
    .line 1340
    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    const/16 v0, 0x8

    if-ne p0, v0, :cond_1

    .line 1341
    :cond_0
    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/f;->a(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 1345
    :goto_0
    return v0

    .line 1342
    :cond_1
    const/4 v0, 0x5

    if-ne p0, v0, :cond_2

    .line 1343
    invoke-static {}, Lcom/google/android/exoplayer2/audio/a;->a()I

    move-result v0

    goto :goto_0

    .line 1344
    :cond_2
    const/4 v0, 0x6

    if-ne p0, v0, :cond_3

    .line 1345
    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/a;->a(Ljava/nio/ByteBuffer;)I

    move-result v0

    goto :goto_0

    .line 1347
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected audio encoding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 1354
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result v0

    return v0
.end method

.method private a(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;IJ)I
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1365
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->t:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    .line 1366
    const/16 v0, 0x10

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->t:Ljava/nio/ByteBuffer;

    .line 1367
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->t:Ljava/nio/ByteBuffer;

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1368
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->t:Ljava/nio/ByteBuffer;

    const v2, 0x55550001

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1370
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->u:I

    if-nez v0, :cond_1

    .line 1371
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->t:Ljava/nio/ByteBuffer;

    const/4 v2, 0x4

    invoke-virtual {v0, v2, p3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 1372
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->t:Ljava/nio/ByteBuffer;

    const/16 v2, 0x8

    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, p4

    invoke-virtual {v0, v2, v4, v5}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 1373
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->t:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1374
    iput p3, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->u:I

    .line 1376
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->t:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    .line 1377
    if-lez v2, :cond_3

    .line 1378
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->t:Ljava/nio/ByteBuffer;

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v2, v3}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result v0

    .line 1379
    if-gez v0, :cond_2

    .line 1380
    iput v1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->u:I

    .line 1393
    :goto_0
    return v0

    .line 1383
    :cond_2
    if-ge v0, v2, :cond_3

    move v0, v1

    .line 1384
    goto :goto_0

    .line 1387
    :cond_3
    invoke-static {p1, p2, p3}, Lcom/google/android/exoplayer2/audio/AudioTrack;->a(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I

    move-result v0

    .line 1388
    if-gez v0, :cond_4

    .line 1389
    iput v1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->u:I

    goto :goto_0

    .line 1392
    :cond_4
    iget v1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->u:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->u:I

    goto :goto_0
.end method

.method private static a(IIIII)Landroid/media/AudioTrack;
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 1309
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 1310
    invoke-virtual {v0, v4}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v1, 0x3

    .line 1311
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/16 v1, 0x10

    .line 1312
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 1313
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    .line 1314
    new-instance v0, Landroid/media/AudioFormat$Builder;

    invoke-direct {v0}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 1315
    invoke-virtual {v0, p1}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 1316
    invoke-virtual {v0, p2}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 1317
    invoke-virtual {v0, p0}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 1318
    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v2

    .line 1319
    new-instance v0, Landroid/media/AudioTrack;

    move v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/audio/AudioTrack;)Landroid/os/ConditionVariable;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->g:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method private a(J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioTrack$WriteException;
        }
    .end annotation

    .prologue
    .line 790
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->O:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    array-length v2, v0

    move v1, v2

    .line 792
    :goto_0
    if-ltz v1, :cond_1

    .line 793
    if-lez v1, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->P:[Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v1, -0x1

    aget-object v0, v0, v3

    .line 795
    :goto_1
    if-ne v1, v2, :cond_4

    .line 796
    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/exoplayer2/audio/AudioTrack;->b(Ljava/nio/ByteBuffer;J)Z

    .line 809
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 817
    :cond_1
    return-void

    .line 793
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->Q:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->Q:Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/google/android/exoplayer2/audio/AudioProcessor;->a:Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 798
    :cond_4
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->O:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    aget-object v3, v3, v1

    .line 799
    invoke-interface {v3, v0}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->a(Ljava/nio/ByteBuffer;)V

    .line 800
    invoke-interface {v3}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->e()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 801
    iget-object v4, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->P:[Ljava/nio/ByteBuffer;

    aput-object v3, v4, v1

    .line 802
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 804
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 805
    goto :goto_0

    .line 815
    :cond_5
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    .line 816
    goto :goto_0
.end method

.method private static a(Landroid/media/AudioTrack;F)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 1398
    invoke-virtual {p0, p1}, Landroid/media/AudioTrack;->setVolume(F)I

    .line 1399
    return-void
.end method

.method private static b(Ljava/lang/String;)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1325
    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 1335
    :goto_1
    return v0

    .line 1325
    :sswitch_0
    const-string v2, "audio/ac3"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v0

    goto :goto_0

    :sswitch_1
    const-string v2, "audio/eac3"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "audio/vnd.dts"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string v2, "audio/vnd.dts.hd"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    .line 1327
    :pswitch_0
    const/4 v0, 0x5

    goto :goto_1

    .line 1329
    :pswitch_1
    const/4 v0, 0x6

    goto :goto_1

    .line 1331
    :pswitch_2
    const/4 v0, 0x7

    goto :goto_1

    .line 1333
    :pswitch_3
    const/16 v0, 0x8

    goto :goto_1

    .line 1325
    :sswitch_data_0
    .sparse-switch
        -0x41455b98 -> :sswitch_2
        0xb269698 -> :sswitch_0
        0x59ae0c65 -> :sswitch_1
        0x59c2dc42 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private b(J)J
    .locals 5

    .prologue
    .line 1258
    const-wide/32 v0, 0xf4240

    mul-long/2addr v0, p1

    iget v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->l:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private static b(Landroid/media/AudioTrack;F)V
    .locals 0

    .prologue
    .line 1403
    invoke-virtual {p0, p1, p1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    .line 1404
    return-void
.end method

.method private b(Ljava/nio/ByteBuffer;J)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioTrack$WriteException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x15

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 822
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    .line 879
    :goto_0
    return v6

    .line 825
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->R:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_4

    .line 826
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->R:Ljava/nio/ByteBuffer;

    if-ne v0, p1, :cond_3

    move v0, v6

    :goto_1
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 840
    :cond_1
    :goto_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    .line 842
    sget v0, Lcom/google/android/exoplayer2/util/v;->a:I

    if-ge v0, v4, :cond_7

    .line 844
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->G:J

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->i:Lcom/google/android/exoplayer2/audio/AudioTrack$a;

    .line 845
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/audio/AudioTrack$a;->b()J

    move-result-wide v4

    iget v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->F:I

    int-to-long v8, v2

    mul-long/2addr v4, v8

    sub-long/2addr v0, v4

    long-to-int v0, v0

    .line 846
    iget v1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->r:I

    sub-int v0, v1, v0

    .line 847
    if-lez v0, :cond_e

    .line 848
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 849
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->k:Landroid/media/AudioTrack;

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->S:[B

    iget v4, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->T:I

    invoke-virtual {v1, v2, v4, v0}, Landroid/media/AudioTrack;->write([BII)I

    move-result v0

    .line 850
    if-lez v0, :cond_2

    .line 851
    iget v1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->T:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->T:I

    .line 852
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 863
    :cond_2
    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->aa:J

    .line 865
    if-gez v0, :cond_a

    .line 866
    new-instance v1, Lcom/google/android/exoplayer2/audio/AudioTrack$WriteException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/audio/AudioTrack$WriteException;-><init>(I)V

    throw v1

    :cond_3
    move v0, v7

    .line 826
    goto :goto_1

    .line 828
    :cond_4
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->R:Ljava/nio/ByteBuffer;

    .line 829
    sget v0, Lcom/google/android/exoplayer2/util/v;->a:I

    if-ge v0, v4, :cond_1

    .line 830
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 831
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->S:[B

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->S:[B

    array-length v1, v1

    if-ge v1, v0, :cond_6

    .line 832
    :cond_5
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->S:[B

    .line 834
    :cond_6
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 835
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->S:[B

    invoke-virtual {p1, v2, v7, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 836
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 837
    iput v7, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->T:I

    goto :goto_2

    .line 855
    :cond_7
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->Y:Z

    if-eqz v0, :cond_9

    .line 856
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p2, v0

    if-eqz v0, :cond_8

    move v0, v6

    :goto_4
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 857
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->k:Landroid/media/AudioTrack;

    move-object v0, p0

    move-object v2, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/audio/AudioTrack;->a(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;IJ)I

    move-result v0

    goto :goto_3

    :cond_8
    move v0, v7

    .line 856
    goto :goto_4

    .line 860
    :cond_9
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->k:Landroid/media/AudioTrack;

    invoke-static {v0, p1, v3}, Lcom/google/android/exoplayer2/audio/AudioTrack;->a(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I

    move-result v0

    goto :goto_3

    .line 869
    :cond_a
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->q:Z

    if-nez v1, :cond_b

    .line 870
    iget-wide v4, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->G:J

    int-to-long v8, v0

    add-long/2addr v4, v8

    iput-wide v4, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->G:J

    .line 872
    :cond_b
    if-ne v0, v3, :cond_d

    .line 873
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->q:Z

    if-eqz v0, :cond_c

    .line 874
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->H:J

    iget v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->I:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->H:J

    .line 876
    :cond_c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->R:Ljava/nio/ByteBuffer;

    goto/16 :goto_0

    :cond_d
    move v6, v7

    .line 879
    goto/16 :goto_0

    :cond_e
    move v0, v7

    goto :goto_3
.end method

.method private c(J)J
    .locals 5

    .prologue
    .line 1262
    iget v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->l:I

    int-to-long v0, v0

    mul-long/2addr v0, p1

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private j()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioTrack$InitializationException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 614
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->g:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 616
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->Y:Z

    if-eqz v0, :cond_3

    .line 617
    iget v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->l:I

    iget v1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->m:I

    iget v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->o:I

    iget v3, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->r:I

    iget v4, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->X:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/audio/AudioTrack;->a(IIIII)Landroid/media/AudioTrack;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->k:Landroid/media/AudioTrack;

    .line 627
    :goto_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->o()V

    .line 629
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->k:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v7

    .line 630
    sget-boolean v0, Lcom/google/android/exoplayer2/audio/AudioTrack;->a:Z

    if-eqz v0, :cond_1

    .line 631
    sget v0, Lcom/google/android/exoplayer2/util/v;->a:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_1

    .line 634
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->j:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->j:Landroid/media/AudioTrack;

    .line 635
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v0

    if-eq v7, v0, :cond_0

    .line 636
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->l()V

    .line 638
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->j:Landroid/media/AudioTrack;

    if-nez v0, :cond_1

    .line 639
    const/16 v2, 0xfa0

    .line 640
    const/4 v3, 0x4

    .line 643
    new-instance v0, Landroid/media/AudioTrack;

    iget v1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->p:I

    move v4, v9

    move v5, v9

    move v6, v8

    invoke-direct/range {v0 .. v7}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->j:Landroid/media/AudioTrack;

    .line 648
    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->X:I

    if-eq v0, v7, :cond_2

    .line 649
    iput v7, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->X:I

    .line 650
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->f:Lcom/google/android/exoplayer2/audio/AudioTrack$d;

    invoke-interface {v0, v7}, Lcom/google/android/exoplayer2/audio/AudioTrack$d;->a(I)V

    .line 653
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->i:Lcom/google/android/exoplayer2/audio/AudioTrack$a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->k:Landroid/media/AudioTrack;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->t()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/audio/AudioTrack$a;->a(Landroid/media/AudioTrack;Z)V

    .line 654
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->k()V

    .line 655
    iput-boolean v8, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->Z:Z

    .line 656
    return-void

    .line 619
    :cond_3
    iget v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->X:I

    if-nez v0, :cond_4

    .line 620
    new-instance v0, Landroid/media/AudioTrack;

    iget v1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->p:I

    iget v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->l:I

    iget v3, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->m:I

    iget v4, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->o:I

    iget v5, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->r:I

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->k:Landroid/media/AudioTrack;

    goto :goto_0

    .line 624
    :cond_4
    new-instance v0, Landroid/media/AudioTrack;

    iget v1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->p:I

    iget v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->l:I

    iget v3, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->m:I

    iget v4, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->o:I

    iget v5, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->r:I

    iget v7, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->X:I

    invoke-direct/range {v0 .. v7}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->k:Landroid/media/AudioTrack;

    goto :goto_0
.end method

.method private k()V
    .locals 2

    .prologue
    .line 1034
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->p()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1041
    :goto_0
    return-void

    .line 1036
    :cond_0
    sget v0, Lcom/google/android/exoplayer2/util/v;->a:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 1037
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->k:Landroid/media/AudioTrack;

    iget v1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->N:F

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/audio/AudioTrack;->a(Landroid/media/AudioTrack;F)V

    goto :goto_0

    .line 1039
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->k:Landroid/media/AudioTrack;

    iget v1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->N:F

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/audio/AudioTrack;->b(Landroid/media/AudioTrack;F)V

    goto :goto_0
.end method

.method private l()V
    .locals 2

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->j:Landroid/media/AudioTrack;

    if-nez v0, :cond_0

    .line 1135
    :goto_0
    return-void

    .line 1127
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->j:Landroid/media/AudioTrack;

    .line 1128
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->j:Landroid/media/AudioTrack;

    .line 1129
    new-instance v1, Lcom/google/android/exoplayer2/audio/AudioTrack$2;

    invoke-direct {v1, p0, v0}, Lcom/google/android/exoplayer2/audio/AudioTrack$2;-><init>(Lcom/google/android/exoplayer2/audio/AudioTrack;Landroid/media/AudioTrack;)V

    .line 1134
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/audio/AudioTrack$2;->start()V

    goto :goto_0
.end method

.method private m()Z
    .locals 1

    .prologue
    .line 1141
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->J:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private n()V
    .locals 12

    .prologue
    .line 1148
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->i:Lcom/google/android/exoplayer2/audio/AudioTrack$a;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/AudioTrack$a;->c()J

    move-result-wide v2

    .line 1149
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_1

    .line 1226
    :cond_0
    :goto_0
    return-void

    .line 1153
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    div-long v4, v0, v4

    .line 1154
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->y:J

    sub-long v0, v4, v0

    const-wide/16 v6, 0x7530

    cmp-long v0, v0, v6

    if-ltz v0, :cond_3

    .line 1156
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->h:[J

    iget v1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->v:I

    sub-long v6, v2, v4

    aput-wide v6, v0, v1

    .line 1157
    iget v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->v:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->v:I

    .line 1158
    iget v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->w:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_2

    .line 1159
    iget v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->w:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->w:I

    .line 1161
    :cond_2
    iput-wide v4, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->y:J

    .line 1162
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->x:J

    .line 1163
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->w:I

    if-ge v0, v1, :cond_3

    .line 1164
    iget-wide v6, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->x:J

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->h:[J

    aget-wide v8, v1, v0

    iget v1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->w:I

    int-to-long v10, v1

    div-long/2addr v8, v10

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->x:J

    .line 1163
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1168
    :cond_3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->t()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1174
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->A:J

    sub-long v0, v4, v0

    const-wide/32 v6, 0x7a120

    cmp-long v0, v0, v6

    if-ltz v0, :cond_0

    .line 1175
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->i:Lcom/google/android/exoplayer2/audio/AudioTrack$a;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/AudioTrack$a;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->z:Z

    .line 1176
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->z:Z

    if-eqz v0, :cond_4

    .line 1178
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->i:Lcom/google/android/exoplayer2/audio/AudioTrack$a;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/AudioTrack$a;->e()J

    move-result-wide v0

    const-wide/16 v6, 0x3e8

    div-long/2addr v0, v6

    .line 1179
    iget-object v6, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->i:Lcom/google/android/exoplayer2/audio/AudioTrack$a;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/audio/AudioTrack$a;->f()J

    move-result-wide v6

    .line 1180
    iget-wide v8, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->L:J

    cmp-long v8, v0, v8

    if-gez v8, :cond_6

    .line 1182
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->z:Z

    .line 1206
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->B:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->q:Z

    if-nez v0, :cond_5

    .line 1210
    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->B:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->k:Landroid/media/AudioTrack;

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->s:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->M:J

    .line 1213
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->M:J

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->M:J

    .line 1215
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->M:J

    const-wide/32 v2, 0x4c4b40

    cmp-long v0, v0, v2

    if-lez v0, :cond_5

    .line 1216
    const-string v0, "AudioTrack"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring impossibly large audio latency: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->M:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->M:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1224
    :cond_5
    :goto_3
    iput-wide v4, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->A:J

    goto/16 :goto_0

    .line 1183
    :cond_6
    sub-long v8, v0, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    const-wide/32 v10, 0x4c4b40

    cmp-long v8, v8, v10

    if-lez v8, :cond_8

    .line 1185
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Spurious audio timestamp (system clock mismatch): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1188
    sget-boolean v1, Lcom/google/android/exoplayer2/audio/AudioTrack;->b:Z

    if-eqz v1, :cond_7

    .line 1189
    new-instance v1, Lcom/google/android/exoplayer2/audio/AudioTrack$InvalidAudioTrackTimestampException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/audio/AudioTrack$InvalidAudioTrackTimestampException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1191
    :cond_7
    const-string v1, "AudioTrack"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->z:Z

    goto/16 :goto_2

    .line 1193
    :cond_8
    invoke-direct {p0, v6, v7}, Lcom/google/android/exoplayer2/audio/AudioTrack;->b(J)J

    move-result-wide v8

    sub-long/2addr v8, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    const-wide/32 v10, 0x4c4b40

    cmp-long v8, v8, v10

    if-lez v8, :cond_4

    .line 1196
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Spurious audio timestamp (frame position mismatch): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1199
    sget-boolean v1, Lcom/google/android/exoplayer2/audio/AudioTrack;->b:Z

    if-eqz v1, :cond_9

    .line 1200
    new-instance v1, Lcom/google/android/exoplayer2/audio/AudioTrack$InvalidAudioTrackTimestampException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/audio/AudioTrack$InvalidAudioTrackTimestampException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1202
    :cond_9
    const-string v1, "AudioTrack"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->z:Z

    goto/16 :goto_2

    .line 1219
    :catch_0
    move-exception v0

    .line 1221
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->B:Ljava/lang/reflect/Method;

    goto/16 :goto_3
.end method

.method private o()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioTrack$InitializationException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1236
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->k:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    .line 1237
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1238
    return-void

    .line 1242
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->k:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1247
    iput-object v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->k:Landroid/media/AudioTrack;

    .line 1250
    :goto_0
    new-instance v1, Lcom/google/android/exoplayer2/audio/AudioTrack$InitializationException;

    iget v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->l:I

    iget v3, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->m:I

    iget v4, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->r:I

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/google/android/exoplayer2/audio/AudioTrack$InitializationException;-><init>(IIII)V

    throw v1

    .line 1243
    :catch_0
    move-exception v1

    .line 1247
    iput-object v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->k:Landroid/media/AudioTrack;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->k:Landroid/media/AudioTrack;

    throw v0
.end method

.method private p()Z
    .locals 1

    .prologue
    .line 1254
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->k:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private q()J
    .locals 4

    .prologue
    .line 1266
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->q:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->E:J

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->D:J

    iget v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->C:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    goto :goto_0
.end method

.method private r()J
    .locals 4

    .prologue
    .line 1270
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->q:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->H:J

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->G:J

    iget v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->F:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    goto :goto_0
.end method

.method private s()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 1274
    iput-wide v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->x:J

    .line 1275
    iput v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->w:I

    .line 1276
    iput v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->v:I

    .line 1277
    iput-wide v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->y:J

    .line 1278
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->z:Z

    .line 1279
    iput-wide v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->A:J

    .line 1280
    return-void
.end method

.method private t()Z
    .locals 2

    .prologue
    .line 1287
    sget v0, Lcom/google/android/exoplayer2/util/v;->a:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->o:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->o:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private u()Z
    .locals 2

    .prologue
    .line 1298
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->k:Landroid/media/AudioTrack;

    .line 1299
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->k:Landroid/media/AudioTrack;

    .line 1300
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Z)J
    .locals 6

    .prologue
    const-wide/16 v4, 0x3e8

    .line 402
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->m()Z

    move-result v0

    if-nez v0, :cond_1

    .line 403
    const-wide/high16 v0, -0x8000000000000000L

    .line 437
    :cond_0
    :goto_0
    return-wide v0

    .line 406
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->k:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 407
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->n()V

    .line 410
    :cond_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    div-long/2addr v0, v4

    .line 412
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->z:Z

    if-eqz v2, :cond_3

    .line 414
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->i:Lcom/google/android/exoplayer2/audio/AudioTrack$a;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/audio/AudioTrack$a;->e()J

    move-result-wide v2

    div-long/2addr v2, v4

    sub-long/2addr v0, v2

    .line 416
    long-to-float v0, v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->i:Lcom/google/android/exoplayer2/audio/AudioTrack$a;

    .line 417
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/audio/AudioTrack$a;->g()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-long v0, v0

    .line 418
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/audio/AudioTrack;->c(J)J

    move-result-wide v0

    .line 420
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->i:Lcom/google/android/exoplayer2/audio/AudioTrack$a;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/audio/AudioTrack$a;->f()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 421
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/audio/AudioTrack;->b(J)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->K:J

    add-long/2addr v0, v2

    .line 422
    goto :goto_0

    .line 423
    :cond_3
    iget v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->w:I

    if-nez v2, :cond_4

    .line 425
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->i:Lcom/google/android/exoplayer2/audio/AudioTrack$a;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/AudioTrack$a;->c()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->K:J

    add-long/2addr v0, v2

    .line 432
    :goto_1
    if-nez p1, :cond_0

    .line 433
    iget-wide v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->M:J

    sub-long/2addr v0, v2

    goto :goto_0

    .line 430
    :cond_4
    iget-wide v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->x:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->K:J

    add-long/2addr v0, v2

    goto :goto_1
.end method

.method public a()V
    .locals 4

    .prologue
    .line 662
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->W:Z

    .line 663
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 664
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->L:J

    .line 665
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->k:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 667
    :cond_0
    return-void
.end method

.method public a(F)V
    .locals 1

    .prologue
    .line 1027
    iget v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->N:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 1028
    iput p1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->N:F

    .line 1029
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->k()V

    .line 1031
    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 966
    iget v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->p:I

    if-ne v0, p1, :cond_1

    .line 976
    :cond_0
    :goto_0
    return-void

    .line 969
    :cond_1
    iput p1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->p:I

    .line 970
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->Y:Z

    if-nez v0, :cond_0

    .line 974
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->h()V

    .line 975
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->X:I

    goto :goto_0
.end method

.method public a(Landroid/media/PlaybackParams;)V
    .locals 1

    .prologue
    .line 951
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->i:Lcom/google/android/exoplayer2/audio/AudioTrack$a;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/audio/AudioTrack$a;->a(Landroid/media/PlaybackParams;)V

    .line 952
    return-void
.end method

.method public a(Ljava/lang/String;IIII[I)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioTrack$ConfigurationException;
        }
    .end annotation

    .prologue
    .line 479
    const-string v2, "audio/raw"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    move v7, v2

    .line 480
    :goto_0
    if-eqz v7, :cond_1

    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/AudioTrack;->b(Ljava/lang/String;)I

    move-result v3

    .line 481
    :goto_1
    const/4 v2, 0x0

    .line 482
    if-nez v7, :cond_11

    .line 483
    move/from16 v0, p4

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/v;->b(II)I

    move-result v4

    iput v4, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->C:I

    .line 486
    iget-object v4, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->d:Lcom/google/android/exoplayer2/audio/e;

    move-object/from16 v0, p6

    invoke-virtual {v4, v0}, Lcom/google/android/exoplayer2/audio/e;->a([I)V

    .line 487
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 488
    iget-object v9, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->e:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    array-length v10, v9

    const/4 v4, 0x0

    move v6, v4

    move v5, v2

    move/from16 v4, p2

    :goto_2
    if-ge v6, v10, :cond_3

    aget-object v2, v9, v6

    .line 490
    :try_start_0
    move/from16 v0, p3

    invoke-interface {v2, v0, v4, v3}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->a(III)Z
    :try_end_0
    .catch Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    or-int/2addr v5, v11

    .line 494
    invoke-interface {v2}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->a()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 495
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 496
    invoke-interface {v2}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->b()I

    move-result v3

    .line 497
    invoke-interface {v2}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->c()I

    move-result v2

    .line 488
    :goto_3
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    move v4, v3

    move v3, v2

    goto :goto_2

    .line 479
    :cond_0
    const/4 v2, 0x0

    move v7, v2

    goto :goto_0

    :cond_1
    move/from16 v3, p4

    .line 480
    goto :goto_1

    .line 491
    :catch_0
    move-exception v2

    .line 492
    new-instance v3, Lcom/google/android/exoplayer2/audio/AudioTrack$ConfigurationException;

    invoke-direct {v3, v2}, Lcom/google/android/exoplayer2/audio/AudioTrack$ConfigurationException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 499
    :cond_2
    invoke-interface {v2}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->g()V

    move v2, v3

    move v3, v4

    goto :goto_3

    .line 503
    :cond_3
    if-eqz v5, :cond_4

    .line 504
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 505
    new-array v2, v6, [Lcom/google/android/exoplayer2/audio/AudioProcessor;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/google/android/exoplayer2/audio/AudioProcessor;

    iput-object v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->O:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    .line 506
    new-array v2, v6, [Ljava/nio/ByteBuffer;

    iput-object v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->P:[Ljava/nio/ByteBuffer;

    .line 507
    const/4 v2, 0x0

    :goto_4
    if-ge v2, v6, :cond_4

    .line 508
    iget-object v8, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->O:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    aget-object v8, v8, v2

    .line 509
    invoke-interface {v8}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->g()V

    .line 510
    iget-object v9, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->P:[Ljava/nio/ByteBuffer;

    invoke-interface {v8}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->e()Ljava/nio/ByteBuffer;

    move-result-object v8

    aput-object v8, v9, v2

    .line 507
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    move/from16 p2, v4

    .line 516
    :goto_5
    packed-switch p2, :pswitch_data_0

    .line 542
    new-instance v2, Lcom/google/android/exoplayer2/audio/AudioTrack$ConfigurationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported channel count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/audio/AudioTrack$ConfigurationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 518
    :pswitch_0
    const/4 v2, 0x4

    .line 546
    :goto_6
    sget v4, Lcom/google/android/exoplayer2/util/v;->a:I

    const/16 v6, 0x17

    if-gt v4, v6, :cond_5

    const-string v4, "foster"

    sget-object v6, Lcom/google/android/exoplayer2/util/v;->b:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "NVIDIA"

    sget-object v6, Lcom/google/android/exoplayer2/util/v;->c:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 547
    packed-switch p2, :pswitch_data_1

    .line 562
    :cond_5
    :goto_7
    :pswitch_1
    sget v4, Lcom/google/android/exoplayer2/util/v;->a:I

    const/16 v6, 0x19

    if-gt v4, v6, :cond_10

    const-string v4, "fugu"

    sget-object v6, Lcom/google/android/exoplayer2/util/v;->b:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    if-eqz v7, :cond_10

    const/4 v4, 0x1

    move/from16 v0, p2

    if-ne v0, v4, :cond_10

    .line 563
    const/16 v2, 0xc

    move v4, v2

    .line 566
    :goto_8
    if-nez v5, :cond_6

    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->p()Z

    move-result v2

    if-eqz v2, :cond_6

    iget v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->n:I

    if-ne v2, v3, :cond_6

    iget v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->l:I

    move/from16 v0, p3

    if-ne v2, v0, :cond_6

    iget v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->m:I

    if-ne v2, v4, :cond_6

    .line 606
    :goto_9
    return-void

    .line 521
    :pswitch_2
    const/16 v2, 0xc

    .line 522
    goto :goto_6

    .line 524
    :pswitch_3
    const/16 v2, 0x1c

    .line 525
    goto :goto_6

    .line 527
    :pswitch_4
    const/16 v2, 0xcc

    .line 528
    goto :goto_6

    .line 530
    :pswitch_5
    const/16 v2, 0xdc

    .line 531
    goto :goto_6

    .line 533
    :pswitch_6
    const/16 v2, 0xfc

    .line 534
    goto :goto_6

    .line 536
    :pswitch_7
    const/16 v2, 0x4fc

    .line 537
    goto :goto_6

    .line 539
    :pswitch_8
    sget v2, Lcom/google/android/exoplayer2/b;->a:I

    goto :goto_6

    .line 549
    :pswitch_9
    sget v2, Lcom/google/android/exoplayer2/b;->a:I

    goto :goto_7

    .line 553
    :pswitch_a
    const/16 v2, 0xfc

    .line 554
    goto :goto_7

    .line 572
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->h()V

    .line 574
    iput v3, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->n:I

    .line 575
    iput-boolean v7, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->q:Z

    .line 576
    move/from16 v0, p3

    iput v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->l:I

    .line 577
    iput v4, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->m:I

    .line 578
    if-eqz v7, :cond_7

    move v2, v3

    :goto_a
    iput v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->o:I

    .line 579
    const/4 v2, 0x2

    move/from16 v0, p2

    invoke-static {v2, v0}, Lcom/google/android/exoplayer2/util/v;->b(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->F:I

    .line 581
    if-eqz p5, :cond_8

    .line 582
    move/from16 v0, p5

    iput v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->r:I

    .line 605
    :goto_b
    if-eqz v7, :cond_f

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    :goto_c
    iput-wide v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->s:J

    goto :goto_9

    .line 578
    :cond_7
    const/4 v2, 0x2

    goto :goto_a

    .line 583
    :cond_8
    if-eqz v7, :cond_b

    .line 586
    iget v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->o:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_9

    iget v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->o:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_a

    .line 588
    :cond_9
    const/16 v2, 0x5000

    iput v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->r:I

    goto :goto_b

    .line 591
    :cond_a
    const v2, 0xc000

    iput v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->r:I

    goto :goto_b

    .line 594
    :cond_b
    iget v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->o:I

    .line 595
    move/from16 v0, p3

    invoke-static {v0, v4, v2}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v3

    .line 596
    const/4 v2, -0x2

    if-eq v3, v2, :cond_c

    const/4 v2, 0x1

    :goto_d
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 597
    mul-int/lit8 v4, v3, 0x4

    .line 598
    const-wide/32 v8, 0x3d090

    invoke-direct {p0, v8, v9}, Lcom/google/android/exoplayer2/audio/AudioTrack;->c(J)J

    move-result-wide v8

    long-to-int v2, v8

    iget v5, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->F:I

    mul-int/2addr v2, v5

    .line 599
    int-to-long v8, v3

    const-wide/32 v10, 0xb71b0

    .line 600
    invoke-direct {p0, v10, v11}, Lcom/google/android/exoplayer2/audio/AudioTrack;->c(J)J

    move-result-wide v10

    iget v3, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->F:I

    int-to-long v12, v3

    mul-long/2addr v10, v12

    .line 599
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    long-to-int v3, v8

    .line 601
    if-ge v4, v2, :cond_d

    :goto_e
    iput v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->r:I

    goto :goto_b

    .line 596
    :cond_c
    const/4 v2, 0x0

    goto :goto_d

    .line 601
    :cond_d
    if-le v4, v3, :cond_e

    move v2, v3

    goto :goto_e

    :cond_e
    move v2, v4

    goto :goto_e

    .line 605
    :cond_f
    iget v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->r:I

    iget v3, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->F:I

    div-int/2addr v2, v3

    int-to-long v2, v2

    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer2/audio/AudioTrack;->b(J)J

    move-result-wide v2

    goto :goto_c

    :cond_10
    move v4, v2

    goto/16 :goto_8

    :cond_11
    move v5, v2

    goto/16 :goto_5

    .line 516
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 547
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_a
        :pswitch_1
        :pswitch_a
        :pswitch_1
        :pswitch_9
    .end packed-switch
.end method

.method public a(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 386
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->c:Lcom/google/android/exoplayer2/audio/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->c:Lcom/google/android/exoplayer2/audio/b;

    .line 387
    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/AudioTrack;->b(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/audio/b;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/nio/ByteBuffer;J)Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioTrack$InitializationException;,
            Lcom/google/android/exoplayer2/audio/AudioTrack$WriteException;
        }
    .end annotation

    .prologue
    const-wide/16 v10, 0x0

    const/4 v8, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 699
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->Q:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->Q:Ljava/nio/ByteBuffer;

    if-ne p1, v0, :cond_3

    :cond_0
    move v0, v7

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 700
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->p()Z

    move-result v0

    if-nez v0, :cond_1

    .line 701
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->j()V

    .line 702
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->W:Z

    if-eqz v0, :cond_1

    .line 703
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->a()V

    .line 707
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->t()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 710
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->k:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    if-ne v0, v8, :cond_4

    .line 712
    iput-boolean v6, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->Z:Z

    .line 786
    :cond_2
    :goto_1
    return v6

    :cond_3
    move v0, v6

    .line 699
    goto :goto_0

    .line 719
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->k:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    if-ne v0, v7, :cond_5

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->i:Lcom/google/android/exoplayer2/audio/AudioTrack$a;

    .line 720
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/AudioTrack$a;->b()J

    move-result-wide v0

    cmp-long v0, v0, v10

    if-nez v0, :cond_2

    .line 725
    :cond_5
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->Z:Z

    .line 726
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->e()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->Z:Z

    .line 727
    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->Z:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->k:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    if-eq v0, v7, :cond_6

    .line 728
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->aa:J

    sub-long v4, v0, v2

    .line 729
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->f:Lcom/google/android/exoplayer2/audio/AudioTrack$d;

    iget v1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->r:I

    iget-wide v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->s:J

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/b;->a(J)J

    move-result-wide v2

    invoke-interface/range {v0 .. v5}, Lcom/google/android/exoplayer2/audio/AudioTrack$d;->a(IJJ)V

    .line 732
    :cond_6
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->Q:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_a

    .line 734
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_7

    move v6, v7

    .line 736
    goto :goto_1

    .line 739
    :cond_7
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->q:Z

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->I:I

    if-nez v0, :cond_8

    .line 741
    iget v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->o:I

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/audio/AudioTrack;->a(ILjava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->I:I

    .line 744
    :cond_8
    iget v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->J:I

    if-nez v0, :cond_b

    .line 745
    invoke-static {v10, v11, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->K:J

    .line 746
    iput v7, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->J:I

    .line 766
    :cond_9
    :goto_2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->q:Z

    if-eqz v0, :cond_d

    .line 767
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->E:J

    iget v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->I:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->E:J

    .line 772
    :goto_3
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->Q:Ljava/nio/ByteBuffer;

    .line 775
    :cond_a
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->q:Z

    if-eqz v0, :cond_e

    .line 777
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->Q:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0, p2, p3}, Lcom/google/android/exoplayer2/audio/AudioTrack;->b(Ljava/nio/ByteBuffer;J)Z

    .line 782
    :goto_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->Q:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_2

    .line 783
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->Q:Ljava/nio/ByteBuffer;

    move v6, v7

    .line 784
    goto/16 :goto_1

    .line 749
    :cond_b
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->K:J

    .line 750
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->q()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer2/audio/AudioTrack;->b(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 751
    iget v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->J:I

    if-ne v2, v7, :cond_c

    sub-long v2, v0, p2

    .line 752
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/32 v4, 0x30d40

    cmp-long v2, v2, v4

    if-lez v2, :cond_c

    .line 753
    const-string v2, "AudioTrack"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Discontinuity detected [expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", got "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    iput v8, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->J:I

    .line 757
    :cond_c
    iget v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->J:I

    if-ne v2, v8, :cond_9

    .line 760
    iget-wide v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->K:J

    sub-long v0, p2, v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->K:J

    .line 761
    iput v7, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->J:I

    .line 762
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->f:Lcom/google/android/exoplayer2/audio/AudioTrack$d;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioTrack$d;->a()V

    goto :goto_2

    .line 769
    :cond_d
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->D:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->D:J

    goto :goto_3

    .line 779
    :cond_e
    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplayer2/audio/AudioTrack;->a(J)V

    goto :goto_4
.end method

.method public b()V
    .locals 2

    .prologue
    .line 674
    iget v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->J:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 675
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->J:I

    .line 677
    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1001
    sget v0, Lcom/google/android/exoplayer2/util/v;->a:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 1002
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->Y:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->X:I

    if-eq v0, p1, :cond_1

    .line 1003
    :cond_0
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->Y:Z

    .line 1004
    iput p1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->X:I

    .line 1005
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->h()V

    .line 1007
    :cond_1
    return-void

    .line 1001
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioTrack$WriteException;
        }
    .end annotation

    .prologue
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 888
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->V:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->p()Z

    move-result v0

    if-nez v0, :cond_1

    .line 923
    :cond_0
    :goto_0
    return-void

    .line 894
    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->U:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_6

    .line 895
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->q:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->O:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    array-length v0, v0

    :goto_1
    iput v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->U:I

    move v0, v2

    .line 898
    :goto_2
    iget v3, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->U:I

    iget-object v4, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->O:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    array-length v4, v4

    if-ge v3, v4, :cond_4

    .line 899
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->O:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    iget v4, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->U:I

    aget-object v3, v3, v4

    .line 900
    if-eqz v0, :cond_2

    .line 901
    invoke-interface {v3}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->d()V

    .line 903
    :cond_2
    invoke-direct {p0, v6, v7}, Lcom/google/android/exoplayer2/audio/AudioTrack;->a(J)V

    .line 904
    invoke-interface {v3}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 908
    iget v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->U:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->U:I

    move v0, v2

    .line 909
    goto :goto_2

    :cond_3
    move v0, v1

    .line 895
    goto :goto_1

    .line 912
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->R:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_5

    .line 913
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->R:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0, v6, v7}, Lcom/google/android/exoplayer2/audio/AudioTrack;->b(Ljava/nio/ByteBuffer;J)Z

    .line 914
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->R:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    .line 920
    :cond_5
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->i:Lcom/google/android/exoplayer2/audio/AudioTrack$a;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->r()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/google/android/exoplayer2/audio/AudioTrack$a;->a(J)V

    .line 921
    iput v1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->u:I

    .line 922
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->V:Z

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_2
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 930
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->V:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->e()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Z
    .locals 4

    .prologue
    .line 937
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 938
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->r()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->i:Lcom/google/android/exoplayer2/audio/AudioTrack$a;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/audio/AudioTrack$a;->b()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 939
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1014
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->Y:Z

    if-eqz v0, :cond_0

    .line 1015
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->Y:Z

    .line 1016
    iput v1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->X:I

    .line 1017
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->h()V

    .line 1019
    :cond_0
    return-void
.end method

.method public g()V
    .locals 1

    .prologue
    .line 1047
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->W:Z

    .line 1048
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1049
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->s()V

    .line 1050
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->i:Lcom/google/android/exoplayer2/audio/AudioTrack$a;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/AudioTrack$a;->a()V

    .line 1052
    :cond_0
    return-void
.end method

.method public h()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 1062
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->p()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1063
    iput-wide v6, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->D:J

    .line 1064
    iput-wide v6, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->E:J

    .line 1065
    iput-wide v6, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->G:J

    .line 1066
    iput-wide v6, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->H:J

    .line 1067
    iput v1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->I:I

    .line 1068
    iput-object v4, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->Q:Ljava/nio/ByteBuffer;

    .line 1069
    iput-object v4, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->R:Ljava/nio/ByteBuffer;

    move v0, v1

    .line 1070
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->O:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 1071
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->O:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    aget-object v2, v2, v0

    .line 1072
    invoke-interface {v2}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->g()V

    .line 1073
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->P:[Ljava/nio/ByteBuffer;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->e()Ljava/nio/ByteBuffer;

    move-result-object v2

    aput-object v2, v3, v0

    .line 1070
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1075
    :cond_0
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->V:Z

    .line 1076
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->U:I

    .line 1077
    iput-object v4, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->t:Ljava/nio/ByteBuffer;

    .line 1078
    iput v1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->u:I

    .line 1079
    iput v1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->J:I

    .line 1080
    iput-wide v6, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->M:J

    .line 1081
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->s()V

    .line 1082
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->k:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    .line 1083
    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 1084
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->k:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    .line 1087
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->k:Landroid/media/AudioTrack;

    .line 1088
    iput-object v4, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->k:Landroid/media/AudioTrack;

    .line 1089
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->i:Lcom/google/android/exoplayer2/audio/AudioTrack$a;

    invoke-virtual {v2, v4, v1}, Lcom/google/android/exoplayer2/audio/AudioTrack$a;->a(Landroid/media/AudioTrack;Z)V

    .line 1090
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->g:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->close()V

    .line 1091
    new-instance v1, Lcom/google/android/exoplayer2/audio/AudioTrack$1;

    invoke-direct {v1, p0, v0}, Lcom/google/android/exoplayer2/audio/AudioTrack$1;-><init>(Lcom/google/android/exoplayer2/audio/AudioTrack;Landroid/media/AudioTrack;)V

    .line 1101
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/audio/AudioTrack$1;->start()V

    .line 1103
    :cond_2
    return-void
.end method

.method public i()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1109
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->h()V

    .line 1110
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack;->l()V

    .line 1111
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->e:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 1112
    invoke-interface {v4}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->h()V

    .line 1111
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1114
    :cond_0
    iput v1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->X:I

    .line 1115
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack;->W:Z

    .line 1116
    return-void
.end method
