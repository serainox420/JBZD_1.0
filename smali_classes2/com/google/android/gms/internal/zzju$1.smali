.class Lcom/google/android/gms/internal/zzju$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzju;->zza(JJ)Lcom/google/android/gms/internal/zzjv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzLe:Lcom/google/android/gms/internal/zzjt;

.field final synthetic zzLf:Lcom/google/android/gms/internal/zzju;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzju;Lcom/google/android/gms/internal/zzjt;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzju$1;->zzLf:Lcom/google/android/gms/internal/zzju;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzju$1;->zzLe:Lcom/google/android/gms/internal/zzjt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzju$1;->zzLf:Lcom/google/android/gms/internal/zzju;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzju;->zza(Lcom/google/android/gms/internal/zzju;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzju$1;->zzLf:Lcom/google/android/gms/internal/zzju;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzju;->zzb(Lcom/google/android/gms/internal/zzju;)I

    move-result v0

    const/4 v2, -0x2

    if-eq v0, v2, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzju$1;->zzLf:Lcom/google/android/gms/internal/zzju;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzju$1;->zzLf:Lcom/google/android/gms/internal/zzju;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzju;->zzc(Lcom/google/android/gms/internal/zzju;)Lcom/google/android/gms/internal/zzkb;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzju;->zza(Lcom/google/android/gms/internal/zzju;Lcom/google/android/gms/internal/zzkb;)Lcom/google/android/gms/internal/zzkb;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzju$1;->zzLf:Lcom/google/android/gms/internal/zzju;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzju;->zzd(Lcom/google/android/gms/internal/zzju;)Lcom/google/android/gms/internal/zzkb;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzju$1;->zzLf:Lcom/google/android/gms/internal/zzju;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzju;->zzF(I)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzju$1;->zzLf:Lcom/google/android/gms/internal/zzju;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzju;->zze(Lcom/google/android/gms/internal/zzju;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzju$1;->zzLf:Lcom/google/android/gms/internal/zzju;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzju;->zza(Lcom/google/android/gms/internal/zzju;I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzju$1;->zzLf:Lcom/google/android/gms/internal/zzju;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzju;->zzf(Lcom/google/android/gms/internal/zzju;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x38

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Ignoring adapter "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " as delayed impression is not supported"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->zzbh(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzju$1;->zzLf:Lcom/google/android/gms/internal/zzju;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzju;->zzF(I)V

    monitor-exit v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzju$1;->zzLe:Lcom/google/android/gms/internal/zzjt;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzju$1;->zzLf:Lcom/google/android/gms/internal/zzju;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzjt;->zza(Lcom/google/android/gms/internal/zzjv$zza;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzju$1;->zzLf:Lcom/google/android/gms/internal/zzju;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzju$1;->zzLe:Lcom/google/android/gms/internal/zzjt;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzju;->zza(Lcom/google/android/gms/internal/zzju;Lcom/google/android/gms/internal/zzjt;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
