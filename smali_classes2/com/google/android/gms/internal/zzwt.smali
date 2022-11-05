.class public Lcom/google/android/gms/internal/zzwt;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;

# interfaces
.implements Lcom/google/android/gms/awareness/state/Weather;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzwt;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzamE:F

.field private final zzamF:F

.field private final zzamG:F

.field private final zzamH:I

.field private final zzamI:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzwu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzwu;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzwt;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(FFFI[I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzwt;->zzamE:F

    iput p2, p0, Lcom/google/android/gms/internal/zzwt;->zzamF:F

    iput p3, p0, Lcom/google/android/gms/internal/zzwt;->zzamG:F

    iput p4, p0, Lcom/google/android/gms/internal/zzwt;->zzamH:I

    iput-object p5, p0, Lcom/google/android/gms/internal/zzwt;->zzamI:[I

    return-void
.end method

.method static zza(IF)F
    .locals 3

    packed-switch p0, :pswitch_data_0

    const-string v0, "WeatherImpl"

    const-string v1, "Invalid temperature unit %s"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzcf;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid temperature unit"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-static {p1}, Lcom/google/android/gms/internal/zzwt;->zzc(F)F

    move-result p1

    :pswitch_1
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static zzc(F)F
    .locals 2

    const/high16 v0, 0x40a00000    # 5.0f

    const/high16 v1, 0x42000000    # 32.0f

    sub-float v1, p0, v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x41100000    # 9.0f

    div-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public getConditions()[I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzwt;->zzamI:[I

    return-object v0
.end method

.method public getDewPoint(I)F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzwt;->zzamG:F

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzwt;->zza(IF)F

    move-result v0

    return v0
.end method

.method public getFeelsLikeTemperature(I)F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzwt;->zzamF:F

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzwt;->zza(IF)F

    move-result v0

    return v0
.end method

.method public getHumidity()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzwt;->zzamH:I

    return v0
.end method

.method public getTemperature(I)F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzwt;->zzamE:F

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzwt;->zza(IF)F

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    const/4 v1, 0x0

    const/4 v5, 0x2

    const/4 v0, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Temp="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzwt;->getTemperature(I)F

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "F/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/zzwt;->getTemperature(I)F

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "C, Feels="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzwt;->getFeelsLikeTemperature(I)F

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "F/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/zzwt;->getFeelsLikeTemperature(I)F

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "C, Dew="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzwt;->getDewPoint(I)F

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "F/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/zzwt;->getDewPoint(I)F

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "C, Humidity="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzwt;->getHumidity()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", Condition="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzwt;->getConditions()[I

    move-result-object v2

    if-nez v2, :cond_0

    const-string v0, "unknown"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v2, "["

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzwt;->getConditions()[I

    move-result-object v4

    array-length v5, v4

    move v2, v0

    move v0, v1

    :goto_1
    if-ge v0, v5, :cond_2

    aget v6, v4, v0

    if-nez v2, :cond_1

    const-string v2, ","

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_1

    :cond_2
    const-string v0, "]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzwu;->zza(Lcom/google/android/gms/internal/zzwt;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzsc()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzwt;->zzamG:F

    return v0
.end method

.method public zzsd()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzwt;->zzamF:F

    return v0
.end method

.method public zzse()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzwt;->zzamE:F

    return v0
.end method
