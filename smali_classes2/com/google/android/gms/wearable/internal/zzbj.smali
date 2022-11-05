.class public Lcom/google/android/gms/wearable/internal/zzbj;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wearable/internal/zzbj;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final statusCode:I

.field public final zzbUA:[Lcom/google/android/gms/wearable/ConnectionConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzbk;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/zzbk;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/internal/zzbj;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I[Lcom/google/android/gms/wearable/ConnectionConfiguration;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/wearable/internal/zzbj;->statusCode:I

    iput-object p2, p0, Lcom/google/android/gms/wearable/internal/zzbj;->zzbUA:[Lcom/google/android/gms/wearable/ConnectionConfiguration;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wearable/internal/zzbk;->zza(Lcom/google/android/gms/wearable/internal/zzbj;Landroid/os/Parcel;I)V

    return-void
.end method
