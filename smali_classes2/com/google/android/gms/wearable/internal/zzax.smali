.class public Lcom/google/android/gms/wearable/internal/zzax;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wearable/internal/zzax;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final statusCode:I

.field public final zzbUv:Landroid/os/ParcelFileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzay;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/zzay;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/internal/zzax;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILandroid/os/ParcelFileDescriptor;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/wearable/internal/zzax;->statusCode:I

    iput-object p2, p0, Lcom/google/android/gms/wearable/internal/zzax;->zzbUv:Landroid/os/ParcelFileDescriptor;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wearable/internal/zzay;->zza(Lcom/google/android/gms/wearable/internal/zzax;Landroid/os/Parcel;I)V

    return-void
.end method
