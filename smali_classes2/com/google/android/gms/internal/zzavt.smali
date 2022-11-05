.class public Lcom/google/android/gms/internal/zzavt;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzavt;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final versionCode:I

.field private final zzbxS:Lcom/google/android/gms/internal/zzave;

.field private final zzbxV:B

.field private final zzbxW:Lcom/google/android/gms/internal/zzavg;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzavu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzavu;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzavt;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IBLandroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzavt;->versionCode:I

    iput-byte p2, p0, Lcom/google/android/gms/internal/zzavt;->zzbxV:B

    invoke-static {p3}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lcom/google/android/gms/internal/zzavg$zza;->zzez(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzavg;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzavt;->zzbxW:Lcom/google/android/gms/internal/zzavg;

    invoke-static {p4}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p4}, Lcom/google/android/gms/internal/zzave$zza;->zzex(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzave;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzavt;->zzbxS:Lcom/google/android/gms/internal/zzave;

    return-void
.end method


# virtual methods
.method public getCallbackBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavt;->zzbxS:Lcom/google/android/gms/internal/zzave;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzavt;->zzbxS:Lcom/google/android/gms/internal/zzave;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzave;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzavu;->zza(Lcom/google/android/gms/internal/zzavt;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzNP()B
    .locals 1

    iget-byte v0, p0, Lcom/google/android/gms/internal/zzavt;->zzbxV:B

    return v0
.end method

.method public zzNS()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavt;->zzbxW:Lcom/google/android/gms/internal/zzavg;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzavt;->zzbxW:Lcom/google/android/gms/internal/zzavg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzavg;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method
