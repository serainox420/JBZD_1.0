.class Lcom/google/android/gms/internal/zzbag$zzb$1;
.super Lcom/google/android/gms/internal/zzbag$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzbag$zzb;->zza(Lcom/google/android/gms/internal/zzbaf;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbDY:Lcom/google/android/gms/internal/zzbag$zzb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbag$zzb;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbag$zzb$1;->zzbDY:Lcom/google/android/gms/internal/zzbag$zzb;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbag$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public zzbJ(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbag$zzb$1;->zzbDY:Lcom/google/android/gms/internal/zzbag$zzb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbag$zzb;->zza(Lcom/google/android/gms/internal/zzbag$zzb;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SearchAuth"

    const-string v1, "ClearTokenImpl success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbag$zzb$1;->zzbDY:Lcom/google/android/gms/internal/zzbag$zzb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbag$zzb;->zzb(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
