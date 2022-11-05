.class public Lcom/google/android/gms/internal/zzadq;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzadq;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzaIQ:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzadr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzadr;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzadq;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzadq;->zzaIQ:[B

    return-void
.end method


# virtual methods
.method public getPayload()[B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzadq;->zzaIQ:[B

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzadr;->zza(Lcom/google/android/gms/internal/zzadq;Landroid/os/Parcel;I)V

    return-void
.end method
