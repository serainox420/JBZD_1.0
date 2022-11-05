.class public abstract Lcom/google/android/gms/internal/zzazt$zza;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/internal/zzazt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzazt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzazt$zza$zza;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.google.android.gms.safetynet.internal.ISafetyNetCallbacks"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/internal/zzazt$zza;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static zzeY(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzazt;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "com.google.android.gms.safetynet.internal.ISafetyNetCallbacks"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/google/android/gms/internal/zzazt;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/internal/zzazt;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/zzazt$zza$zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzazt$zza$zza;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    :sswitch_0
    const-string v0, "com.google.android.gms.safetynet.internal.ISafetyNetCallbacks"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v0, "com.google.android.gms.safetynet.internal.ISafetyNetCallbacks"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Status;

    move-object v1, v0

    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/gms/safetynet/zza;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/safetynet/zza;

    :goto_2
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzazt$zza;->zza(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/safetynet/zza;)V

    goto :goto_0

    :cond_0
    move-object v1, v2

    goto :goto_1

    :cond_1
    move-object v0, v2

    goto :goto_2

    :sswitch_2
    const-string v0, "com.google.android.gms.safetynet.internal.ISafetyNetCallbacks"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzazt$zza;->zzgt(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_3
    const-string v0, "com.google.android.gms.safetynet.internal.ISafetyNetCallbacks"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Status;

    :goto_3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzazt$zza;->zzbC(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0

    :cond_2
    move-object v0, v2

    goto :goto_3

    :sswitch_4
    const-string v0, "com.google.android.gms.safetynet.internal.ISafetyNetCallbacks"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Status;

    :goto_4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzazt$zza;->zzbD(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0

    :cond_3
    move-object v0, v2

    goto :goto_4

    :sswitch_5
    const-string v0, "com.google.android.gms.safetynet.internal.ISafetyNetCallbacks"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Status;

    move-object v1, v0

    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/google/android/gms/safetynet/SafeBrowsingData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/safetynet/SafeBrowsingData;

    :goto_6
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzazt$zza;->zza(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/safetynet/SafeBrowsingData;)V

    goto/16 :goto_0

    :cond_4
    move-object v1, v2

    goto :goto_5

    :cond_5
    move-object v0, v2

    goto :goto_6

    :sswitch_6
    const-string v0, "com.google.android.gms.safetynet.internal.ISafetyNetCallbacks"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Status;

    :goto_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_6

    move v1, v3

    :cond_6
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzazt$zza;->zzc(Lcom/google/android/gms/common/api/Status;Z)V

    goto/16 :goto_0

    :cond_7
    move-object v0, v2

    goto :goto_7

    :sswitch_7
    const-string v0, "com.google.android.gms.safetynet.internal.ISafetyNetCallbacks"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Status;

    move-object v1, v0

    :goto_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/google/android/gms/safetynet/zze;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/safetynet/zze;

    :goto_9
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzazt$zza;->zza(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/safetynet/zze;)V

    goto/16 :goto_0

    :cond_8
    move-object v1, v2

    goto :goto_8

    :cond_9
    move-object v0, v2

    goto :goto_9

    :sswitch_8
    const-string v0, "com.google.android.gms.safetynet.internal.ISafetyNetCallbacks"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Status;

    move-object v1, v0

    :goto_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/google/android/gms/safetynet/zzg;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/safetynet/zzg;

    :goto_b
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzazt$zza;->zza(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/safetynet/zzg;)V

    goto/16 :goto_0

    :cond_a
    move-object v1, v2

    goto :goto_a

    :cond_b
    move-object v0, v2

    goto :goto_b

    :sswitch_9
    const-string v0, "com.google.android.gms.safetynet.internal.ISafetyNetCallbacks"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Status;

    :goto_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_c

    move v1, v3

    :cond_c
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzazt$zza;->zzb(Lcom/google/android/gms/common/api/Status;Z)V

    goto/16 :goto_0

    :cond_d
    move-object v0, v2

    goto :goto_c

    :sswitch_a
    const-string v0, "com.google.android.gms.safetynet.internal.ISafetyNetCallbacks"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Status;

    :goto_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_e

    move v1, v3

    :cond_e
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzazt$zza;->zzd(Lcom/google/android/gms/common/api/Status;Z)V

    goto/16 :goto_0

    :cond_f
    move-object v0, v2

    goto :goto_d

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_5
        0x4 -> :sswitch_6
        0x6 -> :sswitch_8
        0x7 -> :sswitch_9
        0x8 -> :sswitch_7
        0x9 -> :sswitch_4
        0xa -> :sswitch_a
        0xb -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
