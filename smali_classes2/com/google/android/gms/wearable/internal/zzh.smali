.class public Lcom/google/android/gms/wearable/internal/zzh;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;

# interfaces
.implements Lcom/google/android/gms/wearable/zzb;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wearable/internal/zzh;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mValue:Ljava/lang/String;

.field private zzbTB:B

.field private final zzbTC:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzi;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/zzi;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/internal/zzh;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(BBLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput-byte p1, p0, Lcom/google/android/gms/wearable/internal/zzh;->zzbTB:B

    iput-byte p2, p0, Lcom/google/android/gms/wearable/internal/zzh;->zzbTC:B

    iput-object p3, p0, Lcom/google/android/gms/wearable/internal/zzh;->mValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/google/android/gms/wearable/internal/zzh;

    iget-byte v2, p0, Lcom/google/android/gms/wearable/internal/zzh;->zzbTB:B

    iget-byte v3, p1, Lcom/google/android/gms/wearable/internal/zzh;->zzbTB:B

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget-byte v2, p0, Lcom/google/android/gms/wearable/internal/zzh;->zzbTC:B

    iget-byte v3, p1, Lcom/google/android/gms/wearable/internal/zzh;->zzbTC:B

    if-eq v2, v3, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/wearable/internal/zzh;->mValue:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/wearable/internal/zzh;->mValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzh;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-byte v0, p0, Lcom/google/android/gms/wearable/internal/zzh;->zzbTB:B

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget-byte v1, p0, Lcom/google/android/gms/wearable/internal/zzh;->zzbTC:B

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/zzh;->mValue:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-byte v0, p0, Lcom/google/android/gms/wearable/internal/zzh;->zzbTB:B

    iget-byte v1, p0, Lcom/google/android/gms/wearable/internal/zzh;->zzbTC:B

    iget-object v2, p0, Lcom/google/android/gms/wearable/internal/zzh;->mValue:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x49

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "AmsEntityUpdateParcelable{, mEntityId="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", mAttributeId="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mValue=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wearable/internal/zzi;->zza(Lcom/google/android/gms/wearable/internal/zzh;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzUk()B
    .locals 1

    iget-byte v0, p0, Lcom/google/android/gms/wearable/internal/zzh;->zzbTB:B

    return v0
.end method

.method public zzUl()B
    .locals 1

    iget-byte v0, p0, Lcom/google/android/gms/wearable/internal/zzh;->zzbTC:B

    return v0
.end method
