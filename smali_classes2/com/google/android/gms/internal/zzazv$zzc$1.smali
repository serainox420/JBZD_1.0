.class Lcom/google/android/gms/internal/zzazv$zzc$1;
.super Lcom/google/android/gms/internal/zzazr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzazv$zzc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbDt:Lcom/google/android/gms/internal/zzazv$zzc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzazv$zzc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzazv$zzc$1;->zzbDt:Lcom/google/android/gms/internal/zzazv$zzc;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzazr;-><init>()V

    return-void
.end method


# virtual methods
.method public zzc(Lcom/google/android/gms/common/api/Status;Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazv$zzc$1;->zzbDt:Lcom/google/android/gms/internal/zzazv$zzc;

    new-instance v1, Lcom/google/android/gms/internal/zzazv$zzj;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/zzazv$zzj;-><init>(Lcom/google/android/gms/common/api/Status;Z)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzazv$zzc;->zzb(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
