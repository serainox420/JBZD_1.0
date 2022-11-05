.class public Lcom/google/android/gms/wearable/internal/zzbe;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wearable/internal/zzbe;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final statusCode:I

.field public final zzbUx:Z

.field public final zzbUy:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzbd;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/zzbd;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/internal/zzbe;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IZZ)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/wearable/internal/zzbe;->statusCode:I

    iput-boolean p2, p0, Lcom/google/android/gms/wearable/internal/zzbe;->zzbUx:Z

    iput-boolean p3, p0, Lcom/google/android/gms/wearable/internal/zzbe;->zzbUy:Z

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wearable/internal/zzbd;->zza(Lcom/google/android/gms/wearable/internal/zzbe;Landroid/os/Parcel;I)V

    return-void
.end method
