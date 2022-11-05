.class public Lcom/google/android/gms/internal/zzafp;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/internal/zzafo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/zzafo;Landroid/os/Parcel;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zzc;->zzaZ(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzafo;->zzaJT:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzc;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzafo;->packageName:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzc;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x4

    iget v2, p0, Lcom/google/android/gms/internal/zzafo;->uid:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzc;->zzc(Landroid/os/Parcel;II)V

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzafo;->moduleId:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzc;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x6

    iget v2, p0, Lcom/google/android/gms/internal/zzafo;->zzaJU:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzc;->zzc(Landroid/os/Parcel;II)V

    const/4 v1, 0x7

    iget v2, p0, Lcom/google/android/gms/internal/zzafo;->zzaJV:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzc;->zzc(Landroid/os/Parcel;II)V

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/gms/internal/zzafo;->zzaJW:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzc;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/gms/internal/zzafo;->zzaJX:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzc;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0xa

    iget v2, p0, Lcom/google/android/gms/internal/zzafo;->zzaJY:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzc;->zzc(Landroid/os/Parcel;II)V

    const/16 v1, 0xb

    iget v2, p0, Lcom/google/android/gms/internal/zzafo;->pid:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzc;->zzc(Landroid/os/Parcel;II)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zzc;->zzJ(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzafp;->zzbC(Landroid/os/Parcel;)Lcom/google/android/gms/internal/zzafo;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzafp;->zzdR(I)[Lcom/google/android/gms/internal/zzafo;

    move-result-object v0

    return-object v0
.end method

.method public zzbC(Landroid/os/Parcel;)Lcom/google/android/gms/internal/zzafo;
    .locals 13

    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzaY(Landroid/os/Parcel;)I

    move-result v0

    move v9, v10

    move-object v7, v8

    move v6, v10

    move v5, v10

    move-object v4, v8

    move v3, v10

    move-object v2, v8

    move-object v1, v8

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v11

    if-ge v11, v0, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzaX(Landroid/os/Parcel;)I

    move-result v11

    invoke-static {v11}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzdc(I)I

    move-result v12

    packed-switch v12, :pswitch_data_0

    invoke-static {p1, v11}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzb(Landroid/os/Parcel;I)V

    goto :goto_0

    :pswitch_0
    invoke-static {p1, v11}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzq(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_1
    invoke-static {p1, v11}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzq(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :pswitch_2
    invoke-static {p1, v11}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzg(Landroid/os/Parcel;I)I

    move-result v3

    goto :goto_0

    :pswitch_3
    invoke-static {p1, v11}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzq(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :pswitch_4
    invoke-static {p1, v11}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzg(Landroid/os/Parcel;I)I

    move-result v5

    goto :goto_0

    :pswitch_5
    invoke-static {p1, v11}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzg(Landroid/os/Parcel;I)I

    move-result v6

    goto :goto_0

    :pswitch_6
    invoke-static {p1, v11}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzq(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :pswitch_7
    invoke-static {p1, v11}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzq(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :pswitch_8
    invoke-static {p1, v11}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzg(Landroid/os/Parcel;I)I

    move-result v9

    goto :goto_0

    :pswitch_9
    invoke-static {p1, v11}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzg(Landroid/os/Parcel;I)I

    move-result v10

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v11

    if-eq v11, v0, :cond_1

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
    new-instance v0, Lcom/google/android/gms/internal/zzafo;

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/zzafo;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;II)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public zzdR(I)[Lcom/google/android/gms/internal/zzafo;
    .locals 1

    new-array v0, p1, [Lcom/google/android/gms/internal/zzafo;

    return-object v0
.end method
