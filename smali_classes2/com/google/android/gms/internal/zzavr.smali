.class public Lcom/google/android/gms/internal/zzavr;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzavr;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final data:[B

.field final versionCode:I

.field private final zzbxP:Lcom/google/android/gms/internal/zzauy;

.field private final zzbxS:Lcom/google/android/gms/internal/zzave;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzavs;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzavs;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzavr;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/internal/zzauy;[BLandroid/os/IBinder;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzavr;->versionCode:I

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzauy;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzavr;->zzbxP:Lcom/google/android/gms/internal/zzauy;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/google/android/gms/internal/zzavr;->data:[B

    invoke-static {p4}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p4}, Lcom/google/android/gms/internal/zzave$zza;->zzex(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzave;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzavr;->zzbxS:Lcom/google/android/gms/internal/zzave;

    return-void
.end method


# virtual methods
.method public getCallbackBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavr;->zzbxS:Lcom/google/android/gms/internal/zzave;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzavr;->zzbxS:Lcom/google/android/gms/internal/zzave;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzave;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method

.method public getData()[B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavr;->data:[B

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzavs;->zza(Lcom/google/android/gms/internal/zzavr;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzNM()Lcom/google/android/gms/internal/zzauy;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavr;->zzbxP:Lcom/google/android/gms/internal/zzauy;

    return-object v0
.end method
