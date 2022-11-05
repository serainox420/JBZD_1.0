.class public Lcom/google/android/gms/wearable/internal/zzck;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wearable/internal/zzck;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final zzaiI:I

.field public final zzbTx:Lcom/google/android/gms/wearable/internal/zzbv;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzcl;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/zzcl;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/internal/zzck;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/os/IBinder;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/wearable/internal/zzck;->zzaiI:I

    if-eqz p2, :cond_0

    invoke-static {p2}, Lcom/google/android/gms/wearable/internal/zzbv$zza;->zzfC(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/zzbv;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/zzck;->zzbTx:Lcom/google/android/gms/wearable/internal/zzbv;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/zzck;->zzbTx:Lcom/google/android/gms/wearable/internal/zzbv;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/google/android/gms/wearable/internal/zzbv;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/wearable/internal/zzck;->zzaiI:I

    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/zzck;->zzbTx:Lcom/google/android/gms/wearable/internal/zzbv;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wearable/internal/zzcl;->zza(Lcom/google/android/gms/wearable/internal/zzck;Landroid/os/Parcel;I)V

    return-void
.end method

.method zzAh()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzck;->zzbTx:Lcom/google/android/gms/wearable/internal/zzbv;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzck;->zzbTx:Lcom/google/android/gms/wearable/internal/zzbv;

    invoke-interface {v0}, Lcom/google/android/gms/wearable/internal/zzbv;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method
