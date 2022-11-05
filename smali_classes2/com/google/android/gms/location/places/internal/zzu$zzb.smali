.class public Lcom/google/android/gms/location/places/internal/zzu$zzb;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/location/places/internal/zzu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zzb"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/location/places/internal/zzu$zzb;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final zzaiI:I

.field final zzbmP:I

.field final zzbmQ:I

.field final zzbmR:I

.field final zzbmS:I

.field final zzbmT:I

.field final zzbmU:I

.field final zzbmV:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/places/internal/zzu$zza;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/places/internal/zze;

    invoke-direct {v0}, Lcom/google/android/gms/location/places/internal/zze;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/places/internal/zzu$zzb;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IIIIIIILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIIII",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/places/internal/zzu$zza;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/places/internal/zzu$zzb;->zzaiI:I

    iput p2, p0, Lcom/google/android/gms/location/places/internal/zzu$zzb;->zzbmP:I

    iput p3, p0, Lcom/google/android/gms/location/places/internal/zzu$zzb;->zzbmQ:I

    iput p4, p0, Lcom/google/android/gms/location/places/internal/zzu$zzb;->zzbmR:I

    iput p5, p0, Lcom/google/android/gms/location/places/internal/zzu$zzb;->zzbmS:I

    iput p6, p0, Lcom/google/android/gms/location/places/internal/zzu$zzb;->zzbmT:I

    iput p7, p0, Lcom/google/android/gms/location/places/internal/zzu$zzb;->zzbmU:I

    invoke-static {p8}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/location/places/internal/zzu$zzb;->zzbmV:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/places/internal/zze;->zza(Lcom/google/android/gms/location/places/internal/zzu$zzb;Landroid/os/Parcel;I)V

    return-void
.end method
