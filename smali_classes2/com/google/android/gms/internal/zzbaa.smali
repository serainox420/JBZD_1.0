.class public Lcom/google/android/gms/internal/zzbaa;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field zzbDD:[I

.field zzbDf:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/android/gms/internal/zzbaa;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzbaa;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->getStatusCode()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    invoke-virtual {p1, p2}, Lcom/google/android/gms/common/data/DataHolder;->zzcI(I)I

    move-result v1

    invoke-virtual {p1, v0, p2, v1}, Lcom/google/android/gms/common/data/DataHolder;->zzg(Ljava/lang/String;II)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbaa;->zzK([B)[I

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    aget v1, v0, v3

    if-ne v1, v4, :cond_0

    aget v1, v0, v4

    const v2, 0x736e6574

    if-ne v1, v2, :cond_0

    array-length v1, v0

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/google/android/gms/internal/zzbaa;->zzbDD:[I

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbaa;->zzbDD:[I

    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbaa;->zzbDD:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/zzbaa;->zzbDf:I

    goto :goto_0
.end method

.method private static zzJ([B)J
    .locals 8

    const-wide/16 v6, 0xff

    const/4 v0, 0x3

    aget-byte v0, p0, v0

    int-to-long v0, v0

    and-long/2addr v0, v6

    const/4 v2, 0x2

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    const/4 v2, 0x1

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    const/4 v2, 0x0

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public static zzK([B)[I
    .locals 10

    const-wide/16 v8, 0xff

    if-eqz p0, :cond_0

    array-length v0, p0

    rem-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    array-length v0, p0

    div-int/lit8 v0, v0, 0x4

    new-array v1, v0, [I

    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    add-int/lit8 v2, v0, 0x3

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v8

    add-int/lit8 v4, v0, 0x2

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v8

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, v0, 0x1

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v8

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    aget-byte v4, p0, v0

    int-to-long v4, v4

    and-long/2addr v4, v8

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    div-int/lit8 v4, v0, 0x4

    const-wide v6, 0xffffffffL

    and-long/2addr v2, v6

    long-to-int v2, v2

    aput v2, v1, v4

    add-int/lit8 v0, v0, 0x4

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method private static zza([IJ)I
    .locals 7

    const/4 v1, 0x3

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gt v1, v0, :cond_2

    sub-int v2, v0, v1

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v1

    aget v3, p0, v2

    int-to-long v4, v3

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/zzbaa;->zzax(J)J

    move-result-wide v4

    cmp-long v3, v4, p1

    if-nez v3, :cond_0

    move v0, v2

    :goto_1
    return v0

    :cond_0
    cmp-long v3, v4, p1

    if-gez v3, :cond_1

    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private static zzax(J)J
    .locals 2

    const-wide v0, 0xffffffffL

    and-long/2addr v0, p0

    return-wide v0
.end method


# virtual methods
.method public getThreatType()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzbaa;->zzbDf:I

    return v0
.end method

.method public zzI([B)Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbaa;->zzbDD:[I

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p1}, Lcom/google/android/gms/internal/zzbaa;->zzJ([B)J

    move-result-wide v2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbaa;->zzbDD:[I

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzbaa;->zza([IJ)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
