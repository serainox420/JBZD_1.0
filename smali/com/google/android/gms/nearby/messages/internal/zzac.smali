.class public final Lcom/google/android/gms/nearby/messages/internal/zzac;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/nearby/messages/internal/zzac;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final versionCode:I

.field public final zzbAL:Lcom/google/android/gms/nearby/messages/internal/zzn;

.field public final zzbAM:Lcom/google/android/gms/nearby/messages/internal/ClientAppContext;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final zzbBe:Lcom/google/android/gms/nearby/messages/internal/zzq;

.field public zzbBf:Z

.field public zzbzI:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/nearby/messages/internal/zzad;

    invoke-direct {v0}, Lcom/google/android/gms/nearby/messages/internal/zzad;-><init>()V

    sput-object v0, Lcom/google/android/gms/nearby/messages/internal/zzac;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/os/IBinder;Landroid/os/IBinder;ZLjava/lang/String;Lcom/google/android/gms/nearby/messages/internal/ClientAppContext;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/nearby/messages/internal/zzac;->versionCode:I

    invoke-static {p2}, Lcom/google/android/gms/nearby/messages/internal/zzn$zza;->zzeK(Landroid/os/IBinder;)Lcom/google/android/gms/nearby/messages/internal/zzn;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzac;->zzbAL:Lcom/google/android/gms/nearby/messages/internal/zzn;

    invoke-static {p3}, Lcom/google/android/gms/nearby/messages/internal/zzq$zza;->zzeN(Landroid/os/IBinder;)Lcom/google/android/gms/nearby/messages/internal/zzq;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzac;->zzbBe:Lcom/google/android/gms/nearby/messages/internal/zzq;

    iput-boolean p4, p0, Lcom/google/android/gms/nearby/messages/internal/zzac;->zzbBf:Z

    iput-object p5, p0, Lcom/google/android/gms/nearby/messages/internal/zzac;->zzbzI:Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p6, v0, p5, v1}, Lcom/google/android/gms/nearby/messages/internal/ClientAppContext;->zza(Lcom/google/android/gms/nearby/messages/internal/ClientAppContext;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/gms/nearby/messages/internal/ClientAppContext;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzac;->zzbAM:Lcom/google/android/gms/nearby/messages/internal/ClientAppContext;

    return-void
.end method

.method public constructor <init>(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 7

    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/nearby/messages/internal/zzac;-><init>(ILandroid/os/IBinder;Landroid/os/IBinder;ZLjava/lang/String;Lcom/google/android/gms/nearby/messages/internal/ClientAppContext;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/nearby/messages/internal/zzad;->zza(Lcom/google/android/gms/nearby/messages/internal/zzac;Landroid/os/Parcel;I)V

    return-void
.end method

.method zzOR()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzac;->zzbBe:Lcom/google/android/gms/nearby/messages/internal/zzq;

    invoke-interface {v0}, Lcom/google/android/gms/nearby/messages/internal/zzq;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method zzOz()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzac;->zzbAL:Lcom/google/android/gms/nearby/messages/internal/zzn;

    invoke-interface {v0}, Lcom/google/android/gms/nearby/messages/internal/zzn;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method
