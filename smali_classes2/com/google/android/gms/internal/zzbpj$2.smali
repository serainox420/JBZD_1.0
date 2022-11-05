.class Lcom/google/android/gms/internal/zzbpj$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzbos;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzbpj;->zza(Lcom/google/android/gms/internal/zzbph;Ljava/util/Map;Lcom/google/firebase/database/d$a;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzcdL:Lcom/google/android/gms/internal/zzbph;

.field final synthetic zzceE:Lcom/google/android/gms/internal/zzbpj;

.field final synthetic zzceF:Ljava/util/Map;

.field final synthetic zzceG:Lcom/google/firebase/database/d$a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbpj;Lcom/google/android/gms/internal/zzbph;Ljava/util/Map;Lcom/google/firebase/database/d$a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbpj$2;->zzceE:Lcom/google/android/gms/internal/zzbpj;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbpj$2;->zzcdL:Lcom/google/android/gms/internal/zzbph;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbpj$2;->zzceF:Ljava/util/Map;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzbpj$2;->zzceG:Lcom/google/firebase/database/d$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzar(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzbpj;->zzat(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/c;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpj$2;->zzceE:Lcom/google/android/gms/internal/zzbpj;

    const-string v1, "onDisconnect().updateChildren"

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbpj$2;->zzcdL:Lcom/google/android/gms/internal/zzbph;

    invoke-static {v0, v1, v3, v2}, Lcom/google/android/gms/internal/zzbpj;->zza(Lcom/google/android/gms/internal/zzbpj;Ljava/lang/String;Lcom/google/android/gms/internal/zzbph;Lcom/google/firebase/database/c;)V

    if-nez v2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpj$2;->zzceF:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbpj$2;->zzceE:Lcom/google/android/gms/internal/zzbpj;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbpj;->zzf(Lcom/google/android/gms/internal/zzbpj;)Lcom/google/android/gms/internal/zzbpp;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/zzbpj$2;->zzcdL:Lcom/google/android/gms/internal/zzbph;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzbph;

    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/zzbph;->zzh(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbph;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbsc;

    invoke-virtual {v4, v1, v0}, Lcom/google/android/gms/internal/zzbpp;->zzh(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpj$2;->zzceE:Lcom/google/android/gms/internal/zzbpj;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbpj$2;->zzceG:Lcom/google/firebase/database/d$a;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbpj$2;->zzcdL:Lcom/google/android/gms/internal/zzbph;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzbpj;->zza(Lcom/google/firebase/database/d$a;Lcom/google/firebase/database/c;Lcom/google/android/gms/internal/zzbph;)V

    return-void
.end method
