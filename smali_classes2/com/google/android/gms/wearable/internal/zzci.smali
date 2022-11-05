.class public Lcom/google/android/gms/wearable/internal/zzci;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wearable/internal/zzci;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final statusCode:I

.field public final zzbUC:Lcom/google/android/gms/wearable/internal/zzao;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzcj;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/zzcj;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/internal/zzci;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILcom/google/android/gms/wearable/internal/zzao;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/wearable/internal/zzci;->statusCode:I

    iput-object p2, p0, Lcom/google/android/gms/wearable/internal/zzci;->zzbUC:Lcom/google/android/gms/wearable/internal/zzao;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wearable/internal/zzcj;->zza(Lcom/google/android/gms/wearable/internal/zzci;Landroid/os/Parcel;I)V

    return-void
.end method
