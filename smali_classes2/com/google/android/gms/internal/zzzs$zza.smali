.class public abstract Lcom/google/android/gms/internal/zzzs$zza;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/internal/zzzs;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzzs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzzs$zza$zza;
    }
.end annotation


# direct methods
.method public static zzbo(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzzs;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "com.google.android.gms.clearcut.internal.IClearcutLoggerService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/google/android/gms/internal/zzzs;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/internal/zzzs;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/zzzs$zza$zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzzs$zza$zza;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    const-string v0, "com.google.android.gms.clearcut.internal.IClearcutLoggerService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :sswitch_1
    const-string v0, "com.google.android.gms.clearcut.internal.IClearcutLoggerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzzr$zza;->zzbn(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzzr;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/zzzm;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzzm;

    :goto_1
    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/internal/zzzs$zza;->zza(Lcom/google/android/gms/internal/zzzr;Lcom/google/android/gms/internal/zzzm;)V

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :sswitch_2
    const-string v0, "com.google.android.gms.clearcut.internal.IClearcutLoggerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzzr$zza;->zzbn(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzzr;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzzs$zza;->zza(Lcom/google/android/gms/internal/zzzr;)V

    move v0, v1

    goto :goto_0

    :sswitch_3
    const-string v0, "com.google.android.gms.clearcut.internal.IClearcutLoggerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzzr$zza;->zzbn(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzzr;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzzs$zza;->zzb(Lcom/google/android/gms/internal/zzzr;)V

    move v0, v1

    goto :goto_0

    :sswitch_4
    const-string v0, "com.google.android.gms.clearcut.internal.IClearcutLoggerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzzr$zza;->zzbn(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzzr;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzzs$zza;->zzc(Lcom/google/android/gms/internal/zzzr;)V

    move v0, v1

    goto :goto_0

    :sswitch_5
    const-string v0, "com.google.android.gms.clearcut.internal.IClearcutLoggerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzzr$zza;->zzbn(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzzr;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzzs$zza;->zzd(Lcom/google/android/gms/internal/zzzr;)V

    move v0, v1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
