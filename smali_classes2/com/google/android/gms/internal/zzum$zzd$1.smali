.class Lcom/google/android/gms/internal/zzum$zzd$1;
.super Lcom/google/android/gms/internal/zzum$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzum$zzd;->zza(Lcom/google/android/gms/internal/zzun;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzail:Lcom/google/android/gms/internal/zzum$zzd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzum$zzd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzum$zzd$1;->zzail:Lcom/google/android/gms/internal/zzum$zzd;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzum$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public zzd(Lcom/google/android/gms/common/api/Status;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzum$zzd$1;->zzail:Lcom/google/android/gms/internal/zzum$zzd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzum$zzd;->zzb(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
