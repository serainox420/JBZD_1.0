.class public Lcom/google/android/gms/safetynet/zze;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/safetynet/zze;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final zzbDb:J

.field public final zzbDc:[Lcom/google/android/gms/safetynet/zzc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/safetynet/zzf;

    invoke-direct {v0}, Lcom/google/android/gms/safetynet/zzf;-><init>()V

    sput-object v0, Lcom/google/android/gms/safetynet/zze;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(J[Lcom/google/android/gms/safetynet/zzc;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/safetynet/zze;->zzbDb:J

    iput-object p3, p0, Lcom/google/android/gms/safetynet/zze;->zzbDc:[Lcom/google/android/gms/safetynet/zzc;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/safetynet/zzf;->zza(Lcom/google/android/gms/safetynet/zze;Landroid/os/Parcel;I)V

    return-void
.end method
