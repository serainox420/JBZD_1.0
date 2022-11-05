.class public Lcom/google/android/gms/internal/zzuk;
.super Ljava/lang/Object;


# direct methods
.method public static zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzaqn$zzc;)Lcom/google/android/gms/internal/zztt;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzub$zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzub$zza;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzub$zza;->zzZ(Z)Lcom/google/android/gms/internal/zzub$zza;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzub$zza;->zzco(Ljava/lang/String;)Lcom/google/android/gms/internal/zzub$zza;

    move-result-object v0

    const-string v1, "blob"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzub$zza;->zzcn(Ljava/lang/String;)Lcom/google/android/gms/internal/zzub$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzub$zza;->zzqH()Lcom/google/android/gms/internal/zzub;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zztt;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbxt;->zzf(Lcom/google/android/gms/internal/zzbxt;)[B

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/zztt;-><init>([BLcom/google/android/gms/internal/zzub;)V

    return-object v1
.end method

.method public static zza(Lcom/google/android/gms/appindexing/Action;JLjava/lang/String;I)Lcom/google/android/gms/internal/zzud;
    .locals 9

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/appindexing/Action;->zzqK()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    const-string v0, "object"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    const-string v0, "id"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "id"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    const-string v5, "name"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "type"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "url"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {p3, v4}, Lcom/google/android/gms/internal/zzul;->zza(Ljava/lang/String;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v4

    invoke-static {v4, v5, v0, v6, v1}, Lcom/google/android/gms/internal/zzud;->zza(Landroid/content/Intent;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;)Lcom/google/android/gms/internal/zztp$zza;

    move-result-object v1

    const-string v0, ".private:ssbContext"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ".private:ssbContext"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zztt;->zzl([B)Lcom/google/android/gms/internal/zztt;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zztp$zza;->zza(Lcom/google/android/gms/internal/zztt;)Lcom/google/android/gms/internal/zztp$zza;

    const-string v0, ".private:ssbContext"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_0
    const-string v0, ".private:accountName"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ".private:accountName"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Landroid/accounts/Account;

    const-string v6, "com.google"

    invoke-direct {v5, v0, v6}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/zztp$zza;->zzb(Landroid/accounts/Account;)Lcom/google/android/gms/internal/zztp$zza;

    const-string v0, ".private:accountName"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_1
    const-string v0, ".private:isContextOnly"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, ".private:isContextOnly"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x4

    const-string v5, ".private:isContextOnly"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :goto_1
    const-string v5, ".private:isDeviceOnly"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, ".private:isDeviceOnly"

    invoke-virtual {v3, v5, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v5, ".private:isDeviceOnly"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_2
    const-string v5, ".private:action"

    invoke-static {v3}, Lcom/google/android/gms/internal/zzuk;->zzj(Landroid/os/Bundle;)Lcom/google/android/gms/internal/zzaqn$zzc;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/google/android/gms/internal/zzuk;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzaqn$zzc;)Lcom/google/android/gms/internal/zztt;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/zztp$zza;->zza(Lcom/google/android/gms/internal/zztt;)Lcom/google/android/gms/internal/zztp$zza;

    new-instance v3, Lcom/google/android/gms/internal/zzud$zza;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzud$zza;-><init>()V

    invoke-static {p3, v4}, Lcom/google/android/gms/internal/zzud;->zza(Ljava/lang/String;Landroid/content/Intent;)Lcom/google/android/gms/internal/zztr;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/zzud$zza;->zza(Lcom/google/android/gms/internal/zztr;)Lcom/google/android/gms/internal/zzud$zza;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/google/android/gms/internal/zzud$zza;->zzB(J)Lcom/google/android/gms/internal/zzud$zza;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/zzud$zza;->zzaS(I)Lcom/google/android/gms/internal/zzud$zza;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zztp$zza;->zzqE()Lcom/google/android/gms/internal/zztp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzud$zza;->zza(Lcom/google/android/gms/internal/zztp;)Lcom/google/android/gms/internal/zzud$zza;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzud$zza;->zzab(Z)Lcom/google/android/gms/internal/zzud$zza;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/google/android/gms/internal/zzud$zza;->zzaT(I)Lcom/google/android/gms/internal/zzud$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzud$zza;->zzqI()Lcom/google/android/gms/internal/zzud;

    move-result-object v0

    return-object v0

    :cond_3
    move-object v0, v1

    goto/16 :goto_0

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method private static zzb(Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/internal/zzaqn$zzb;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzaqn$zzb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzaqn$zzb;-><init>()V

    iput-object p0, v0, Lcom/google/android/gms/internal/zzaqn$zzb;->name:Ljava/lang/String;

    new-instance v1, Lcom/google/android/gms/internal/zzaqn$zzd;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzaqn$zzd;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/zzaqn$zzb;->zzbhl:Lcom/google/android/gms/internal/zzaqn$zzd;

    iget-object v1, v0, Lcom/google/android/gms/internal/zzaqn$zzb;->zzbhl:Lcom/google/android/gms/internal/zzaqn$zzd;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzuk;->zzj(Landroid/os/Bundle;)Lcom/google/android/gms/internal/zzaqn$zzc;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/internal/zzaqn$zzd;->zzbhq:Lcom/google/android/gms/internal/zzaqn$zzc;

    return-object v0
.end method

.method private static zzh(Ljava/lang/String;Z)Lcom/google/android/gms/internal/zzaqn$zzb;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzaqn$zzb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzaqn$zzb;-><init>()V

    iput-object p0, v0, Lcom/google/android/gms/internal/zzaqn$zzb;->name:Ljava/lang/String;

    new-instance v1, Lcom/google/android/gms/internal/zzaqn$zzd;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzaqn$zzd;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/zzaqn$zzb;->zzbhl:Lcom/google/android/gms/internal/zzaqn$zzd;

    iget-object v1, v0, Lcom/google/android/gms/internal/zzaqn$zzb;->zzbhl:Lcom/google/android/gms/internal/zzaqn$zzd;

    iput-boolean p1, v1, Lcom/google/android/gms/internal/zzaqn$zzd;->zzbhn:Z

    return-object v0
.end method

.method public static zzj(Landroid/os/Bundle;)Lcom/google/android/gms/internal/zzaqn$zzc;
    .locals 8

    const/4 v3, 0x0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzuk;->zzv(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzaqn$zzb;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    instance-of v2, v1, Landroid/os/Bundle;

    if-eqz v2, :cond_2

    check-cast v1, Landroid/os/Bundle;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzuk;->zzb(Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/internal/zzaqn$zzb;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    instance-of v2, v1, [Ljava/lang/String;

    if-eqz v2, :cond_4

    check-cast v1, [Ljava/lang/String;

    array-length v6, v1

    move v2, v3

    :goto_1
    if-ge v2, v6, :cond_0

    aget-object v7, v1, v2

    if-nez v7, :cond_3

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-static {v0, v7}, Lcom/google/android/gms/internal/zzuk;->zzv(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzaqn$zzb;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    instance-of v2, v1, [Landroid/os/Bundle;

    if-eqz v2, :cond_6

    check-cast v1, [Landroid/os/Bundle;

    array-length v6, v1

    move v2, v3

    :goto_3
    if-ge v2, v6, :cond_0

    aget-object v7, v1, v2

    if-nez v7, :cond_5

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    invoke-static {v0, v7}, Lcom/google/android/gms/internal/zzuk;->zzb(Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/internal/zzaqn$zzb;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_7

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzuk;->zzh(Ljava/lang/String;Z)Lcom/google/android/gms/internal/zzaqn$zzb;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_7
    const-string v0, "SearchIndex"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x13

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unsupported value: "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    new-instance v1, Lcom/google/android/gms/internal/zzaqn$zzc;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzaqn$zzc;-><init>()V

    const-string v0, "type"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "type"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/internal/zzaqn$zzc;->type:Ljava/lang/String;

    :cond_9
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/gms/internal/zzaqn$zzb;

    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/zzaqn$zzb;

    iput-object v0, v1, Lcom/google/android/gms/internal/zzaqn$zzc;->zzbhm:[Lcom/google/android/gms/internal/zzaqn$zzb;

    return-object v1
.end method

.method private static zzv(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzaqn$zzb;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzaqn$zzb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzaqn$zzb;-><init>()V

    iput-object p0, v0, Lcom/google/android/gms/internal/zzaqn$zzb;->name:Ljava/lang/String;

    new-instance v1, Lcom/google/android/gms/internal/zzaqn$zzd;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzaqn$zzd;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/zzaqn$zzb;->zzbhl:Lcom/google/android/gms/internal/zzaqn$zzd;

    iget-object v1, v0, Lcom/google/android/gms/internal/zzaqn$zzb;->zzbhl:Lcom/google/android/gms/internal/zzaqn$zzd;

    iput-object p1, v1, Lcom/google/android/gms/internal/zzaqn$zzd;->zzaGV:Ljava/lang/String;

    return-object v0
.end method
