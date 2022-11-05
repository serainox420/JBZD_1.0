.class public Lcom/google/android/gms/internal/zzawa;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/internal/zzavz;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/zzavz;Landroid/os/Parcel;I)V
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zzc;->zzaZ(Landroid/os/Parcel;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zzc;->zzJ(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzawa;->zzil(Landroid/os/Parcel;)Lcom/google/android/gms/internal/zzavz;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzawa;->zzlV(I)[Lcom/google/android/gms/internal/zzavz;

    move-result-object v0

    return-object v0
.end method

.method public zzil(Landroid/os/Parcel;)Lcom/google/android/gms/internal/zzavz;
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzaY(Landroid/os/Parcel;)I

    move-result v0

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    if-ge v1, v0, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzaX(Landroid/os/Parcel;)I

    move-result v1

    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzb(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    if-eq v1, v0, :cond_1

    new-instance v1, Lcom/google/android/gms/common/internal/safeparcel/zzb$zza;

    const/16 v2, 0x25

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Overread allowed size end="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/common/internal/safeparcel/zzb$zza;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v1

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/zzavz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzavz;-><init>()V

    return-object v0
.end method

.method public zzlV(I)[Lcom/google/android/gms/internal/zzavz;
    .locals 1

    new-array v0, p1, [Lcom/google/android/gms/internal/zzavz;

    return-object v0
.end method
