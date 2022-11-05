.class public Lcom/google/android/gms/fitness/request/zzax;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/fitness/request/zzax;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mPendingIntent:Landroid/app/PendingIntent;

.field private final zzaVt:Lcom/google/android/gms/internal/zzapf;

.field private final zzaWo:Lcom/google/android/gms/fitness/data/zzs;

.field private final zzaiI:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/request/zzay;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/zzay;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/zzax;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/request/zzax;->zzaiI:I

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/fitness/request/zzax;->zzaWo:Lcom/google/android/gms/fitness/data/zzs;

    iput-object p3, p0, Lcom/google/android/gms/fitness/request/zzax;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-static {p4}, Lcom/google/android/gms/internal/zzapf$zza;->zzcJ(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzapf;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/zzax;->zzaVt:Lcom/google/android/gms/internal/zzapf;

    return-void

    :cond_0
    invoke-static {p2}, Lcom/google/android/gms/fitness/data/zzs$zza;->zzcg(Landroid/os/IBinder;)Lcom/google/android/gms/fitness/data/zzs;

    move-result-object v0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/google/android/gms/fitness/data/zzs;Landroid/app/PendingIntent;Lcom/google/android/gms/internal/zzapf;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/gms/fitness/request/zzax;->zzaiI:I

    iput-object p1, p0, Lcom/google/android/gms/fitness/request/zzax;->zzaWo:Lcom/google/android/gms/fitness/data/zzs;

    iput-object p2, p0, Lcom/google/android/gms/fitness/request/zzax;->mPendingIntent:Landroid/app/PendingIntent;

    iput-object p3, p0, Lcom/google/android/gms/fitness/request/zzax;->zzaVt:Lcom/google/android/gms/internal/zzapf;

    return-void
.end method


# virtual methods
.method public getCallbackBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/zzax;->zzaVt:Lcom/google/android/gms/internal/zzapf;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/zzax;->zzaVt:Lcom/google/android/gms/internal/zzapf;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzapf;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method

.method public getIntent()Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/zzax;->mPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/request/zzax;->zzaiI:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "SensorUnregistrationRequest{%s}"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/fitness/request/zzax;->zzaWo:Lcom/google/android/gms/fitness/data/zzs;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/request/zzay;->zza(Lcom/google/android/gms/fitness/request/zzax;Landroid/os/Parcel;I)V

    return-void
.end method

.method zzDh()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/zzax;->zzaWo:Lcom/google/android/gms/fitness/data/zzs;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/zzax;->zzaWo:Lcom/google/android/gms/fitness/data/zzs;

    invoke-interface {v0}, Lcom/google/android/gms/fitness/data/zzs;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method
