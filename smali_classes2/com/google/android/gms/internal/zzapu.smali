.class public Lcom/google/android/gms/internal/zzapu;
.super Ljava/lang/Object;


# static fields
.field private static final zzaVn:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzapu;->zzaVn:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public static zzCK()Z
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzapu;->zzaVn:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "com.google"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

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

.method public static zzL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v0

    invoke-static {v0, v4, v1, v4}, Lcom/google/android/gms/internal/zzapu;->zza([BIII)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static zza([BIII)I
    .locals 6

    const v5, 0x1b873593

    const v4, -0x3361d2af    # -8.293031E7f

    and-int/lit8 v0, p2, -0x4

    add-int v2, p1, v0

    move v1, p3

    :goto_0
    if-ge p1, v2, :cond_0

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v3, p1, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v0, v3

    add-int/lit8 v3, p1, 0x2

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v0, v3

    add-int/lit8 v3, p1, 0x3

    aget-byte v3, p0, v3

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v0, v3

    mul-int/2addr v0, v4

    shl-int/lit8 v3, v0, 0xf

    ushr-int/lit8 v0, v0, 0x11

    or-int/2addr v0, v3

    mul-int/2addr v0, v5

    xor-int/2addr v0, v1

    shl-int/lit8 v1, v0, 0xd

    ushr-int/lit8 v0, v0, 0x13

    or-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x5

    const v1, -0x19ab949c

    add-int/2addr v1, v0

    add-int/lit8 p1, p1, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    and-int/lit8 v3, p2, 0x3

    packed-switch v3, :pswitch_data_0

    move v0, v1

    :goto_1
    xor-int/2addr v0, p2

    ushr-int/lit8 v1, v0, 0x10

    xor-int/2addr v0, v1

    const v1, -0x7a143595

    mul-int/2addr v0, v1

    ushr-int/lit8 v1, v0, 0xd

    xor-int/2addr v0, v1

    const v1, -0x3d4d51cb

    mul-int/2addr v0, v1

    ushr-int/lit8 v1, v0, 0x10

    xor-int/2addr v0, v1

    return v0

    :pswitch_0
    add-int/lit8 v0, v2, 0x2

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    :pswitch_1
    add-int/lit8 v3, v2, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v0, v3

    :pswitch_2
    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    mul-int/2addr v0, v4

    shl-int/lit8 v2, v0, 0xf

    ushr-int/lit8 v0, v0, 0x11

    or-int/2addr v0, v2

    mul-int/2addr v0, v5

    xor-int/2addr v0, v1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static zzek(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/zzapu;->zzCK()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/zzapu;->zzaVn:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/zzapu;->zzL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method
