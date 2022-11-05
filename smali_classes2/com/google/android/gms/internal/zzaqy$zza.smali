.class public abstract Lcom/google/android/gms/internal/zzaqy$zza;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/internal/zzaqy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzaqy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzaqy$zza$zza;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.google.android.gms.instantapps.internal.IInstantAppsCallbacks"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/internal/zzaqy$zza;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static zzda(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzaqy;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "com.google.android.gms.instantapps.internal.IInstantAppsCallbacks"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/google/android/gms/internal/zzaqy;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/internal/zzaqy;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/zzaqy$zza$zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzaqy$zza$zza;-><init>(Landroid/os/IBinder;)V

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

    const/4 v3, 0x1

    const/4 v2, 0x0

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    const-string v0, "com.google.android.gms.instantapps.internal.IInstantAppsCallbacks"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v3

    goto :goto_0

    :sswitch_1
    const-string v0, "com.google.android.gms.instantapps.internal.IInstantAppsCallbacks"

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

    sget-object v0, Lcom/google/android/gms/internal/zzara;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzara;

    :goto_2
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzaqy$zza;->zza(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/internal/zzara;)V

    move v0, v3

    goto :goto_0

    :cond_0
    move-object v1, v2

    goto :goto_1

    :cond_1
    move-object v0, v2

    goto :goto_2

    :sswitch_2
    const-string v0, "com.google.android.gms.instantapps.internal.IInstantAppsCallbacks"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Status;

    move-object v1, v0

    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/google/android/gms/internal/zzarl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzarl;

    :goto_4
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzaqy$zza;->zza(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/internal/zzarl;)V

    move v0, v3

    goto :goto_0

    :cond_2
    move-object v1, v2

    goto :goto_3

    :cond_3
    move-object v0, v2

    goto :goto_4

    :sswitch_3
    const-string v0, "com.google.android.gms.instantapps.internal.IInstantAppsCallbacks"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzaqy$zza;->zzjQ(I)V

    move v0, v3

    goto :goto_0

    :sswitch_4
    const-string v0, "com.google.android.gms.instantapps.internal.IInstantAppsCallbacks"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Status;

    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzaqy$zza;->zza(Lcom/google/android/gms/common/api/Status;I)V

    move v0, v3

    goto/16 :goto_0

    :cond_4
    move-object v0, v2

    goto :goto_5

    :sswitch_5
    const-string v0, "com.google.android.gms.instantapps.internal.IInstantAppsCallbacks"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Status;

    move-object v1, v0

    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/google/android/gms/internal/zzarh;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzarh;

    :goto_7
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzaqy$zza;->zza(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/internal/zzarh;)V

    move v0, v3

    goto/16 :goto_0

    :cond_5
    move-object v1, v2

    goto :goto_6

    :cond_6
    move-object v0, v2

    goto :goto_7

    :sswitch_6
    const-string v0, "com.google.android.gms.instantapps.internal.IInstantAppsCallbacks"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Status;

    move-object v1, v0

    :goto_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Landroid/content/pm/PackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    :goto_9
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzaqy$zza;->zza(Lcom/google/android/gms/common/api/Status;Landroid/content/pm/PackageInfo;)V

    move v0, v3

    goto/16 :goto_0

    :cond_7
    move-object v1, v2

    goto :goto_8

    :cond_8
    move-object v0, v2

    goto :goto_9

    :sswitch_7
    const-string v0, "com.google.android.gms.instantapps.internal.IInstantAppsCallbacks"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Status;

    move-object v1, v0

    :goto_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/google/android/gms/instantapps/LaunchData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/instantapps/LaunchData;

    :goto_b
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzaqy$zza;->zza(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/instantapps/LaunchData;)V

    move v0, v3

    goto/16 :goto_0

    :cond_9
    move-object v1, v2

    goto :goto_a

    :cond_a
    move-object v0, v2

    goto :goto_b

    :sswitch_8
    const-string v0, "com.google.android.gms.instantapps.internal.IInstantAppsCallbacks"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Status;

    :goto_c
    sget-object v1, Lcom/google/android/gms/internal/zzars;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzaqy$zza;->zza(Lcom/google/android/gms/common/api/Status;Ljava/util/List;)V

    move v0, v3

    goto/16 :goto_0

    :cond_b
    move-object v0, v2

    goto :goto_c

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x9 -> :sswitch_2
        0xa -> :sswitch_3
        0xc -> :sswitch_4
        0xd -> :sswitch_5
        0x12 -> :sswitch_6
        0x13 -> :sswitch_7
        0x14 -> :sswitch_8
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
