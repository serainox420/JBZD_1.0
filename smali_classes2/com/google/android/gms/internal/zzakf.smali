.class public Lcom/google/android/gms/internal/zzakf;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzakf;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final zzaOs:Landroid/os/ParcelFileDescriptor;

.field final zzaOt:Landroid/os/IBinder;

.field final zzaiI:I

.field final zzxB:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzakg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzakg;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzakf;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/os/ParcelFileDescriptor;Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzakf;->zzaiI:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzakf;->zzaOs:Landroid/os/ParcelFileDescriptor;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzakf;->zzaOt:Landroid/os/IBinder;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzakf;->zzxB:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    or-int/lit8 v0, p2, 0x1

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/zzakg;->zza(Lcom/google/android/gms/internal/zzakf;Landroid/os/Parcel;I)V

    return-void
.end method
