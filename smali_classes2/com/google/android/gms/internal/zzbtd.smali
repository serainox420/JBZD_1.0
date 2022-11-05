.class public Lcom/google/android/gms/internal/zzbtd;
.super Ljava/lang/Object;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final zzckF:Ljava/util/Random;

.field private static zzckG:J

.field private static final zzckH:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/google/android/gms/internal/zzbtd;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/android/gms/internal/zzbtd;->$assertionsDisabled:Z

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbtd;->zzckF:Ljava/util/Random;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/google/android/gms/internal/zzbtd;->zzckG:J

    const/16 v0, 0xc

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/internal/zzbtd;->zzckH:[I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized zzaT(J)Ljava/lang/String;
    .locals 12

    const/16 v11, 0x14

    const/16 v10, 0xc

    const/4 v0, 0x0

    const-class v3, Lcom/google/android/gms/internal/zzbtd;

    monitor-enter v3

    :try_start_0
    sget-wide v4, Lcom/google/android/gms/internal/zzbtd;->zzckG:J

    cmp-long v1, p0, v4

    if-nez v1, :cond_0

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    sput-wide p0, Lcom/google/android/gms/internal/zzbtd;->zzckG:J

    const/16 v1, 0x8

    new-array v4, v1, [C

    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x7

    :goto_1
    if-ltz v1, :cond_1

    const-string v6, "-0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_abcdefghijklmnopqrstuvwxyz"

    const-wide/16 v8, 0x40

    rem-long v8, p0, v8

    long-to-int v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    aput-char v6, v4, v1

    const-wide/16 v6, 0x40

    div-long/2addr p0, v6

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_0
    move v2, v0

    goto :goto_0

    :cond_1
    sget-boolean v1, Lcom/google/android/gms/internal/zzbtd;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    const-wide/16 v6, 0x0

    cmp-long v1, p0, v6

    if-eqz v1, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_2
    :try_start_1
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    if-nez v2, :cond_3

    move v1, v0

    :goto_2
    if-ge v1, v10, :cond_4

    sget-object v2, Lcom/google/android/gms/internal/zzbtd;->zzckH:[I

    sget-object v4, Lcom/google/android/gms/internal/zzbtd;->zzckF:Ljava/util/Random;

    const/16 v6, 0x40

    invoke-virtual {v4, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    aput v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/zzbtd;->zzabK()V

    :cond_4
    :goto_3
    if-ge v0, v10, :cond_5

    const-string v1, "-0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_abcdefghijklmnopqrstuvwxyz"

    sget-object v2, Lcom/google/android/gms/internal/zzbtd;->zzckH:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    sget-boolean v0, Lcom/google/android/gms/internal/zzbtd;->$assertionsDisabled:Z

    if-nez v0, :cond_6

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eq v0, v11, :cond_6

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_6
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit v3

    return-object v0
.end method

.method private static zzabK()V
    .locals 3

    const/16 v0, 0xb

    :goto_0
    if-ltz v0, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/zzbtd;->zzckH:[I

    aget v1, v1, v0

    const/16 v2, 0x3f

    if-eq v1, v2, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/zzbtd;->zzckH:[I

    sget-object v2, Lcom/google/android/gms/internal/zzbtd;->zzckH:[I

    aget v2, v2, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    :cond_0
    return-void

    :cond_1
    sget-object v1, Lcom/google/android/gms/internal/zzbtd;->zzckH:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method
