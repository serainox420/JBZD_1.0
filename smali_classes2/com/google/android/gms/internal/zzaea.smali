.class public Lcom/google/android/gms/internal/zzaea;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzaea;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzaIZ:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzaeb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzaeb;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzaea;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaea;->zzaIZ:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzaeb;->zza(Lcom/google/android/gms/internal/zzaea;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzzQ()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaea;->zzaIZ:Landroid/os/Bundle;

    return-object v0
.end method
