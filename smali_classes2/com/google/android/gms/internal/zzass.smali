.class public Lcom/google/android/gms/internal/zzass;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;

# interfaces
.implements Lcom/google/android/gms/common/api/Result;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzass;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final zzaiI:I

.field private final zzair:Lcom/google/android/gms/common/api/Status;

.field private final zzbnh:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzasq;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzast;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzast;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzass;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/common/api/Status;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/gms/common/api/Status;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzasq;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzass;->zzaiI:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzass;->zzair:Lcom/google/android/gms/common/api/Status;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzass;->zzbnh:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzass;->zzair:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzast;->zza(Lcom/google/android/gms/internal/zzass;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzJg()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzasq;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzass;->zzbnh:Ljava/util/List;

    return-object v0
.end method
