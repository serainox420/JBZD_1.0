.class public final Lcom/google/android/gms/nearby/messages/internal/zzaf;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/nearby/messages/internal/zzaf;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final zzaiI:I

.field public final zzbAH:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final zzbAL:Lcom/google/android/gms/nearby/messages/internal/zzn;

.field public final zzbAM:Lcom/google/android/gms/nearby/messages/internal/ClientAppContext;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final zzbBa:Lcom/google/android/gms/nearby/messages/internal/zzv;

.field public final zzbzI:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final zzbzJ:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/nearby/messages/internal/zzag;

    invoke-direct {v0}, Lcom/google/android/gms/nearby/messages/internal/zzag;-><init>()V

    sput-object v0, Lcom/google/android/gms/nearby/messages/internal/zzaf;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/nearby/messages/internal/zzv;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/nearby/messages/internal/ClientAppContext;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/nearby/messages/internal/zzaf;->zzaiI:I

    iput-object p2, p0, Lcom/google/android/gms/nearby/messages/internal/zzaf;->zzbBa:Lcom/google/android/gms/nearby/messages/internal/zzv;

    invoke-static {p3}, Lcom/google/android/gms/nearby/messages/internal/zzn$zza;->zzeK(Landroid/os/IBinder;)Lcom/google/android/gms/nearby/messages/internal/zzn;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzaf;->zzbAL:Lcom/google/android/gms/nearby/messages/internal/zzn;

    iput-object p4, p0, Lcom/google/android/gms/nearby/messages/internal/zzaf;->zzbzI:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/nearby/messages/internal/zzaf;->zzbAH:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/google/android/gms/nearby/messages/internal/zzaf;->zzbzJ:Z

    invoke-static {p7, p5, p4, p6}, Lcom/google/android/gms/nearby/messages/internal/ClientAppContext;->zza(Lcom/google/android/gms/nearby/messages/internal/ClientAppContext;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/gms/nearby/messages/internal/ClientAppContext;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzaf;->zzbAM:Lcom/google/android/gms/nearby/messages/internal/ClientAppContext;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/nearby/messages/internal/zzv;Landroid/os/IBinder;Lcom/google/android/gms/nearby/messages/internal/ClientAppContext;)V
    .locals 8

    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, v4

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/nearby/messages/internal/zzaf;-><init>(ILcom/google/android/gms/nearby/messages/internal/zzv;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/nearby/messages/internal/ClientAppContext;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/nearby/messages/internal/zzag;->zza(Lcom/google/android/gms/nearby/messages/internal/zzaf;Landroid/os/Parcel;I)V

    return-void
.end method

.method zzOz()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzaf;->zzbAL:Lcom/google/android/gms/nearby/messages/internal/zzn;

    invoke-interface {v0}, Lcom/google/android/gms/nearby/messages/internal/zzn;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method
