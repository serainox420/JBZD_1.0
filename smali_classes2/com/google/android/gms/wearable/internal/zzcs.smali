.class public Lcom/google/android/gms/wearable/internal/zzcs;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wearable/internal/zzcs;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final statusCode:I

.field public final zzbUP:J

.field public final zzbUR:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/wearable/internal/zzcg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzct;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/zzct;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/internal/zzcs;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IJLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/wearable/internal/zzcg;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/wearable/internal/zzcs;->statusCode:I

    iput-wide p2, p0, Lcom/google/android/gms/wearable/internal/zzcs;->zzbUP:J

    iput-object p4, p0, Lcom/google/android/gms/wearable/internal/zzcs;->zzbUR:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wearable/internal/zzct;->zza(Lcom/google/android/gms/wearable/internal/zzcs;Landroid/os/Parcel;I)V

    return-void
.end method
