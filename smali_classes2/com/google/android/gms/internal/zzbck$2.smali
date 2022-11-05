.class Lcom/google/android/gms/internal/zzbck$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzbck;->zza(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbLf:Lcom/google/android/gms/internal/zzbck;

.field final synthetic zzbLg:Lcom/google/android/gms/internal/zzbbi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbck;Lcom/google/android/gms/internal/zzbbi;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbck$2;->zzbLf:Lcom/google/android/gms/internal/zzbck;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbck$2;->zzbLg:Lcom/google/android/gms/internal/zzbbi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbck$2;->zzbLf:Lcom/google/android/gms/internal/zzbck;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbck;->zza(Lcom/google/android/gms/internal/zzbck;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "TagManagerBackend emit called without loaded container."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbbu;->e(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbck$2;->zzbLf:Lcom/google/android/gms/internal/zzbck;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbck;->zza(Lcom/google/android/gms/internal/zzbck;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbbb;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbck$2;->zzbLg:Lcom/google/android/gms/internal/zzbbi;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzbbb;->zza(Lcom/google/android/gms/internal/zzbbi;)V

    goto :goto_0
.end method
