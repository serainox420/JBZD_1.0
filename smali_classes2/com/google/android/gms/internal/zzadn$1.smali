.class Lcom/google/android/gms/internal/zzadn$1;
.super Lcom/google/android/gms/internal/zzadn$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzadn;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzadi$zza;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaIK:Lcom/google/android/gms/internal/zzadi$zza;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzadn;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzadi$zza;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzadn$1;->zzaIK:Lcom/google/android/gms/internal/zzadi$zza;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzadn$zzc;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected zzI(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/internal/zzadi$zzb;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzadn$zzd;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/zzadn$zzd;-><init>(Lcom/google/android/gms/common/api/Status;Ljava/util/Map;)V

    return-object v0
.end method

.method protected zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzadz;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v8, 0x0

    invoke-static {}, Lcom/google/android/gms/common/data/zzd;->zzxj()Lcom/google/android/gms/common/data/DataHolder$zza;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzadn$1;->zzaIK:Lcom/google/android/gms/internal/zzadi$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzadi$zza;->zzzz()Ljava/util/Map;

    move-result-object v0

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

    new-instance v4, Lcom/google/android/gms/internal/zzads;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v4, v1, v0}, Lcom/google/android/gms/internal/zzads;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v4}, Lcom/google/android/gms/common/data/zzd;->zza(Lcom/google/android/gms/common/data/DataHolder$zza;Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/common/data/DataHolder$zza;->zzcK(I)Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v4

    invoke-static {p1}, Lcom/google/android/gms/internal/zzaba;->zzaQ(Landroid/content/Context;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/common/api/Status;->zzazx:Lcom/google/android/gms/common/api/Status;

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/zzaba;->zzwQ()Ljava/lang/String;

    move-result-object v5

    :goto_1
    :try_start_0
    invoke-static {}, Lcom/google/firebase/iid/b;->a()Lcom/google/firebase/iid/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/iid/b;->b()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    :try_start_1
    invoke-static {}, Lcom/google/firebase/iid/b;->a()Lcom/google/firebase/iid/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/iid/b;->c()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    :goto_2
    invoke-static {p1}, Lcom/google/android/gms/internal/zzadm;->zzbk(Landroid/content/Context;)Ljava/util/List;

    move-result-object v10

    new-instance v0, Lcom/google/android/gms/internal/zzadu;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzadn$1;->zzaIK:Lcom/google/android/gms/internal/zzadi$zza;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzadi$zza;->zzzy()J

    move-result-wide v2

    iget-object v9, p0, Lcom/google/android/gms/internal/zzadn$1;->zzaIK:Lcom/google/android/gms/internal/zzadi$zza;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/zzadi$zza;->zzzA()I

    move-result v9

    iget-object v11, p0, Lcom/google/android/gms/internal/zzadn$1;->zzaIK:Lcom/google/android/gms/internal/zzadi$zza;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/zzadi$zza;->zzzB()I

    move-result v11

    iget-object v12, p0, Lcom/google/android/gms/internal/zzadn$1;->zzaIK:Lcom/google/android/gms/internal/zzadi$zza;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/zzadi$zza;->zzzC()I

    move-result v12

    invoke-direct/range {v0 .. v12}, Lcom/google/android/gms/internal/zzadu;-><init>(Ljava/lang/String;JLcom/google/android/gms/common/data/DataHolder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/util/List;II)V

    :try_start_2
    iget-object v1, p0, Lcom/google/android/gms/internal/zzadn$1;->zzaIL:Lcom/google/android/gms/internal/zzady;

    invoke-interface {p2, v1, v0}, Lcom/google/android/gms/internal/zzadz;->zza(Lcom/google/android/gms/internal/zzady;Lcom/google/android/gms/internal/zzadu;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v4}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    return-void

    :cond_1
    move-object v5, v8

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v6, v8

    :goto_3
    const-string v1, "ConfigApiImpl"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "ConfigApiImpl"

    const-string v2, "Cannot retrieve instanceId or instanceIdToken."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    move-object v7, v8

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-virtual {v4}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    throw v0

    :catch_1
    move-exception v0

    goto :goto_3
.end method

.method protected synthetic zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzadn$1;->zzI(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/internal/zzadi$zzb;

    move-result-object v0

    return-object v0
.end method
