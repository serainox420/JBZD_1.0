.class public Lcom/google/android/gms/wearable/internal/zzc;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wearable/internal/zzc;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final zzbTA:Ljava/lang/String;

.field public final zzbTx:Lcom/google/android/gms/wearable/internal/zzbv;

.field public final zzbTy:[Landroid/content/IntentFilter;

.field public final zzbTz:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzd;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/zzd;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/internal/zzc;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/IBinder;[Landroid/content/IntentFilter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/wearable/internal/zzbv$zza;->zzfC(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/zzbv;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/zzc;->zzbTx:Lcom/google/android/gms/wearable/internal/zzbv;

    :goto_0
    iput-object p2, p0, Lcom/google/android/gms/wearable/internal/zzc;->zzbTy:[Landroid/content/IntentFilter;

    iput-object p3, p0, Lcom/google/android/gms/wearable/internal/zzc;->zzbTz:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/wearable/internal/zzc;->zzbTA:Ljava/lang/String;

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/zzc;->zzbTx:Lcom/google/android/gms/wearable/internal/zzbv;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/google/android/gms/wearable/internal/zzcy;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/zzc;->zzbTx:Lcom/google/android/gms/wearable/internal/zzbv;

    invoke-virtual {p1}, Lcom/google/android/gms/wearable/internal/zzcy;->zzUz()[Landroid/content/IntentFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/zzc;->zzbTy:[Landroid/content/IntentFilter;

    invoke-virtual {p1}, Lcom/google/android/gms/wearable/internal/zzcy;->zzUA()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/zzc;->zzbTz:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/zzc;->zzbTA:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wearable/internal/zzd;->zza(Lcom/google/android/gms/wearable/internal/zzc;Landroid/os/Parcel;I)V

    return-void
.end method

.method zzAh()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzc;->zzbTx:Lcom/google/android/gms/wearable/internal/zzbv;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzc;->zzbTx:Lcom/google/android/gms/wearable/internal/zzbv;

    invoke-interface {v0}, Lcom/google/android/gms/wearable/internal/zzbv;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method
