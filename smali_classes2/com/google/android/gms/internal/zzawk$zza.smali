.class public abstract Lcom/google/android/gms/internal/zzawk$zza;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/internal/zzawk;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzawk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzawk$zza$zza;
    }
.end annotation


# direct methods
.method public static zzeG(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzawk;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "com.google.android.gms.nearby.internal.connection.INearbyConnectionService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/google/android/gms/internal/zzawk;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/internal/zzawk;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/zzawk$zza$zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzawk$zza$zza;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v8, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    const-string v0, "com.google.android.gms.nearby.internal.connection.INearbyConnectionService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v8

    goto :goto_0

    :sswitch_1
    const-string v0, "com.google.android.gms.nearby.internal.connection.INearbyConnectionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzawj$zza;->zzeF(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzawj;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/nearby/connection/AppMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/nearby/connection/AppMetadata;

    move-object v3, v0

    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/zzawk$zza;->zza(Lcom/google/android/gms/internal/zzawj;Ljava/lang/String;Lcom/google/android/gms/nearby/connection/AppMetadata;JJ)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    goto :goto_0

    :sswitch_2
    const-string v0, "com.google.android.gms.nearby.internal.connection.INearbyConnectionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzawk$zza;->zzau(J)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    goto :goto_0

    :sswitch_3
    const-string v0, "com.google.android.gms.nearby.internal.connection.INearbyConnectionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzawj$zza;->zzeF(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzawj;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/zzawk$zza;->zza(Lcom/google/android/gms/internal/zzawj;Ljava/lang/String;JJ)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    goto :goto_0

    :sswitch_4
    const-string v0, "com.google.android.gms.nearby.internal.connection.INearbyConnectionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/gms/internal/zzawk$zza;->zzm(Ljava/lang/String;J)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    goto :goto_0

    :sswitch_5
    const-string v0, "com.google.android.gms.nearby.internal.connection.INearbyConnectionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzawj$zza;->zzeF(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzawj;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/zzawk$zza;->zza(Lcom/google/android/gms/internal/zzawj;Ljava/lang/String;Ljava/lang/String;[BJ)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "com.google.android.gms.nearby.internal.connection.INearbyConnectionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzawj$zza;->zzeF(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzawj;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/zzawk$zza;->zza(Lcom/google/android/gms/internal/zzawj;Ljava/lang/String;[BJ)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "com.google.android.gms.nearby.internal.connection.INearbyConnectionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzawj$zza;->zzeF(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzawj;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzawk$zza;->zza(Lcom/google/android/gms/internal/zzawj;Ljava/lang/String;J)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "com.google.android.gms.nearby.internal.connection.INearbyConnectionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzawk$zza;->zza([Ljava/lang/String;[BJ)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "com.google.android.gms.nearby.internal.connection.INearbyConnectionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzawk$zza;->zzb([Ljava/lang/String;[BJ)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "com.google.android.gms.nearby.internal.connection.INearbyConnectionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/gms/internal/zzawk$zza;->zzn(Ljava/lang/String;J)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "com.google.android.gms.nearby.internal.connection.INearbyConnectionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzawk$zza;->zzav(J)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    goto/16 :goto_0

    :sswitch_c
    const-string v0, "com.google.android.gms.nearby.internal.connection.INearbyConnectionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzawk$zza;->zzN(J)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    goto/16 :goto_0

    :sswitch_d
    const-string v0, "com.google.android.gms.nearby.internal.connection.INearbyConnectionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzawk$zza;->zzaw(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v8

    goto/16 :goto_0

    :sswitch_e
    const-string v0, "com.google.android.gms.nearby.internal.connection.INearbyConnectionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzawk$zza;->zzOi()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v8

    goto/16 :goto_0

    :sswitch_f
    const-string v0, "com.google.android.gms.nearby.internal.connection.INearbyConnectionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/zzaxr;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaxr;

    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzawk$zza;->zza(Lcom/google/android/gms/internal/zzaxr;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    goto/16 :goto_0

    :cond_1
    move-object v0, v3

    goto :goto_1

    :sswitch_10
    const-string v0, "com.google.android.gms.nearby.internal.connection.INearbyConnectionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/android/gms/internal/zzaxv;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaxv;

    :goto_2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzawk$zza;->zza(Lcom/google/android/gms/internal/zzaxv;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    goto/16 :goto_0

    :cond_2
    move-object v0, v3

    goto :goto_2

    :sswitch_11
    const-string v0, "com.google.android.gms.nearby.internal.connection.INearbyConnectionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/google/android/gms/internal/zzaxt;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaxt;

    :goto_3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzawk$zza;->zza(Lcom/google/android/gms/internal/zzaxt;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    goto/16 :goto_0

    :cond_3
    move-object v0, v3

    goto :goto_3

    :sswitch_12
    const-string v0, "com.google.android.gms.nearby.internal.connection.INearbyConnectionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/google/android/gms/internal/zzaxz;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaxz;

    :goto_4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzawk$zza;->zza(Lcom/google/android/gms/internal/zzaxz;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    goto/16 :goto_0

    :cond_4
    move-object v0, v3

    goto :goto_4

    :sswitch_13
    const-string v0, "com.google.android.gms.nearby.internal.connection.INearbyConnectionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/google/android/gms/internal/zzaxn;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaxn;

    :goto_5
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzawk$zza;->zza(Lcom/google/android/gms/internal/zzaxn;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    goto/16 :goto_0

    :cond_5
    move-object v0, v3

    goto :goto_5

    :sswitch_14
    const-string v0, "com.google.android.gms.nearby.internal.connection.INearbyConnectionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/google/android/gms/internal/zzavx;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzavx;

    :goto_6
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzawk$zza;->zza(Lcom/google/android/gms/internal/zzavx;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    goto/16 :goto_0

    :cond_6
    move-object v0, v3

    goto :goto_6

    :sswitch_15
    const-string v0, "com.google.android.gms.nearby.internal.connection.INearbyConnectionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/google/android/gms/internal/zzaxl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaxl;

    :goto_7
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzawk$zza;->zza(Lcom/google/android/gms/internal/zzaxl;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    goto/16 :goto_0

    :cond_7
    move-object v0, v3

    goto :goto_7

    :sswitch_16
    const-string v0, "com.google.android.gms.nearby.internal.connection.INearbyConnectionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/google/android/gms/internal/zzaxp;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaxp;

    :goto_8
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzawk$zza;->zza(Lcom/google/android/gms/internal/zzaxp;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    goto/16 :goto_0

    :cond_8
    move-object v0, v3

    goto :goto_8

    :sswitch_17
    const-string v0, "com.google.android.gms.nearby.internal.connection.INearbyConnectionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/google/android/gms/internal/zzawd;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzawd;

    :goto_9
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzawk$zza;->zza(Lcom/google/android/gms/internal/zzawd;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    goto/16 :goto_0

    :cond_9
    move-object v0, v3

    goto :goto_9

    :sswitch_18
    const-string v0, "com.google.android.gms.nearby.internal.connection.INearbyConnectionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/google/android/gms/internal/zzaxx;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaxx;

    :goto_a
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzawk$zza;->zza(Lcom/google/android/gms/internal/zzaxx;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    goto/16 :goto_0

    :cond_a
    move-object v0, v3

    goto :goto_a

    :sswitch_19
    const-string v0, "com.google.android.gms.nearby.internal.connection.INearbyConnectionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/google/android/gms/internal/zzavz;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzavz;

    :goto_b
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzawk$zza;->zza(Lcom/google/android/gms/internal/zzavz;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    goto/16 :goto_0

    :cond_b
    move-object v0, v3

    goto :goto_b

    :sswitch_data_0
    .sparse-switch
        0x3e9 -> :sswitch_1
        0x3ea -> :sswitch_2
        0x3eb -> :sswitch_3
        0x3ec -> :sswitch_4
        0x3ef -> :sswitch_5
        0x3f0 -> :sswitch_6
        0x3f1 -> :sswitch_7
        0x3f2 -> :sswitch_8
        0x3f3 -> :sswitch_9
        0x3f4 -> :sswitch_a
        0x3f5 -> :sswitch_b
        0x3f6 -> :sswitch_c
        0x3f7 -> :sswitch_d
        0x3f8 -> :sswitch_e
        0x7d1 -> :sswitch_f
        0x7d2 -> :sswitch_10
        0x7d3 -> :sswitch_11
        0x7d4 -> :sswitch_12
        0x7d5 -> :sswitch_13
        0x7d6 -> :sswitch_14
        0x7d7 -> :sswitch_15
        0x7d8 -> :sswitch_16
        0x7d9 -> :sswitch_17
        0x7da -> :sswitch_18
        0x7db -> :sswitch_19
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
