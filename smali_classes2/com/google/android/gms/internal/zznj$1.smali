.class Lcom/google/android/gms/internal/zznj$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zznj;->zzA(Landroid/content/Context;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/google/android/gms/internal/zzni;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzVc:Lcom/google/android/gms/internal/zznj;

.field final synthetic zztf:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zznj;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zznj$1;->zzVc:Lcom/google/android/gms/internal/zznj;

    iput-object p2, p0, Lcom/google/android/gms/internal/zznj$1;->zztf:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zznj$1;->zzjD()Lcom/google/android/gms/internal/zzni;

    move-result-object v0

    return-object v0
.end method

.method public zzjD()Lcom/google/android/gms/internal/zzni;
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zznj$1;->zzVc:Lcom/google/android/gms/internal/zznj;

    invoke-static {v0}, Lcom/google/android/gms/internal/zznj;->zza(Lcom/google/android/gms/internal/zznj;)Ljava/util/WeakHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zznj$1;->zztf:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zznj$zza;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zznj$zza;->hasExpired()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/zzgd;->zzDv:Lcom/google/android/gms/internal/zzfz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzfz;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/zzni$zza;

    iget-object v2, p0, Lcom/google/android/gms/internal/zznj$1;->zztf:Landroid/content/Context;

    iget-object v0, v0, Lcom/google/android/gms/internal/zznj$zza;->zzVe:Lcom/google/android/gms/internal/zzni;

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/zzni$zza;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzni;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzni$zza;->zzjC()Lcom/google/android/gms/internal/zzni;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zznj$1;->zzVc:Lcom/google/android/gms/internal/zznj;

    invoke-static {v1}, Lcom/google/android/gms/internal/zznj;->zza(Lcom/google/android/gms/internal/zznj;)Ljava/util/WeakHashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zznj$1;->zztf:Landroid/content/Context;

    new-instance v3, Lcom/google/android/gms/internal/zznj$zza;

    iget-object v4, p0, Lcom/google/android/gms/internal/zznj$1;->zzVc:Lcom/google/android/gms/internal/zznj;

    invoke-direct {v3, v4, v0}, Lcom/google/android/gms/internal/zznj$zza;-><init>(Lcom/google/android/gms/internal/zznj;Lcom/google/android/gms/internal/zzni;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzni$zza;

    iget-object v1, p0, Lcom/google/android/gms/internal/zznj$1;->zztf:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzni$zza;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzni$zza;->zzjC()Lcom/google/android/gms/internal/zzni;

    move-result-object v0

    goto :goto_0
.end method
