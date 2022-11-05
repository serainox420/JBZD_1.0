.class public Lcom/google/android/gms/wearable/internal/zzbg;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wearable/internal/zzbg;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final enabled:Z

.field public final statusCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzbf;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/zzbf;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/internal/zzbg;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/wearable/internal/zzbg;->statusCode:I

    iput-boolean p2, p0, Lcom/google/android/gms/wearable/internal/zzbg;->enabled:Z

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wearable/internal/zzbf;->zza(Lcom/google/android/gms/wearable/internal/zzbg;Landroid/os/Parcel;I)V

    return-void
.end method
