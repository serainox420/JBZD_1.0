.class public Lcom/google/android/gms/internal/zzasm;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;

# interfaces
.implements Lcom/google/android/gms/location/Geofence;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzasm;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzOV:Ljava/lang/String;

.field private final zzbjD:I

.field private final zzbjF:S

.field private final zzbjG:D

.field private final zzbjH:D

.field private final zzbjI:F

.field private final zzbjJ:I

.field private final zzbjK:I

.field private final zzbkU:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzasn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzasn;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzasm;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ISDDFJII)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/zzasm;->zzeT(Ljava/lang/String;)V

    invoke-static {p8}, Lcom/google/android/gms/internal/zzasm;->zzf(F)V

    invoke-static {p4, p5, p6, p7}, Lcom/google/android/gms/internal/zzasm;->zza(DD)V

    invoke-static {p2}, Lcom/google/android/gms/internal/zzasm;->zzkA(I)I

    move-result v0

    iput-short p3, p0, Lcom/google/android/gms/internal/zzasm;->zzbjF:S

    iput-object p1, p0, Lcom/google/android/gms/internal/zzasm;->zzOV:Ljava/lang/String;

    iput-wide p4, p0, Lcom/google/android/gms/internal/zzasm;->zzbjG:D

    iput-wide p6, p0, Lcom/google/android/gms/internal/zzasm;->zzbjH:D

    iput p8, p0, Lcom/google/android/gms/internal/zzasm;->zzbjI:F

    iput-wide p9, p0, Lcom/google/android/gms/internal/zzasm;->zzbkU:J

    iput v0, p0, Lcom/google/android/gms/internal/zzasm;->zzbjD:I

    iput p11, p0, Lcom/google/android/gms/internal/zzasm;->zzbjJ:I

    iput p12, p0, Lcom/google/android/gms/internal/zzasm;->zzbjK:I

    return-void
.end method

.method private static zza(DD)V
    .locals 4

    const-wide v0, 0x4056800000000000L    # 90.0

    cmpl-double v0, p0, v0

    if-gtz v0, :cond_0

    const-wide v0, -0x3fa9800000000000L    # -90.0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x2a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "invalid latitude: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-wide v0, 0x4066800000000000L    # 180.0

    cmpl-double v0, p2, v0

    if-gtz v0, :cond_2

    const-wide v0, -0x3f99800000000000L    # -180.0

    cmpg-double v0, p2, v0

    if-gez v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x2b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "invalid longitude: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-void
.end method

.method private static zzeT(Ljava/lang/String;)V
    .locals 4

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_2

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "requestId is null or too long: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static zzf(F)V
    .locals 3

    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x1f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "invalid radius: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private static zzkA(I)I
    .locals 3

    and-int/lit8 v0, p0, 0x7

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x2e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "No supported transition specified: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return v0
.end method

.method private static zzkB(I)Ljava/lang/String;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "CIRCLE"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static zzw([B)Lcom/google/android/gms/internal/zzasm;
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    array-length v0, p0

    invoke-virtual {v1, p0, v2, v0}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object v0, Lcom/google/android/gms/internal/zzasm;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzasm;

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    instance-of v2, p1, Lcom/google/android/gms/internal/zzasm;

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/google/android/gms/internal/zzasm;

    iget v2, p0, Lcom/google/android/gms/internal/zzasm;->zzbjI:F

    iget v3, p1, Lcom/google/android/gms/internal/zzasm;->zzbjI:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzasm;->zzbjG:D

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzasm;->zzbjG:D

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzasm;->zzbjH:D

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzasm;->zzbjH:D

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    iget-short v2, p0, Lcom/google/android/gms/internal/zzasm;->zzbjF:S

    iget-short v3, p1, Lcom/google/android/gms/internal/zzasm;->zzbjF:S

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getExpirationTime()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzasm;->zzbkU:J

    return-wide v0
.end method

.method public getLatitude()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzasm;->zzbjG:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzasm;->zzbjH:D

    return-wide v0
.end method

.method public getRadius()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzasm;->zzbjI:F

    return v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzasm;->zzOV:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    const/16 v4, 0x20

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzasm;->zzbjG:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    ushr-long v2, v0, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzasm;->zzbjH:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    mul-int/lit8 v0, v0, 0x1f

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/zzasm;->zzbjI:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-short v1, p0, Lcom/google/android/gms/internal/zzasm;->zzbjF:S

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/zzasm;->zzbjD:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "Geofence[%s id:%s transitions:%d %.6f, %.6f %.0fm, resp=%ds, dwell=%dms, @%d]"

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-short v4, p0, Lcom/google/android/gms/internal/zzasm;->zzbjF:S

    invoke-static {v4}, Lcom/google/android/gms/internal/zzasm;->zzkB(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/android/gms/internal/zzasm;->zzOV:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/google/android/gms/internal/zzasm;->zzbjD:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzasm;->zzbjG:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzasm;->zzbjH:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget v4, p0, Lcom/google/android/gms/internal/zzasm;->zzbjI:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    iget v4, p0, Lcom/google/android/gms/internal/zzasm;->zzbjJ:I

    div-int/lit16 v4, v4, 0x3e8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x7

    iget v4, p0, Lcom/google/android/gms/internal/zzasm;->zzbjK:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzasm;->zzbkU:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzasn;->zza(Lcom/google/android/gms/internal/zzasm;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzIu()S
    .locals 1

    iget-short v0, p0, Lcom/google/android/gms/internal/zzasm;->zzbjF:S

    return v0
.end method

.method public zzIv()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzasm;->zzbjD:I

    return v0
.end method

.method public zzIw()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzasm;->zzbjJ:I

    return v0
.end method

.method public zzIx()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzasm;->zzbjK:I

    return v0
.end method
