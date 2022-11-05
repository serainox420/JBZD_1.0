.class public Lcom/google/android/gms/internal/zzafj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/internal/zzafk;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/zzafk;Landroid/os/Parcel;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zzc;->zzaZ(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzafk;->zzaJK:Ljava/util/ArrayList;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzc;->zzc(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzafk;->zzaJL:Ljava/util/ArrayList;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzc;->zzb(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzafk;->zzaJM:Lcom/google/android/gms/internal/zzaga;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzc;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zzc;->zzJ(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzafj;->zzbA(Landroid/os/Parcel;)Lcom/google/android/gms/internal/zzafk;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzafj;->zzdP(I)[Lcom/google/android/gms/internal/zzafk;

    move-result-object v0

    return-object v0
.end method

.method public zzbA(Landroid/os/Parcel;)Lcom/google/android/gms/internal/zzafk;
    .locals 6

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzaY(Landroid/os/Parcel;)I

    move-result v3

    move-object v1, v0

    move-object v2, v0

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v3, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzaX(Landroid/os/Parcel;)I

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzdc(I)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    invoke-static {p1, v4}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzb(Landroid/os/Parcel;I)V

    goto :goto_0

    :pswitch_0
    sget-object v2, Lcom/google/android/gms/internal/zzafk$zza;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v4, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzc(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_0

    :pswitch_1
    invoke-static {p1, v4}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzE(Landroid/os/Parcel;I)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/google/android/gms/internal/zzaga;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v4, v0}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaga;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-eq v4, v3, :cond_1

    new-instance v0, Lcom/google/android/gms/common/internal/safeparcel/zzb$zza;

    const/16 v1, 0x25

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Overread allowed size end="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/internal/safeparcel/zzb$zza;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v0

    :cond_1
    new-instance v3, Lcom/google/android/gms/internal/zzafk;

    invoke-direct {v3, v2, v1, v0}, Lcom/google/android/gms/internal/zzafk;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/google/android/gms/internal/zzaga;)V

    return-object v3

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public zzdP(I)[Lcom/google/android/gms/internal/zzafk;
    .locals 1

    new-array v0, p1, [Lcom/google/android/gms/internal/zzafk;

    return-object v0
.end method
