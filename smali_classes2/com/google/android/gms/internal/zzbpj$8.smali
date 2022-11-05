.class Lcom/google/android/gms/internal/zzbpj$8;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzbos;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzbpj;->zza(Ljava/util/List;Lcom/google/android/gms/internal/zzbph;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzcdL:Lcom/google/android/gms/internal/zzbph;

.field final synthetic zzceE:Lcom/google/android/gms/internal/zzbpj;

.field final synthetic zzceL:Ljava/util/List;

.field final synthetic zzceM:Lcom/google/android/gms/internal/zzbpj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbpj;Lcom/google/android/gms/internal/zzbph;Ljava/util/List;Lcom/google/android/gms/internal/zzbpj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbpj$8;->zzceE:Lcom/google/android/gms/internal/zzbpj;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbpj$8;->zzcdL:Lcom/google/android/gms/internal/zzbph;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbpj$8;->zzceL:Ljava/util/List;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzbpj$8;->zzceM:Lcom/google/android/gms/internal/zzbpj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzar(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    const/4 v4, 0x0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzbpj;->zzat(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/c;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpj$8;->zzceE:Lcom/google/android/gms/internal/zzbpj;

    const-string v2, "Transaction"

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbpj$8;->zzcdL:Lcom/google/android/gms/internal/zzbph;

    invoke-static {v0, v2, v3, v1}, Lcom/google/android/gms/internal/zzbpj;->zza(Lcom/google/android/gms/internal/zzbpj;Ljava/lang/String;Lcom/google/android/gms/internal/zzbph;Lcom/google/firebase/database/c;)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    if-nez v1, :cond_1

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpj$8;->zzceL:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbpj$zza;

    sget-object v1, Lcom/google/android/gms/internal/zzbpj$zzb;->zzcfq:Lcom/google/android/gms/internal/zzbpj$zzb;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzbpj$zza;->zza(Lcom/google/android/gms/internal/zzbpj$zza;Lcom/google/android/gms/internal/zzbpj$zzb;)Lcom/google/android/gms/internal/zzbpj$zzb;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbpj$8;->zzceE:Lcom/google/android/gms/internal/zzbpj;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbpj;->zzg(Lcom/google/android/gms/internal/zzbpj;)Lcom/google/android/gms/internal/zzbpr;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbpj$zza;->zzc(Lcom/google/android/gms/internal/zzbpj$zza;)J

    move-result-wide v2

    iget-object v5, p0, Lcom/google/android/gms/internal/zzbpj$8;->zzceE:Lcom/google/android/gms/internal/zzbpj;

    invoke-static {v5}, Lcom/google/android/gms/internal/zzbpj;->zzh(Lcom/google/android/gms/internal/zzbpj;)Lcom/google/android/gms/internal/zzbta;

    move-result-object v6

    move v5, v4

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/zzbpr;->zza(JZZLcom/google/android/gms/internal/zzbsw;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbpj$zza;->zzh(Lcom/google/android/gms/internal/zzbpj$zza;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbpj$8;->zzceM:Lcom/google/android/gms/internal/zzbpj;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbpj$zza;->zzf(Lcom/google/android/gms/internal/zzbpj$zza;)Lcom/google/android/gms/internal/zzbph;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/firebase/database/o;->a(Lcom/google/android/gms/internal/zzbpj;Lcom/google/android/gms/internal/zzbph;)Lcom/google/firebase/database/d;

    move-result-object v2

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbrx;->zzn(Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbrx;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/firebase/database/o;->a(Lcom/google/firebase/database/d;Lcom/google/android/gms/internal/zzbrx;)Lcom/google/firebase/database/b;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzbpj$8$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/google/android/gms/internal/zzbpj$8$1;-><init>(Lcom/google/android/gms/internal/zzbpj$8;Lcom/google/android/gms/internal/zzbpj$zza;Lcom/google/firebase/database/b;)V

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbpj$8;->zzceE:Lcom/google/android/gms/internal/zzbpj;

    new-instance v2, Lcom/google/android/gms/internal/zzbpx;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbpj$8;->zzceE:Lcom/google/android/gms/internal/zzbpj;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbpj$zza;->zzj(Lcom/google/android/gms/internal/zzbpj$zza;)Lcom/google/firebase/database/n;

    move-result-object v5

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbpj$zza;->zzf(Lcom/google/android/gms/internal/zzbpj$zza;)Lcom/google/android/gms/internal/zzbph;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbrc;->zzN(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbrc;

    move-result-object v0

    invoke-direct {v2, v3, v5, v0}, Lcom/google/android/gms/internal/zzbpx;-><init>(Lcom/google/android/gms/internal/zzbpj;Lcom/google/firebase/database/n;Lcom/google/android/gms/internal/zzbrc;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzbpj;->zze(Lcom/google/android/gms/internal/zzbpc;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpj$8;->zzceE:Lcom/google/android/gms/internal/zzbpj;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbpj$8;->zzceE:Lcom/google/android/gms/internal/zzbpj;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbpj;->zzi(Lcom/google/android/gms/internal/zzbpj;)Lcom/google/android/gms/internal/zzbqs;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbpj$8;->zzcdL:Lcom/google/android/gms/internal/zzbph;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzbqs;->zzL(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbqs;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzbpj;->zzb(Lcom/google/android/gms/internal/zzbpj;Lcom/google/android/gms/internal/zzbqs;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpj$8;->zzceE:Lcom/google/android/gms/internal/zzbpj;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbpj;->zzj(Lcom/google/android/gms/internal/zzbpj;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpj$8;->zzceM:Lcom/google/android/gms/internal/zzbpj;

    invoke-static {v0, v7}, Lcom/google/android/gms/internal/zzbpj;->zza(Lcom/google/android/gms/internal/zzbpj;Ljava/util/List;)V

    :goto_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbpj$8;->zzceE:Lcom/google/android/gms/internal/zzbpj;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzbpj;->zzq(Ljava/lang/Runnable;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/google/firebase/database/c;->a()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpj$8;->zzceL:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbpj$zza;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbpj$zza;->zzd(Lcom/google/android/gms/internal/zzbpj$zza;)Lcom/google/android/gms/internal/zzbpj$zzb;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/zzbpj$zzb;->zzcfr:Lcom/google/android/gms/internal/zzbpj$zzb;

    if-ne v2, v3, :cond_2

    sget-object v2, Lcom/google/android/gms/internal/zzbpj$zzb;->zzcfs:Lcom/google/android/gms/internal/zzbpj$zzb;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzbpj$zza;->zza(Lcom/google/android/gms/internal/zzbpj$zza;Lcom/google/android/gms/internal/zzbpj$zzb;)Lcom/google/android/gms/internal/zzbpj$zzb;

    goto :goto_2

    :cond_2
    sget-object v2, Lcom/google/android/gms/internal/zzbpj$zzb;->zzcfo:Lcom/google/android/gms/internal/zzbpj$zzb;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzbpj$zza;->zza(Lcom/google/android/gms/internal/zzbpj$zza;Lcom/google/android/gms/internal/zzbpj$zzb;)Lcom/google/android/gms/internal/zzbpj$zzb;

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpj$8;->zzceL:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbpj$zza;

    sget-object v3, Lcom/google/android/gms/internal/zzbpj$zzb;->zzcfs:Lcom/google/android/gms/internal/zzbpj$zzb;

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/zzbpj$zza;->zza(Lcom/google/android/gms/internal/zzbpj$zza;Lcom/google/android/gms/internal/zzbpj$zzb;)Lcom/google/android/gms/internal/zzbpj$zzb;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzbpj$zza;->zza(Lcom/google/android/gms/internal/zzbpj$zza;Lcom/google/firebase/database/c;)Lcom/google/firebase/database/c;

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpj$8;->zzceE:Lcom/google/android/gms/internal/zzbpj;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbpj$8;->zzcdL:Lcom/google/android/gms/internal/zzbph;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzbpj;->zzb(Lcom/google/android/gms/internal/zzbpj;Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbph;

    :cond_5
    return-void
.end method
