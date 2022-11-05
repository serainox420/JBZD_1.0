.class public Lcom/google/android/gms/internal/zzane;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzane;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final zzaRm:Ljava/lang/String;

.field final zzaRn:Ljava/lang/String;

.field final zzaRo:I

.field final zzaRp:I

.field final zzaiI:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzanf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzanf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzane;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzane;->zzaiI:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzane;->zzaRm:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzane;->zzaRn:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/internal/zzane;->zzaRo:I

    iput p5, p0, Lcom/google/android/gms/internal/zzane;->zzaRp:I

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzanf;->zza(Lcom/google/android/gms/internal/zzane;Landroid/os/Parcel;I)V

    return-void
.end method
