.class Lcom/google/android/gms/internal/zzarc$1$1;
.super Lcom/google/android/gms/internal/zzarc$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzarc$1;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzaqz;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbiG:Lcom/google/android/gms/internal/zzarc$1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzarc$1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzarc$1$1;->zzbiG:Lcom/google/android/gms/internal/zzarc$1;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzarc$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/instantapps/LaunchData;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzarc$1$1;->zzbiG:Lcom/google/android/gms/internal/zzarc$1;

    new-instance v1, Lcom/google/android/gms/internal/zzarc$zzc;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/zzarc$zzc;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/instantapps/LaunchData;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzarc$1;->zzb(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
