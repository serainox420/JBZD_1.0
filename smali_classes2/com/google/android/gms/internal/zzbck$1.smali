.class Lcom/google/android/gms/internal/zzbck$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzbck;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzbbr;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbKU:Ljava/lang/String;

.field final synthetic zzbKV:Ljava/lang/String;

.field final synthetic zzbKW:Ljava/lang/String;

.field final synthetic zzbLe:Lcom/google/android/gms/internal/zzbbr;

.field final synthetic zzbLf:Lcom/google/android/gms/internal/zzbck;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbck;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzbbr;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbck$1;->zzbLf:Lcom/google/android/gms/internal/zzbck;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbck$1;->zzbKU:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbck$1;->zzbKV:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzbck$1;->zzbKW:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzbck$1;->zzbLe:Lcom/google/android/gms/internal/zzbbr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbck$1;->zzbLf:Lcom/google/android/gms/internal/zzbck;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbck;->zza(Lcom/google/android/gms/internal/zzbck;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbck$1;->zzbKU:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbck$1;->zzbLe:Lcom/google/android/gms/internal/zzbbr;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbck$1;->zzbLe:Lcom/google/android/gms/internal/zzbbr;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbck$1;->zzbKU:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/internal/zzbbr;->zza(ZLjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_1
    return-void

    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbck$1;->zzbLf:Lcom/google/android/gms/internal/zzbck;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbck;->zzb(Lcom/google/android/gms/internal/zzbck;)Lcom/google/android/gms/internal/zzbbc;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbck$1;->zzbKU:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbck$1;->zzbKV:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzbck$1;->zzbKW:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzbbc;->zzq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzbbb;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbck$1;->zzbLf:Lcom/google/android/gms/internal/zzbck;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzbck;->zza(Lcom/google/android/gms/internal/zzbck;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbck$1;->zzbKU:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    const-string v2, "Fail to load container: "

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbck$1;->zzbLf:Lcom/google/android/gms/internal/zzbck;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzbck;->zzc(Lcom/google/android/gms/internal/zzbck;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/google/android/gms/internal/zzbbe;->zza(Ljava/lang/String;Ljava/lang/Throwable;Landroid/content/Context;)V

    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "Error relaying callback: "

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbck$1;->zzbLf:Lcom/google/android/gms/internal/zzbck;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzbck;->zzc(Lcom/google/android/gms/internal/zzbck;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/zzbbe;->zza(Ljava/lang/String;Ljava/lang/Throwable;Landroid/content/Context;)V

    goto :goto_1
.end method
