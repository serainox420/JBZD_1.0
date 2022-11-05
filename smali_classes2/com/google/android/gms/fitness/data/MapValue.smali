.class public Lcom/google/android/gms/fitness/data/MapValue;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/fitness/data/MapValue;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzaTY:I

.field private final zzaTZ:F

.field private final zzaiI:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/data/zzt;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/data/zzt;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/data/MapValue;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/fitness/data/MapValue;-><init>(IIF)V

    return-void
.end method

.method constructor <init>(IIF)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/data/MapValue;->zzaiI:I

    iput p2, p0, Lcom/google/android/gms/fitness/data/MapValue;->zzaTY:I

    iput p3, p0, Lcom/google/android/gms/fitness/data/MapValue;->zzaTZ:F

    return-void
.end method

.method private zza(Lcom/google/android/gms/fitness/data/MapValue;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/fitness/data/MapValue;->zzaTY:I

    iget v3, p1, Lcom/google/android/gms/fitness/data/MapValue;->zzaTY:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/android/gms/fitness/data/MapValue;->zzaTY:I

    packed-switch v2, :pswitch_data_0

    iget v2, p0, Lcom/google/android/gms/fitness/data/MapValue;->zzaTZ:F

    iget v3, p1, Lcom/google/android/gms/fitness/data/MapValue;->zzaTZ:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/MapValue;->asFloat()F

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/MapValue;->asFloat()F

    move-result v3

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public static zzd(F)Lcom/google/android/gms/fitness/data/MapValue;
    .locals 2

    new-instance v0, Lcom/google/android/gms/fitness/data/MapValue;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/fitness/data/MapValue;-><init>(IF)V

    return-object v0
.end method


# virtual methods
.method public asFloat()F
    .locals 2

    iget v0, p0, Lcom/google/android/gms/fitness/data/MapValue;->zzaTY:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Value is not in float format"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    iget v0, p0, Lcom/google/android/gms/fitness/data/MapValue;->zzaTZ:F

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_0

    instance-of v0, p1, Lcom/google/android/gms/fitness/data/MapValue;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/android/gms/fitness/data/MapValue;

    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/data/MapValue;->zza(Lcom/google/android/gms/fitness/data/MapValue;)Z

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

.method getFormat()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/data/MapValue;->zzaTY:I

    return v0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/data/MapValue;->zzaiI:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/data/MapValue;->zzaTZ:F

    float-to-int v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/data/MapValue;->zzaTY:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "unknown"

    :goto_0
    return-object v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/MapValue;->asFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/data/zzt;->zza(Lcom/google/android/gms/fitness/data/MapValue;Landroid/os/Parcel;I)V

    return-void
.end method

.method zzCx()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/data/MapValue;->zzaTZ:F

    return v0
.end method
