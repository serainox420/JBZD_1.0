.class public Lcom/google/android/gms/cast/framework/media/CastMediaOptions;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/cast/framework/media/CastMediaOptions$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/cast/framework/media/CastMediaOptions;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzapV:Lcom/google/android/gms/internal/zzyz;


# instance fields
.field private final zzarL:Ljava/lang/String;

.field private final zzarM:Ljava/lang/String;

.field private final zzarN:Lcom/google/android/gms/cast/framework/media/zzb;

.field private final zzarO:Lcom/google/android/gms/cast/framework/media/NotificationOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzyz;

    const-string v1, "CastMediaOptions"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzyz;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->zzapV:Lcom/google/android/gms/internal/zzyz;

    new-instance v0, Lcom/google/android/gms/cast/framework/media/zza;

    invoke-direct {v0}, Lcom/google/android/gms/cast/framework/media/zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;Lcom/google/android/gms/cast/framework/media/NotificationOptions;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->zzarL:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->zzarM:Ljava/lang/String;

    invoke-static {p3}, Lcom/google/android/gms/cast/framework/media/zzb$zza;->zzbc(Landroid/os/IBinder;)Lcom/google/android/gms/cast/framework/media/zzb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->zzarN:Lcom/google/android/gms/cast/framework/media/zzb;

    iput-object p4, p0, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->zzarO:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    return-void
.end method


# virtual methods
.method public getExpandedControllerActivityClassName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->zzarM:Ljava/lang/String;

    return-object v0
.end method

.method public getImagePicker()Lcom/google/android/gms/cast/framework/media/ImagePicker;
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->zzarN:Lcom/google/android/gms/cast/framework/media/zzb;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->zzarN:Lcom/google/android/gms/cast/framework/media/zzb;

    invoke-interface {v0}, Lcom/google/android/gms/cast/framework/media/zzb;->zztp()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zzd;->zzF(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/framework/media/ImagePicker;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->zzapV:Lcom/google/android/gms/internal/zzyz;

    const-string v2, "Unable to call %s on %s."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "getWrappedClientObject"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Lcom/google/android/gms/cast/framework/media/zzb;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/internal/zzyz;->zzb(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMediaIntentReceiverClassName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->zzarL:Ljava/lang/String;

    return-object v0
.end method

.method public getNotificationOptions()Lcom/google/android/gms/cast/framework/media/NotificationOptions;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->zzarO:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/cast/framework/media/zza;->zza(Lcom/google/android/gms/cast/framework/media/CastMediaOptions;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzto()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->zzarN:Lcom/google/android/gms/cast/framework/media/zzb;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->zzarN:Lcom/google/android/gms/cast/framework/media/zzb;

    invoke-interface {v0}, Lcom/google/android/gms/cast/framework/media/zzb;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method
