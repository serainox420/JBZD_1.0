.class public Lcom/google/android/gms/internal/zzmr;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzmr;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final zzSN:Z

.field public final zzSO:Z

.field public final zzSP:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzms;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzms;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzmr;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ZZZ)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzmr;->zzSN:Z

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzmr;->zzSO:Z

    iput-boolean p3, p0, Lcom/google/android/gms/internal/zzmr;->zzSP:Z

    return-void
.end method


# virtual methods
.method public toBundle()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "iap_supported"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzmr;->zzSN:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "default_iap_supported"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzmr;->zzSO:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "app_streaming_supported"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzmr;->zzSP:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzms;->zza(Lcom/google/android/gms/internal/zzmr;Landroid/os/Parcel;I)V

    return-void
.end method
