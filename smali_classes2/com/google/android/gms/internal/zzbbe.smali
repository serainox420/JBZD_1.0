.class Lcom/google/android/gms/internal/zzbbe;
.super Ljava/lang/Object;


# direct methods
.method public static zza(Ljava/lang/String;Ljava/lang/Throwable;Landroid/content/Context;)V
    .locals 1

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/zzbbu;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p2, p1}, Lcom/google/android/gms/common/util/zzg;->zza(Landroid/content/Context;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Crash reported successfully."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbbu;->v(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Failed to report crash"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbbu;->v(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static zzb(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/internal/zzbbu;->e(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/util/zzg;->zza(Landroid/content/Context;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Crash reported successfully."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbbu;->v(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Failed to report crash"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbbu;->v(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static zzb(Ljava/lang/String;Ljava/lang/Throwable;Landroid/content/Context;)V
    .locals 1

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/zzbbu;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p2, p1}, Lcom/google/android/gms/common/util/zzg;->zza(Landroid/content/Context;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Crash reported successfully."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbbu;->v(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Failed to report crash"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbbu;->v(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static zzc(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/internal/zzbbu;->zzbh(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/util/zzg;->zza(Landroid/content/Context;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Crash reported successfully."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbbu;->v(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Failed to report crash"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbbu;->v(Ljava/lang/String;)V

    goto :goto_0
.end method
