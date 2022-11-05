.class public Lcom/google/android/gms/internal/zzaig;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzaig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final zzaNE:Landroid/os/IBinder;

.field final zzaiI:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzaih;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzaih;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzaig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzaig;->zzaiI:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzaig;->zzaNE:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzaih;->zza(Lcom/google/android/gms/internal/zzaig;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzBc()Lcom/google/android/gms/common/internal/zzs;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaig;->zzaNE:Landroid/os/IBinder;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzs$zza;->zzbs(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/zzs;

    move-result-object v0

    return-object v0
.end method
