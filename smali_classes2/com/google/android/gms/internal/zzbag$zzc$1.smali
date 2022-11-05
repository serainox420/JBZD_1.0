.class Lcom/google/android/gms/internal/zzbag$zzc$1;
.super Lcom/google/android/gms/internal/zzbag$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzbag$zzc;->zza(Lcom/google/android/gms/internal/zzbaf;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbEa:Lcom/google/android/gms/internal/zzbag$zzc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbag$zzc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbag$zzc$1;->zzbEa:Lcom/google/android/gms/internal/zzbag$zzc;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbag$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/search/GoogleNowAuthState;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbag$zzc$1;->zzbEa:Lcom/google/android/gms/internal/zzbag$zzc;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbag$zzc;->zza(Lcom/google/android/gms/internal/zzbag$zzc;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SearchAuth"

    const-string v1, "GetGoogleNowAuthImpl success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbag$zzc$1;->zzbEa:Lcom/google/android/gms/internal/zzbag$zzc;

    new-instance v1, Lcom/google/android/gms/internal/zzbag$zzd;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/zzbag$zzd;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/search/GoogleNowAuthState;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbag$zzc;->zzb(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
